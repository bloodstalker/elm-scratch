module Exercise2 exposing(..)
import Html exposing(..)
import String exposing(..)


len_printer: String -> Int -> String
len_printer name max =
  if String.length name > max then
    String.toUpper name
  else
    name
  
main =
    let 
        name = 
            "Farzad Sadeghi"
        length = 
            String.length name
    in (len_printer name length)
        ++ "- name length:"
        ++ (toString length)
        |> Html.text

