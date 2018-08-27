{-# LANGUAGE DataKinds           #-}
{-# LANGUAGE TypeFamilies        #-}
{-# LANGUAGE TypeOperators       #-}
{-# LANGUAGE FlexibleContexts    #-}
{-# LANGUAGE ScopedTypeVariables #-}

module Types where

import Java

---

data GameSettings = GameSettings @com.almasb.fxgl.settings.GameSettings
    deriving Class

type instance Inherits GameSettings = '[ReadOnlyGameSettings]

foreign import java unsafe setWidth :: Int -> Java GameSettings ()

foreign import java unsafe setHeight :: Int -> Java GameSettings ()

foreign import java unsafe setTitle :: String -> Java GameSettings ()

foreign import java unsafe setVersion :: String -> Java GameSettings ()

---
data ReadOnlyGameSettings = ReadOnlyGameSettings @com.almasb.fxgl.settings.ReadOnlyGameSettings
    deriving Class
---

data BasicSampleApp = BasicSampleApp @eta.fxgl.BasicSampleApp
    deriving Class

type instance Inherits BasicSampleApp = '[GameApplication]

data GameApplication = GameApplication @com.almasb.fxgl.app.GameApplication
    deriving Class

type instance Inherits GameApplication = '[Application]

initSettings :: GameSettings -> Java BasicSampleApp ()
initSettings settings = do
      settings <.> setWidth 800
      settings <.> setHeight 600
      settings <.> setVersion "0.1"
      settings <.> setTitle "BasicAppExample"

foreign export java initSettings :: GameSettings -> Java BasicSampleApp ()

---

data Application = Application @javafx.application.Application
    deriving Class

foreign import java unsafe "@static javafx.application.Application.launch"
      launch :: (a <: Application) => JClass a -> JStringArray -> IO ()

---
