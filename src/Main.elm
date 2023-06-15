module Main exposing (main)

import Html

type Län
    = Värmland
    | Örebro

länToString län =
    case län of
        Värmland -> "Värmlands län"
        Örebro -> "Örebro län"

main =
    Html.text (länToString Värmland ++ " " ++ länToString Örebro)
