(ns inter-server-management-api.specs.qs-order-request
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def qs-order-request-data
  {
   (ds/req :server) int?
   (ds/req :password) string?
   (ds/req :tos) boolean?
   (ds/opt :os) string?
   (ds/opt :comment) string?
   })

(def qs-order-request-spec
  (ds/spec
    {:name ::qs-order-request
     :spec qs-order-request-data}))
