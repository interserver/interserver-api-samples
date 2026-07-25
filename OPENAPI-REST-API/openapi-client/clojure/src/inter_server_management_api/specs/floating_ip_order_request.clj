(ns inter-server-management-api.specs.floating-ip-order-request
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def floating-ip-order-request-data
  {
   (ds/req :serviceType) int?
   (ds/opt :coupon) string?
   (ds/opt :comment) string?
   })

(def floating-ip-order-request-spec
  (ds/spec
    {:name ::floating-ip-order-request
     :spec floating-ip-order-request-data}))
