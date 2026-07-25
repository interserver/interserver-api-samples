(ns inter-server-management-api.specs.website-order-post-request
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def website-order-post-request-data
  {
   (ds/req :hostname) string?
   (ds/req :packageId) int?
   (ds/opt :rootpass) string?
   (ds/opt :period) int?
   (ds/opt :coupon) string?
   (ds/opt :serviceOfferId) int?
   (ds/opt :script) int?
   (ds/opt :comment) string?
   (ds/opt :registerDomain) boolean?
   })

(def website-order-post-request-spec
  (ds/spec
    {:name ::website-order-post-request
     :spec website-order-post-request-data}))
