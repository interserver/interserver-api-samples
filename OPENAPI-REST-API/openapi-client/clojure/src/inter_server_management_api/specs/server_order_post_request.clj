(ns inter-server-management-api.specs.server-order-post-request
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [inter-server-management-api.specs.server-order-post-request-hd :refer :all]
            )
  (:import (java.io File)))


(def server-order-post-request-data
  {
   (ds/req :cpu) int?
   (ds/req :hd) server-order-post-request-hd-spec
   (ds/req :memory) int?
   (ds/req :bandwidth) int?
   (ds/req :ips) int?
   (ds/req :os) int?
   (ds/req :cp) int?
   (ds/req :raid) int?
   (ds/req :region) int?
   (ds/req :servername) string?
   (ds/req :rootpass) string?
   (ds/req :tos) boolean?
   (ds/opt :comment) string?
   })

(def server-order-post-request-spec
  (ds/spec
    {:name ::server-order-post-request
     :spec server-order-post-request-data}))
