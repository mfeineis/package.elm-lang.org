module Page.Search.Cat exposing (Cat, fetchRandom)

import Http
import Json.Decode as Decode exposing (Decoder, Value)


type alias Cat =
  { height: String
  , url : String
  , width: String
  }

catDecoder : Decoder Cat
catDecoder =
  Decode.map3 Cat
    (Decode.at ["data", "image_height" ] Decode.string)
    (Decode.at ["data", "image_url" ] Decode.string)
    (Decode.at ["data", "image_width" ] Decode.string)


fetchRandom : (Result Http.Error Cat -> msg) -> Cmd msg
fetchRandom toMsg =
  Http.send toMsg
    (Http.get
      "https://api.giphy.com/v1/gifs/random?api_key=4VqE2fypyh8nNsOOkjfc0vTxhQoHWSfM&tag=cat"
      catDecoder
    )
