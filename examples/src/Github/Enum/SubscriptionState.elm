-- Do not manually edit this file, it was auto-generated by Graphqelm
-- npm package version 2.0.2
-- Target elm package version 6.0.0
-- https://github.com/dillonkearns/graphqelm


module Github.Enum.SubscriptionState exposing (..)

import Json.Decode as Decode exposing (Decoder)


{-| The possible states of a subscription.

  - Unsubscribed - The User is only notified when particpating or @mentioned.
  - Subscribed - The User is notified of all conversations.
  - Ignored - The User is never notified.
  - Unavailable - Subscriptions are currently unavailable

-}
type SubscriptionState
    = Unsubscribed
    | Subscribed
    | Ignored
    | Unavailable


decoder : Decoder SubscriptionState
decoder =
    Decode.string
        |> Decode.andThen
            (\string ->
                case string of
                    "UNSUBSCRIBED" ->
                        Decode.succeed Unsubscribed

                    "SUBSCRIBED" ->
                        Decode.succeed Subscribed

                    "IGNORED" ->
                        Decode.succeed Ignored

                    "UNAVAILABLE" ->
                        Decode.succeed Unavailable

                    _ ->
                        Decode.fail ("Invalid SubscriptionState type, " ++ string ++ " try re-running the graphqelm CLI ")
            )


{-| Convert from the union type representating the Enum to a string that the GraphQL server will recognize.
-}
toString : SubscriptionState -> String
toString enum =
    case enum of
        Unsubscribed ->
            "UNSUBSCRIBED"

        Subscribed ->
            "SUBSCRIBED"

        Ignored ->
            "IGNORED"

        Unavailable ->
            "UNAVAILABLE"
