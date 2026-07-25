(ns inter-server-management-api.specs.patch-billing-credit-card-verify-request
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def patch-billing-credit-card-verify-request-data
  {
   (ds/req :cc_ccv2) string?
   })

(def patch-billing-credit-card-verify-request-spec
  (ds/spec
    {:name ::patch-billing-credit-card-verify-request
     :spec patch-billing-credit-card-verify-request-data}))
