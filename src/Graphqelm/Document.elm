module Graphqelm.Document exposing (DocumentQueryOrMutation, RootMutation, RootQuery, decoderNew, toMutationDocument, toQueryDocument, toQueryNew)

import Graphqelm.Field as Field exposing (Field)
import Graphqelm.Object exposing (Object(Object))
import Json.Decode as Decode exposing (Decoder)


type RootQuery
    = RootQuery


type RootMutation
    = RootMutation


type DocumentQueryOrMutation
    = DocumentQueryOrMutation


separateNew : Field -> List Field
separateNew field =
    case field of
        Field.Composite name args fields ->
            [ field ]

        Field.Leaf name args ->
            [ field ]

        Field.QueryField field ->
            separateNew field


toQueryNew : Object decodesTo typeLock -> String
toQueryNew (Object fields decoder) =
    queriesStringNew "" fields


toQueryDocument : Object decodesTo RootQuery -> String
toQueryDocument (Object fields decoder) =
    queriesStringNew "query" fields


toMutationDocument : Object decodesTo RootMutation -> String
toMutationDocument (Object fields decoder) =
    queriesStringNew "mutation" fields


queriesStringNew : String -> List Field -> String
queriesStringNew string queries =
    string
        ++ " {\n"
        ++ (List.indexedMap
                (\index query ->
                    "result"
                        ++ toString index
                        ++ ": "
                        ++ Field.fieldDecoderToQuery query
                )
                queries
                |> String.join "\n"
           )
        ++ "\n}"


mutationsString : { document | mutations : List Field } -> String
mutationsString { mutations } =
    if mutations == [] then
        ""
    else
        "mutation {\n"
            ++ (List.indexedMap (\index query -> "mutation" ++ toString index ++ ": " ++ Field.fieldDecoderToQuery query) mutations |> String.join "\n")
            ++ "\n}"


decoderNew : Object decodesTo typeLock -> Decoder decodesTo
decoderNew (Object fields decoder) =
    decoder
        |> Decode.field "data"