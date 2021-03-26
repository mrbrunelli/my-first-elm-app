module Main exposing (Msg(..), main, update, view)

import Browser
import Html exposing (..)
import Html.Attributes exposing (href, src, style, target, width)
import Html.Events exposing (..)



-- MAIN


main : Program () Int Msg
main =
    Browser.sandbox { init = init, view = view, update = update }



-- MODEL


type alias Model =
    Int


init : Model
init =
    0



-- UPDATE


type Msg
    = Increment
    | Decrement
    | Reset


update : Msg -> number -> number
update msg model =
    case msg of
        Increment ->
            model + 1

        Decrement ->
            model - 1

        Reset ->
            0



-- VIEW


view : Int -> Html Msg
view model =
    div
        styledContainer
        [ div
            styledCard
            [ div [ style "display" "flex", style "align-items" "center" ]
                [ img [ src "./static/logo.png", width 60 ] []
                , span [ style "margin-left" "5px" ]
                    [ p [ style "font-family" "Arial, sans" ] [ text "Elm Lang" ]
                    ]
                ]
            , h1 styledTitle [ text "My Counter" ]
            , button (List.concat [ [ onClick Increment ], styledBtn ]) [ text "+" ]
            , p styledP [ text (String.fromInt model) ]
            , button (List.concat [ [ onClick Decrement ], styledBtn ]) [ text "-" ]
            , button (List.concat [ [ onClick Reset ], styledBtn ]) [ text "Reset" ]
            ]
        , div []
            [ p styledP
                [ text "Developed by "
                , a [ href "https://github.com/mrbrunelli", target "_blank" ]
                    [ text "mrbrunelli" ]
                ]
            ]
        ]


styledContainer : List (Attribute Msg)
styledContainer =
    [ style "background-color" "#fafafa"
    , style "height" "100vh"
    , style "display" "flex"
    , style "flex-direction" "column"
    , style "justify-content" "center"
    , style "align-items" "center"
    ]


styledCard : List (Attribute Msg)
styledCard =
    [ style "background-color" "#fff"
    , style "padding" "6rem"
    , style "box-shadow" "3px 5px 10px 2px rgba(0, 0, 0, 0.2)"
    , style "border-radius" "5px"
    , style "text-align" "center"
    , style "display" "flex"
    , style "flex-direction" "column"
    , style "align-items" "center"
    ]


styledTitle : List (Attribute Msg)
styledTitle =
    [ style "font-family" "Arial, sans"
    , style "font-size" "2.5rem"
    ]


styledP : List (Attribute msg)
styledP =
    [ style "font-size" "1.5rem"
    , style "font-weight" "bold"
    , style "line-height" "0"
    , style "font-family" "Arial, sans"
    ]


styledBtn : List (Attribute Msg)
styledBtn =
    [ style "padding" "5px"
    , style "border-radius" "4px"
    , style "background-color" "blue"
    , style "color" "#fff"
    , style "width" "100px"
    , style "border" "none"
    , style "margin-top" "5px"
    ]
