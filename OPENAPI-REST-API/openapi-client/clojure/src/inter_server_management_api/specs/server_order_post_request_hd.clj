(ns inter-server-management-api.specs.server-order-post-request-hd
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def server-order-post-request-hd-data
  {
   })

(def server-order-post-request-hd-spec
  (ds/spec
    {:name ::server-order-post-request-hd
     :spec server-order-post-request-hd-data}))
