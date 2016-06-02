{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeOperators #-}

module Api (JobsApi) where

import Servant.API

import Jobs
  (Jobs)

type JobsApi = "jobs" :> Get '[JSON] Jobs
