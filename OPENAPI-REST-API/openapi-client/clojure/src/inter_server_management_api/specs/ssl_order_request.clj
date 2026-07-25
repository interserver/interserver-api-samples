(ns inter-server-management-api.specs.ssl-order-request
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def ssl-order-request-data
  {
   (ds/req :ssl) int?
   (ds/req :hostname) string?
   (ds/req :approver_email) string?
   (ds/opt :frequency) int?
   (ds/opt :coupon) string?
   (ds/opt :csr_type) string?
   (ds/opt :csr) string?
   (ds/opt :firstname) string?
   (ds/opt :lastname) string?
   (ds/opt :email) string?
   (ds/opt :address) string?
   (ds/opt :city) string?
   (ds/opt :state) string?
   (ds/opt :zip) string?
   (ds/opt :country) string?
   (ds/opt :phone) string?
   (ds/opt :company) string?
   (ds/opt :department) string?
   (ds/opt :agency) string?
   (ds/opt :business_category) string?
   })

(def ssl-order-request-spec
  (ds/spec
    {:name ::ssl-order-request
     :spec ssl-order-request-data}))
