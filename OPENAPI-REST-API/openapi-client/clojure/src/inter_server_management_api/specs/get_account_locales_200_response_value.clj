(ns inter-server-management-api.specs.get-account-locales-200-response-value
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def get-account-locales-200-response-value-data
  {
   (ds/opt :name) string?
   (ds/opt :local_name) string?
   })

(def get-account-locales-200-response-value-spec
  (ds/spec
    {:name ::get-account-locales-200-response-value
     :spec get-account-locales-200-response-value-data}))
