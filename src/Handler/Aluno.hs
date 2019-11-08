{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE TypeFamilies #-}
-- | Common handler functions.
module Handler.Aluno where

import Import
import Database.Persist.Postgresql

-- renderDivs
formAluno :: Form Aluno
formAluno = renderBootstrap $ Aluno 
    <$> areq text
    
getAlunoR :: Handler Html 
getAlunoR = undefined

postAlunoR :: Handler Html
postAlunoR = undefined 
