-- Do not manually edit this file, it was auto-generated by Graphqelm
-- npm package version 2.0.2
-- Target elm package version 6.0.0
-- https://github.com/dillonkearns/graphqelm


module Github.Enum.TeamRepositoryOrderField exposing (..)

import Json.Decode as Decode exposing (Decoder)


{-| Properties by which team repository connections can be ordered.

  - CreatedAt - Order repositories by creation time
  - UpdatedAt - Order repositories by update time
  - PushedAt - Order repositories by push time
  - Name - Order repositories by name
  - Permission - Order repositories by permission
  - Stargazers - Order repositories by number of stargazers

-}
type TeamRepositoryOrderField
    = CreatedAt
    | UpdatedAt
    | PushedAt
    | Name
    | Permission
    | Stargazers


decoder : Decoder TeamRepositoryOrderField
decoder =
    Decode.string
        |> Decode.andThen
            (\string ->
                case string of
                    "CREATED_AT" ->
                        Decode.succeed CreatedAt

                    "UPDATED_AT" ->
                        Decode.succeed UpdatedAt

                    "PUSHED_AT" ->
                        Decode.succeed PushedAt

                    "NAME" ->
                        Decode.succeed Name

                    "PERMISSION" ->
                        Decode.succeed Permission

                    "STARGAZERS" ->
                        Decode.succeed Stargazers

                    _ ->
                        Decode.fail ("Invalid TeamRepositoryOrderField type, " ++ string ++ " try re-running the graphqelm CLI ")
            )


{-| Convert from the union type representating the Enum to a string that the GraphQL server will recognize.
-}
toString : TeamRepositoryOrderField -> String
toString enum =
    case enum of
        CreatedAt ->
            "CREATED_AT"

        UpdatedAt ->
            "UPDATED_AT"

        PushedAt ->
            "PUSHED_AT"

        Name ->
            "NAME"

        Permission ->
            "PERMISSION"

        Stargazers ->
            "STARGAZERS"
