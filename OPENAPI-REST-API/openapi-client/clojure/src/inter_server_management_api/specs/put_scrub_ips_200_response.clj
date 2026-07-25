(ns inter-server-management-api.specs.put-scrub-ips-200-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def put-scrub-ips-200-response-data
  {
   (ds/opt :continue) boolean?
   (ds/opt :errors) (s/coll-of string?)
   (ds/opt :serviceType) int?
   (ds/opt :serviceCost) float?
   (ds/opt :originalCost) float?
   (ds/opt :repeatServiceCost) float?
   })

(def put-scrub-ips-200-response-spec
  (ds/spec
    {:name ::put-scrub-ips-200-response
     :spec put-scrub-ips-200-response-data}))
