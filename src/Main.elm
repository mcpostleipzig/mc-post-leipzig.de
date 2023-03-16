module Main exposing ( main )
import Browser
import Browser.Navigation as Nav
import Html

main : Program { path : String } () ()
main = Browser.element
    { init = \ { path } -> ( () , Nav.load ( "https://www.mcpostleipzig.de" ++ path ) )
    , subscriptions = \ _ -> Sub.none
    , update = \ _ _ -> ( () , Cmd.none )
    , view = \ _ -> Html.text ""
    }
