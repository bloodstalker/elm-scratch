module App exposing (..)
import Html exposing (Html, button, div, text, program)
import Html.Events exposing (onClick)

-- Model
type alias Model = 
  String

type alias Model2 =
  Bool

init : (Model, Cmd Msg)
init = 
  ("Hello", Cmd.none)

init2 : (Model2, Cmd Msg2)
init2 = 
  (False, Cmd.none)

-- Messages
type Msg = 
  NoOp

type Msg2 =
  Expand
  | Collapse

-- View
view : Model -> Html Msg
view model =
  div []
  [text model]

view2 : Model2 -> Html Msg2
view2 model =
  if model then
    div []
    [button [onClick Collapse][text "Collapse"]
    , text "Widget"
    ]
  else
    div []
    [button [onClick Expand][text "Expand"]]

-- Update
update : Msg -> Model -> (Model, Cmd Msg)
update msg model =
  case msg of
    NoOp ->
      (model, Cmd.none)

update2 : Msg2 -> Model2 -> (Model2, Cmd Msg2)
update2 msg model =
  case msg of
    Expand 
    -> (True, Cmd.none)
    Collapse 
    -> (False, Cmd.none)

-- Subscriptions
subscriptions : Model -> Sub Msg
subscriptions model =
  Sub.none

subscriptions2 : Model2 -> Sub Msg2
subscriptions2 model =
  Sub.none

-- Main
main : Program Never Model2 Msg2
main =
  program
  { init = init2
  , view = view2
  , update = update2
  , subscriptions = subscriptions2
  }
