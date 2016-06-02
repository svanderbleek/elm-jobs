{-# LANGUAGE OverloadedStrings #-}

module Server (app) where

import Servant
  (Server, Proxy(..), serve)
import Network.Wai
  (Application)

import Jobs
  (Job(..), Jobs)

import Api
  (JobsApi)

jobs :: Jobs
jobs = [Job "Test" "This", Job "Also" "That"]

proxy :: Proxy JobsApi
proxy = Proxy

server :: Server JobsApi
server = return jobs

app :: Application
app = serve proxy server
