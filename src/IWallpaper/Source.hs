module IWallpaper.Source () where

import qualified Data.Text as T
import qualified Data.ByteString as B
import qualified Network.HTTP.Req as Req

data Source = Source
  { selectPhotoURL :: Req.Req (Either T.Text B.ByteString)
  }

fetch :: B.ByteString -> Req.Req (Either B.ByteString)
fetch url = 
