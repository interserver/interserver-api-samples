(ns inter-server-management-api.specs.delete-mail-alert-request
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def delete-mail-alert-request-data
  {
   (ds/req :alert_id) int?
   })

(def delete-mail-alert-request-spec
  (ds/spec
    {:name ::delete-mail-alert-request
     :spec delete-mail-alert-request-data}))
