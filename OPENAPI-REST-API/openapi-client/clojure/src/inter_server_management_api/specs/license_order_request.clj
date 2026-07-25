(ns inter-server-management-api.specs.license-order-request
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def license-order-request-data
  {
   (ds/req :package) int?
   (ds/req :ip) string?
   (ds/req :tos) boolean?
   (ds/opt :frequency) int?
   (ds/opt :coupon) string?
   (ds/opt :comment) string?
   })

(def license-order-request-spec
  (ds/spec
    {:name ::license-order-request
     :spec license-order-request-data}))
