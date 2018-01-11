-- Do not manually edit this file, it was auto-generated by Graphqelm
-- npm package version 2.0.2
-- Target elm package version 6.0.0
-- https://github.com/dillonkearns/graphqelm


module Github.Object.DismissPullRequestReviewPayload exposing (..)

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
selection : (a -> constructor) -> SelectionSet (a -> constructor) Github.Object.DismissPullRequestReviewPayload
selection constructor =
    Object.selection constructor


{-| A unique identifier for the client performing the mutation.
-}
clientMutationId : FieldDecoder (Maybe String) Github.Object.DismissPullRequestReviewPayload
clientMutationId =
    Object.fieldDecoder "clientMutationId" [] (Decode.string |> Decode.maybe)


{-| The dismissed pull request review.
-}
pullRequestReview : SelectionSet selection Github.Object.PullRequestReview -> FieldDecoder selection Github.Object.DismissPullRequestReviewPayload
pullRequestReview object =
    Object.selectionFieldDecoder "pullRequestReview" [] object identity
