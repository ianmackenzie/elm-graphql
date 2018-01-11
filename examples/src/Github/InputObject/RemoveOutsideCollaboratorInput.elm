-- Do not manually edit this file, it was auto-generated by Graphqelm
-- npm package version 2.0.2
-- Target elm package version 6.0.0
-- https://github.com/dillonkearns/graphqelm


module Github.InputObject.RemoveOutsideCollaboratorInput exposing (..)

import Github.Interface
import Github.Object
import Github.Scalar
import Github.Union
import Graphqelm.FieldDecoder as FieldDecoder exposing (FieldDecoder)
import Graphqelm.Internal.Builder.Argument as Argument exposing (Argument)
import Graphqelm.Internal.Builder.Object as Object
import Graphqelm.Internal.Encode as Encode exposing (Value)
import Graphqelm.OptionalArgument exposing (OptionalArgument(Absent))
import Graphqelm.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode


{-| Encode a RemoveOutsideCollaboratorInput into a value that can be used as an argument.
-}
encode : RemoveOutsideCollaboratorInput -> Value
encode input =
    Encode.maybeObject
        [ ( "clientMutationId", Encode.string |> Encode.optional input.clientMutationId ), ( "userId", (\(Github.Scalar.Id raw) -> Encode.string raw) input.userId |> Just ), ( "organizationId", (\(Github.Scalar.Id raw) -> Encode.string raw) input.organizationId |> Just ) ]


{-| Type for the RemoveOutsideCollaboratorInput input object.
-}
type alias RemoveOutsideCollaboratorInput =
    { clientMutationId : OptionalArgument String, userId : Github.Scalar.Id, organizationId : Github.Scalar.Id }
