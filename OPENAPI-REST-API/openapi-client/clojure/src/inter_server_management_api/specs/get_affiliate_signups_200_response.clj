(ns inter-server-management-api.specs.get-affiliate-signups-200-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [inter-server-management-api.specs. :refer :all]
            )
  (:import (java.io File)))


(def get-affiliate-signups-200-response-data
  {
   (ds/opt :data) any?
   })

(def get-affiliate-signups-200-response-spec
  (ds/spec
    {:name ::get-affiliate-signups-200-response
     :spec get-affiliate-signups-200-response-data}))
