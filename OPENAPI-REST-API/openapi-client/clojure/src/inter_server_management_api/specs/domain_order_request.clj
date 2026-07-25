(ns inter-server-management-api.specs.domain-order-request
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def domain-order-request-data
  {
   (ds/req :hostname) string?
   (ds/opt :type) string?
   (ds/opt :coupon) string?
   (ds/opt :whois_privacy) string?
   })

(def domain-order-request-spec
  (ds/spec
    {:name ::domain-order-request
     :spec domain-order-request-data}))
