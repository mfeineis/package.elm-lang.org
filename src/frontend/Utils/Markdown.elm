module Utils.Markdown exposing (block, unsafeBlock)

import Html
import Markdown exposing (defaultOptions)


block : String -> Html.Html msg
block raw =
  Markdown.toHtmlWith myOptions [] raw


unsafeBlock : List (Html.Attribute msg) -> String -> Html.Html msg
unsafeBlock attrs raw =
  Markdown.toHtmlWith
    { myOptions
      | sanitize = False
    }
    attrs raw


myOptions : Markdown.Options
myOptions =
  { defaultOptions | defaultHighlighting = Just "elm" }
