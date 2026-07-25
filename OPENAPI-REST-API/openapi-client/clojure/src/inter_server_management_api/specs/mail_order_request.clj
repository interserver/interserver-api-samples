(ns inter-server-management-api.specs.mail-order-request
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def mail-order-request-data
  {
   (ds/req :serviceType) int?
   (ds/opt :coupon) string?
   (ds/opt :comment) string?
   })

(def mail-order-request-spec
  (ds/spec
    {:name ::mail-order-request
     :spec mail-order-request-data}))
