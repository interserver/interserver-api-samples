(ns inter-server-management-api.specs.server-bulk-ipmi-power-response-results-inner
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def server-bulk-ipmi-power-response-results-inner-data
  {
   (ds/opt :id) int?
   (ds/opt :asset) int?
   (ds/opt :text) string?
   (ds/opt :error) string?
   })

(def server-bulk-ipmi-power-response-results-inner-spec
  (ds/spec
    {:name ::server-bulk-ipmi-power-response-results-inner
     :spec server-bulk-ipmi-power-response-results-inner-data}))
