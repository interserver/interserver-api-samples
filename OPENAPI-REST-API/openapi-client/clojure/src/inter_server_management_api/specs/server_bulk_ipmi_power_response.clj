(ns inter-server-management-api.specs.server-bulk-ipmi-power-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [inter-server-management-api.specs.server-bulk-ipmi-power-response-results-inner :refer :all]
            )
  (:import (java.io File)))


(def server-bulk-ipmi-power-response-data
  {
   (ds/req :results) (s/coll-of server-bulk-ipmi-power-response-results-inner-spec)
   })

(def server-bulk-ipmi-power-response-spec
  (ds/spec
    {:name ::server-bulk-ipmi-power-response
     :spec server-bulk-ipmi-power-response-data}))
