-- Do not manually edit this file, it was auto-generated by Graphqelm
-- npm package version 2.0.2
-- Target elm package version 6.0.0
-- https://github.com/dillonkearns/graphqelm


module Github.Object.PullRequestCommit exposing (..)

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
selection : (a -> constructor) -> SelectionSet (a -> constructor) Github.Object.PullRequestCommit
selection constructor =
    Object.selection constructor


{-| The Git commit object
-}
commit : SelectionSet selection Github.Object.Commit -> FieldDecoder selection Github.Object.PullRequestCommit
commit object =
    Object.selectionFieldDecoder "commit" [] object identity


id : FieldDecoder Github.Scalar.Id Github.Object.PullRequestCommit
id =
    Object.fieldDecoder "id" [] (Decode.string |> Decode.map Github.Scalar.Id)


{-| The pull request this commit belongs to
-}
pullRequest : SelectionSet selection Github.Object.PullRequest -> FieldDecoder selection Github.Object.PullRequestCommit
pullRequest object =
    Object.selectionFieldDecoder "pullRequest" [] object identity


{-| The HTTP path for this pull request commit
-}
resourcePath : FieldDecoder Github.Scalar.Uri Github.Object.PullRequestCommit
resourcePath =
    Object.fieldDecoder "resourcePath" [] (Decode.string |> Decode.map Github.Scalar.Uri)


{-| The HTTP URL for this pull request commit
-}
url : FieldDecoder Github.Scalar.Uri Github.Object.PullRequestCommit
url =
    Object.fieldDecoder "url" [] (Decode.string |> Decode.map Github.Scalar.Uri)
