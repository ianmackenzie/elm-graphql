-- Do not manually edit this file, it was auto-generated by Graphqelm
-- npm package version 2.0.2
-- Target elm package version 6.0.0
-- https://github.com/dillonkearns/graphqelm


module Github.Object.ExternalIdentityConnection exposing (..)

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


{-| Select fields to build up a SelectionSet for this object.
-}
selection : (a -> constructor) -> SelectionSet (a -> constructor) Github.Object.ExternalIdentityConnection
selection constructor =
    Object.selection constructor


{-| A list of edges.
-}
edges : SelectionSet selection Github.Object.ExternalIdentityEdge -> FieldDecoder (Maybe (List (Maybe selection))) Github.Object.ExternalIdentityConnection
edges object =
    Object.selectionFieldDecoder "edges" [] object (identity >> Decode.maybe >> Decode.list >> Decode.maybe)


{-| A list of nodes.
-}
nodes : SelectionSet selection Github.Object.ExternalIdentity -> FieldDecoder (Maybe (List (Maybe selection))) Github.Object.ExternalIdentityConnection
nodes object =
    Object.selectionFieldDecoder "nodes" [] object (identity >> Decode.maybe >> Decode.list >> Decode.maybe)


{-| Information to aid in pagination.
-}
pageInfo : SelectionSet selection Github.Object.PageInfo -> FieldDecoder selection Github.Object.ExternalIdentityConnection
pageInfo object =
    Object.selectionFieldDecoder "pageInfo" [] object identity


{-| Identifies the total count of items in the connection.
-}
totalCount : FieldDecoder Int Github.Object.ExternalIdentityConnection
totalCount =
    Object.fieldDecoder "totalCount" [] Decode.int
