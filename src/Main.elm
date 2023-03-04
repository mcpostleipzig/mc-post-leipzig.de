module Main exposing ( main )

import Browser
import Browser.Navigation exposing ( load )
import Html


main : Program { path : String } () ()
main =
    Browser.element
        { init = \ { path } -> ( () , load ( "https://mcpostleipzig.de" ++ path ) )
        , subscriptions = \ _ -> Sub.none
        , update = \ _ _ -> ( () , Cmd.none )
        , view = \ _ -> Html.text ""
        }
