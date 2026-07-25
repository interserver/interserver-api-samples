(ns inter-server-management-api.api.vps
  (:require [inter-server-management-api.core :refer [call-api check-required-params with-collection-format *api-context*]]
            [clojure.spec.alpha :as s]
            [spec-tools.core :as st]
            [orchestra.core :refer [defn-spec]]
            [inter-server-management-api.specs.website-row :refer :all]
            [inter-server-management-api.specs.quickserver-service-info :refer :all]
            [inter-server-management-api.specs.mail-stats-type-volume-to :refer :all]
            [inter-server-management-api.specs.mail-block-click-house :refer :all]
            [inter-server-management-api.specs.quickserver-order-version :refer :all]
            [inter-server-management-api.specs.template-request :refer :all]
            [inter-server-management-api.specs.captcha-response :refer :all]
            [inter-server-management-api.specs.server-asset :refer :all]
            [inter-server-management-api.specs.enable-scrub-500-response :refer :all]
            [inter-server-management-api.specs.login-error-response :refer :all]
            [inter-server-management-api.specs.get-scrub-ip-details-200-response-filter-firewall-rules-inner :refer :all]
            [inter-server-management-api.specs.server-order-post-request :refer :all]
            [inter-server-management-api.specs.account-info-data-extra :refer :all]
            [inter-server-management-api.specs.server-order-memory-li-254 :refer :all]
            [inter-server-management-api.specs.affiliate-traffic-row :refer :all]
            [inter-server-management-api.specs.domain-order-services10001 :refer :all]
            [inter-server-management-api.specs.vps-traffic-response :refer :all]
            [inter-server-management-api.specs.home-details-modules-backups :refer :all]
            [inter-server-management-api.specs.quickserver-order-distro-sel-ubuntu :refer :all]
            [inter-server-management-api.specs.domain :refer :all]
            [inter-server-management-api.specs.generic-response :refer :all]
            [inter-server-management-api.specs.floating-ip-order-request :refer :all]
            [inter-server-management-api.specs.mail-blocks :refer :all]
            [inter-server-management-api.specs.update-account-tfa-request :refer :all]
            [inter-server-management-api.specs.billing-invoice-detail :refer :all]
            [inter-server-management-api.specs.get-scrub-ip-details-200-response-extra-info-tables-scrub-ips-rows-inner :refer :all]
            [inter-server-management-api.specs.place-scrub-order-201-response-order-details :refer :all]
            [inter-server-management-api.specs.license-service-type :refer :all]
            [inter-server-management-api.specs.server-order-field-labels :refer :all]
            [inter-server-management-api.specs.quickserver-service-master :refer :all]
            [inter-server-management-api.specs.licenses-cancel-200-response :refer :all]
            [inter-server-management-api.specs.text-response :refer :all]
            [inter-server-management-api.specs.server-network-info :refer :all]
            [inter-server-management-api.specs.account-info-oauth-config-providers :refer :all]
            [inter-server-management-api.specs.get-scrub-ip-details-200-response-filter-firewall :refer :all]
            [inter-server-management-api.specs.success-text-response :refer :all]
            [inter-server-management-api.specs.server-order-control-panel :refer :all]
            [inter-server-management-api.specs.get-affiliate-signups-200-response :refer :all]
            [inter-server-management-api.specs.get-scrub-ip-details-200-response-filter-firewall-filters-inner :refer :all]
            [inter-server-management-api.specs.websites-order-json-service-offers-item :refer :all]
            [inter-server-management-api.specs.put-scrub-ips-200-response :refer :all]
            [inter-server-management-api.specs.ticket-post-details-inner :refer :all]
            [inter-server-management-api.specs.website :refer :all]
            [inter-server-management-api.specs.reverse-dns-entries :refer :all]
            [inter-server-management-api.specs.home-services-webhosting :refer :all]
            [inter-server-management-api.specs.patch-oauth-two-factor-200-response :refer :all]
            [inter-server-management-api.specs.mail-stats-type-volume :refer :all]
            [inter-server-management-api.specs.post-website-buy-ip-request :refer :all]
            [inter-server-management-api.specs.domain-prov-process-pending-attributes :refer :all]
            [inter-server-management-api.specs.create-filter-201-response :refer :all]
            [inter-server-management-api.specs.websites-order :refer :all]
            [inter-server-management-api.specs.ticket-details :refer :all]
            [inter-server-management-api.specs.webhosting-cancel-200-response :refer :all]
            [inter-server-management-api.specs.download-qs-backup-200-response :refer :all]
            [inter-server-management-api.specs.vps-traffic-data-data-section-response :refer :all]
            [inter-server-management-api.specs.send-mail-adv :refer :all]
            [inter-server-management-api.specs.license-order-request :refer :all]
            [inter-server-management-api.specs.domain-all-info-attributes :refer :all]
            [inter-server-management-api.specs.server-order :refer :all]
            [inter-server-management-api.specs.service-category :refer :all]
            [inter-server-management-api.specs.website-billing-details :refer :all]
            [inter-server-management-api.specs.websites-order-service-types :refer :all]
            [inter-server-management-api.specs.domain-nameserver-put-request :refer :all]
            [inter-server-management-api.specs.vps-ip-info-row :refer :all]
            [inter-server-management-api.specs.account-info-post :refer :all]
            [inter-server-management-api.specs.account-info-data-cc :refer :all]
            [inter-server-management-api.specs.mail-stats-type :refer :all]
            [inter-server-management-api.specs.license-client-link :refer :all]
            [inter-server-management-api.specs.domain-row :refer :all]
            [inter-server-management-api.specs.home-services-vps :refer :all]
            [inter-server-management-api.specs.update-ticket-response-schema :refer :all]
            [inter-server-management-api.specs.create-filter-500-response :refer :all]
            [inter-server-management-api.specs.mail-schema-extra-info-tables :refer :all]
            [inter-server-management-api.specs.server-location1 :refer :all]
            [inter-server-management-api.specs.ip-object :refer :all]
            [inter-server-management-api.specs.dns-new-record :refer :all]
            [inter-server-management-api.specs.vps-row :refer :all]
            [inter-server-management-api.specs.quickserver-order-distro-sel :refer :all]
            [inter-server-management-api.specs.vps-traffic-history-section-response :refer :all]
            [inter-server-management-api.specs.account-info-oauthproviders :refer :all]
            [inter-server-management-api.specs.websites-order-packages-info :refer :all]
            [inter-server-management-api.specs.disable-scrub-500-response :refer :all]
            [inter-server-management-api.specs.home-details-modules-quickservers :refer :all]
            [inter-server-management-api.specs.delete-filter-500-response :refer :all]
            [inter-server-management-api.specs.login-success-response :refer :all]
            [inter-server-management-api.specs.buy-it-now-server-order-200-response-cp-inner :refer :all]
            [inter-server-management-api.specs.create-firewall-rule :refer :all]
            [inter-server-management-api.specs.account-info-data-fraudrecord :refer :all]
            [inter-server-management-api.specs.backup-service-info :refer :all]
            [inter-server-management-api.specs.dns-update-record :refer :all]
            [inter-server-management-api.specs.delete-geo-firewall-rule :refer :all]
            [inter-server-management-api.specs.mail-billing-details :refer :all]
            [inter-server-management-api.specs.vps-order-templates-hyperv :refer :all]
            [inter-server-management-api.specs.websites-order-json-services :refer :all]
            [inter-server-management-api.specs.scrub-ips-log-row-schema :refer :all]
            [inter-server-management-api.specs.website-table :refer :all]
            [inter-server-management-api.specs.domain-name-server :refer :all]
            [inter-server-management-api.specs.ticket-new-response :refer :all]
            [inter-server-management-api.specs.affiliate-dock-setup :refer :all]
            [inter-server-management-api.specs.server-order-os :refer :all]
            [inter-server-management-api.specs.website-order-put-request :refer :all]
            [inter-server-management-api.specs.account-info-max-mind-response-risk-score :refer :all]
            [inter-server-management-api.specs.billing-add-cc-request :refer :all]
            [inter-server-management-api.specs.account-info-max-mind-response :refer :all]
            [inter-server-management-api.specs.password-request :refer :all]
            [inter-server-management-api.specs.tickets-count-array :refer :all]
            [inter-server-management-api.specs.mail-schema :refer :all]
            [inter-server-management-api.specs.vps-order-post-request :refer :all]
            [inter-server-management-api.specs.billing-payment-method-request :refer :all]
            [inter-server-management-api.specs.home :refer :all]
            [inter-server-management-api.specs.server-locations :refer :all]
            [inter-server-management-api.specs.ssl-order-request :refer :all]
            [inter-server-management-api.specs.service :refer :all]
            [inter-server-management-api.specs.server-order-os-li :refer :all]
            [inter-server-management-api.specs.vps :refer :all]
            [inter-server-management-api.specs.vps-template-row :refer :all]
            [inter-server-management-api.specs.backup :refer :all]
            [inter-server-management-api.specs.account-info-data-ccs :refer :all]
            [inter-server-management-api.specs.disable-scrub-400-response :refer :all]
            [inter-server-management-api.specs.mail-order-request :refer :all]
            [inter-server-management-api.specs.websites-order-packages :refer :all]
            [inter-server-management-api.specs.quickserver-billing-details :refer :all]
            [inter-server-management-api.specs.get-oauth-redirect-200-response :refer :all]
            [inter-server-management-api.specs.website-client-link :refer :all]
            [inter-server-management-api.specs.server-network-info-assets :refer :all]
            [inter-server-management-api.specs.server-service-info :refer :all]
            [inter-server-management-api.specs.home-details-modules-vps :refer :all]
            [inter-server-management-api.specs.backup-order-put-response :refer :all]
            [inter-server-management-api.specs.website-order-post-request :refer :all]
            [inter-server-management-api.specs.scrub-ip-filter-types-filters-value :refer :all]
            [inter-server-management-api.specs.patch-oauth-two-factor-request :refer :all]
            [inter-server-management-api.specs.home-ticket-status-view :refer :all]
            [inter-server-management-api.specs.quickserver-order-server-details :refer :all]
            [inter-server-management-api.specs.vps-order-templates-hyperv-windows :refer :all]
            [inter-server-management-api.specs.dns-new-domain :refer :all]
            [inter-server-management-api.specs.create-geo-firewall-rule :refer :all]
            [inter-server-management-api.specs.create-rule-400-response :refer :all]
            [inter-server-management-api.specs.account-info-data-email-settings :refer :all]
            [inter-server-management-api.specs.qs-order-request :refer :all]
            [inter-server-management-api.specs.mail-delist-response :refer :all]
            [inter-server-management-api.specs.server-order-cpu :refer :all]
            [inter-server-management-api.specs.domain-nameserver-post-request :refer :all]
            [inter-server-management-api.specs.create-filter-400-response :refer :all]
            [inter-server-management-api.specs.get-scrub-ip-details-200-response-service-info :refer :all]
            [inter-server-management-api.specs.server-order-config-ids :refer :all]
            [inter-server-management-api.specs.vps-traffic-usage-average-section-response :refer :all]
            [inter-server-management-api.specs.mail-block-rspamd :refer :all]
            [inter-server-management-api.specs.vps-templates-list :refer :all]
            [inter-server-management-api.specs.server :refer :all]
            [inter-server-management-api.specs.vps-order-platform-packages :refer :all]
            [inter-server-management-api.specs.domain-service-info :refer :all]
            [inter-server-management-api.specs.scrub-ips-delete-rule-200-response :refer :all]
            [inter-server-management-api.specs.server-extra-info-tables :refer :all]
            [inter-server-management-api.specs.dns-record-type :refer :all]
            [inter-server-management-api.specs.domain-nameserver-get-response :refer :all]
            [inter-server-management-api.specs.licenses-order-service-categories :refer :all]
            [inter-server-management-api.specs.server-bulk-ipmi-power-response :refer :all]
            [inter-server-management-api.specs.vps-order-platform-names :refer :all]
            [inter-server-management-api.specs.quickserver-order :refer :all]
            [inter-server-management-api.specs.websites-order-packges :refer :all]
            [inter-server-management-api.specs.servers-buy-now-error :refer :all]
            [inter-server-management-api.specs.close-ticket-response-schema :refer :all]
            [inter-server-management-api.specs.server-order-post-request-hd :refer :all]
            [inter-server-management-api.specs.quickserver-order-templates-ubuntu64 :refer :all]
            [inter-server-management-api.specs.vps-extra-info-tables :refer :all]
            [inter-server-management-api.specs.home-services-licenses :refer :all]
            [inter-server-management-api.specs.website-login-response :refer :all]
            [inter-server-management-api.specs.domain-nameserver-get-response-inner :refer :all]
            [inter-server-management-api.specs.license-extra-info-tables :refer :all]
            [inter-server-management-api.specs.mail-log :refer :all]
            [inter-server-management-api.specs.domain-prov-process-pending :refer :all]
            [inter-server-management-api.specs.domain-lookup-response :refer :all]
            [inter-server-management-api.specs.domain-order-request :refer :all]
            [inter-server-management-api.specs.dns-record :refer :all]
            [inter-server-management-api.specs.vps-order-os-names :refer :all]
            [inter-server-management-api.specs.vps-traffic-totals-section-response :refer :all]
            [inter-server-management-api.specs.module-settings :refer :all]
            [inter-server-management-api.specs.buy-it-now-row-cpu-inner :refer :all]
            [inter-server-management-api.specs.buy-it-now-server-order-200-response :refer :all]
            [inter-server-management-api.specs.quickserver-extra-info-tables :refer :all]
            [inter-server-management-api.specs.vps-cp-data :refer :all]
            [inter-server-management-api.specs.server-order-cpu-li :refer :all]
            [inter-server-management-api.specs.domain-order-services :refer :all]
            [inter-server-management-api.specs.login-info :refer :all]
            [inter-server-management-api.specs.home-services-vps-links :refer :all]
            [inter-server-management-api.specs.get-order-detail-200-response :refer :all]
            [inter-server-management-api.specs.quickserver-row :refer :all]
            [inter-server-management-api.specs.website-service-info :refer :all]
            [inter-server-management-api.specs.license :refer :all]
            [inter-server-management-api.specs.add-server-200-response :refer :all]
            [inter-server-management-api.specs.post-oauth-callback-request :refer :all]
            [inter-server-management-api.specs.mail-alert-update-request :refer :all]
            [inter-server-management-api.specs.billing-prepay-request :refer :all]
            [inter-server-management-api.specs.get-account-tfa-setup-200-response :refer :all]
            [inter-server-management-api.specs.vps-traffic-data-data-section-response-inner :refer :all]
            [inter-server-management-api.specs.home-details-modules-servers :refer :all]
            [inter-server-management-api.specs.scrub-ips-delete-rule-500-response :refer :all]
            [inter-server-management-api.specs.buy-it-now-row-cpu-inner-one-of :refer :all]
            [inter-server-management-api.specs.mail-extra-info-table :refer :all]
            [inter-server-management-api.specs.login-submission-example :refer :all]
            [inter-server-management-api.specs.license-billing-details :refer :all]
            [inter-server-management-api.specs.url-request :refer :all]
            [inter-server-management-api.specs.get-scrub-ip-details-200-response-extra-info-tables :refer :all]
            [inter-server-management-api.specs.mail-alert-request :refer :all]
            [inter-server-management-api.specs.quickserver-addons-row :refer :all]
            [inter-server-management-api.specs.website-service-master :refer :all]
            [inter-server-management-api.specs.domain-whois-privacy-request :refer :all]
            [inter-server-management-api.specs.license-ip-info-row :refer :all]
            [inter-server-management-api.specs.charge-invoice-rows-invoices-value-paid-invoices-value :refer :all]
            [inter-server-management-api.specs.server-ipmi-power-request :refer :all]
            [inter-server-management-api.specs.quickservers-cancel-200-response :refer :all]
            [inter-server-management-api.specs.get-order-detail-200-response-ips-inner :refer :all]
            [inter-server-management-api.specs.service-type :refer :all]
            [inter-server-management-api.specs.vps-snapshot :refer :all]
            [inter-server-management-api.specs.service-categories :refer :all]
            [inter-server-management-api.specs.vps-order :refer :all]
            [inter-server-management-api.specs.backup-service-extra :refer :all]
            [inter-server-management-api.specs.backup-billing-details :refer :all]
            [inter-server-management-api.specs.affiliate-payment-setup :refer :all]
            [inter-server-management-api.specs.vps-da-license :refer :all]
            [inter-server-management-api.specs.account-features :refer :all]
            [inter-server-management-api.specs.login-submission-example-g-recaptcha-response :refer :all]
            [inter-server-management-api.specs.mail-service-info :refer :all]
            [inter-server-management-api.specs.status-monthly-breakdown :refer :all]
            [inter-server-management-api.specs.get-scrub-ip-details-200-response-client-links-inner :refer :all]
            [inter-server-management-api.specs.vps-order-templates :refer :all]
            [inter-server-management-api.specs.restore-request :refer :all]
            [inter-server-management-api.specs.account-info :refer :all]
            [inter-server-management-api.specs.backup-extra-info-tables :refer :all]
            [inter-server-management-api.specs.send-mail :refer :all]
            [inter-server-management-api.specs.servers-buy-now-response :refer :all]
            [inter-server-management-api.specs.buy-it-now-server-order-200-response-ips-inner :refer :all]
            [inter-server-management-api.specs.domain-billing-details :refer :all]
            [inter-server-management-api.specs.domain-order :refer :all]
            [inter-server-management-api.specs.backup-login-response :refer :all]
            [inter-server-management-api.specs.backup-ip-info-row :refer :all]
            [inter-server-management-api.specs.home-services-servers :refer :all]
            [inter-server-management-api.specs.billing-invoice-list :refer :all]
            [inter-server-management-api.specs.hostname-object :refer :all]
            [inter-server-management-api.specs.backup-client-link :refer :all]
            [inter-server-management-api.specs.mail-deliverability-response :refer :all]
            [inter-server-management-api.specs.delete-filter-400-response :refer :all]
            [inter-server-management-api.specs.domain-dnssec-records-inner :refer :all]
            [inter-server-management-api.specs.get-scrub-ip-details-200-response-extra-info-tables-scrub-ips :refer :all]
            [inter-server-management-api.specs.quickserver-addons :refer :all]
            [inter-server-management-api.specs.server-order-memory-li :refer :all]
            [inter-server-management-api.specs.quickserver-order-templates :refer :all]
            [inter-server-management-api.specs.server-ipmi-live-request :refer :all]
            [inter-server-management-api.specs.mail-client-link :refer :all]
            [inter-server-management-api.specs.server-assets :refer :all]
            [inter-server-management-api.specs.domain-contact-details :refer :all]
            [inter-server-management-api.specs.website-table-row :refer :all]
            [inter-server-management-api.specs.home-details-modules-webhosting :refer :all]
            [inter-server-management-api.specs.create-filter :refer :all]
            [inter-server-management-api.specs.buy-it-now-server-order-200-response-raid-inner :refer :all]
            [inter-server-management-api.specs.vps-traffic-totals-resposne :refer :all]
            [inter-server-management-api.specs.server-bulk-ipmi-power-response-results-inner :refer :all]
            [inter-server-management-api.specs.dns-list-item :refer :all]
            [inter-server-management-api.specs.cancel-domain-200-response :refer :all]
            [inter-server-management-api.specs.home-details :refer :all]
            [inter-server-management-api.specs.server-ipmi-live-info :refer :all]
            [inter-server-management-api.specs.home-services-domains-links :refer :all]
            [inter-server-management-api.specs.home-services :refer :all]
            [inter-server-management-api.specs.websites-order-service-offers :refer :all]
            [inter-server-management-api.specs.vps-order-location-stock :refer :all]
            [inter-server-management-api.specs.account-info-limits :refer :all]
            [inter-server-management-api.specs.queue-response :refer :all]
            [inter-server-management-api.specs.cancel-scrub-ip-200-response :refer :all]
            [inter-server-management-api.specs.delete-mail-alert-request :refer :all]
            [inter-server-management-api.specs.services :refer :all]
            [inter-server-management-api.specs.get-order-detail-200-response-package-costs :refer :all]
            [inter-server-management-api.specs.domain-client-link :refer :all]
            [inter-server-management-api.specs.server-order-field-label :refer :all]
            [inter-server-management-api.specs.vps-backup-row :refer :all]
            [inter-server-management-api.specs.post-oauth-callback-200-response :refer :all]
            [inter-server-management-api.specs.home-details-modules-licenses :refer :all]
            [inter-server-management-api.specs.backup-order-post-response-cj-params :refer :all]
            [inter-server-management-api.specs.vps-order-location-names :refer :all]
            [inter-server-management-api.specs.get-website-buy-ip-200-response :refer :all]
            [inter-server-management-api.specs.licenses-order-service-categories509 :refer :all]
            [inter-server-management-api.specs.domain-all-info :refer :all]
            [inter-server-management-api.specs.login-service-counts :refer :all]
            [inter-server-management-api.specs.domain-dnssec-records :refer :all]
            [inter-server-management-api.specs.vps-service-info :refer :all]
            [inter-server-management-api.specs.affiliate-banner-row :refer :all]
            [inter-server-management-api.specs.create-rule-500-response :refer :all]
            [inter-server-management-api.specs.backups-order :refer :all]
            [inter-server-management-api.specs.backup-order-put-request :refer :all]
            [inter-server-management-api.specs.account-info-oauth-config :refer :all]
            [inter-server-management-api.specs.reply-ticket-request :refer :all]
            [inter-server-management-api.specs.mail-delist-request :refer :all]
            [inter-server-management-api.specs.scrub-ips-delete-rule-400-response :refer :all]
            [inter-server-management-api.specs.backup-ip-info :refer :all]
            [inter-server-management-api.specs.post-website-migration-request :refer :all]
            [inter-server-management-api.specs.modules :refer :all]
            [inter-server-management-api.specs.websites-order-json-service-offers :refer :all]
            [inter-server-management-api.specs.domain-owner-contact :refer :all]
            [inter-server-management-api.specs.mail-tutorials-table :refer :all]
            [inter-server-management-api.specs.domain-admin-contact :refer :all]
            [inter-server-management-api.specs.vps-traffic-usage-response :refer :all]
            [inter-server-management-api.specs.service-order-post-response :refer :all]
            [inter-server-management-api.specs.vps-cancel-200-response :refer :all]
            [inter-server-management-api.specs.server-network-info-switchports :refer :all]
            [inter-server-management-api.specs.scrub-ip-filter-types :refer :all]
            [inter-server-management-api.specs.get-order-detail-200-response-service-types-inner :refer :all]
            [inter-server-management-api.specs.quickserver-order-version-centosstream8 :refer :all]
            [inter-server-management-api.specs.create-geo-rule-400-response :refer :all]
            [inter-server-management-api.specs.vps-traffic-data-section-response :refer :all]
            [inter-server-management-api.specs.charge-invoice-rows-invoices-value :refer :all]
            [inter-server-management-api.specs.cancel-backup-200-response :refer :all]
            [inter-server-management-api.specs.vps-traffic-usage-average-response :refer :all]
            [inter-server-management-api.specs.mail-alerts-response :refer :all]
            [inter-server-management-api.specs.vps-da-data :refer :all]
            [inter-server-management-api.specs.deny-rule-record :refer :all]
            [inter-server-management-api.specs.home-services-backups :refer :all]
            [inter-server-management-api.specs.create-rule-201-response :refer :all]
            [inter-server-management-api.specs.quickserver-ip-table-row :refer :all]
            [inter-server-management-api.specs.email-address :refer :all]
            [inter-server-management-api.specs.vps-plesk-license :refer :all]
            [inter-server-management-api.specs.get-account-locales-200-response-value :refer :all]
            [inter-server-management-api.specs.vps-traffic-history-section-data-response :refer :all]
            [inter-server-management-api.specs.backup-service-master :refer :all]
            [inter-server-management-api.specs.vps-traffic-history-response :refer :all]
            [inter-server-management-api.specs.vps-plesk12-data :refer :all]
            [inter-server-management-api.specs.floating-ips-cancel-200-response :refer :all]
            [inter-server-management-api.specs.initiate-payment-200-response :refer :all]
            [inter-server-management-api.specs.login-submission-example-g-recaptcha-response-dep :refer :all]
            [inter-server-management-api.specs.vps-service-addons :refer :all]
            [inter-server-management-api.specs.get-scrub-ip-details-200-response-billing-details :refer :all]
            [inter-server-management-api.specs.domain-dnssec-request :refer :all]
            [inter-server-management-api.specs.vps-order-put-response :refer :all]
            [inter-server-management-api.specs.servers-buy-now-response-order-details :refer :all]
            [inter-server-management-api.specs.ssl-cancel-200-response :refer :all]
            [inter-server-management-api.specs.server-order-cp-li :refer :all]
            [inter-server-management-api.specs.vps-backup-rows :refer :all]
            [inter-server-management-api.specs.backup-row :refer :all]
            [inter-server-management-api.specs.home-services-licenses-links :refer :all]
            [inter-server-management-api.specs.mail-extra-info-table-row :refer :all]
            [inter-server-management-api.specs.mail-log-entry :refer :all]
            [inter-server-management-api.specs.monthly-counts :refer :all]
            [inter-server-management-api.specs.buy-it-now-list :refer :all]
            [inter-server-management-api.specs.home-ticket-status :refer :all]
            [inter-server-management-api.specs.ticket-new :refer :all]
            [inter-server-management-api.specs.account-info-limits-inner :refer :all]
            [inter-server-management-api.specs.home-details-modules-domains :refer :all]
            [inter-server-management-api.specs.ip-limit-range :refer :all]
            [inter-server-management-api.specs.ticket-post-details :refer :all]
            [inter-server-management-api.specs.view-mail-log-start-date-parameter :refer :all]
            [inter-server-management-api.specs.services-info :refer :all]
            [inter-server-management-api.specs.domain-order-response :refer :all]
            [inter-server-management-api.specs.server-billing-details :refer :all]
            [inter-server-management-api.specs.backups-order-service-types :refer :all]
            [inter-server-management-api.specs.vps-service-master :refer :all]
            [inter-server-management-api.specs.home-services-servers-links :refer :all]
            [inter-server-management-api.specs.mail-cancel-200-response :refer :all]
            [inter-server-management-api.specs.deny-rule-new :refer :all]
            [inter-server-management-api.specs.server-row :refer :all]
            [inter-server-management-api.specs.home-services-domains :refer :all]
            [inter-server-management-api.specs.server-order-ips-li :refer :all]
            [inter-server-management-api.specs.mail-service-type :refer :all]
            [inter-server-management-api.specs.mail-stats-type-volume-ip :refer :all]
            [inter-server-management-api.specs.license-ip-info :refer :all]
            [inter-server-management-api.specs.home-services-webhosting-links :refer :all]
            [inter-server-management-api.specs.server-order-raid :refer :all]
            [inter-server-management-api.specs.website-backups-inner :refer :all]
            [inter-server-management-api.specs.search-autocomplete-response :refer :all]
            [inter-server-management-api.specs.server-switchport :refer :all]
            [inter-server-management-api.specs.vps-order-service-types-32 :refer :all]
            [inter-server-management-api.specs.post-website-buy-ip-200-response :refer :all]
            [inter-server-management-api.specs.account-info-oauth-config-providers-value :refer :all]
            [inter-server-management-api.specs.service-types :refer :all]
            [inter-server-management-api.specs.domain-order-response-attributes :refer :all]
            [inter-server-management-api.specs.vps-order-package-costs :refer :all]
            [inter-server-management-api.specs.quickserver-order-server-details381 :refer :all]
            [inter-server-management-api.specs.update-ticket :refer :all]
            [inter-server-management-api.specs.licenses-order-service-types11482 :refer :all]
            [inter-server-management-api.specs.mail-order :refer :all]
            [inter-server-management-api.specs.tickets-row :refer :all]
            [inter-server-management-api.specs.ticket-custom-field-details :refer :all]
            [inter-server-management-api.specs.place-scrub-order-201-response :refer :all]
            [inter-server-management-api.specs.place-buy-now-server-request :refer :all]
            [inter-server-management-api.specs.home-details-modules :refer :all]
            [inter-server-management-api.specs.server-order-ip :refer :all]
            [inter-server-management-api.specs.server-order-form-values :refer :all]
            [inter-server-management-api.specs.view-ticket-response :refer :all]
            [inter-server-management-api.specs.delete-filter-200-response :refer :all]
            [inter-server-management-api.specs.mail-row :refer :all]
            [inter-server-management-api.specs.quickserver :refer :all]
            [inter-server-management-api.specs.reply-ticket-response-schema :refer :all]
            [inter-server-management-api.specs.vps-order-put-request :refer :all]
            [inter-server-management-api.specs.mail-stats-type-volume-from :refer :all]
            [inter-server-management-api.specs.mail-alerts-response-inner :refer :all]
            [inter-server-management-api.specs.domain-tech-contact :refer :all]
            [inter-server-management-api.specs.server-client-link :refer :all]
            [inter-server-management-api.specs.buy-it-now-server-order-200-response-os-inner :refer :all]
            [inter-server-management-api.specs.charge-invoice-rows :refer :all]
            [inter-server-management-api.specs.licenses-order-package-costs :refer :all]
            [inter-server-management-api.specs.domain-all-info-attributes-contact-set :refer :all]
            [inter-server-management-api.specs.billing-verify-cc-request :refer :all]
            [inter-server-management-api.specs.vps-order-service-types :refer :all]
            [inter-server-management-api.specs.mail-attachment :refer :all]
            [inter-server-management-api.specs.place-scrub-order-201-response-order-details-cj-params :refer :all]
            [inter-server-management-api.specs.delete-firewall-rule :refer :all]
            [inter-server-management-api.specs.tickets :refer :all]
            [inter-server-management-api.specs.website-extra-info-tables :refer :all]
            [inter-server-management-api.specs.account-ssh-key :refer :all]
            [inter-server-management-api.specs.websites-order-service-offer :refer :all]
            [inter-server-management-api.specs.buy-it-now-server-order-200-response-bandwidth-inner :refer :all]
            [inter-server-management-api.specs.domain-service-type :refer :all]
            [inter-server-management-api.specs.vps-client-link :refer :all]
            [inter-server-management-api.specs.vps-billing-details :refer :all]
            [inter-server-management-api.specs.buy-it-now-row :refer :all]
            [inter-server-management-api.specs.timezone-update :refer :all]
            [inter-server-management-api.specs.servers-cancel-200-response :refer :all]
            [inter-server-management-api.specs.server-order-memory :refer :all]
            [inter-server-management-api.specs.website-backups :refer :all]
            [inter-server-management-api.specs.vps-ip-info :refer :all]
            [inter-server-management-api.specs.domain-billing-extra :refer :all]
            [inter-server-management-api.specs.backup-order-post-response :refer :all]
            [inter-server-management-api.specs.scrub-ips-row-schema :refer :all]
            [inter-server-management-api.specs.scrub-ip-place-order :refer :all]
            [inter-server-management-api.specs.patch-billing-credit-card-verify-request :refer :all]
            [inter-server-management-api.specs.license-service-info :refer :all]
            [inter-server-management-api.specs.server-lease :refer :all]
            [inter-server-management-api.specs.charge-invoice-rows-invoices-value-paid-invoices-value-refund-invoices-value :refer :all]
            [inter-server-management-api.specs.enable-scrub-200-response :refer :all]
            [inter-server-management-api.specs.vps-order-location-stock-1 :refer :all]
            [inter-server-management-api.specs.get-account-info-401-response :refer :all]
            [inter-server-management-api.specs.account-info-data :refer :all]
            [inter-server-management-api.specs.get-scrub-ip-details-200-response :refer :all]
            [inter-server-management-api.specs.domain-search-response :refer :all]
            [inter-server-management-api.specs.backups-order-package-costs :refer :all]
            [inter-server-management-api.specs.account-info-country-currencies :refer :all]
            [inter-server-management-api.specs.disable-scrub-200-response :refer :all]
            [inter-server-management-api.specs.server-order-bandwidth-li :refer :all]
            [inter-server-management-api.specs.email-address-name :refer :all]
            [inter-server-management-api.specs.post-website-migration-200-response :refer :all]
            [inter-server-management-api.specs.quickserver-ip-info :refer :all]
            [inter-server-management-api.specs.licenses-order :refer :all]
            [inter-server-management-api.specs.license-row :refer :all]
            [inter-server-management-api.specs.server-order-bandwidth :refer :all]
            [inter-server-management-api.specs.quickserver-service-extra :refer :all]
            [inter-server-management-api.specs.quickserver-client-link :refer :all]
            [inter-server-management-api.specs.download-qs-backup-request :refer :all]
            [inter-server-management-api.specs.licenses-order-service-types :refer :all]
            [inter-server-management-api.specs.mail-tutorials-table-row :refer :all]
            [inter-server-management-api.specs.vps-service-extra :refer :all]
            )
  (:import (java.io File)))


(defn-spec add-vps-with-http-info any?
  "Place a new VPS order, create the invoice, and queue provisioning
  Step 3 of the VPS order flow — actually places the order. Revalidates the same configuration that `putVps` accepts (so the request is safe even if `putVps` was skipped), then calls `place_buy_vps`: allocates a backing hypervisor server via `get_vps_next_server`, creates a `Repeat_Invoice` ORM row for the recurring charge, generates the initial `invoices` row via `$repeat_invoice->invoice()`, inserts a `vps` service record with `vps_status='pending'`, and creates any control-panel addon invoices (CPanel/DirectAdmin). Returns the new service id plus invoice ids the caller must pay before provisioning runs. **Real money** — call `putVps` first to preview cost. Sibling ops: `getNewVps`, `putVps`, `getVpsInfo`, `VPSCancel`.

**Body fields:** Identical to `putVps`. Required: `osDistro`, `osVersion`, `vpsPlatform`, `slices`. Optional: `location` (default 1), `period` (default 1), `coupon`, `hostname`, `rootpass`, `controlpanel` (default `none`), `comment`. Same validation rules apply (slice range, rootpass regex for Linux, hostname FQDN format, platform↔OS↔controlpanel compatibility).

**Returned fields** (schema `ServiceOrderPostResponse`):
- `success` (bool) — `true` on successful placement.
- `serviceid` (integer) — new VPS id; use this with `getVpsInfo` to poll status.
- `iid` (string) — primary invoice id (numeric).
- `real_iids` (array of strings) — numeric invoice ids to pass to `initiatePayment` (`invoices` path param).
- `iids` (array of strings) — tagged invoice ids (e.g. `SERVICEvps12345`) — alternative payment identifier.
- `total_cost` (decimal string) — total to pay across all generated invoices.
- `invoice_description` (string) — human-readable summary (e.g. `KVM 2 Slices`).
- `cj_params` (object) — Commission Junction tracking parameters (affiliate flows).

**Side effects:**
- Inserts row into `vps` table (`vps_status='pending'`).
- Inserts `repeat_invoices` row for the recurring charge.
- Inserts `invoices` row for the first period charge.
- Inserts additional `invoices` rows for CPanel/DirectAdmin addons if `controlpanel != 'none'`.
- Logs a `vps` signup event in `history_log`.
- Saves root password to `history_log` (encrypted at rest).

**Errors:**
- `400 Bad Request` — validation failed; response body is the `errors` array from validation.
- `401 Unauthorized` — missing session/API key.

**Related calls:**
- **Prerequisite:** `getNewVps` (catalog), `putVps` (preview cost — strongly recommended).
- **Next:** `getBillingInvoice` (review invoice line items), `initiatePayment` (`GET /billing/pay/{method}/{invoices}` — pay with `real_iids`), then `getVpsInfo` (poll for `vps_status == \"active\"`), `getVpsWelcomeEmail` (resend credentials).
- **Cancel before paying:** `VPSCancel`.

**Example request body:** Same as `putVps`.

**Example response:**
```json
{
  \"success\": true,
  \"serviceid\": 12345,
  \"iid\": \"25296600\",
  \"real_iids\": [\"25296600\"],
  \"iids\": [\"SERVICEvps12345\"],
  \"total_cost\": \"12.00\",
  \"invoice_description\": \"KVM 2 Slices\",
  \"cj_params\": {}
}
```
**Full ordering happy path:**
```text
GET /vps/order                                  -> catalog (getNewVps)
PUT /vps/order { ...config }                    -> price quote (putVps)
POST /vps/order { ...config }                   -> { serviceid, real_iids } (addVps)
GET /billing/invoices/{iid}                     -> confirm invoice (getBillingInvoice)
GET /billing/pay/cc/{real_iids[0]}              -> pay (payInvoice; type=submit|redirect|single)
GET /vps/{serviceid}                            -> poll until vps_status==\"active\" (getVpsInfo)
```"
  ([] (add-vps-with-http-info nil))
  ([{:keys [vps-order-post-request]} (s/map-of keyword? any?)]
   (call-api "/vps/order" :post
             {:path-params   {}
              :header-params {}
              :query-params  {}
              :form-params   {}
              :body-param    vps-order-post-request
              :content-types ["application/json" "multipart/form-data"]
              :accepts       ["application/json"]
              :auth-names    ["sessionIdCookieAuth" "apiKeyAuth" "sessionIdHeaderAuth"]})))

(defn-spec add-vps service-order-post-response-spec
  "Place a new VPS order, create the invoice, and queue provisioning
  Step 3 of the VPS order flow — actually places the order. Revalidates the same configuration that `putVps` accepts (so the request is safe even if `putVps` was skipped), then calls `place_buy_vps`: allocates a backing hypervisor server via `get_vps_next_server`, creates a `Repeat_Invoice` ORM row for the recurring charge, generates the initial `invoices` row via `$repeat_invoice->invoice()`, inserts a `vps` service record with `vps_status='pending'`, and creates any control-panel addon invoices (CPanel/DirectAdmin). Returns the new service id plus invoice ids the caller must pay before provisioning runs. **Real money** — call `putVps` first to preview cost. Sibling ops: `getNewVps`, `putVps`, `getVpsInfo`, `VPSCancel`.

**Body fields:** Identical to `putVps`. Required: `osDistro`, `osVersion`, `vpsPlatform`, `slices`. Optional: `location` (default 1), `period` (default 1), `coupon`, `hostname`, `rootpass`, `controlpanel` (default `none`), `comment`. Same validation rules apply (slice range, rootpass regex for Linux, hostname FQDN format, platform↔OS↔controlpanel compatibility).

**Returned fields** (schema `ServiceOrderPostResponse`):
- `success` (bool) — `true` on successful placement.
- `serviceid` (integer) — new VPS id; use this with `getVpsInfo` to poll status.
- `iid` (string) — primary invoice id (numeric).
- `real_iids` (array of strings) — numeric invoice ids to pass to `initiatePayment` (`invoices` path param).
- `iids` (array of strings) — tagged invoice ids (e.g. `SERVICEvps12345`) — alternative payment identifier.
- `total_cost` (decimal string) — total to pay across all generated invoices.
- `invoice_description` (string) — human-readable summary (e.g. `KVM 2 Slices`).
- `cj_params` (object) — Commission Junction tracking parameters (affiliate flows).

**Side effects:**
- Inserts row into `vps` table (`vps_status='pending'`).
- Inserts `repeat_invoices` row for the recurring charge.
- Inserts `invoices` row for the first period charge.
- Inserts additional `invoices` rows for CPanel/DirectAdmin addons if `controlpanel != 'none'`.
- Logs a `vps` signup event in `history_log`.
- Saves root password to `history_log` (encrypted at rest).

**Errors:**
- `400 Bad Request` — validation failed; response body is the `errors` array from validation.
- `401 Unauthorized` — missing session/API key.

**Related calls:**
- **Prerequisite:** `getNewVps` (catalog), `putVps` (preview cost — strongly recommended).
- **Next:** `getBillingInvoice` (review invoice line items), `initiatePayment` (`GET /billing/pay/{method}/{invoices}` — pay with `real_iids`), then `getVpsInfo` (poll for `vps_status == \"active\"`), `getVpsWelcomeEmail` (resend credentials).
- **Cancel before paying:** `VPSCancel`.

**Example request body:** Same as `putVps`.

**Example response:**
```json
{
  \"success\": true,
  \"serviceid\": 12345,
  \"iid\": \"25296600\",
  \"real_iids\": [\"25296600\"],
  \"iids\": [\"SERVICEvps12345\"],
  \"total_cost\": \"12.00\",
  \"invoice_description\": \"KVM 2 Slices\",
  \"cj_params\": {}
}
```
**Full ordering happy path:**
```text
GET /vps/order                                  -> catalog (getNewVps)
PUT /vps/order { ...config }                    -> price quote (putVps)
POST /vps/order { ...config }                   -> { serviceid, real_iids } (addVps)
GET /billing/invoices/{iid}                     -> confirm invoice (getBillingInvoice)
GET /billing/pay/cc/{real_iids[0]}              -> pay (payInvoice; type=submit|redirect|single)
GET /vps/{serviceid}                            -> poll until vps_status==\"active\" (getVpsInfo)
```"
  ([] (add-vps nil))
  ([optional-params any?]
   (let [res (:data (add-vps-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode service-order-post-response-spec res st/string-transformer)
        res))))


(defn-spec delete-vps-backup-with-http-info any?
  "Permanently delete a VPS backup file by name (irreversible)
  Removes a backup file from storage to free space. For `minio`-typed backups runs `mc rm --force --recursive` on the path; for `swift`-typed backups removes the storage object via the Swift API. ZFS-typed backups **cannot** be deleted through this endpoint — they return an error directing the caller to open a support ticket. **Irreversible** — once deleted the backup cannot be used with `postVpsRestore` or `downloadVpsBackup`. Sibling ops: `getVpsBackups` (list), `downloadVpsBackup` (download first), `getVpsBackup` (create new).

**Path param:**
- `id` (integer, required) — VPS id from `getVpsList.vps_id`.

**Query params:**
- `file` (string, required) — exact `name` from `getVpsBackups` (the canonical backup identifier).

**Returns:** `SuccessTextResponse` — `Backup <name> removed.` on success.

**Side effects:**
- **minio**: `mc rm --force --recursive` removes the entire backup directory.
- **swift**: deletes the listed object(s) plus any multi-part `extra` segments.

**Auth:** Session/API key. Ownership enforced via parent VPS.

**Errors:**
- `401` — unauthenticated.
- `404 Invalid VPS Passed` — `id` not owned by caller.
- `No file specified` — `file` query param missing.
- **ZFS backup:** `This type of backup if not removable. Please contact support if you need this removed.`
- **MinIO rm failure:** `Error removing file <name>`.

**Related calls:**
- **List first to get `name`:** `getVpsBackups`.
- **Download before deleting:** `downloadVpsBackup` (MinIO only; Swift/ZFS disabled).
- **Restore (don't delete):** `postVpsRestore`."
  ([id int?, file string?, ] (delete-vps-backup-with-http-info id file nil))
  ([id int?, file string?, {:keys [all]} (s/map-of keyword? any?)]
   (check-required-params id file)
   (call-api "/vps/{id}/backups" :delete
             {:path-params   {"id" id }
              :header-params {}
              :query-params  {"all" all "file" file }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    ["sessionIdCookieAuth" "apiKeyAuth" "sessionIdHeaderAuth"]})))

(defn-spec delete-vps-backup success-text-response-spec
  "Permanently delete a VPS backup file by name (irreversible)
  Removes a backup file from storage to free space. For `minio`-typed backups runs `mc rm --force --recursive` on the path; for `swift`-typed backups removes the storage object via the Swift API. ZFS-typed backups **cannot** be deleted through this endpoint — they return an error directing the caller to open a support ticket. **Irreversible** — once deleted the backup cannot be used with `postVpsRestore` or `downloadVpsBackup`. Sibling ops: `getVpsBackups` (list), `downloadVpsBackup` (download first), `getVpsBackup` (create new).

**Path param:**
- `id` (integer, required) — VPS id from `getVpsList.vps_id`.

**Query params:**
- `file` (string, required) — exact `name` from `getVpsBackups` (the canonical backup identifier).

**Returns:** `SuccessTextResponse` — `Backup <name> removed.` on success.

**Side effects:**
- **minio**: `mc rm --force --recursive` removes the entire backup directory.
- **swift**: deletes the listed object(s) plus any multi-part `extra` segments.

**Auth:** Session/API key. Ownership enforced via parent VPS.

**Errors:**
- `401` — unauthenticated.
- `404 Invalid VPS Passed` — `id` not owned by caller.
- `No file specified` — `file` query param missing.
- **ZFS backup:** `This type of backup if not removable. Please contact support if you need this removed.`
- **MinIO rm failure:** `Error removing file <name>`.

**Related calls:**
- **List first to get `name`:** `getVpsBackups`.
- **Download before deleting:** `downloadVpsBackup` (MinIO only; Swift/ZFS disabled).
- **Restore (don't delete):** `postVpsRestore`."
  ([id int?, file string?, ] (delete-vps-backup id file nil))
  ([id int?, file string?, optional-params any?]
   (let [res (:data (delete-vps-backup-with-http-info id file optional-params))]
     (if (:decode-models *api-context*)
        (st/decode success-text-response-spec res st/string-transformer)
        res))))


(defn-spec do-vps-block-smtp-with-http-info any?
  "Block outbound SMTP (port 25) on the VPS to prevent spam/abuse
  Blocks outbound SMTP (port 25) traffic on the VPS at the hypervisor level — typical for cPanel/WHM customers who route through a smart relay, or for VPS that should never emit mail directly. Queues a `block_smtp` action on the `vpsqueue` and triggers a VNC re-setup. Despite being GET, this is a side-effecting action and the MCP parser flags it accordingly. **One-way from the client side:** there is no public unblock endpoint — re-enabling outbound SMTP requires a support ticket so abuse history can be reviewed. Sibling ops: `getVpsInfo` (verify state), `doVpsRestart`.

**Path param:**
- `id` (integer, required) — VPS id from `getVpsList.vps_id`.

**Body:** None.

**Returns:** `{ text, queueId }` — `queueId` references the `queue_log` row; allow up to 2 minutes for the iptables/firewall rule to take effect.

**Auth:** Session/API key. Ownership enforced.

**Errors:**
- `401` — unauthenticated.
- `404 Invalid VPS Passed` — `id` not owned by caller.
- `409 VPS is not active` — `vps_status != \"active\"`.

**Reversibility:** Not client-reversible — open a ticket.

**Related calls:**
- **Verify state:** `getVpsInfo`.
- **General lifecycle:** `doVpsStart`, `doVpsStop`, `doVpsRestart`."
  [id int?]
  (check-required-params id)
  (call-api "/vps/{id}/block_smtp" :get
            {:path-params   {"id" id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["sessionIdCookieAuth" "apiKeyAuth" "sessionIdHeaderAuth"]}))

(defn-spec do-vps-block-smtp queue-response-spec
  "Block outbound SMTP (port 25) on the VPS to prevent spam/abuse
  Blocks outbound SMTP (port 25) traffic on the VPS at the hypervisor level — typical for cPanel/WHM customers who route through a smart relay, or for VPS that should never emit mail directly. Queues a `block_smtp` action on the `vpsqueue` and triggers a VNC re-setup. Despite being GET, this is a side-effecting action and the MCP parser flags it accordingly. **One-way from the client side:** there is no public unblock endpoint — re-enabling outbound SMTP requires a support ticket so abuse history can be reviewed. Sibling ops: `getVpsInfo` (verify state), `doVpsRestart`.

**Path param:**
- `id` (integer, required) — VPS id from `getVpsList.vps_id`.

**Body:** None.

**Returns:** `{ text, queueId }` — `queueId` references the `queue_log` row; allow up to 2 minutes for the iptables/firewall rule to take effect.

**Auth:** Session/API key. Ownership enforced.

**Errors:**
- `401` — unauthenticated.
- `404 Invalid VPS Passed` — `id` not owned by caller.
- `409 VPS is not active` — `vps_status != \"active\"`.

**Reversibility:** Not client-reversible — open a ticket.

**Related calls:**
- **Verify state:** `getVpsInfo`.
- **General lifecycle:** `doVpsStart`, `doVpsStop`, `doVpsRestart`."
  [id int?]
  (let [res (:data (do-vps-block-smtp-with-http-info id))]
    (if (:decode-models *api-context*)
       (st/decode queue-response-spec res st/string-transformer)
       res)))


(defn-spec do-vps-disable-cd-with-http-info any?
  "Remove the virtual CD/DVD device entirely from the VPS configuration
  Removes the virtual CD/DVD device from the VPS hardware configuration entirely — distinct from `doVpsEjectCd`, which only unmounts the ISO but leaves the drive attached. Queues a `disable_cd` action on the hypervisor (`vpsqueue`) and triggers a VNC re-setup. Side-effecting GET. Reversible by attaching a new CD via `postVpsInsertCd`. Sibling ops: `doVpsEjectCd` (eject ISO but keep drive), `getVpsInsertCd` (list ISOs), `postVpsInsertCd` (mount ISO).

**Path param:**
- `id` (integer, required) — VPS id from `getVpsList.vps_id`.

**Body:** None.

**Returns:** `{ text, queueId }` — allow ~2 minutes for hypervisor action.

**Side effects:**
- Inserts `vpsqueue` `disable_cd` row.
- Calls `vps_resetup_vnc()` to refresh the VNC config.

**Auth:** Session/API key. Ownership enforced.

**Errors:**
- `401` — unauthenticated.
- `404 Invalid VPS Passed`.
- `409 VPS is not active`.

**Related calls:**
- **Re-attach drive:** `postVpsInsertCd` (provide ISO URL).
- **Just unmount the ISO:** `doVpsEjectCd`."
  [id int?]
  (check-required-params id)
  (call-api "/vps/{id}/disable_cd" :get
            {:path-params   {"id" id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["sessionIdCookieAuth" "apiKeyAuth" "sessionIdHeaderAuth"]}))

(defn-spec do-vps-disable-cd queue-response-spec
  "Remove the virtual CD/DVD device entirely from the VPS configuration
  Removes the virtual CD/DVD device from the VPS hardware configuration entirely — distinct from `doVpsEjectCd`, which only unmounts the ISO but leaves the drive attached. Queues a `disable_cd` action on the hypervisor (`vpsqueue`) and triggers a VNC re-setup. Side-effecting GET. Reversible by attaching a new CD via `postVpsInsertCd`. Sibling ops: `doVpsEjectCd` (eject ISO but keep drive), `getVpsInsertCd` (list ISOs), `postVpsInsertCd` (mount ISO).

**Path param:**
- `id` (integer, required) — VPS id from `getVpsList.vps_id`.

**Body:** None.

**Returns:** `{ text, queueId }` — allow ~2 minutes for hypervisor action.

**Side effects:**
- Inserts `vpsqueue` `disable_cd` row.
- Calls `vps_resetup_vnc()` to refresh the VNC config.

**Auth:** Session/API key. Ownership enforced.

**Errors:**
- `401` — unauthenticated.
- `404 Invalid VPS Passed`.
- `409 VPS is not active`.

**Related calls:**
- **Re-attach drive:** `postVpsInsertCd` (provide ISO URL).
- **Just unmount the ISO:** `doVpsEjectCd`."
  [id int?]
  (let [res (:data (do-vps-disable-cd-with-http-info id))]
    (if (:decode-models *api-context*)
       (st/decode queue-response-spec res st/string-transformer)
       res)))


(defn-spec do-vps-disable-quota-with-http-info any?
  "Disable per-user disk quota enforcement inside the VPS guest OS
  Stops enforcing per-user disk quotas inside the VPS guest OS — useful when an application or user workflow conflicts with quota limits. Queues a `disable_quota` action on the hypervisor (`vpsqueue`) and triggers a VNC re-setup. Side-effecting GET. Reversible via `doVpsEnableQuota`. Sibling op: `doVpsEnableQuota`.

**Path param:**
- `id` (integer, required) — VPS id from `getVpsList.vps_id`.

**Body:** None.

**Returns:** `{ text, queueId }` — allow ~2 minutes.

**Side effects:**
- Inserts `vpsqueue` `disable_quota` row.
- Calls `vps_resetup_vnc()`.

**Auth:** Session/API key. Ownership enforced.

**Errors:**
- `401` — unauthenticated.
- `404 Invalid VPS Passed`.
- `409 VPS is not active`.

**Related calls:**
- **Re-enable:** `doVpsEnableQuota`."
  [id int?]
  (check-required-params id)
  (call-api "/vps/{id}/disable_quota" :get
            {:path-params   {"id" id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["sessionIdCookieAuth" "apiKeyAuth" "sessionIdHeaderAuth"]}))

(defn-spec do-vps-disable-quota queue-response-spec
  "Disable per-user disk quota enforcement inside the VPS guest OS
  Stops enforcing per-user disk quotas inside the VPS guest OS — useful when an application or user workflow conflicts with quota limits. Queues a `disable_quota` action on the hypervisor (`vpsqueue`) and triggers a VNC re-setup. Side-effecting GET. Reversible via `doVpsEnableQuota`. Sibling op: `doVpsEnableQuota`.

**Path param:**
- `id` (integer, required) — VPS id from `getVpsList.vps_id`.

**Body:** None.

**Returns:** `{ text, queueId }` — allow ~2 minutes.

**Side effects:**
- Inserts `vpsqueue` `disable_quota` row.
- Calls `vps_resetup_vnc()`.

**Auth:** Session/API key. Ownership enforced.

**Errors:**
- `401` — unauthenticated.
- `404 Invalid VPS Passed`.
- `409 VPS is not active`.

**Related calls:**
- **Re-enable:** `doVpsEnableQuota`."
  [id int?]
  (let [res (:data (do-vps-disable-quota-with-http-info id))]
    (if (:decode-models *api-context*)
       (st/decode queue-response-spec res st/string-transformer)
       res)))


(defn-spec do-vps-eject-cd-with-http-info any?
  "Eject the mounted ISO from the VPS virtual CD drive (keep the drive)
  Unmounts whatever ISO is currently in the VPS virtual CD drive, leaving the drive attached so another ISO can be mounted. Distinct from `doVpsDisableCd` (which removes the drive itself). Queues an `eject_cd` action on the hypervisor (`vpsqueue`) and triggers a VNC re-setup. Side-effecting GET. Sibling ops: `getVpsInsertCd` (list available ISOs), `postVpsInsertCd` (mount a different one), `doVpsDisableCd` (remove drive entirely).

**Path param:**
- `id` (integer, required) — VPS id from `getVpsList.vps_id`.

**Body:** None.

**Returns:** `{ text, queueId }` — allow ~2 minutes.

**Side effects:**
- Inserts `vpsqueue` `eject_cd` row.
- Calls `vps_resetup_vnc()`.

**Auth:** Session/API key. Ownership enforced.

**Errors:**
- `401` — unauthenticated.
- `404 Invalid VPS Passed`.
- `409 VPS is not active`.

**Related calls:**
- **Mount a different ISO:** `postVpsInsertCd`.
- **Remove the drive entirely:** `doVpsDisableCd`."
  [id int?]
  (check-required-params id)
  (call-api "/vps/{id}/eject_cd" :get
            {:path-params   {"id" id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["sessionIdCookieAuth" "apiKeyAuth" "sessionIdHeaderAuth"]}))

(defn-spec do-vps-eject-cd queue-response-spec
  "Eject the mounted ISO from the VPS virtual CD drive (keep the drive)
  Unmounts whatever ISO is currently in the VPS virtual CD drive, leaving the drive attached so another ISO can be mounted. Distinct from `doVpsDisableCd` (which removes the drive itself). Queues an `eject_cd` action on the hypervisor (`vpsqueue`) and triggers a VNC re-setup. Side-effecting GET. Sibling ops: `getVpsInsertCd` (list available ISOs), `postVpsInsertCd` (mount a different one), `doVpsDisableCd` (remove drive entirely).

**Path param:**
- `id` (integer, required) — VPS id from `getVpsList.vps_id`.

**Body:** None.

**Returns:** `{ text, queueId }` — allow ~2 minutes.

**Side effects:**
- Inserts `vpsqueue` `eject_cd` row.
- Calls `vps_resetup_vnc()`.

**Auth:** Session/API key. Ownership enforced.

**Errors:**
- `401` — unauthenticated.
- `404 Invalid VPS Passed`.
- `409 VPS is not active`.

**Related calls:**
- **Mount a different ISO:** `postVpsInsertCd`.
- **Remove the drive entirely:** `doVpsDisableCd`."
  [id int?]
  (let [res (:data (do-vps-eject-cd-with-http-info id))]
    (if (:decode-models *api-context*)
       (st/decode queue-response-spec res st/string-transformer)
       res)))


(defn-spec do-vps-enable-quota-with-http-info any?
  "Enable per-user disk quota enforcement inside the VPS guest OS
  Turns on per-user disk-quota enforcement inside the VPS guest OS. Queues an `enable_quota` action on the hypervisor (`vpsqueue`) and triggers a VNC re-setup. Side-effecting GET. Reversible via `doVpsDisableQuota`. Sibling op: `doVpsDisableQuota`.

**Path param:**
- `id` (integer, required) — VPS id from `getVpsList.vps_id`.

**Body:** None.

**Returns:** `{ text, queueId }` — allow ~2 minutes.

**Side effects:**
- Inserts `vpsqueue` `enable_quota` row.
- Calls `vps_resetup_vnc()`.

**Auth:** Session/API key. Ownership enforced.

**Errors:**
- `401` — unauthenticated.
- `404 Invalid VPS Passed`.
- `409 VPS is not active`.

**Related calls:**
- **Disable later:** `doVpsDisableQuota`."
  [id int?]
  (check-required-params id)
  (call-api "/vps/{id}/enable_quota" :get
            {:path-params   {"id" id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["sessionIdCookieAuth" "apiKeyAuth" "sessionIdHeaderAuth"]}))

(defn-spec do-vps-enable-quota queue-response-spec
  "Enable per-user disk quota enforcement inside the VPS guest OS
  Turns on per-user disk-quota enforcement inside the VPS guest OS. Queues an `enable_quota` action on the hypervisor (`vpsqueue`) and triggers a VNC re-setup. Side-effecting GET. Reversible via `doVpsDisableQuota`. Sibling op: `doVpsDisableQuota`.

**Path param:**
- `id` (integer, required) — VPS id from `getVpsList.vps_id`.

**Body:** None.

**Returns:** `{ text, queueId }` — allow ~2 minutes.

**Side effects:**
- Inserts `vpsqueue` `enable_quota` row.
- Calls `vps_resetup_vnc()`.

**Auth:** Session/API key. Ownership enforced.

**Errors:**
- `401` — unauthenticated.
- `404 Invalid VPS Passed`.
- `409 VPS is not active`.

**Related calls:**
- **Disable later:** `doVpsDisableQuota`."
  [id int?]
  (let [res (:data (do-vps-enable-quota-with-http-info id))]
    (if (:decode-models *api-context*)
       (st/decode queue-response-spec res st/string-transformer)
       res)))


(defn-spec do-vps-restart-with-http-info any?
  "Reboot the VPS — preferred over stop+start for software changes
  Reboots the VPS — typically after a kernel update, configuration change, or to recover from an unresponsive state. **Preferred over `doVpsStop` followed by `doVpsStart`** because it preserves the boot context and lets the hypervisor handle the sequence atomically. Queues a `restart` action on the hypervisor (`vpsqueue`) and triggers a VNC re-setup. Side-effecting GET. Idempotent in effect — restarting a running VPS reboots it, restarting a stopped VPS starts it. Sibling ops: `doVpsStart`, `doVpsStop`, `getVpsInfo`.

**Path param:**
- `id` (integer, required) — VPS id from `getVpsList.vps_id`.

**Body:** None.

**Returns:** `{ text, queueId }` — allow ~2 minutes; poll `getVpsInfo` to confirm state.

**Side effects:**
- Inserts `vpsqueue` `restart` row.
- Calls `vps_resetup_vnc()` to refresh the VNC config.

**Auth:** Session/API key. Ownership enforced.

**Errors:**
- `401` — unauthenticated.
- `404 Invalid VPS Passed`.
- `409 VPS is not active` — also returned for `cancelled`/`suspended` services.

**Related calls:**
- **Verify state:** `getVpsInfo`.
- **Power off only:** `doVpsStop`.
- **Power on:** `doVpsStart`.
- **Boot from CD:** `postVpsInsertCd` then `doVpsRestart`."
  [id int?]
  (check-required-params id)
  (call-api "/vps/{id}/restart" :get
            {:path-params   {"id" id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["sessionIdCookieAuth" "apiKeyAuth" "sessionIdHeaderAuth"]}))

(defn-spec do-vps-restart queue-response-spec
  "Reboot the VPS — preferred over stop+start for software changes
  Reboots the VPS — typically after a kernel update, configuration change, or to recover from an unresponsive state. **Preferred over `doVpsStop` followed by `doVpsStart`** because it preserves the boot context and lets the hypervisor handle the sequence atomically. Queues a `restart` action on the hypervisor (`vpsqueue`) and triggers a VNC re-setup. Side-effecting GET. Idempotent in effect — restarting a running VPS reboots it, restarting a stopped VPS starts it. Sibling ops: `doVpsStart`, `doVpsStop`, `getVpsInfo`.

**Path param:**
- `id` (integer, required) — VPS id from `getVpsList.vps_id`.

**Body:** None.

**Returns:** `{ text, queueId }` — allow ~2 minutes; poll `getVpsInfo` to confirm state.

**Side effects:**
- Inserts `vpsqueue` `restart` row.
- Calls `vps_resetup_vnc()` to refresh the VNC config.

**Auth:** Session/API key. Ownership enforced.

**Errors:**
- `401` — unauthenticated.
- `404 Invalid VPS Passed`.
- `409 VPS is not active` — also returned for `cancelled`/`suspended` services.

**Related calls:**
- **Verify state:** `getVpsInfo`.
- **Power off only:** `doVpsStop`.
- **Power on:** `doVpsStart`.
- **Boot from CD:** `postVpsInsertCd` then `doVpsRestart`."
  [id int?]
  (let [res (:data (do-vps-restart-with-http-info id))]
    (if (:decode-models *api-context*)
       (st/decode queue-response-spec res st/string-transformer)
       res)))


(defn-spec do-vps-start-with-http-info any?
  "Power on a stopped VPS instance
  Powers on a stopped VPS. Queues a `start` action on the hypervisor (`vpsqueue`) and triggers a VNC re-setup. Side-effecting GET, idempotent in practice — calling on an already-running VPS is a no-op at the hypervisor. The `vps_status` field at the service level remains `active` (status reflects billing/lifecycle, not running power state); use `getVpsTrafficUsage` or external monitoring to confirm the VPS is actually up. Sibling ops: `doVpsStop`, `doVpsRestart`, `getVpsInfo`.

**Path param:**
- `id` (integer, required) — VPS id from `getVpsList.vps_id`.

**Body:** None.

**Returns:** `{ text, queueId }` — `queueId` references the `queue_log` entry. Allow ~10–30 s for the hypervisor to act.

**Side effects:**
- Inserts `vpsqueue` `start` row.
- Calls `vps_resetup_vnc()`.

**Auth:** Session/API key. Ownership enforced.

**Errors:**
- `401` — unauthenticated.
- `404 Invalid VPS Passed`.
- `409 VPS is not active` — service is `cancelled`, `suspended` (non-payment), or `pending`. Resolve via payment (`initiatePayment`) for `suspended`, or contact support for `cancelled`/`pending` issues.

**Related calls:**
- **Reboot instead:** `doVpsRestart` (preferred over stop+start).
- **Power off:** `doVpsStop`.
- **Current state:** `getVpsInfo`."
  [id int?]
  (check-required-params id)
  (call-api "/vps/{id}/start" :get
            {:path-params   {"id" id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["sessionIdCookieAuth" "apiKeyAuth" "sessionIdHeaderAuth"]}))

(defn-spec do-vps-start queue-response-spec
  "Power on a stopped VPS instance
  Powers on a stopped VPS. Queues a `start` action on the hypervisor (`vpsqueue`) and triggers a VNC re-setup. Side-effecting GET, idempotent in practice — calling on an already-running VPS is a no-op at the hypervisor. The `vps_status` field at the service level remains `active` (status reflects billing/lifecycle, not running power state); use `getVpsTrafficUsage` or external monitoring to confirm the VPS is actually up. Sibling ops: `doVpsStop`, `doVpsRestart`, `getVpsInfo`.

**Path param:**
- `id` (integer, required) — VPS id from `getVpsList.vps_id`.

**Body:** None.

**Returns:** `{ text, queueId }` — `queueId` references the `queue_log` entry. Allow ~10–30 s for the hypervisor to act.

**Side effects:**
- Inserts `vpsqueue` `start` row.
- Calls `vps_resetup_vnc()`.

**Auth:** Session/API key. Ownership enforced.

**Errors:**
- `401` — unauthenticated.
- `404 Invalid VPS Passed`.
- `409 VPS is not active` — service is `cancelled`, `suspended` (non-payment), or `pending`. Resolve via payment (`initiatePayment`) for `suspended`, or contact support for `cancelled`/`pending` issues.

**Related calls:**
- **Reboot instead:** `doVpsRestart` (preferred over stop+start).
- **Power off:** `doVpsStop`.
- **Current state:** `getVpsInfo`."
  [id int?]
  (let [res (:data (do-vps-start-with-http-info id))]
    (if (:decode-models *api-context*)
       (st/decode queue-response-spec res st/string-transformer)
       res)))


(defn-spec do-vps-stop-with-http-info any?
  "Power off a running VPS — billing continues until cancellation
  Halts the VPS without rebooting — typical before manually triggering a snapshot, freeing hypervisor resources, or temporarily taking a workload offline. Queues a `stop` action on the hypervisor (`vpsqueue`) and triggers a VNC re-setup. Side-effecting GET, idempotent — stopping an already-stopped VPS is a no-op. **Billing continues while the VPS is stopped** — to stop both the workload and billing, use `VPSCancel`. Sibling ops: `doVpsStart`, `doVpsRestart`, `VPSCancel`, `getVpsBackup` (snapshot first).

**Path param:**
- `id` (integer, required) — VPS id from `getVpsList.vps_id`.

**Body:** None.

**Returns:** `{ text, queueId }`. Allow ~10–30 s.

**Side effects:**
- Inserts `vpsqueue` `stop` row.
- Calls `vps_resetup_vnc()`.

**Auth:** Session/API key. Ownership enforced.

**Errors:**
- `401` — unauthenticated.
- `404 Invalid VPS Passed`.
- `409 VPS is not active`.

**Related calls:**
- **Reboot instead:** `doVpsRestart` (preferred for software changes).
- **Power on later:** `doVpsStart`.
- **Snapshot first:** `getVpsBackup`.
- **Stop billing too:** `VPSCancel`."
  [id int?]
  (check-required-params id)
  (call-api "/vps/{id}/stop" :get
            {:path-params   {"id" id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["sessionIdCookieAuth" "apiKeyAuth" "sessionIdHeaderAuth"]}))

(defn-spec do-vps-stop queue-response-spec
  "Power off a running VPS — billing continues until cancellation
  Halts the VPS without rebooting — typical before manually triggering a snapshot, freeing hypervisor resources, or temporarily taking a workload offline. Queues a `stop` action on the hypervisor (`vpsqueue`) and triggers a VNC re-setup. Side-effecting GET, idempotent — stopping an already-stopped VPS is a no-op. **Billing continues while the VPS is stopped** — to stop both the workload and billing, use `VPSCancel`. Sibling ops: `doVpsStart`, `doVpsRestart`, `VPSCancel`, `getVpsBackup` (snapshot first).

**Path param:**
- `id` (integer, required) — VPS id from `getVpsList.vps_id`.

**Body:** None.

**Returns:** `{ text, queueId }`. Allow ~10–30 s.

**Side effects:**
- Inserts `vpsqueue` `stop` row.
- Calls `vps_resetup_vnc()`.

**Auth:** Session/API key. Ownership enforced.

**Errors:**
- `401` — unauthenticated.
- `404 Invalid VPS Passed`.
- `409 VPS is not active`.

**Related calls:**
- **Reboot instead:** `doVpsRestart` (preferred for software changes).
- **Power on later:** `doVpsStart`.
- **Snapshot first:** `getVpsBackup`.
- **Stop billing too:** `VPSCancel`."
  [id int?]
  (let [res (:data (do-vps-stop-with-http-info id))]
    (if (:decode-models *api-context*)
       (st/decode queue-response-spec res st/string-transformer)
       res)))


(defn-spec download-vps-backup-with-http-info any?
  "Issue a 24-hour pre-signed URL to download a MinIO-backed VPS backup
  Generates a time-limited download link for a MinIO/S3-backed VPS backup so the customer can fetch it off-platform. Runs `mc share download --expire=24h` against the resolved backup path and returns the resulting public URL — valid for 24 hours from issue. Only `minio`-typed backups are downloadable; `swift` and `zfs` backups have direct download disabled (returns an error directing the customer to support). Sibling ops: `getVpsBackups` (list to find `name`), `postVpsRestore` (restore in place — no download needed), `deleteVpsBackup`, `getVpsBackup` (create new).

**Path param:**
- `id` (integer, required) — VPS id from `getVpsList.vps_id`.

**Body (JSON or multipart, required):**
- `file` (string, required) — exact `name` from `getVpsBackups`.

**Returns:**
- `text` (string) — `URL available for the next 24 hours`.
- `url` (string) — pre-signed download URL (HTTPS).

**Auth:** Session/API key. Ownership enforced via parent VPS.

**Errors:**
- `401` — unauthenticated.
- `404 Invalid VPS Passed` — `id` not owned by caller.
- `No file specified` — `file` body field missing.
- **Swift backup:** `Downloads for this type have been disabled. Please contact support if you need this backup.`
- **ZFS backup:** same disabled message.
- **MinIO share failure:** `Error sharing file <name>`.

**Related calls:**
- **Prerequisite:** `getVpsBackups` (find a backup with `type == \"minio\"`).
- **Alternative:** `postVpsRestore` (restore in place — no download).
- **Cleanup after download:** `deleteVpsBackup`."
  ([id int?, download-qs-backup-request download-qs-backup-request, ] (download-vps-backup-with-http-info id download-qs-backup-request nil))
  ([id int?, download-qs-backup-request download-qs-backup-request, {:keys [all]} (s/map-of keyword? any?)]
   (check-required-params id download-qs-backup-request)
   (call-api "/vps/{id}/backups" :patch
             {:path-params   {"id" id }
              :header-params {}
              :query-params  {"all" all }
              :form-params   {}
              :body-param    download-qs-backup-request
              :content-types ["application/json" "multipart/form-data"]
              :accepts       ["application/json"]
              :auth-names    ["sessionIdCookieAuth" "apiKeyAuth" "sessionIdHeaderAuth"]})))

(defn-spec download-vps-backup download-qs-backup-200-response-spec
  "Issue a 24-hour pre-signed URL to download a MinIO-backed VPS backup
  Generates a time-limited download link for a MinIO/S3-backed VPS backup so the customer can fetch it off-platform. Runs `mc share download --expire=24h` against the resolved backup path and returns the resulting public URL — valid for 24 hours from issue. Only `minio`-typed backups are downloadable; `swift` and `zfs` backups have direct download disabled (returns an error directing the customer to support). Sibling ops: `getVpsBackups` (list to find `name`), `postVpsRestore` (restore in place — no download needed), `deleteVpsBackup`, `getVpsBackup` (create new).

**Path param:**
- `id` (integer, required) — VPS id from `getVpsList.vps_id`.

**Body (JSON or multipart, required):**
- `file` (string, required) — exact `name` from `getVpsBackups`.

**Returns:**
- `text` (string) — `URL available for the next 24 hours`.
- `url` (string) — pre-signed download URL (HTTPS).

**Auth:** Session/API key. Ownership enforced via parent VPS.

**Errors:**
- `401` — unauthenticated.
- `404 Invalid VPS Passed` — `id` not owned by caller.
- `No file specified` — `file` body field missing.
- **Swift backup:** `Downloads for this type have been disabled. Please contact support if you need this backup.`
- **ZFS backup:** same disabled message.
- **MinIO share failure:** `Error sharing file <name>`.

**Related calls:**
- **Prerequisite:** `getVpsBackups` (find a backup with `type == \"minio\"`).
- **Alternative:** `postVpsRestore` (restore in place — no download).
- **Cleanup after download:** `deleteVpsBackup`."
  ([id int?, download-qs-backup-request download-qs-backup-request, ] (download-vps-backup id download-qs-backup-request nil))
  ([id int?, download-qs-backup-request download-qs-backup-request, optional-params any?]
   (let [res (:data (download-vps-backup-with-http-info id download-qs-backup-request optional-params))]
     (if (:decode-models *api-context*)
        (st/decode download-qs-backup-200-response-spec res st/string-transformer)
        res))))


(defn-spec get-new-vps-with-http-info any?
  "Get the VPS order catalog — platforms, OS templates, locations, pricing
  Step 1 of the VPS order flow. Returns the full ordering catalog the customer needs to build a valid VPS configuration: virtualization platforms (`kvm`, `kvmstorage`, `hyperv`), OS templates grouped by platform+distro, datacenter locations with current stock flags, per-slice resource costs converted to the customer's billing currency, control-panel prices, and slice resource defaults (RAM/HD/BW per slice, max slices per VPS). No path or query params, no body. The response drives the order form; once the user picks a config, call `putVps` for a dry-run price quote, then `addVps` to actually place the order. Sibling ops: `putVps`, `addVps`, `getVpsList` (existing VPS).

**Returned top-level fields** (schema `VpsOrder`):
- `platformNames` (object) — display names keyed by platform tag (`{kvm: \"KVM\", kvmstorage: \"KVM Storage\", hyperv: \"HyperV\"}`).
- `platformPackages` (object) — service-type ids keyed by platform tag (`{kvm: 32, kvmstorage: 57, hyperv: 54}`).
- `packageCosts` (object) — base list cost keyed by service-type id.
- `templates` (object) — nested `{platform: {os: {template_file: template_version}}}` template tree.
- `osNames` (object) — display name per `template_os` key.
- `locationNames` (object) — `{1: \"New Jersey\", 2: \"Los Angeles\", 3: \"Dallas, TX\"}`.
- `locationStock` (object) — `{location_id: {platform_tag: bool}}` — `true` = in stock.
- `vpsSlice<Platform>Cost` (float) — per-slice cost per platform in customer currency (e.g. `vpsSliceKvmLCost`, `vpsSliceKvmStorageCost`, `vpsSliceHypervCost`, `vpsSliceOvzCost`).
- `cpanelCost`, `daCost` (float) — control-panel addon costs.
- `ramSlice`, `hdSlice`, `bwSlice` (int) — RAM (MB), HD (GB), BW (GB) per slice.
- `maxSlices` (int) — `VPS_SLICE_MAX` cap for non-admin callers.
- `currency`, `currencySymbol` (string) — derived from the account profile.

**Auth:** Session or API key.

**Errors:**
- `401 Unauthorized` — missing session/API key.

**Related calls:**
- **Next:** `putVps` (validate + quote a chosen config — no charge), `addVps` (place the order).
- **After ordering:** pay via `initiatePayment` with the returned `real_iids`, then poll `getVpsInfo` until `vps_status == \"active\"`.

**Example happy-path response (abridged):**
```json
{
  \"platformNames\": {\"kvm\": \"KVM\", \"kvmstorage\": \"KVM Storage\", \"hyperv\": \"HyperV\"},
  \"platformPackages\": {\"kvm\": 32, \"kvmstorage\": 57, \"hyperv\": 54},
  \"locationNames\": {\"1\": \"New Jersey\", \"2\": \"Los Angeles\", \"3\": \"Dallas, TX\"},
  \"locationStock\": {\"1\": {\"kvm\": true, \"kvmstorage\": true, \"hyperv\": false}},
  \"osNames\": {\"centos-7-x86_64\": \"CentOS 7\", \"ubuntu-22.04-x86_64\": \"Ubuntu 22.04\"},
  \"templates\": {\"kvm\": {\"centos-7-x86_64\": {\"centos-7-x86_64.qcow2\": \"7\"}}},
  \"vpsSliceKvmLCost\": 6.00,
  \"cpanelCost\": 18.00,
  \"ramSlice\": 2048, \"hdSlice\": 25, \"bwSlice\": 2000, \"maxSlices\": 8,
  \"currency\": \"USD\", \"currencySymbol\": \"$\"
}
```"
  []
  (call-api "/vps/order" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["sessionIdCookieAuth" "apiKeyAuth" "sessionIdHeaderAuth"]}))

(defn-spec get-new-vps vps-order-spec
  "Get the VPS order catalog — platforms, OS templates, locations, pricing
  Step 1 of the VPS order flow. Returns the full ordering catalog the customer needs to build a valid VPS configuration: virtualization platforms (`kvm`, `kvmstorage`, `hyperv`), OS templates grouped by platform+distro, datacenter locations with current stock flags, per-slice resource costs converted to the customer's billing currency, control-panel prices, and slice resource defaults (RAM/HD/BW per slice, max slices per VPS). No path or query params, no body. The response drives the order form; once the user picks a config, call `putVps` for a dry-run price quote, then `addVps` to actually place the order. Sibling ops: `putVps`, `addVps`, `getVpsList` (existing VPS).

**Returned top-level fields** (schema `VpsOrder`):
- `platformNames` (object) — display names keyed by platform tag (`{kvm: \"KVM\", kvmstorage: \"KVM Storage\", hyperv: \"HyperV\"}`).
- `platformPackages` (object) — service-type ids keyed by platform tag (`{kvm: 32, kvmstorage: 57, hyperv: 54}`).
- `packageCosts` (object) — base list cost keyed by service-type id.
- `templates` (object) — nested `{platform: {os: {template_file: template_version}}}` template tree.
- `osNames` (object) — display name per `template_os` key.
- `locationNames` (object) — `{1: \"New Jersey\", 2: \"Los Angeles\", 3: \"Dallas, TX\"}`.
- `locationStock` (object) — `{location_id: {platform_tag: bool}}` — `true` = in stock.
- `vpsSlice<Platform>Cost` (float) — per-slice cost per platform in customer currency (e.g. `vpsSliceKvmLCost`, `vpsSliceKvmStorageCost`, `vpsSliceHypervCost`, `vpsSliceOvzCost`).
- `cpanelCost`, `daCost` (float) — control-panel addon costs.
- `ramSlice`, `hdSlice`, `bwSlice` (int) — RAM (MB), HD (GB), BW (GB) per slice.
- `maxSlices` (int) — `VPS_SLICE_MAX` cap for non-admin callers.
- `currency`, `currencySymbol` (string) — derived from the account profile.

**Auth:** Session or API key.

**Errors:**
- `401 Unauthorized` — missing session/API key.

**Related calls:**
- **Next:** `putVps` (validate + quote a chosen config — no charge), `addVps` (place the order).
- **After ordering:** pay via `initiatePayment` with the returned `real_iids`, then poll `getVpsInfo` until `vps_status == \"active\"`.

**Example happy-path response (abridged):**
```json
{
  \"platformNames\": {\"kvm\": \"KVM\", \"kvmstorage\": \"KVM Storage\", \"hyperv\": \"HyperV\"},
  \"platformPackages\": {\"kvm\": 32, \"kvmstorage\": 57, \"hyperv\": 54},
  \"locationNames\": {\"1\": \"New Jersey\", \"2\": \"Los Angeles\", \"3\": \"Dallas, TX\"},
  \"locationStock\": {\"1\": {\"kvm\": true, \"kvmstorage\": true, \"hyperv\": false}},
  \"osNames\": {\"centos-7-x86_64\": \"CentOS 7\", \"ubuntu-22.04-x86_64\": \"Ubuntu 22.04\"},
  \"templates\": {\"kvm\": {\"centos-7-x86_64\": {\"centos-7-x86_64.qcow2\": \"7\"}}},
  \"vpsSliceKvmLCost\": 6.00,
  \"cpanelCost\": 18.00,
  \"ramSlice\": 2048, \"hdSlice\": 25, \"bwSlice\": 2000, \"maxSlices\": 8,
  \"currency\": \"USD\", \"currencySymbol\": \"$\"
}
```"
  []
  (let [res (:data (get-new-vps-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode vps-order-spec res st/string-transformer)
       res)))


(defn-spec get-vps-backup-with-http-info any?
  "Trigger a manual on-demand snapshot/backup of the VPS
  Creates an on-demand backup of the VPS — typically called before a risky change (OS reinstall, slice upgrade, restore from older backup). Enqueues a `backup` action on the hypervisor (`history_log` `vpsqueue` entry) and returns immediately; the actual snapshot runs asynchronously and may take a few minutes. Despite being GET, this is a side-effecting action and the MCP parser flags it accordingly. The new backup, once complete, appears in `getVpsBackups` keyed by `name`. Sibling ops: `getVpsBackups` (list), `downloadVpsBackup` (download via pre-signed URL), `deleteVpsBackup`, `postVpsRestore`.

**Path param:**
- `id` (integer, required) — VPS id from `getVpsList.vps_id`.

**Body:** None.

**Returns:** `{ text: \"Action has been sent to the server. Please allow up to 2 minutes for action to be completed.\", queueId: <integer> }` — `queueId` is the row id in `queue_log`/`history_log` and can be used to track action status.

**Backup limits (per platform):**
- KVM / KVM Storage: backups **enabled**.
- HyperV, OpenVZ, SSD-OpenVZ, Virtuozzo, SSD-Virtuozzo: **disabled** server-side (returns 400 \"Backups are disabled for this type\").
- Max 4 backups per VPS for non-admin callers. If at the cap, returns \"Currently 4 backups per VPS max\" — delete an old one first via `deleteVpsBackup`.

**Auth:** Session/API key. Ownership enforced.

**Errors:**
- `401` — unauthenticated.
- `404 Invalid VPS Passed` — `id` not owned by caller.
- `409 VPS is not active` — `vps_status != \"active\"`.
- `400 Backups are disabled for this type` — incompatible platform.
- `400 Currently 4 backups per VPS max` — at cap.

**Related calls:**
- **List existing:** `getVpsBackups`.
- **Download:** `downloadVpsBackup` (PATCH; returns 24-hr pre-signed URL for MinIO backups; Swift/ZFS disabled).
- **Delete:** `deleteVpsBackup` (DELETE; Swift/MinIO only).
- **Restore from a backup:** `postVpsRestore`."
  [id int?]
  (check-required-params id)
  (call-api "/vps/{id}/backup" :get
            {:path-params   {"id" id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["sessionIdCookieAuth" "apiKeyAuth" "sessionIdHeaderAuth"]}))

(defn-spec get-vps-backup queue-response-spec
  "Trigger a manual on-demand snapshot/backup of the VPS
  Creates an on-demand backup of the VPS — typically called before a risky change (OS reinstall, slice upgrade, restore from older backup). Enqueues a `backup` action on the hypervisor (`history_log` `vpsqueue` entry) and returns immediately; the actual snapshot runs asynchronously and may take a few minutes. Despite being GET, this is a side-effecting action and the MCP parser flags it accordingly. The new backup, once complete, appears in `getVpsBackups` keyed by `name`. Sibling ops: `getVpsBackups` (list), `downloadVpsBackup` (download via pre-signed URL), `deleteVpsBackup`, `postVpsRestore`.

**Path param:**
- `id` (integer, required) — VPS id from `getVpsList.vps_id`.

**Body:** None.

**Returns:** `{ text: \"Action has been sent to the server. Please allow up to 2 minutes for action to be completed.\", queueId: <integer> }` — `queueId` is the row id in `queue_log`/`history_log` and can be used to track action status.

**Backup limits (per platform):**
- KVM / KVM Storage: backups **enabled**.
- HyperV, OpenVZ, SSD-OpenVZ, Virtuozzo, SSD-Virtuozzo: **disabled** server-side (returns 400 \"Backups are disabled for this type\").
- Max 4 backups per VPS for non-admin callers. If at the cap, returns \"Currently 4 backups per VPS max\" — delete an old one first via `deleteVpsBackup`.

**Auth:** Session/API key. Ownership enforced.

**Errors:**
- `401` — unauthenticated.
- `404 Invalid VPS Passed` — `id` not owned by caller.
- `409 VPS is not active` — `vps_status != \"active\"`.
- `400 Backups are disabled for this type` — incompatible platform.
- `400 Currently 4 backups per VPS max` — at cap.

**Related calls:**
- **List existing:** `getVpsBackups`.
- **Download:** `downloadVpsBackup` (PATCH; returns 24-hr pre-signed URL for MinIO backups; Swift/ZFS disabled).
- **Delete:** `deleteVpsBackup` (DELETE; Swift/MinIO only).
- **Restore from a backup:** `postVpsRestore`."
  [id int?]
  (let [res (:data (get-vps-backup-with-http-info id))]
    (if (:decode-models *api-context*)
       (st/decode queue-response-spec res st/string-transformer)
       res)))


(defn-spec get-vps-backups-with-http-info any?
  "List existing backups for the VPS across Swift, MinIO, and ZFS
  Enumerates the backup files available for the VPS across all backend storage systems (OpenStack Swift, MinIO/S3, and ZFS snapshots). Each entry's `name` is the canonical identifier the caller must pass to sibling endpoints (`downloadVpsBackup`, `deleteVpsBackup`, `postVpsRestore`) — there is no separate integer id. The list is filtered to the VPS's owner by default; admins can list all backups on the account by passing `all=1`. Sibling ops: `getVpsBackup` (create new), `downloadVpsBackup`, `deleteVpsBackup`, `postVpsRestore`.

**Path param:**
- `id` (integer, required) — VPS id from `getVpsList.vps_id`.

**Query params:**
- `all` (string, optional, enum `0`/`1`, default `0`) — set to `1` to list every backup across all services on the account, not just the ones for `{id}`.

**Returns:** `VpsBackupRows` — array of objects:
- `name` (string) — canonical identifier, e.g. `vps-12345-2026-05-12.tar.gz`.
- `type` (string enum) — `swift` / `minio` / `zfs`. Determines which operations are available (see Sibling notes).
- `service` (integer) — VPS id the backup belongs to.
- `path` (string) — storage path/URL.
- `size` (integer) — bytes.
- `repoIdx` (integer) — repository index (0 or 1 for Swift; selects which credentials/bucket).
- `extra` (array, optional) — multi-part backup pieces.

**Auth:** Session/API key. Ownership enforced via `vps_custid` on the parent VPS.

**Errors:**
- `401` — unauthenticated.
- `404 Invalid VPS Passed` — `id` not owned by caller.

**Capability matrix by backup type:**
- `swift`: list ✓, download ✗ (disabled — contact support), delete ✓.
- `minio`: list ✓, download ✓ (24-hr pre-signed URL via `downloadVpsBackup`), delete ✓.
- `zfs`: list ✓, download ✗ (disabled), delete ✗ (open a ticket).

**Related calls:**
- **Create new:** `getVpsBackup`.
- **Download:** `downloadVpsBackup` (PATCH).
- **Delete:** `deleteVpsBackup` (DELETE).
- **Restore:** `postVpsRestore` — pass `backup` as `<type>:<service>:<name>`."
  ([id int?, ] (get-vps-backups-with-http-info id nil))
  ([id int?, {:keys [all]} (s/map-of keyword? any?)]
   (check-required-params id)
   (call-api "/vps/{id}/backups" :get
             {:path-params   {"id" id }
              :header-params {}
              :query-params  {"all" all }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    ["sessionIdCookieAuth" "apiKeyAuth" "sessionIdHeaderAuth"]})))

(defn-spec get-vps-backups vps-backup-rows-spec
  "List existing backups for the VPS across Swift, MinIO, and ZFS
  Enumerates the backup files available for the VPS across all backend storage systems (OpenStack Swift, MinIO/S3, and ZFS snapshots). Each entry's `name` is the canonical identifier the caller must pass to sibling endpoints (`downloadVpsBackup`, `deleteVpsBackup`, `postVpsRestore`) — there is no separate integer id. The list is filtered to the VPS's owner by default; admins can list all backups on the account by passing `all=1`. Sibling ops: `getVpsBackup` (create new), `downloadVpsBackup`, `deleteVpsBackup`, `postVpsRestore`.

**Path param:**
- `id` (integer, required) — VPS id from `getVpsList.vps_id`.

**Query params:**
- `all` (string, optional, enum `0`/`1`, default `0`) — set to `1` to list every backup across all services on the account, not just the ones for `{id}`.

**Returns:** `VpsBackupRows` — array of objects:
- `name` (string) — canonical identifier, e.g. `vps-12345-2026-05-12.tar.gz`.
- `type` (string enum) — `swift` / `minio` / `zfs`. Determines which operations are available (see Sibling notes).
- `service` (integer) — VPS id the backup belongs to.
- `path` (string) — storage path/URL.
- `size` (integer) — bytes.
- `repoIdx` (integer) — repository index (0 or 1 for Swift; selects which credentials/bucket).
- `extra` (array, optional) — multi-part backup pieces.

**Auth:** Session/API key. Ownership enforced via `vps_custid` on the parent VPS.

**Errors:**
- `401` — unauthenticated.
- `404 Invalid VPS Passed` — `id` not owned by caller.

**Capability matrix by backup type:**
- `swift`: list ✓, download ✗ (disabled — contact support), delete ✓.
- `minio`: list ✓, download ✓ (24-hr pre-signed URL via `downloadVpsBackup`), delete ✓.
- `zfs`: list ✓, download ✗ (disabled), delete ✗ (open a ticket).

**Related calls:**
- **Create new:** `getVpsBackup`.
- **Download:** `downloadVpsBackup` (PATCH).
- **Delete:** `deleteVpsBackup` (DELETE).
- **Restore:** `postVpsRestore` — pass `backup` as `<type>:<service>:<name>`."
  ([id int?, ] (get-vps-backups id nil))
  ([id int?, optional-params any?]
   (let [res (:data (get-vps-backups-with-http-info id optional-params))]
     (if (:decode-models *api-context*)
        (st/decode vps-backup-rows-spec res st/string-transformer)
        res))))


(defn-spec get-vps-buy-hd-space-with-http-info any?
  "Get current additional disk size and per-GB monthly cost for the VPS
  Step 1 of the disk-space addon flow. Returns the current \"Additional N GB Space\" already purchased for the VPS (0 if none) and the per-GB monthly cost in USD — both adjusted for the customer's reseller pricing tier via `get_reseller_price`. Read-only. Use this to populate a disk-upgrade form before calling `putVpsBuyHdSpace` (preview) and `postVpsBuyHdSpace` (commit). For whole-plan upgrades (CPU+RAM+disk together) use the slices flow instead (`getVpsSlices` / `postVpsSlices`). Sibling ops: `putVpsBuyHdSpace`, `postVpsBuyHdSpace`, `postVpsSlices`, `getVpsInfo`.

**Path param:**
- `id` (integer, required) — VPS id from `getVpsList.vps_id`.

**Body:** None.

**Returns:**
- `gbCost` (float) — per-GB monthly cost in USD (after reseller discount).
- `size` (integer) — current additional GB already purchased (0 if none).

**Auth:** Session/API key. Ownership enforced via parent VPS.

**Errors:**
- `401` — unauthenticated.
- `404 Invalid VPS Passed` — `id` not owned by caller.
- **Pre-condition:** an existing `Additional N GB Space for VPS {id}` repeat-invoice is required for the lookup to find a baseline; if it isn't parseable, the endpoint returns an error asking the customer to contact support. New installs always start at `size: 0`.

**Related calls:**
- **Next (preview):** `putVpsBuyHdSpace` — returns prorated `diffCost` for a target size.
- **Next (commit):** `postVpsBuyHdSpace` — creates/updates the addon repeat invoice.
- **Alternative path (whole plan):** `getVpsSlices` → `postVpsSlices`."
  [id int?]
  (check-required-params id)
  (call-api "/vps/{id}/buy_hd_space" :get
            {:path-params   {"id" id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["sessionIdCookieAuth" "apiKeyAuth" "sessionIdHeaderAuth"]}))

(defn-spec get-vps-buy-hd-space any?
  "Get current additional disk size and per-GB monthly cost for the VPS
  Step 1 of the disk-space addon flow. Returns the current \"Additional N GB Space\" already purchased for the VPS (0 if none) and the per-GB monthly cost in USD — both adjusted for the customer's reseller pricing tier via `get_reseller_price`. Read-only. Use this to populate a disk-upgrade form before calling `putVpsBuyHdSpace` (preview) and `postVpsBuyHdSpace` (commit). For whole-plan upgrades (CPU+RAM+disk together) use the slices flow instead (`getVpsSlices` / `postVpsSlices`). Sibling ops: `putVpsBuyHdSpace`, `postVpsBuyHdSpace`, `postVpsSlices`, `getVpsInfo`.

**Path param:**
- `id` (integer, required) — VPS id from `getVpsList.vps_id`.

**Body:** None.

**Returns:**
- `gbCost` (float) — per-GB monthly cost in USD (after reseller discount).
- `size` (integer) — current additional GB already purchased (0 if none).

**Auth:** Session/API key. Ownership enforced via parent VPS.

**Errors:**
- `401` — unauthenticated.
- `404 Invalid VPS Passed` — `id` not owned by caller.
- **Pre-condition:** an existing `Additional N GB Space for VPS {id}` repeat-invoice is required for the lookup to find a baseline; if it isn't parseable, the endpoint returns an error asking the customer to contact support. New installs always start at `size: 0`.

**Related calls:**
- **Next (preview):** `putVpsBuyHdSpace` — returns prorated `diffCost` for a target size.
- **Next (commit):** `postVpsBuyHdSpace` — creates/updates the addon repeat invoice.
- **Alternative path (whole plan):** `getVpsSlices` → `postVpsSlices`."
  [id int?]
  (let [res (:data (get-vps-buy-hd-space-with-http-info id))]
    (if (:decode-models *api-context*)
       (st/decode any? res st/string-transformer)
       res)))


(defn-spec get-vps-buy-ip-with-http-info any?
  "Read current additional IPs, cap, and per-IP monthly cost for the VPS
  Step 1 of the additional-IP addon flow. Returns the list of extra IPs already on the VPS (each with a `cancel_link` for removing that specific addon), how many more are allowed (`maxIps` = `VPS_MAX_IPS` constant), and the per-IP monthly cost converted to the VPS's billing currency. Read-only. Use to render the \"buy another IP\" form and to enforce the cap before calling `postVpsBuyIp`. Sibling ops: `postVpsBuyIp` (purchase one more), `postVpsReverseDns` (set PTR on the new IP), `getVpsReverseDns`, `getVpsInfo`.

**Path param:**
- `id` (integer, required) — VPS id from `getVpsList.vps_id`.

**Body:** None.

**Returns:**
- `ipsDetails` (array) — one entry per existing extra IP. Each entry includes:
  - `ip` (string) — the IPv4 address (parsed from the repeat-invoice description).
  - `cancel_link` (string) — relative URL `cancel_addon?module=vps&r=<repeat_invoice_id>` to cancel that specific IP addon.
  - The underlying `repeat_invoices` / `invoices` columns (description, amount, dates, etc.).
- `ipCount` (integer) — current count of extra IPs already purchased.
- `maxIps` (integer) — hard cap (`VPS_MAX_IPS`).
- `ipCost` (float) — per-IP monthly cost, converted from `VPS_IP_COST` to the VPS's billing currency.
- `currency` (string) — VPS billing currency code (ISO 4217, e.g. `USD`).
- `currencySymbol` (string).

**Auth:** Session/API key. Ownership enforced via parent VPS.

**Errors:**
- `401` — unauthenticated.
- `404 Invalid VPS Passed` — `id` not owned by caller.

**Related calls:**
- **Next (buy one more):** `postVpsBuyIp` — auto-allocates the next free IP on the same hypervisor.
- **After activation:** `postVpsReverseDns` (set PTR for the new IP), `getVpsInfo` (verify allocation).
- **Cancel an existing extra IP:** follow the `cancel_link` URL (renders the cancel-addon page)."
  [id int?]
  (check-required-params id)
  (call-api "/vps/{id}/buy_ip" :get
            {:path-params   {"id" id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["sessionIdCookieAuth" "apiKeyAuth" "sessionIdHeaderAuth"]}))

(defn-spec get-vps-buy-ip any?
  "Read current additional IPs, cap, and per-IP monthly cost for the VPS
  Step 1 of the additional-IP addon flow. Returns the list of extra IPs already on the VPS (each with a `cancel_link` for removing that specific addon), how many more are allowed (`maxIps` = `VPS_MAX_IPS` constant), and the per-IP monthly cost converted to the VPS's billing currency. Read-only. Use to render the \"buy another IP\" form and to enforce the cap before calling `postVpsBuyIp`. Sibling ops: `postVpsBuyIp` (purchase one more), `postVpsReverseDns` (set PTR on the new IP), `getVpsReverseDns`, `getVpsInfo`.

**Path param:**
- `id` (integer, required) — VPS id from `getVpsList.vps_id`.

**Body:** None.

**Returns:**
- `ipsDetails` (array) — one entry per existing extra IP. Each entry includes:
  - `ip` (string) — the IPv4 address (parsed from the repeat-invoice description).
  - `cancel_link` (string) — relative URL `cancel_addon?module=vps&r=<repeat_invoice_id>` to cancel that specific IP addon.
  - The underlying `repeat_invoices` / `invoices` columns (description, amount, dates, etc.).
- `ipCount` (integer) — current count of extra IPs already purchased.
- `maxIps` (integer) — hard cap (`VPS_MAX_IPS`).
- `ipCost` (float) — per-IP monthly cost, converted from `VPS_IP_COST` to the VPS's billing currency.
- `currency` (string) — VPS billing currency code (ISO 4217, e.g. `USD`).
- `currencySymbol` (string).

**Auth:** Session/API key. Ownership enforced via parent VPS.

**Errors:**
- `401` — unauthenticated.
- `404 Invalid VPS Passed` — `id` not owned by caller.

**Related calls:**
- **Next (buy one more):** `postVpsBuyIp` — auto-allocates the next free IP on the same hypervisor.
- **After activation:** `postVpsReverseDns` (set PTR for the new IP), `getVpsInfo` (verify allocation).
- **Cancel an existing extra IP:** follow the `cancel_link` URL (renders the cancel-addon page)."
  [id int?]
  (let [res (:data (get-vps-buy-ip-with-http-info id))]
    (if (:decode-models *api-context*)
       (st/decode any? res st/string-transformer)
       res)))


(defn-spec get-vps-change-hostname-with-http-info any?
  "Read the VPS's current hostname before changing it
  Step 1 of the hostname-change flow. Returns the hostname currently stored on the `vps` row so the customer can confirm the existing value before submitting a new one. Read-only. **Platform restriction:** hostname changes through `postVpsChangeHostname` are only supported on OpenVZ/SSD-OpenVZ/Virtuozzo/SSD-Virtuozzo; KVM and HyperV require a support ticket — so for those platforms this endpoint is informational only. Sibling ops: `postVpsChangeHostname` (apply new value), `postVpsReverseDns` (PTR for primary IP — auto-updated by `postVpsChangeHostname`).

**Path param:**
- `id` (integer, required) — VPS id from `getVpsList.vps_id`.

**Body:** None.

**Returns:** Current hostname (object form: `{ hostname: \"<fqdn>\" }`).

**Auth:** Session/API key. Ownership enforced.

**Errors:**
- `401` — unauthenticated.
- `404 Invalid VPS Passed` — `id` not owned by caller.
- `409 VPS is not active` — `vps_status != \"active\"`.

**Related calls:**
- **Next:** `postVpsChangeHostname` (OpenVZ/Virtuozzo only; auto-updates PTR for the primary IP).
- **PTR for extra IPs:** `postVpsReverseDns`.
- **Verify after change:** `getVpsInfo`."
  [id int?]
  (check-required-params id)
  (call-api "/vps/{id}/change_hostname" :get
            {:path-params   {"id" id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["sessionIdCookieAuth" "apiKeyAuth" "sessionIdHeaderAuth"]}))

(defn-spec get-vps-change-hostname any?
  "Read the VPS's current hostname before changing it
  Step 1 of the hostname-change flow. Returns the hostname currently stored on the `vps` row so the customer can confirm the existing value before submitting a new one. Read-only. **Platform restriction:** hostname changes through `postVpsChangeHostname` are only supported on OpenVZ/SSD-OpenVZ/Virtuozzo/SSD-Virtuozzo; KVM and HyperV require a support ticket — so for those platforms this endpoint is informational only. Sibling ops: `postVpsChangeHostname` (apply new value), `postVpsReverseDns` (PTR for primary IP — auto-updated by `postVpsChangeHostname`).

**Path param:**
- `id` (integer, required) — VPS id from `getVpsList.vps_id`.

**Body:** None.

**Returns:** Current hostname (object form: `{ hostname: \"<fqdn>\" }`).

**Auth:** Session/API key. Ownership enforced.

**Errors:**
- `401` — unauthenticated.
- `404 Invalid VPS Passed` — `id` not owned by caller.
- `409 VPS is not active` — `vps_status != \"active\"`.

**Related calls:**
- **Next:** `postVpsChangeHostname` (OpenVZ/Virtuozzo only; auto-updates PTR for the primary IP).
- **PTR for extra IPs:** `postVpsReverseDns`.
- **Verify after change:** `getVpsInfo`."
  [id int?]
  (let [res (:data (get-vps-change-hostname-with-http-info id))]
    (if (:decode-models *api-context*)
       (st/decode any? res st/string-transformer)
       res)))


(defn-spec get-vps-change-root-password-with-http-info any?
  "Pre-flight check before changing the VPS root password
  Step 1 of the root-password change flow. Validates ownership and active status; the response is a placeholder/policy object the dashboard uses to render the form (current implementation does not yet return a populated policy — it short-circuits after the ownership/status checks). Read-only. Use to confirm the VPS exists and is active before calling `postVpsChangeRootPassword`. For a server-generated random password instead, use `postVpsResetPassword`. Sibling ops: `postVpsChangeRootPassword`, `postVpsResetPassword`, `postVpsChangeWebuzoPassword` (Webuzo control panel).

**Path param:**
- `id` (integer, required) — VPS id from `getVpsList.vps_id`.

**Body:** None.

**Returns:** Object with password requirements/state. Currently a no-op pre-check; reserved for future policy fields (min length, complexity rules, last-change timestamp).

**Auth:** Session/API key. Ownership enforced.

**Errors:**
- `401` — unauthenticated.
- `404 Invalid VPS Passed` — `id` not owned by caller.
- `409 VPS is not active` — `vps_status != \"active\"`.

**Related calls:**
- **Next (specific password):** `postVpsChangeRootPassword`.
- **Random password:** `postVpsResetPassword`.
- **Webuzo control panel password:** `postVpsChangeWebuzoPassword` (separate credential)."
  [id int?]
  (check-required-params id)
  (call-api "/vps/{id}/change_root_password" :get
            {:path-params   {"id" id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["sessionIdCookieAuth" "apiKeyAuth" "sessionIdHeaderAuth"]}))

(defn-spec get-vps-change-root-password any?
  "Pre-flight check before changing the VPS root password
  Step 1 of the root-password change flow. Validates ownership and active status; the response is a placeholder/policy object the dashboard uses to render the form (current implementation does not yet return a populated policy — it short-circuits after the ownership/status checks). Read-only. Use to confirm the VPS exists and is active before calling `postVpsChangeRootPassword`. For a server-generated random password instead, use `postVpsResetPassword`. Sibling ops: `postVpsChangeRootPassword`, `postVpsResetPassword`, `postVpsChangeWebuzoPassword` (Webuzo control panel).

**Path param:**
- `id` (integer, required) — VPS id from `getVpsList.vps_id`.

**Body:** None.

**Returns:** Object with password requirements/state. Currently a no-op pre-check; reserved for future policy fields (min length, complexity rules, last-change timestamp).

**Auth:** Session/API key. Ownership enforced.

**Errors:**
- `401` — unauthenticated.
- `404 Invalid VPS Passed` — `id` not owned by caller.
- `409 VPS is not active` — `vps_status != \"active\"`.

**Related calls:**
- **Next (specific password):** `postVpsChangeRootPassword`.
- **Random password:** `postVpsResetPassword`.
- **Webuzo control panel password:** `postVpsChangeWebuzoPassword` (separate credential)."
  [id int?]
  (let [res (:data (get-vps-change-root-password-with-http-info id))]
    (if (:decode-models *api-context*)
       (st/decode any? res st/string-transformer)
       res)))


(defn-spec get-vps-change-timezone-with-http-info any?
  "List IANA timezones supported by the VPS guest OS
  Step 1 of the timezone-change flow. Returns the list of IANA timezone identifiers the VPS accepts (e.g. `America/New_York`, `Europe/London`, `Asia/Tokyo`) — sourced from `/usr/share/zoneinfo/zone.tab` on the MyAdmin host. Use to populate a timezone picker before calling `postVpsChangeTimezone`. Read-only. Sibling op: `postVpsChangeTimezone`.

**Path param:**
- `id` (integer, required) — VPS id from `getVpsList.vps_id`.

**Body:** None.

**Returns:** Array of strings — IANA timezone identifiers, sorted alphabetically.

**Auth:** Session/API key. Ownership enforced.

**Errors:**
- `401` — unauthenticated.
- `404 Invalid VPS Passed`.
- `409 VPS is not active`.

**Related calls:**
- **Next:** `postVpsChangeTimezone` (must pass a value present in this array).
- **Account-level timezone:** `updateAccountInfo` (sets the default for new VPS)."
  [id int?]
  (check-required-params id)
  (call-api "/vps/{id}/change_timezone" :get
            {:path-params   {"id" id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["sessionIdCookieAuth" "apiKeyAuth" "sessionIdHeaderAuth"]}))

(defn-spec get-vps-change-timezone (s/coll-of string?)
  "List IANA timezones supported by the VPS guest OS
  Step 1 of the timezone-change flow. Returns the list of IANA timezone identifiers the VPS accepts (e.g. `America/New_York`, `Europe/London`, `Asia/Tokyo`) — sourced from `/usr/share/zoneinfo/zone.tab` on the MyAdmin host. Use to populate a timezone picker before calling `postVpsChangeTimezone`. Read-only. Sibling op: `postVpsChangeTimezone`.

**Path param:**
- `id` (integer, required) — VPS id from `getVpsList.vps_id`.

**Body:** None.

**Returns:** Array of strings — IANA timezone identifiers, sorted alphabetically.

**Auth:** Session/API key. Ownership enforced.

**Errors:**
- `401` — unauthenticated.
- `404 Invalid VPS Passed`.
- `409 VPS is not active`.

**Related calls:**
- **Next:** `postVpsChangeTimezone` (must pass a value present in this array).
- **Account-level timezone:** `updateAccountInfo` (sets the default for new VPS)."
  [id int?]
  (let [res (:data (get-vps-change-timezone-with-http-info id))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of string?) res st/string-transformer)
       res)))


(defn-spec get-vps-info-with-http-info any?
  "Get full details for one VPS — IPs, hostname, OS, slices, status, addons
  Returns everything the customer dashboard shows for a single VPS — hostname, primary IP plus any extra IPs, OS, allocated slices (CPU/RAM/disk), current `vps_status`, plan/service-type, datacenter location, billing currency, and `serviceAddons` (extra IPs and additional GB disk). Read-only. Backed by `ViewVPS::getDetails()`; ownership is enforced via `get_service($id, 'vps')` — cross-customer requests return 404. Use to render a VPS detail page, to verify ownership before mutating, or to poll `vps_status` after `addVps` (status flips `pending` → `active` once provisioning completes). Sibling ops: `getVpsList`, `doVpsRestart`/`doVpsStart`/`doVpsStop` (lifecycle), `getVpsTrafficUsage` (bandwidth), `getVpsBackups`, `getVpsInvoices`, `updateVpsInfo`.

**Path param:**
- `id` (integer, required) — VPS id from `getVpsList.vps_id`.

**Returned fields** (schema `Vps` plus extras):
- Core: `vps_id`, `vps_hostname`, `vps_ip`, `vps_status`, `vps_slices`, `vps_os`, `vps_type` (service-type id), `vps_server` (backing hypervisor id), `vps_custid`, `vps_comment`, `vps_coupon`.
- `services_name` (string) — plan name (e.g. `KVM`, `HyperV`).
- `client_links` (array) — UI action links (`{name, link, icon}`) for restart, snapshot, console, etc. Internal `?link=queue&action=...` URLs are pre-resolved.
- `serviceAddons` (object) — `{extra_ips: [...], additional_gb: <int>}` populated from `repeat_invoices` rows that match `Additional IP*` / `Additional N GB Space*` patterns.
- **Stripped fields:** `admin_links`, `settings`, `csrf` are removed before response.

**Auth:** Session or API key. Customer must own the VPS (enforced via `vps_custid` match).

**Errors:**
- `401 Unauthorized` — missing session/API key.
- `404 Invalid VPS Passed` — `id` does not exist or is owned by a different account.

**Related calls:**
- **Lifecycle:** `doVpsStart`, `doVpsStop`, `doVpsRestart`.
- **Maintenance:** `postVpsChangeHostname`, `postVpsChangeRootPassword`, `postVpsReverseDns`.
- **Upgrade:** `getVpsSlices`/`postVpsSlices`, `getVpsBuyHdSpace`/`putVpsBuyHdSpace`/`postVpsBuyHdSpace`, `getVpsBuyIp`/`postVpsBuyIp`.
- **Backups:** `getVpsBackup` (create), `getVpsBackups` (list), `downloadVpsBackup`, `postVpsRestore`.
- **Billing:** `getVpsInvoices`, `VPSCancel`.
- **Metrics:** `getVpsTrafficUsage`."
  [id int?]
  (check-required-params id)
  (call-api "/vps/{id}" :get
            {:path-params   {"id" id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["sessionIdCookieAuth" "apiKeyAuth" "sessionIdHeaderAuth"]}))

(defn-spec get-vps-info vps-spec
  "Get full details for one VPS — IPs, hostname, OS, slices, status, addons
  Returns everything the customer dashboard shows for a single VPS — hostname, primary IP plus any extra IPs, OS, allocated slices (CPU/RAM/disk), current `vps_status`, plan/service-type, datacenter location, billing currency, and `serviceAddons` (extra IPs and additional GB disk). Read-only. Backed by `ViewVPS::getDetails()`; ownership is enforced via `get_service($id, 'vps')` — cross-customer requests return 404. Use to render a VPS detail page, to verify ownership before mutating, or to poll `vps_status` after `addVps` (status flips `pending` → `active` once provisioning completes). Sibling ops: `getVpsList`, `doVpsRestart`/`doVpsStart`/`doVpsStop` (lifecycle), `getVpsTrafficUsage` (bandwidth), `getVpsBackups`, `getVpsInvoices`, `updateVpsInfo`.

**Path param:**
- `id` (integer, required) — VPS id from `getVpsList.vps_id`.

**Returned fields** (schema `Vps` plus extras):
- Core: `vps_id`, `vps_hostname`, `vps_ip`, `vps_status`, `vps_slices`, `vps_os`, `vps_type` (service-type id), `vps_server` (backing hypervisor id), `vps_custid`, `vps_comment`, `vps_coupon`.
- `services_name` (string) — plan name (e.g. `KVM`, `HyperV`).
- `client_links` (array) — UI action links (`{name, link, icon}`) for restart, snapshot, console, etc. Internal `?link=queue&action=...` URLs are pre-resolved.
- `serviceAddons` (object) — `{extra_ips: [...], additional_gb: <int>}` populated from `repeat_invoices` rows that match `Additional IP*` / `Additional N GB Space*` patterns.
- **Stripped fields:** `admin_links`, `settings`, `csrf` are removed before response.

**Auth:** Session or API key. Customer must own the VPS (enforced via `vps_custid` match).

**Errors:**
- `401 Unauthorized` — missing session/API key.
- `404 Invalid VPS Passed` — `id` does not exist or is owned by a different account.

**Related calls:**
- **Lifecycle:** `doVpsStart`, `doVpsStop`, `doVpsRestart`.
- **Maintenance:** `postVpsChangeHostname`, `postVpsChangeRootPassword`, `postVpsReverseDns`.
- **Upgrade:** `getVpsSlices`/`postVpsSlices`, `getVpsBuyHdSpace`/`putVpsBuyHdSpace`/`postVpsBuyHdSpace`, `getVpsBuyIp`/`postVpsBuyIp`.
- **Backups:** `getVpsBackup` (create), `getVpsBackups` (list), `downloadVpsBackup`, `postVpsRestore`.
- **Billing:** `getVpsInvoices`, `VPSCancel`.
- **Metrics:** `getVpsTrafficUsage`."
  [id int?]
  (let [res (:data (get-vps-info-with-http-info id))]
    (if (:decode-models *api-context*)
       (st/decode vps-spec res st/string-transformer)
       res)))


(defn-spec get-vps-insert-cd-with-http-info any?
  "List ISO templates that can be mounted in the VPS virtual CD drive
  Step 1 of the CD-mount flow. Returns the catalog of ISO images the customer can mount in the VPS virtual CD drive — typically rescue ISOs, OS installers, or recovery media. Read-only. Use to populate a CD/ISO picker before calling `postVpsInsertCd` with a chosen URL. Sibling ops: `postVpsInsertCd` (mount), `doVpsEjectCd` (unmount), `doVpsDisableCd` (remove drive), `doVpsRestart` (boot from mounted CD).

**Path param:**
- `id` (integer, required) — VPS id from `getVpsList.vps_id`.

**Body:** None.

**Returns:** Object with available ISO templates (current implementation returns the platform's CD options).

**Auth:** Session/API key. Ownership enforced.

**Errors:**
- `401` — unauthenticated.
- `404 Invalid VPS Passed`.
- `409 VPS is not active`.

**Related calls:**
- **Next:** `postVpsInsertCd` (provide `url` for the ISO to mount).
- **Boot from CD:** `doVpsRestart` after mounting."
  [id int?]
  (check-required-params id)
  (call-api "/vps/{id}/insert_cd" :get
            {:path-params   {"id" id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["sessionIdCookieAuth" "apiKeyAuth" "sessionIdHeaderAuth"]}))

(defn-spec get-vps-insert-cd any?
  "List ISO templates that can be mounted in the VPS virtual CD drive
  Step 1 of the CD-mount flow. Returns the catalog of ISO images the customer can mount in the VPS virtual CD drive — typically rescue ISOs, OS installers, or recovery media. Read-only. Use to populate a CD/ISO picker before calling `postVpsInsertCd` with a chosen URL. Sibling ops: `postVpsInsertCd` (mount), `doVpsEjectCd` (unmount), `doVpsDisableCd` (remove drive), `doVpsRestart` (boot from mounted CD).

**Path param:**
- `id` (integer, required) — VPS id from `getVpsList.vps_id`.

**Body:** None.

**Returns:** Object with available ISO templates (current implementation returns the platform's CD options).

**Auth:** Session/API key. Ownership enforced.

**Errors:**
- `401` — unauthenticated.
- `404 Invalid VPS Passed`.
- `409 VPS is not active`.

**Related calls:**
- **Next:** `postVpsInsertCd` (provide `url` for the ISO to mount).
- **Boot from CD:** `doVpsRestart` after mounting."
  [id int?]
  (let [res (:data (get-vps-insert-cd-with-http-info id))]
    (if (:decode-models *api-context*)
       (st/decode any? res st/string-transformer)
       res)))


(defn-spec get-vps-invoices-with-http-info any?
  "List all billing invoices associated with this specific VPS
  Returns the billing history for one VPS — initial purchase invoice, monthly/period renewal invoices, addon invoices (extra IPs, additional disk space), and any prorated upgrade invoices for slice changes. Read-only. Backed by `Billing\\InvoicesList::go()`. Use to render a per-VPS billing-history view, to find an unpaid invoice id to pass to `initiatePayment`, or to confirm a recent charge. Sibling ops: `getVpsInfo`, `getBillingInvoice` (single invoice detail), `initiatePayment`, `addVps` (creates the first invoice).

**Path param:**
- `id` (integer, required) — VPS id from `getVpsList.vps_id`.

**Body:** None.

**Returns:** `ChargeInvoiceRows` — array of invoice rows with `id`, `amount`, `paid`, `description`, `date`, `due_date`, `currency`, `module=vps`, `service={id}`, and any addon-specific fields. Order is most-recent-first.

**Auth:** Session/API key. Ownership enforced via parent VPS.

**Errors:**
- `401` — unauthenticated.
- `404 Invalid Service Passed` — `id` not owned by caller.

**Related calls:**
- **Single invoice detail:** `getBillingInvoice`.
- **Pay an unpaid invoice:** `initiatePayment` (`GET /billing/pay/{method}/{invoices}`).
- **All invoices across account:** `getBillingInvoices`."
  [id int?]
  (check-required-params id)
  (call-api "/vps/{id}/invoices" :get
            {:path-params   {"id" id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["sessionIdCookieAuth" "apiKeyAuth" "sessionIdHeaderAuth"]}))

(defn-spec get-vps-invoices charge-invoice-rows-spec
  "List all billing invoices associated with this specific VPS
  Returns the billing history for one VPS — initial purchase invoice, monthly/period renewal invoices, addon invoices (extra IPs, additional disk space), and any prorated upgrade invoices for slice changes. Read-only. Backed by `Billing\\InvoicesList::go()`. Use to render a per-VPS billing-history view, to find an unpaid invoice id to pass to `initiatePayment`, or to confirm a recent charge. Sibling ops: `getVpsInfo`, `getBillingInvoice` (single invoice detail), `initiatePayment`, `addVps` (creates the first invoice).

**Path param:**
- `id` (integer, required) — VPS id from `getVpsList.vps_id`.

**Body:** None.

**Returns:** `ChargeInvoiceRows` — array of invoice rows with `id`, `amount`, `paid`, `description`, `date`, `due_date`, `currency`, `module=vps`, `service={id}`, and any addon-specific fields. Order is most-recent-first.

**Auth:** Session/API key. Ownership enforced via parent VPS.

**Errors:**
- `401` — unauthenticated.
- `404 Invalid Service Passed` — `id` not owned by caller.

**Related calls:**
- **Single invoice detail:** `getBillingInvoice`.
- **Pay an unpaid invoice:** `initiatePayment` (`GET /billing/pay/{method}/{invoices}`).
- **All invoices across account:** `getBillingInvoices`."
  [id int?]
  (let [res (:data (get-vps-invoices-with-http-info id))]
    (if (:decode-models *api-context*)
       (st/decode charge-invoice-rows-spec res st/string-transformer)
       res)))


(defn-spec get-vps-list-with-http-info any?
  "List all VPS services on the customer's account
  Enumerates every VPS owned by the authenticated customer — status, hostname, primary IP, plan name, and monthly cost. The canonical entry point for finding a VPS `id` to pass into other VPS operations (`getVpsInfo`, lifecycle, billing, backups, etc.). No path params, no query params, no body. Server-side filtered by session account; rows come from the `vps` table joined to `repeat_invoices` (for cost) and `services` (for plan name). Returns an array of `VpsRow` (empty array if the account has no VPS). Sibling ops: `getVpsInfo` (full detail), `getNewVps`/`putVps`/`addVps` (order a new one).

**Returned fields (per row):**
- `vps_id` (integer) — canonical VPS id, used in every `/vps/{id}/*` path.
- `vps_name` (string) — display name shown in the dashboard.
- `vps_hostname` (string) — FQDN currently assigned to the VPS.
- `vps_ip` (string) — primary IPv4 address.
- `vps_status` (string enum) — `active`, `pending` (awaiting payment/provisioning), `suspended` (non-payment), or `cancelled`.
- `services_name` (string) — service-type name (e.g. `KVM`, `KVM Storage`, `HyperV`).
- `repeat_invoices_cost` (decimal) — current monthly cost in the VPS's billing currency.
- `vps_comment` (string|null) — customer-provided note.

**Auth:** Session (`sessionid` header) or API key (`X-API-KEY` header). API key preferred for integrations.

**Errors:**
- `401 Unauthorized` — missing/invalid session or API key.

**Related calls:**
- **Next (per-VPS):** `getVpsInfo` (full detail incl. extra IPs, slices, addons), `getVpsInvoices` (billing per VPS), `doVpsRestart`/`doVpsStart`/`doVpsStop` (lifecycle).
- **Order a new VPS:** `getNewVps` (catalog) → `putVps` (validate + quote) → `addVps` (place + invoice).
- **Cancel:** `VPSCancel` (end of cycle, customer-initiated)."
  []
  (call-api "/vps" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["sessionIdCookieAuth" "apiKeyAuth" "sessionIdHeaderAuth"]}))

(defn-spec get-vps-list (s/coll-of vps-row-spec)
  "List all VPS services on the customer's account
  Enumerates every VPS owned by the authenticated customer — status, hostname, primary IP, plan name, and monthly cost. The canonical entry point for finding a VPS `id` to pass into other VPS operations (`getVpsInfo`, lifecycle, billing, backups, etc.). No path params, no query params, no body. Server-side filtered by session account; rows come from the `vps` table joined to `repeat_invoices` (for cost) and `services` (for plan name). Returns an array of `VpsRow` (empty array if the account has no VPS). Sibling ops: `getVpsInfo` (full detail), `getNewVps`/`putVps`/`addVps` (order a new one).

**Returned fields (per row):**
- `vps_id` (integer) — canonical VPS id, used in every `/vps/{id}/*` path.
- `vps_name` (string) — display name shown in the dashboard.
- `vps_hostname` (string) — FQDN currently assigned to the VPS.
- `vps_ip` (string) — primary IPv4 address.
- `vps_status` (string enum) — `active`, `pending` (awaiting payment/provisioning), `suspended` (non-payment), or `cancelled`.
- `services_name` (string) — service-type name (e.g. `KVM`, `KVM Storage`, `HyperV`).
- `repeat_invoices_cost` (decimal) — current monthly cost in the VPS's billing currency.
- `vps_comment` (string|null) — customer-provided note.

**Auth:** Session (`sessionid` header) or API key (`X-API-KEY` header). API key preferred for integrations.

**Errors:**
- `401 Unauthorized` — missing/invalid session or API key.

**Related calls:**
- **Next (per-VPS):** `getVpsInfo` (full detail incl. extra IPs, slices, addons), `getVpsInvoices` (billing per VPS), `doVpsRestart`/`doVpsStart`/`doVpsStop` (lifecycle).
- **Order a new VPS:** `getNewVps` (catalog) → `putVps` (validate + quote) → `addVps` (place + invoice).
- **Cancel:** `VPSCancel` (end of cycle, customer-initiated)."
  []
  (let [res (:data (get-vps-list-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of vps-row-spec) res st/string-transformer)
       res)))


(defn-spec get-vps-reinstall-os-with-http-info any?
  "List OS templates compatible with this VPS's hypervisor for reinstall
  Step 1 of the OS-reinstall flow. Returns the list of OS templates that can be installed on this specific VPS — filtered server-side by the VPS's backing hypervisor type (KVM, HyperV, OpenVZ, Virtuozzo) and by `template_available=1` (non-admin callers only see published templates). Use to populate the reinstall picker; the `template_file` from a chosen row is what `postVpsReinstallOs` accepts. **Reinstall destroys all data** — recommend a backup via `getVpsBackup` first. Sibling ops: `postVpsReinstallOs` (commit reinstall), `getVpsBackup` (snapshot first), `postVpsRestore` (restore from backup instead).

**Path param:**
- `id` (integer, required) — VPS id from `getVpsList.vps_id`.

**Body:** None.

**Returns:** `VpsTemplatesList`:
- `templates` (array) — one entry per available template:
  - `template_id` (integer)
  - `template_name` (string) — display name (e.g. `CentOS 7`).
  - `template_version` (string) — version (e.g. `7`).
  - `template_file` (string) — **canonical identifier** to pass to `postVpsReinstallOs` (e.g. `centos-7-x86_64.qcow2`).
  - `template_os` (string) — OS family tag.
  - `template_type` (integer) — internal hypervisor type id.
  - `template_available` (integer) — `1` for non-admin visible templates.

**Auth:** Session/API key. Ownership enforced.

**Errors:**
- `401` — unauthenticated.
- `404 Invalid VPS Passed`.
- `409 VPS is not active`.

**Related calls:**
- **Snapshot before reinstall:** `getVpsBackup`.
- **Commit reinstall:** `postVpsReinstallOs` (pass `template_file` + MyAdmin login password).
- **Alternative — restore old backup:** `postVpsRestore`."
  [id int?]
  (check-required-params id)
  (call-api "/vps/{id}/reinstall_os" :get
            {:path-params   {"id" id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["sessionIdCookieAuth" "apiKeyAuth" "sessionIdHeaderAuth"]}))

(defn-spec get-vps-reinstall-os vps-templates-list-spec
  "List OS templates compatible with this VPS's hypervisor for reinstall
  Step 1 of the OS-reinstall flow. Returns the list of OS templates that can be installed on this specific VPS — filtered server-side by the VPS's backing hypervisor type (KVM, HyperV, OpenVZ, Virtuozzo) and by `template_available=1` (non-admin callers only see published templates). Use to populate the reinstall picker; the `template_file` from a chosen row is what `postVpsReinstallOs` accepts. **Reinstall destroys all data** — recommend a backup via `getVpsBackup` first. Sibling ops: `postVpsReinstallOs` (commit reinstall), `getVpsBackup` (snapshot first), `postVpsRestore` (restore from backup instead).

**Path param:**
- `id` (integer, required) — VPS id from `getVpsList.vps_id`.

**Body:** None.

**Returns:** `VpsTemplatesList`:
- `templates` (array) — one entry per available template:
  - `template_id` (integer)
  - `template_name` (string) — display name (e.g. `CentOS 7`).
  - `template_version` (string) — version (e.g. `7`).
  - `template_file` (string) — **canonical identifier** to pass to `postVpsReinstallOs` (e.g. `centos-7-x86_64.qcow2`).
  - `template_os` (string) — OS family tag.
  - `template_type` (integer) — internal hypervisor type id.
  - `template_available` (integer) — `1` for non-admin visible templates.

**Auth:** Session/API key. Ownership enforced.

**Errors:**
- `401` — unauthenticated.
- `404 Invalid VPS Passed`.
- `409 VPS is not active`.

**Related calls:**
- **Snapshot before reinstall:** `getVpsBackup`.
- **Commit reinstall:** `postVpsReinstallOs` (pass `template_file` + MyAdmin login password).
- **Alternative — restore old backup:** `postVpsRestore`."
  [id int?]
  (let [res (:data (get-vps-reinstall-os-with-http-info id))]
    (if (:decode-models *api-context*)
       (st/decode vps-templates-list-spec res st/string-transformer)
       res)))


(defn-spec get-vps-reset-password-with-http-info any?
  "Pre-flight check before resetting the VPS root password to a random value
  Step 1 of the random-root-password reset flow. Validates ownership and active status; the response describes the reset behavior (currently a passthrough — full implementation reserved for future policy fields). Read-only. Use to confirm the VPS exists and is active before triggering the reset via `postVpsResetPassword`. For a customer-chosen password use `postVpsChangeRootPassword` instead. Sibling ops: `postVpsResetPassword`, `postVpsChangeRootPassword`, `postVpsChangeWebuzoPassword`.

**Path param:**
- `id` (integer, required) — VPS id from `getVpsList.vps_id`.

**Body:** None.

**Returns:** Object with reset options (reserved for policy info).

**Auth:** Session/API key. Ownership enforced.

**Errors:**
- `401` — unauthenticated.
- `404 Invalid VPS Passed`.
- `409 VPS is not active`.

**Related calls:**
- **Next (random):** `postVpsResetPassword`.
- **Specific password instead:** `postVpsChangeRootPassword`."
  [id int?]
  (check-required-params id)
  (call-api "/vps/{id}/reset_password" :get
            {:path-params   {"id" id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["sessionIdCookieAuth" "apiKeyAuth" "sessionIdHeaderAuth"]}))

(defn-spec get-vps-reset-password any?
  "Pre-flight check before resetting the VPS root password to a random value
  Step 1 of the random-root-password reset flow. Validates ownership and active status; the response describes the reset behavior (currently a passthrough — full implementation reserved for future policy fields). Read-only. Use to confirm the VPS exists and is active before triggering the reset via `postVpsResetPassword`. For a customer-chosen password use `postVpsChangeRootPassword` instead. Sibling ops: `postVpsResetPassword`, `postVpsChangeRootPassword`, `postVpsChangeWebuzoPassword`.

**Path param:**
- `id` (integer, required) — VPS id from `getVpsList.vps_id`.

**Body:** None.

**Returns:** Object with reset options (reserved for policy info).

**Auth:** Session/API key. Ownership enforced.

**Errors:**
- `401` — unauthenticated.
- `404 Invalid VPS Passed`.
- `409 VPS is not active`.

**Related calls:**
- **Next (random):** `postVpsResetPassword`.
- **Specific password instead:** `postVpsChangeRootPassword`."
  [id int?]
  (let [res (:data (get-vps-reset-password-with-http-info id))]
    (if (:decode-models *api-context*)
       (st/decode any? res st/string-transformer)
       res)))


(defn-spec get-vps-reverse-dns-with-http-info any?
  "Read the current PTR (reverse-DNS) records for every IP on the VPS
  Returns the PTR/reverse-DNS hostname currently resolving for every IP attached to the VPS — primary `vps_ip` plus any extras purchased via `postVpsBuyIp`. PTRs are read live via `get_hostname()` (DNS lookup), not cached. Read-only. Sibling ops: `postVpsReverseDns` (update entries), `getVpsBuyIp` (add more IPs first), `postVpsChangeHostname` (auto-updates PTR for the primary IP).

**Path param:**
- `id` (integer, required) — VPS id from `getVpsList.vps_id`.

**Body:** None.

**Returns:** `ReverseDnsEntries` — `{ ips: { \"<ip>\": \"<ptr-hostname>\", ... } }`. Empty string for IPs with no PTR set.

**Auth:** Session/API key. Ownership enforced.

**Errors:**
- `401` — unauthenticated.
- `404 Invalid VPS Passed`.
- `409 VPS is not active`.

**Related calls:**
- **Update PTRs:** `postVpsReverseDns`.
- **Add IPs first:** `getVpsBuyIp` → `postVpsBuyIp`.
- **Hostname change (auto-PTR for primary):** `postVpsChangeHostname`."
  [id int?]
  (check-required-params id)
  (call-api "/vps/{id}/reverse_dns" :get
            {:path-params   {"id" id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["sessionIdCookieAuth" "apiKeyAuth" "sessionIdHeaderAuth"]}))

(defn-spec get-vps-reverse-dns reverse-dns-entries-spec
  "Read the current PTR (reverse-DNS) records for every IP on the VPS
  Returns the PTR/reverse-DNS hostname currently resolving for every IP attached to the VPS — primary `vps_ip` plus any extras purchased via `postVpsBuyIp`. PTRs are read live via `get_hostname()` (DNS lookup), not cached. Read-only. Sibling ops: `postVpsReverseDns` (update entries), `getVpsBuyIp` (add more IPs first), `postVpsChangeHostname` (auto-updates PTR for the primary IP).

**Path param:**
- `id` (integer, required) — VPS id from `getVpsList.vps_id`.

**Body:** None.

**Returns:** `ReverseDnsEntries` — `{ ips: { \"<ip>\": \"<ptr-hostname>\", ... } }`. Empty string for IPs with no PTR set.

**Auth:** Session/API key. Ownership enforced.

**Errors:**
- `401` — unauthenticated.
- `404 Invalid VPS Passed`.
- `409 VPS is not active`.

**Related calls:**
- **Update PTRs:** `postVpsReverseDns`.
- **Add IPs first:** `getVpsBuyIp` → `postVpsBuyIp`.
- **Hostname change (auto-PTR for primary):** `postVpsChangeHostname`."
  [id int?]
  (let [res (:data (get-vps-reverse-dns-with-http-info id))]
    (if (:decode-models *api-context*)
       (st/decode reverse-dns-entries-spec res st/string-transformer)
       res)))


(defn-spec get-vps-setup-vnc-with-http-info any?
  "Read current VNC console connection info for the VPS
  Returns the VNC IP/port the customer can connect to for an out-of-band console (KVM-style remote console — useful when SSH/RDP is unavailable, during boot, or for rescue work). Read-only. **Note:** the current implementation is a stub for some platforms — if you get an empty response, call `postVpsSetupVnc` to (re)provision the VNC endpoint, then call this again. Sibling ops: `postVpsSetupVnc`, `getVpsViewDesktop` (Windows GUI access via RDP/HTML5).

**Path param:**
- `id` (integer, required) — VPS id from `getVpsList.vps_id`.

**Body:** None.

**Returns:** Object with VNC connection info (IP, port, credentials when provisioned).

**Auth:** Session/API key. Ownership enforced.

**Errors:**
- `401` — unauthenticated.
- `404 Invalid VPS Passed`.
- `409 VPS is not active`.

**Related calls:**
- **Provision/refresh VNC:** `postVpsSetupVnc`.
- **Windows remote desktop:** `getVpsViewDesktop`."
  [id int?]
  (check-required-params id)
  (call-api "/vps/{id}/setup_vnc" :get
            {:path-params   {"id" id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["sessionIdCookieAuth" "apiKeyAuth" "sessionIdHeaderAuth"]}))

(defn-spec get-vps-setup-vnc any?
  "Read current VNC console connection info for the VPS
  Returns the VNC IP/port the customer can connect to for an out-of-band console (KVM-style remote console — useful when SSH/RDP is unavailable, during boot, or for rescue work). Read-only. **Note:** the current implementation is a stub for some platforms — if you get an empty response, call `postVpsSetupVnc` to (re)provision the VNC endpoint, then call this again. Sibling ops: `postVpsSetupVnc`, `getVpsViewDesktop` (Windows GUI access via RDP/HTML5).

**Path param:**
- `id` (integer, required) — VPS id from `getVpsList.vps_id`.

**Body:** None.

**Returns:** Object with VNC connection info (IP, port, credentials when provisioned).

**Auth:** Session/API key. Ownership enforced.

**Errors:**
- `401` — unauthenticated.
- `404 Invalid VPS Passed`.
- `409 VPS is not active`.

**Related calls:**
- **Provision/refresh VNC:** `postVpsSetupVnc`.
- **Windows remote desktop:** `getVpsViewDesktop`."
  [id int?]
  (let [res (:data (get-vps-setup-vnc-with-http-info id))]
    (if (:decode-models *api-context*)
       (st/decode any? res st/string-transformer)
       res)))


(defn-spec get-vps-slices-with-http-info any?
  "Read current slice count, min/max range, and prorated per-slice upgrade cost
  Step 1 of the slice upgrade/downgrade flow. A \"slice\" bundles RAM, disk, and CPU on the VPS — the smallest unit of vertical scaling. Returns the current slice count (`vps_slices`), the range available (`min_slices = current`, `max_slices = host capacity`), the per-slice recurring cost (after coupon and frequency discount), the prorated cost for the remainder of the current cycle, and the underlying resource units (`slice_ram` in MB, `slice_hd` in GB). Read-only. Use to render an upgrade picker before calling `postVpsSlices`. Sibling ops: `postVpsSlices` (commit), `postVpsBuyHdSpace` (disk-only addon).

**Path param:**
- `id` (integer, required) — VPS id from `getVpsList.vps_id`.

**Body:** None.

**Returns:**
- `min_slices` (integer) — current allocation; floor for downgrades is also this value (downgrade decreases from here).
- `max_slices` (integer) — host-capacity-limited upper bound (`get_vps_max_slices()`).
- `slice_cost` (float) — per-slice recurring cost in customer currency.
- `prorated_slice_cost` (float) — prorated cost for the remainder of the current billing cycle.
- `frequency` (integer) — billing cycle in months (1/6/12/24/36).
- `slice_ram` (integer) — RAM (GB) per slice.
- `slice_hd` (integer) — disk (GB) per slice. For KVM Storage (service-type 57) this comes from `services_field2.slice_hd`.
- `vps_slices` (integer) — current count.
- `vps_cost` (float) — current monthly cost.

**Auth:** Session/API key. Ownership enforced.

**Errors:**
- `401` — unauthenticated.
- `404 Invalid VPS Passed`.
- `409 VPS is not active`.

**Related calls:**
- **Next:** `postVpsSlices` (commit; creates prorated invoice for upgrades, opens ticket for active services).
- **Disk-only:** `getVpsBuyHdSpace`/`putVpsBuyHdSpace`/`postVpsBuyHdSpace`."
  [id int?]
  (check-required-params id)
  (call-api "/vps/{id}/slices" :get
            {:path-params   {"id" id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["sessionIdCookieAuth" "apiKeyAuth" "sessionIdHeaderAuth"]}))

(defn-spec get-vps-slices any?
  "Read current slice count, min/max range, and prorated per-slice upgrade cost
  Step 1 of the slice upgrade/downgrade flow. A \"slice\" bundles RAM, disk, and CPU on the VPS — the smallest unit of vertical scaling. Returns the current slice count (`vps_slices`), the range available (`min_slices = current`, `max_slices = host capacity`), the per-slice recurring cost (after coupon and frequency discount), the prorated cost for the remainder of the current cycle, and the underlying resource units (`slice_ram` in MB, `slice_hd` in GB). Read-only. Use to render an upgrade picker before calling `postVpsSlices`. Sibling ops: `postVpsSlices` (commit), `postVpsBuyHdSpace` (disk-only addon).

**Path param:**
- `id` (integer, required) — VPS id from `getVpsList.vps_id`.

**Body:** None.

**Returns:**
- `min_slices` (integer) — current allocation; floor for downgrades is also this value (downgrade decreases from here).
- `max_slices` (integer) — host-capacity-limited upper bound (`get_vps_max_slices()`).
- `slice_cost` (float) — per-slice recurring cost in customer currency.
- `prorated_slice_cost` (float) — prorated cost for the remainder of the current billing cycle.
- `frequency` (integer) — billing cycle in months (1/6/12/24/36).
- `slice_ram` (integer) — RAM (GB) per slice.
- `slice_hd` (integer) — disk (GB) per slice. For KVM Storage (service-type 57) this comes from `services_field2.slice_hd`.
- `vps_slices` (integer) — current count.
- `vps_cost` (float) — current monthly cost.

**Auth:** Session/API key. Ownership enforced.

**Errors:**
- `401` — unauthenticated.
- `404 Invalid VPS Passed`.
- `409 VPS is not active`.

**Related calls:**
- **Next:** `postVpsSlices` (commit; creates prorated invoice for upgrades, opens ticket for active services).
- **Disk-only:** `getVpsBuyHdSpace`/`putVpsBuyHdSpace`/`postVpsBuyHdSpace`."
  [id int?]
  (let [res (:data (get-vps-slices-with-http-info id))]
    (if (:decode-models *api-context*)
       (st/decode any? res st/string-transformer)
       res)))


(defn-spec get-vps-traffic-usage-with-http-info any?
  "Read bandwidth traffic usage data for the VPS
  Returns bandwidth-consumption data for the VPS — inbound/outbound bytes per day and aggregated totals against the plan's `bwSlice` × `vps_slices` allowance. Pulled via `vps_bandwidth_data($vps_id)` from the bandwidth-tracking subsystem. Read-only. For custom date-range or granularity filters use `postVpsTrafficUsage` (currently mirrors GET behavior but reserved for filter parameters). Sibling ops: `postVpsTrafficUsage`, `getVpsInfo` (BW allowance fields are shown there).

**Path param:**
- `id` (integer, required) — VPS id from `getVpsList.vps_id`.

**Body:** None.

**Returns:** `VpsTrafficResponse` — array/object with bandwidth usage points (timestamp, inbound bytes, outbound bytes, totals).

**Auth:** Session/API key. Ownership enforced via parent VPS.

**Errors:**
- `401` — unauthenticated.
- `404 Invalid VPS Passed`.

**Related calls:**
- **Filtered query:** `postVpsTrafficUsage` (reserved for date-range filters).
- **Plan allowance:** `getVpsInfo` returns `bw_total` / `slices` you can compute against."
  [id int?]
  (check-required-params id)
  (call-api "/vps/{id}/traffic_usage" :get
            {:path-params   {"id" id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["sessionIdCookieAuth" "apiKeyAuth" "sessionIdHeaderAuth"]}))

(defn-spec get-vps-traffic-usage vps-traffic-response-spec
  "Read bandwidth traffic usage data for the VPS
  Returns bandwidth-consumption data for the VPS — inbound/outbound bytes per day and aggregated totals against the plan's `bwSlice` × `vps_slices` allowance. Pulled via `vps_bandwidth_data($vps_id)` from the bandwidth-tracking subsystem. Read-only. For custom date-range or granularity filters use `postVpsTrafficUsage` (currently mirrors GET behavior but reserved for filter parameters). Sibling ops: `postVpsTrafficUsage`, `getVpsInfo` (BW allowance fields are shown there).

**Path param:**
- `id` (integer, required) — VPS id from `getVpsList.vps_id`.

**Body:** None.

**Returns:** `VpsTrafficResponse` — array/object with bandwidth usage points (timestamp, inbound bytes, outbound bytes, totals).

**Auth:** Session/API key. Ownership enforced via parent VPS.

**Errors:**
- `401` — unauthenticated.
- `404 Invalid VPS Passed`.

**Related calls:**
- **Filtered query:** `postVpsTrafficUsage` (reserved for date-range filters).
- **Plan allowance:** `getVpsInfo` returns `bw_total` / `slices` you can compute against."
  [id int?]
  (let [res (:data (get-vps-traffic-usage-with-http-info id))]
    (if (:decode-models *api-context*)
       (st/decode vps-traffic-response-spec res st/string-transformer)
       res)))


(defn-spec get-vps-view-desktop-with-http-info any?
  "Read remote-desktop (RDP/HTML5) connection info for a Windows/GUI VPS
  Returns remote-desktop connection details for a Windows VPS or any VPS with a GUI session — IP, port, recommended client, and the `client_links` the dashboard surfaces for launching the session. Backed by `ViewVPS::getDetails()`; response shape mirrors `getVpsInfo` minus the `admin_links` block. Sibling ops: `postVpsViewDesktop` (refresh), `getVpsSetupVnc`/`postVpsSetupVnc` (low-level VNC console).

**Path param:**
- `id` (integer, required) — VPS id from `getVpsList.vps_id`.

**Body:** None.

**Returns:** Same shape as `getVpsInfo` (sans `admin_links`) — includes `client_links` with RDP/HTML5 launch URLs.

**Auth:** Session/API key. Ownership enforced.

**Errors:**
- `401` — unauthenticated.
- `404 Invalid VPS Passed`.
- `409 VPS is not active`.

**Related calls:**
- **Refresh session:** `postVpsViewDesktop`.
- **Low-level console:** `getVpsSetupVnc` / `postVpsSetupVnc`."
  [id int?]
  (check-required-params id)
  (call-api "/vps/{id}/view_desktop" :get
            {:path-params   {"id" id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["sessionIdCookieAuth" "apiKeyAuth" "sessionIdHeaderAuth"]}))

(defn-spec get-vps-view-desktop any?
  "Read remote-desktop (RDP/HTML5) connection info for a Windows/GUI VPS
  Returns remote-desktop connection details for a Windows VPS or any VPS with a GUI session — IP, port, recommended client, and the `client_links` the dashboard surfaces for launching the session. Backed by `ViewVPS::getDetails()`; response shape mirrors `getVpsInfo` minus the `admin_links` block. Sibling ops: `postVpsViewDesktop` (refresh), `getVpsSetupVnc`/`postVpsSetupVnc` (low-level VNC console).

**Path param:**
- `id` (integer, required) — VPS id from `getVpsList.vps_id`.

**Body:** None.

**Returns:** Same shape as `getVpsInfo` (sans `admin_links`) — includes `client_links` with RDP/HTML5 launch URLs.

**Auth:** Session/API key. Ownership enforced.

**Errors:**
- `401` — unauthenticated.
- `404 Invalid VPS Passed`.
- `409 VPS is not active`.

**Related calls:**
- **Refresh session:** `postVpsViewDesktop`.
- **Low-level console:** `getVpsSetupVnc` / `postVpsSetupVnc`."
  [id int?]
  (let [res (:data (get-vps-view-desktop-with-http-info id))]
    (if (:decode-models *api-context*)
       (st/decode any? res st/string-transformer)
       res)))


(defn-spec get-vps-welcome-email-with-http-info any?
  "Resend the welcome email containing VPS IP, hostname, and root credentials
  Resends the VPS welcome email — the original new-service email containing IP, hostname, root/Administrator credentials, and connection instructions. Calls `vps_welcome_email($id)` to regenerate and dispatch via the standard mail pipeline. Use when the customer didn't receive (or lost) the original right after provisioning. The dashboard's \"show credentials\" view is the alternative for in-app retrieval. Sibling ops: `getVpsInfo` (shows connection details in the response), `postVpsChangeRootPassword` / `postVpsResetPassword` (rotate before resending if security is a concern).

**Path param:**
- `id` (integer, required) — VPS id from `getVpsList.vps_id`.

**Body:** None.

**Returns:** `SuccessTextResponse` — `Welcome Email has been resent.`

**Side effects:**
- Sends an email to the account's billing email address with the credentials currently stored in `history_log` for this VPS.

**Auth:** Session/API key. Ownership enforced via `vps_custid`.

**Errors:**
- `401` — unauthenticated.
- `404 Invalid Service Passed` — `id` not owned by caller.
- `409 Service is not active` — `vps_status != \"active\"`.

**Related calls:**
- **In-app credential view:** `getVpsInfo`.
- **Before resending, rotate password:** `postVpsResetPassword` or `postVpsChangeRootPassword`."
  [id string?]
  (check-required-params id)
  (call-api "/vps/{id}/welcome_email" :get
            {:path-params   {"id" id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["sessionIdCookieAuth" "apiKeyAuth" "sessionIdHeaderAuth"]}))

(defn-spec get-vps-welcome-email success-text-response-spec
  "Resend the welcome email containing VPS IP, hostname, and root credentials
  Resends the VPS welcome email — the original new-service email containing IP, hostname, root/Administrator credentials, and connection instructions. Calls `vps_welcome_email($id)` to regenerate and dispatch via the standard mail pipeline. Use when the customer didn't receive (or lost) the original right after provisioning. The dashboard's \"show credentials\" view is the alternative for in-app retrieval. Sibling ops: `getVpsInfo` (shows connection details in the response), `postVpsChangeRootPassword` / `postVpsResetPassword` (rotate before resending if security is a concern).

**Path param:**
- `id` (integer, required) — VPS id from `getVpsList.vps_id`.

**Body:** None.

**Returns:** `SuccessTextResponse` — `Welcome Email has been resent.`

**Side effects:**
- Sends an email to the account's billing email address with the credentials currently stored in `history_log` for this VPS.

**Auth:** Session/API key. Ownership enforced via `vps_custid`.

**Errors:**
- `401` — unauthenticated.
- `404 Invalid Service Passed` — `id` not owned by caller.
- `409 Service is not active` — `vps_status != \"active\"`.

**Related calls:**
- **In-app credential view:** `getVpsInfo`.
- **Before resending, rotate password:** `postVpsResetPassword` or `postVpsChangeRootPassword`."
  [id string?]
  (let [res (:data (get-vps-welcome-email-with-http-info id))]
    (if (:decode-models *api-context*)
       (st/decode success-text-response-spec res st/string-transformer)
       res)))


(defn-spec post-vps-buy-hd-space-with-http-info any?
  "Buy or resize the VPS additional-disk addon and create a prorated invoice
  Step 3 of the disk-space addon flow — commit. Creates or updates the `Additional N GB Space for VPS {id}` `repeat_invoices` row with the new size and recurring cost, then generates a one-off prorated `invoices` row for the immediate difference. The hypervisor disk-grow action is queued either immediately (`update_hdsize` in `vpsqueue`) when no charge is owed, or after the invoice is paid. When increasing from an existing size, any unpaid prior addon invoice is deleted and any already-paid one is credited against `diffCost`. **Real money** — call `putVpsBuyHdSpace` first to preview. Sibling ops: `getVpsBuyHdSpace`, `putVpsBuyHdSpace`, `postVpsSlices`, `initiatePayment`.

**Path param:**
- `id` (integer, required) — VPS id from `getVpsList.vps_id`.

**Body fields:**
- `size` (integer, required) — target additional GB. Range `1..100`. Must differ from current.

**Returns:**
- When immediate charge owed: `{ text: \"Invoice Created, Please Pay This To Activate Extra Space\", invoice: <integer> }` — pass `invoice` to `initiatePayment`.
- When no charge owed (downgrade/credit): `{ text: \"Repeat Invoice Updated, Server Size Update Queued\" }` — disk grow already queued.

**Side effects:**
- Inserts or updates `repeat_invoices` row for the addon.
- Inserts `invoices` row for `diffCost` when > 0.
- Deletes any unpaid prior addon invoices for the same VPS within the last month.
- Credits any paid prior invoice against `diffCost`.
- Queues `update_hdsize` in `vpsqueue` when no payment is owed.

**Auth:** Session/API key. Ownership enforced.

**Errors:**
- `401` — unauthenticated.
- `404 Invalid VPS Passed` — `id` not owned by caller.
- `Invalid Size Specified` — `size` out of `1..100`.
- `No Change Made, Size The Same`.
- **Pre-condition:** an existing addon row is required. If not found, the request short-circuits (`go()` returns without acting); use the order flow for the very first addon, or `postVpsSlices` for whole-plan upgrades.

**Related calls:**
- **Preview first:** `putVpsBuyHdSpace`.
- **Pay the invoice:** `initiatePayment` (`GET /billing/pay/{method}/{invoices}`).
- **Whole-plan upgrades:** `postVpsSlices` (bundles disk + RAM + CPU)."
  [id int?]
  (check-required-params id)
  (call-api "/vps/{id}/buy_hd_space" :post
            {:path-params   {"id" id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["sessionIdCookieAuth" "apiKeyAuth" "sessionIdHeaderAuth"]}))

(defn-spec post-vps-buy-hd-space any?
  "Buy or resize the VPS additional-disk addon and create a prorated invoice
  Step 3 of the disk-space addon flow — commit. Creates or updates the `Additional N GB Space for VPS {id}` `repeat_invoices` row with the new size and recurring cost, then generates a one-off prorated `invoices` row for the immediate difference. The hypervisor disk-grow action is queued either immediately (`update_hdsize` in `vpsqueue`) when no charge is owed, or after the invoice is paid. When increasing from an existing size, any unpaid prior addon invoice is deleted and any already-paid one is credited against `diffCost`. **Real money** — call `putVpsBuyHdSpace` first to preview. Sibling ops: `getVpsBuyHdSpace`, `putVpsBuyHdSpace`, `postVpsSlices`, `initiatePayment`.

**Path param:**
- `id` (integer, required) — VPS id from `getVpsList.vps_id`.

**Body fields:**
- `size` (integer, required) — target additional GB. Range `1..100`. Must differ from current.

**Returns:**
- When immediate charge owed: `{ text: \"Invoice Created, Please Pay This To Activate Extra Space\", invoice: <integer> }` — pass `invoice` to `initiatePayment`.
- When no charge owed (downgrade/credit): `{ text: \"Repeat Invoice Updated, Server Size Update Queued\" }` — disk grow already queued.

**Side effects:**
- Inserts or updates `repeat_invoices` row for the addon.
- Inserts `invoices` row for `diffCost` when > 0.
- Deletes any unpaid prior addon invoices for the same VPS within the last month.
- Credits any paid prior invoice against `diffCost`.
- Queues `update_hdsize` in `vpsqueue` when no payment is owed.

**Auth:** Session/API key. Ownership enforced.

**Errors:**
- `401` — unauthenticated.
- `404 Invalid VPS Passed` — `id` not owned by caller.
- `Invalid Size Specified` — `size` out of `1..100`.
- `No Change Made, Size The Same`.
- **Pre-condition:** an existing addon row is required. If not found, the request short-circuits (`go()` returns without acting); use the order flow for the very first addon, or `postVpsSlices` for whole-plan upgrades.

**Related calls:**
- **Preview first:** `putVpsBuyHdSpace`.
- **Pay the invoice:** `initiatePayment` (`GET /billing/pay/{method}/{invoices}`).
- **Whole-plan upgrades:** `postVpsSlices` (bundles disk + RAM + CPU)."
  [id int?]
  (let [res (:data (post-vps-buy-hd-space-with-http-info id))]
    (if (:decode-models *api-context*)
       (st/decode any? res st/string-transformer)
       res)))


(defn-spec post-vps-buy-ip-with-http-info any?
  "Purchase one additional IP for the VPS and create the invoice
  Step 2 of the additional-IP addon flow — commit. Auto-selects the next free IP on the same hypervisor via `vps_get_next_ip`, creates a `Additional IP for VPS {id}` recurring invoice (`repeat_invoices`), and generates an immediate one-off `invoices` row at the current IP cost. **Real money.** The network-side IP allocation happens once the invoice is paid; the IP is bound to the VPS during the next provisioning sweep. Sibling ops: `getVpsBuyIp` (preview), `initiatePayment`, `getVpsInfo` (verify), `postVpsReverseDns` (set PTR after activation).

**Path param:**
- `id` (integer, required) — VPS id from `getVpsList.vps_id`.

**Body:** None — the next free IP is auto-selected.

**Returns:**
- `text` (string) — `Ordered Additional IP successfully.`
- `invoice` (integer) — new invoice id to pay via `initiatePayment`.

**Side effects:**
- Reserves the next free IP on the VPS's `vps_server` (parked until payment).
- Inserts `repeat_invoices` row (`Additional IP for VPS {id}`, recurring at `ipCost`, frequency from parent service).
- Inserts `invoices` row for the immediate one-period charge.
- Logs the addon creation in `myadmin_log`.

**Auth:** Session/API key. Ownership enforced.

**Errors:**
- `401` — unauthenticated.
- `404 Invalid VPS Passed` — `id` not owned by caller.
- `VPS already has the maximum number of IPs allowed. If you require additional IPs please contact support.` — `ipCount >= maxIps` (`VPS_MAX_IPS`).
- `No available free ips on this server. Please contact support to order additional ips.` — `vps_get_next_ip` returned false.

**Related calls:**
- **Prerequisite:** `getVpsBuyIp` (capacity check + preview).
- **Next:** `initiatePayment` with the returned `invoice` id, then `getVpsInfo` to confirm allocation.
- **Post-activation:** `postVpsReverseDns` to set the PTR for the new IP."
  [id int?]
  (check-required-params id)
  (call-api "/vps/{id}/buy_ip" :post
            {:path-params   {"id" id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["sessionIdCookieAuth" "apiKeyAuth" "sessionIdHeaderAuth"]}))

(defn-spec post-vps-buy-ip any?
  "Purchase one additional IP for the VPS and create the invoice
  Step 2 of the additional-IP addon flow — commit. Auto-selects the next free IP on the same hypervisor via `vps_get_next_ip`, creates a `Additional IP for VPS {id}` recurring invoice (`repeat_invoices`), and generates an immediate one-off `invoices` row at the current IP cost. **Real money.** The network-side IP allocation happens once the invoice is paid; the IP is bound to the VPS during the next provisioning sweep. Sibling ops: `getVpsBuyIp` (preview), `initiatePayment`, `getVpsInfo` (verify), `postVpsReverseDns` (set PTR after activation).

**Path param:**
- `id` (integer, required) — VPS id from `getVpsList.vps_id`.

**Body:** None — the next free IP is auto-selected.

**Returns:**
- `text` (string) — `Ordered Additional IP successfully.`
- `invoice` (integer) — new invoice id to pay via `initiatePayment`.

**Side effects:**
- Reserves the next free IP on the VPS's `vps_server` (parked until payment).
- Inserts `repeat_invoices` row (`Additional IP for VPS {id}`, recurring at `ipCost`, frequency from parent service).
- Inserts `invoices` row for the immediate one-period charge.
- Logs the addon creation in `myadmin_log`.

**Auth:** Session/API key. Ownership enforced.

**Errors:**
- `401` — unauthenticated.
- `404 Invalid VPS Passed` — `id` not owned by caller.
- `VPS already has the maximum number of IPs allowed. If you require additional IPs please contact support.` — `ipCount >= maxIps` (`VPS_MAX_IPS`).
- `No available free ips on this server. Please contact support to order additional ips.` — `vps_get_next_ip` returned false.

**Related calls:**
- **Prerequisite:** `getVpsBuyIp` (capacity check + preview).
- **Next:** `initiatePayment` with the returned `invoice` id, then `getVpsInfo` to confirm allocation.
- **Post-activation:** `postVpsReverseDns` to set the PTR for the new IP."
  [id int?]
  (let [res (:data (post-vps-buy-ip-with-http-info id))]
    (if (:decode-models *api-context*)
       (st/decode any? res st/string-transformer)
       res)))


(defn-spec post-vps-change-hostname-with-http-info any?
  "Rename the VPS hostname (OpenVZ/Virtuozzo only) and auto-set PTR for the primary IP
  Renames the VPS — validates the FQDN with `valid_hostname()`, sets the reverse-DNS PTR record for the primary IP (`reverse_dns($vps_ip, $hostname)`), and either updates the `vps_hostname` column directly (if the VPS is still `pending`) or queues a `change_hostname` action on the hypervisor (`vpsqueue`) for active services. **Platform restriction:** rejected unless the VPS runs on OpenVZ, SSD-OpenVZ, Virtuozzo, or SSD-Virtuozzo — KVM/HyperV must open a support ticket. Sibling ops: `getVpsChangeHostname`, `postVpsReverseDns`, `getVpsInfo`.

**Path param:**
- `id` (integer, required) — VPS id from `getVpsList.vps_id`.

**Body fields:**
- `hostname` (string, required) — new FQDN (e.g. `web1.example.com`). Validated by `valid_hostname()`.

**Returns:**
- For active services: `{ text, queueId }` — `queueId` references the `queue_log` row. Allow ~2 minutes.
- For pending services: `{ text: \"Hostname Updated\" }` — applied in place.

**Side effects:**
- Sets PTR record for `vps_ip` via `reverse_dns()`.
- Either updates `vps_hostname` directly (pending) or queues `change_hostname` (active) plus logs `change_hostname` history entry with the `old to new` transition.

**Auth:** Session/API key. Ownership enforced.

**Errors:**
- `401` — unauthenticated.
- `404 Invalid VPS Passed`.
- `409 VPS is not active`.
- `Invalid Hostname` — fails `valid_hostname()`.
- `No change in hostname` — value matches current.
- `Hostname changing is only enabled on OpenVZ/Virtuozzo Platforms currently. Contact support and we can change it for you.` — wrong platform.

**Related calls:**
- **Prerequisite:** `getVpsChangeHostname` (read current).
- **Extra IPs need separate PTR updates:** `postVpsReverseDns`.
- **Verify:** `getVpsInfo` (look for updated `vps_hostname`)."
  ([id int?, ] (post-vps-change-hostname-with-http-info id nil))
  ([id int?, {:keys [hostname]} (s/map-of keyword? any?)]
   (check-required-params id)
   (call-api "/vps/{id}/change_hostname" :post
             {:path-params   {"id" id }
              :header-params {}
              :query-params  {}
              :form-params   {"hostname" hostname }
              :content-types ["multipart/form-data" "application/json"]
              :accepts       ["application/json"]
              :auth-names    ["sessionIdCookieAuth" "apiKeyAuth" "sessionIdHeaderAuth"]})))

(defn-spec post-vps-change-hostname queue-response-spec
  "Rename the VPS hostname (OpenVZ/Virtuozzo only) and auto-set PTR for the primary IP
  Renames the VPS — validates the FQDN with `valid_hostname()`, sets the reverse-DNS PTR record for the primary IP (`reverse_dns($vps_ip, $hostname)`), and either updates the `vps_hostname` column directly (if the VPS is still `pending`) or queues a `change_hostname` action on the hypervisor (`vpsqueue`) for active services. **Platform restriction:** rejected unless the VPS runs on OpenVZ, SSD-OpenVZ, Virtuozzo, or SSD-Virtuozzo — KVM/HyperV must open a support ticket. Sibling ops: `getVpsChangeHostname`, `postVpsReverseDns`, `getVpsInfo`.

**Path param:**
- `id` (integer, required) — VPS id from `getVpsList.vps_id`.

**Body fields:**
- `hostname` (string, required) — new FQDN (e.g. `web1.example.com`). Validated by `valid_hostname()`.

**Returns:**
- For active services: `{ text, queueId }` — `queueId` references the `queue_log` row. Allow ~2 minutes.
- For pending services: `{ text: \"Hostname Updated\" }` — applied in place.

**Side effects:**
- Sets PTR record for `vps_ip` via `reverse_dns()`.
- Either updates `vps_hostname` directly (pending) or queues `change_hostname` (active) plus logs `change_hostname` history entry with the `old to new` transition.

**Auth:** Session/API key. Ownership enforced.

**Errors:**
- `401` — unauthenticated.
- `404 Invalid VPS Passed`.
- `409 VPS is not active`.
- `Invalid Hostname` — fails `valid_hostname()`.
- `No change in hostname` — value matches current.
- `Hostname changing is only enabled on OpenVZ/Virtuozzo Platforms currently. Contact support and we can change it for you.` — wrong platform.

**Related calls:**
- **Prerequisite:** `getVpsChangeHostname` (read current).
- **Extra IPs need separate PTR updates:** `postVpsReverseDns`.
- **Verify:** `getVpsInfo` (look for updated `vps_hostname`)."
  ([id int?, ] (post-vps-change-hostname id nil))
  ([id int?, optional-params any?]
   (let [res (:data (post-vps-change-hostname-with-http-info id optional-params))]
     (if (:decode-models *api-context*)
        (st/decode queue-response-spec res st/string-transformer)
        res))))


(defn-spec post-vps-change-root-password-with-http-info any?
  "Set a specific new root/Administrator password on the VPS
  Sets a specific root password (Administrator on Windows) chosen by the customer. Queues a `change_root` action on the hypervisor (`vpsqueue`) and records the new password in `history_log` as a `change_root_password` entry for operator reference. The password takes effect within ~2 minutes. **Caveat:** there is no rollback — to \"undo\", set another new password. For a server-generated random password instead, use `postVpsResetPassword`. Sibling ops: `getVpsChangeRootPassword`, `postVpsResetPassword`, `postVpsChangeWebuzoPassword`.

**Path param:**
- `id` (integer, required) — VPS id from `getVpsList.vps_id`.

**Body fields:**
- `password` (string, required) — new root/Administrator password. The endpoint does not enforce a regex here (the hypervisor agent applies platform policy), but `validate_buy_vps`-style strength is strongly recommended: 8+ chars, upper, lower, digit, special.

**Returns:** `{ text, queueId }` — `queueId` tracks the action in `queue_log`.

**Side effects:**
- Inserts `vpsqueue` `change_root` row.
- Inserts `history_log` `change_root_password` audit entry storing the new password (operator-readable for support).

**Auth:** Session/API key. Ownership enforced.

**Errors:**
- `401` — unauthenticated.
- `404 Invalid VPS Passed`.
- `409 VPS is not active`.
- `400 Missing field \"password\"`.

**Related calls:**
- **Pre-flight:** `getVpsChangeRootPassword`.
- **Random instead:** `postVpsResetPassword`.
- **Control panel password:** `postVpsChangeWebuzoPassword`.
- **Verify:** `getVpsInfo` (no field change — verification is operational, not via API)."
  [id int?, password string?]
  (check-required-params id password)
  (call-api "/vps/{id}/change_root_password" :post
            {:path-params   {"id" id }
             :header-params {}
             :query-params  {}
             :form-params   {"password" password }
             :content-types ["multipart/form-data" "application/json"]
             :accepts       ["application/json"]
             :auth-names    ["sessionIdCookieAuth" "apiKeyAuth" "sessionIdHeaderAuth"]}))

(defn-spec post-vps-change-root-password queue-response-spec
  "Set a specific new root/Administrator password on the VPS
  Sets a specific root password (Administrator on Windows) chosen by the customer. Queues a `change_root` action on the hypervisor (`vpsqueue`) and records the new password in `history_log` as a `change_root_password` entry for operator reference. The password takes effect within ~2 minutes. **Caveat:** there is no rollback — to \"undo\", set another new password. For a server-generated random password instead, use `postVpsResetPassword`. Sibling ops: `getVpsChangeRootPassword`, `postVpsResetPassword`, `postVpsChangeWebuzoPassword`.

**Path param:**
- `id` (integer, required) — VPS id from `getVpsList.vps_id`.

**Body fields:**
- `password` (string, required) — new root/Administrator password. The endpoint does not enforce a regex here (the hypervisor agent applies platform policy), but `validate_buy_vps`-style strength is strongly recommended: 8+ chars, upper, lower, digit, special.

**Returns:** `{ text, queueId }` — `queueId` tracks the action in `queue_log`.

**Side effects:**
- Inserts `vpsqueue` `change_root` row.
- Inserts `history_log` `change_root_password` audit entry storing the new password (operator-readable for support).

**Auth:** Session/API key. Ownership enforced.

**Errors:**
- `401` — unauthenticated.
- `404 Invalid VPS Passed`.
- `409 VPS is not active`.
- `400 Missing field \"password\"`.

**Related calls:**
- **Pre-flight:** `getVpsChangeRootPassword`.
- **Random instead:** `postVpsResetPassword`.
- **Control panel password:** `postVpsChangeWebuzoPassword`.
- **Verify:** `getVpsInfo` (no field change — verification is operational, not via API)."
  [id int?, password string?]
  (let [res (:data (post-vps-change-root-password-with-http-info id password))]
    (if (:decode-models *api-context*)
       (st/decode queue-response-spec res st/string-transformer)
       res)))


(defn-spec post-vps-change-timezone-with-http-info any?
  "Set the system timezone on the VPS guest OS
  Step 2 of the timezone-change flow — commit. Validates `timezone` against the list from `getVpsChangeTimezone`, then queues a `change_timezone` action on the hypervisor (`vpsqueue`). Action takes effect within ~2 minutes. Sibling op: `getVpsChangeTimezone`.

**Path param:**
- `id` (integer, required) — VPS id from `getVpsList.vps_id`.

**Body fields:**
- `timezone` (string, required) — IANA identifier; **must** be one of the values returned by `getVpsChangeTimezone` (in-array check enforced server-side).

**Returns:** `{ text, queueId }`.

**Side effects:**
- Inserts `vpsqueue` `change_timezone` row with the validated value.

**Auth:** Session/API key. Ownership enforced.

**Errors:**
- `401` — unauthenticated.
- `404 Invalid VPS Passed`.
- `409 VPS is not active`.
- `422 Invalid timezone` — value not in the supported list.

**Related calls:**
- **Prerequisite:** `getVpsChangeTimezone` (the only valid source for `timezone` values)."
  [id int?, timezone string?]
  (check-required-params id timezone)
  (call-api "/vps/{id}/change_timezone" :post
            {:path-params   {"id" id }
             :header-params {}
             :query-params  {}
             :form-params   {"timezone" timezone }
             :content-types ["multipart/form-data" "application/json"]
             :accepts       ["application/json"]
             :auth-names    ["sessionIdCookieAuth" "apiKeyAuth" "sessionIdHeaderAuth"]}))

(defn-spec post-vps-change-timezone queue-response-spec
  "Set the system timezone on the VPS guest OS
  Step 2 of the timezone-change flow — commit. Validates `timezone` against the list from `getVpsChangeTimezone`, then queues a `change_timezone` action on the hypervisor (`vpsqueue`). Action takes effect within ~2 minutes. Sibling op: `getVpsChangeTimezone`.

**Path param:**
- `id` (integer, required) — VPS id from `getVpsList.vps_id`.

**Body fields:**
- `timezone` (string, required) — IANA identifier; **must** be one of the values returned by `getVpsChangeTimezone` (in-array check enforced server-side).

**Returns:** `{ text, queueId }`.

**Side effects:**
- Inserts `vpsqueue` `change_timezone` row with the validated value.

**Auth:** Session/API key. Ownership enforced.

**Errors:**
- `401` — unauthenticated.
- `404 Invalid VPS Passed`.
- `409 VPS is not active`.
- `422 Invalid timezone` — value not in the supported list.

**Related calls:**
- **Prerequisite:** `getVpsChangeTimezone` (the only valid source for `timezone` values)."
  [id int?, timezone string?]
  (let [res (:data (post-vps-change-timezone-with-http-info id timezone))]
    (if (:decode-models *api-context*)
       (st/decode queue-response-spec res st/string-transformer)
       res)))


(defn-spec post-vps-change-webuzo-password-with-http-info any?
  "Rotate the Webuzo control panel admin password (re-auth required)
  Rotates the admin password on the Webuzo control panel that ships pre-installed on certain VPS templates. Re-authenticates the caller via their MyAdmin account password (`account_passwd` md5 check), then calls the Webuzo SDK (`Webuzo_API::change_password`) to apply the new password, updates the stored credential in `history_log`, and emails the customer a confirmation via the `client/client_email.tpl` template. Used for the control panel only — for the underlying OS root/Administrator password use `postVpsChangeRootPassword`/`postVpsResetPassword`. Sibling ops: `postVpsChangeRootPassword`, `postVpsResetPassword`.

**Path param:**
- `id` (integer, required) — VPS id from `getVpsList.vps_id`.

**Body fields (both required):**
- `password` (string, required) — new Webuzo admin password. Validated by `valid_password()`.
- `login_password` (string, required) — the customer's current MyAdmin account password (re-auth check; md5-compared to `accounts.account_passwd`).

**Returns:** `{ text }` — `Password updated successfully!`

**Side effects:**
- Calls Webuzo API to apply new password.
- Updates the `Webuzo Details` row in `history_log` with the new value.
- Sends a confirmation email to the account's billing email.
- Logs the rotation in `myadmin_log`.

**Auth:** Session/API key plus re-auth via `login_password`.

**Errors:**
- `401` — unauthenticated.
- `404 Invalid VPS Passed`.
- `409 VPS is not active`.
- `Missing Password` / `Missing Login Password` — body field absent.
- `Login Password is incorrect!` — `login_password` doesn't match stored hash.
- `New Password is not valid` — fails `valid_password()`.
- `Missing Existing Webuzo Password Details.` — no Webuzo credential in `history_log` (contact support).
- `Unable to update password. Please contact support team for further assistance.` — Webuzo API call failed.

**Related calls:**
- **OS root password instead:** `postVpsChangeRootPassword`, `postVpsResetPassword`.
- **Account password rotation:** `updateAccountPassword`."
  [id int?, password string?]
  (check-required-params id password)
  (call-api "/vps/{id}/change_webuzo_password" :post
            {:path-params   {"id" id }
             :header-params {}
             :query-params  {}
             :form-params   {"password" password }
             :content-types ["multipart/form-data" "application/json"]
             :accepts       ["application/json"]
             :auth-names    ["sessionIdCookieAuth" "apiKeyAuth" "sessionIdHeaderAuth"]}))

(defn-spec post-vps-change-webuzo-password queue-response-spec
  "Rotate the Webuzo control panel admin password (re-auth required)
  Rotates the admin password on the Webuzo control panel that ships pre-installed on certain VPS templates. Re-authenticates the caller via their MyAdmin account password (`account_passwd` md5 check), then calls the Webuzo SDK (`Webuzo_API::change_password`) to apply the new password, updates the stored credential in `history_log`, and emails the customer a confirmation via the `client/client_email.tpl` template. Used for the control panel only — for the underlying OS root/Administrator password use `postVpsChangeRootPassword`/`postVpsResetPassword`. Sibling ops: `postVpsChangeRootPassword`, `postVpsResetPassword`.

**Path param:**
- `id` (integer, required) — VPS id from `getVpsList.vps_id`.

**Body fields (both required):**
- `password` (string, required) — new Webuzo admin password. Validated by `valid_password()`.
- `login_password` (string, required) — the customer's current MyAdmin account password (re-auth check; md5-compared to `accounts.account_passwd`).

**Returns:** `{ text }` — `Password updated successfully!`

**Side effects:**
- Calls Webuzo API to apply new password.
- Updates the `Webuzo Details` row in `history_log` with the new value.
- Sends a confirmation email to the account's billing email.
- Logs the rotation in `myadmin_log`.

**Auth:** Session/API key plus re-auth via `login_password`.

**Errors:**
- `401` — unauthenticated.
- `404 Invalid VPS Passed`.
- `409 VPS is not active`.
- `Missing Password` / `Missing Login Password` — body field absent.
- `Login Password is incorrect!` — `login_password` doesn't match stored hash.
- `New Password is not valid` — fails `valid_password()`.
- `Missing Existing Webuzo Password Details.` — no Webuzo credential in `history_log` (contact support).
- `Unable to update password. Please contact support team for further assistance.` — Webuzo API call failed.

**Related calls:**
- **OS root password instead:** `postVpsChangeRootPassword`, `postVpsResetPassword`.
- **Account password rotation:** `updateAccountPassword`."
  [id int?, password string?]
  (let [res (:data (post-vps-change-webuzo-password-with-http-info id password))]
    (if (:decode-models *api-context*)
       (st/decode queue-response-spec res st/string-transformer)
       res)))


(defn-spec post-vps-insert-cd-with-http-info any?
  "Mount an ISO image in the VPS virtual CD drive from a URL
  Mounts an ISO image in the VPS virtual CD drive from the supplied URL — used to boot into rescue media, run an OS installer, or temporarily attach removable media. Queues an `insert_cd` action on the hypervisor (`vpsqueue`) with the URL. After mounting, restart the VPS with `doVpsRestart` to boot from the CD. Sibling ops: `getVpsInsertCd` (list), `doVpsEjectCd` (unmount), `doVpsDisableCd` (remove drive), `doVpsRestart` (boot from CD).

**Path param:**
- `id` (integer, required) — VPS id from `getVpsList.vps_id`.

**Body fields:**
- `url` (string, required) — http(s):// URL to a `.iso` file accessible from the hypervisor.

**Returns:** `{ text, queueId }` — allow ~2 minutes.

**Side effects:**
- Inserts `vpsqueue` `insert_cd` row with the URL.

**Auth:** Session/API key. Ownership enforced.

**Errors:**
- `401` — unauthenticated.
- `404 Invalid VPS Passed`.
- `409 VPS is not active`.

**Related calls:**
- **List options first:** `getVpsInsertCd`.
- **Boot the ISO:** `doVpsRestart`.
- **Unmount when done:** `doVpsEjectCd`."
  ([id int?, ] (post-vps-insert-cd-with-http-info id nil))
  ([id int?, {:keys [url]} (s/map-of keyword? any?)]
   (check-required-params id)
   (call-api "/vps/{id}/insert_cd" :post
             {:path-params   {"id" id }
              :header-params {}
              :query-params  {}
              :form-params   {"url" url }
              :content-types ["multipart/form-data" "application/json"]
              :accepts       ["application/json"]
              :auth-names    ["sessionIdCookieAuth" "apiKeyAuth" "sessionIdHeaderAuth"]})))

(defn-spec post-vps-insert-cd queue-response-spec
  "Mount an ISO image in the VPS virtual CD drive from a URL
  Mounts an ISO image in the VPS virtual CD drive from the supplied URL — used to boot into rescue media, run an OS installer, or temporarily attach removable media. Queues an `insert_cd` action on the hypervisor (`vpsqueue`) with the URL. After mounting, restart the VPS with `doVpsRestart` to boot from the CD. Sibling ops: `getVpsInsertCd` (list), `doVpsEjectCd` (unmount), `doVpsDisableCd` (remove drive), `doVpsRestart` (boot from CD).

**Path param:**
- `id` (integer, required) — VPS id from `getVpsList.vps_id`.

**Body fields:**
- `url` (string, required) — http(s):// URL to a `.iso` file accessible from the hypervisor.

**Returns:** `{ text, queueId }` — allow ~2 minutes.

**Side effects:**
- Inserts `vpsqueue` `insert_cd` row with the URL.

**Auth:** Session/API key. Ownership enforced.

**Errors:**
- `401` — unauthenticated.
- `404 Invalid VPS Passed`.
- `409 VPS is not active`.

**Related calls:**
- **List options first:** `getVpsInsertCd`.
- **Boot the ISO:** `doVpsRestart`.
- **Unmount when done:** `doVpsEjectCd`."
  ([id int?, ] (post-vps-insert-cd id nil))
  ([id int?, optional-params any?]
   (let [res (:data (post-vps-insert-cd-with-http-info id optional-params))]
     (if (:decode-models *api-context*)
        (st/decode queue-response-spec res st/string-transformer)
        res))))


(defn-spec post-vps-reinstall-os-with-http-info any?
  "Reinstall the VPS OS (DESTRUCTIVE — wipes disk; requires re-auth)
  **DESTRUCTIVE.** Wipes the VPS disk and reinstalls the chosen OS template. Re-authenticates via the customer's MyAdmin account password (`auth->authenticate` against `account_lid`+`localPassword`), updates the `vps` row (`vps_server_status='Reinstalling'`, `vps_os=<template>`), saves any new root password to `history_log`, and queues a `reinstall_os` action on the hypervisor (`vpsqueue`). **No rollback** — recover by restoring a backup via `postVpsRestore` (must have been created beforehand). Allow ~2 minutes for reinstall to start. Sibling ops: `getVpsReinstallOs` (list templates), `getVpsBackup` (snapshot before reinstalling), `postVpsRestore` (alternative — restore from backup instead).

**Path param:**
- `id` (integer, required) — VPS id from `getVpsList.vps_id`.

**Body fields (required):**
- `template` (string, required) — `template_file` from `getVpsReinstallOs.templates[].template_file`. Rejected if not found in `vps_templates` for the VPS's `template_type`.
- `localPassword` (string, required) — the customer's current MyAdmin account password (re-auth check).

**Body fields (optional):**
- `password` (string, optional) — new root password to set during reinstall. If absent, the template default is used.

**Returns:** `{ text: \"Reinstall to has been sent to the server. Please allow up to 2 minutes for action to be completed.\" }`. If the VPS is `pending` rather than `active`, the OS selection is saved for activation and `{ text: \"OS selection has been updated in our system for when the service is activated.\" }` is returned.

**Side effects:**
- Updates `vps_server_status` and `vps_os` columns.
- Inserts new password into `history_log` when provided.
- Inserts `vpsqueue` `reinstall_os` row (active services only).

**Auth:** Session/API key plus re-auth via `localPassword`.

**Errors:**
- `401` — unauthenticated.
- `404 Invalid VPS Passed`.
- `409 VPS is not active`.
- `Missing Account Password` — `localPassword` body field absent/empty.
- `Invalid Account Password` — `localPassword` re-auth failed.
- `This Template <name> does not exist` — `template` not found for this VPS's platform.

**Related calls:**
- **Prerequisite:** `getVpsReinstallOs` (find valid `template_file`).
- **Recommended pre-step:** `getVpsBackup` (snapshot).
- **Alternative (preserve state):** `postVpsRestore`.
- **Verify after reinstall:** `getVpsInfo` (look for updated `vps_os`)."
  ([id int?, template string?, localPassword string?, ] (post-vps-reinstall-os-with-http-info id template localPassword nil))
  ([id int?, template string?, localPassword string?, {:keys [password]} (s/map-of keyword? any?)]
   (check-required-params id template localPassword)
   (call-api "/vps/{id}/reinstall_os" :post
             {:path-params   {"id" id }
              :header-params {}
              :query-params  {}
              :form-params   {"template" template "password" password "localPassword" localPassword }
              :content-types ["multipart/form-data" "application/json"]
              :accepts       ["application/json"]
              :auth-names    ["sessionIdCookieAuth" "apiKeyAuth" "sessionIdHeaderAuth"]})))

(defn-spec post-vps-reinstall-os queue-response-spec
  "Reinstall the VPS OS (DESTRUCTIVE — wipes disk; requires re-auth)
  **DESTRUCTIVE.** Wipes the VPS disk and reinstalls the chosen OS template. Re-authenticates via the customer's MyAdmin account password (`auth->authenticate` against `account_lid`+`localPassword`), updates the `vps` row (`vps_server_status='Reinstalling'`, `vps_os=<template>`), saves any new root password to `history_log`, and queues a `reinstall_os` action on the hypervisor (`vpsqueue`). **No rollback** — recover by restoring a backup via `postVpsRestore` (must have been created beforehand). Allow ~2 minutes for reinstall to start. Sibling ops: `getVpsReinstallOs` (list templates), `getVpsBackup` (snapshot before reinstalling), `postVpsRestore` (alternative — restore from backup instead).

**Path param:**
- `id` (integer, required) — VPS id from `getVpsList.vps_id`.

**Body fields (required):**
- `template` (string, required) — `template_file` from `getVpsReinstallOs.templates[].template_file`. Rejected if not found in `vps_templates` for the VPS's `template_type`.
- `localPassword` (string, required) — the customer's current MyAdmin account password (re-auth check).

**Body fields (optional):**
- `password` (string, optional) — new root password to set during reinstall. If absent, the template default is used.

**Returns:** `{ text: \"Reinstall to has been sent to the server. Please allow up to 2 minutes for action to be completed.\" }`. If the VPS is `pending` rather than `active`, the OS selection is saved for activation and `{ text: \"OS selection has been updated in our system for when the service is activated.\" }` is returned.

**Side effects:**
- Updates `vps_server_status` and `vps_os` columns.
- Inserts new password into `history_log` when provided.
- Inserts `vpsqueue` `reinstall_os` row (active services only).

**Auth:** Session/API key plus re-auth via `localPassword`.

**Errors:**
- `401` — unauthenticated.
- `404 Invalid VPS Passed`.
- `409 VPS is not active`.
- `Missing Account Password` — `localPassword` body field absent/empty.
- `Invalid Account Password` — `localPassword` re-auth failed.
- `This Template <name> does not exist` — `template` not found for this VPS's platform.

**Related calls:**
- **Prerequisite:** `getVpsReinstallOs` (find valid `template_file`).
- **Recommended pre-step:** `getVpsBackup` (snapshot).
- **Alternative (preserve state):** `postVpsRestore`.
- **Verify after reinstall:** `getVpsInfo` (look for updated `vps_os`)."
  ([id int?, template string?, localPassword string?, ] (post-vps-reinstall-os id template localPassword nil))
  ([id int?, template string?, localPassword string?, optional-params any?]
   (let [res (:data (post-vps-reinstall-os-with-http-info id template localPassword optional-params))]
     (if (:decode-models *api-context*)
        (st/decode queue-response-spec res st/string-transformer)
        res))))


(defn-spec post-vps-reset-password-with-http-info any?
  "Reset the VPS root password to a server-generated random value
  Resets the VPS root/Administrator password to a fresh random value generated on the hypervisor — typical when the customer has lost the existing password and cannot recover it. Queues a `reset_password` action on the hypervisor (`vpsqueue`). The new password is delivered via the standard hypervisor password-change channel (logged to `history_log` and surfaced through `getVpsWelcomeEmail` / dashboard credential views). **No rollback** — to undo, set a new password via `postVpsChangeRootPassword` or call `postVpsResetPassword` again. Sibling ops: `getVpsResetPassword`, `postVpsChangeRootPassword`, `postVpsChangeWebuzoPassword`.

**Path param:**
- `id` (integer, required) — VPS id from `getVpsList.vps_id`.

**Body:** None — password is generated server-side.

**Returns:** `{ text, queueId }` — allow ~2 minutes.

**Side effects:**
- Inserts `vpsqueue` `reset_password` row; hypervisor agent generates and applies the new password.

**Auth:** Session/API key. Ownership enforced.

**Errors:**
- `401` — unauthenticated.
- `404 Invalid VPS Passed`.
- `409 VPS is not active`.

**Related calls:**
- **Specific password instead:** `postVpsChangeRootPassword`.
- **Retrieve the new credentials:** `getVpsWelcomeEmail` (resends with current credentials)."
  [id int?]
  (check-required-params id)
  (call-api "/vps/{id}/reset_password" :post
            {:path-params   {"id" id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["sessionIdCookieAuth" "apiKeyAuth" "sessionIdHeaderAuth"]}))

(defn-spec post-vps-reset-password queue-response-spec
  "Reset the VPS root password to a server-generated random value
  Resets the VPS root/Administrator password to a fresh random value generated on the hypervisor — typical when the customer has lost the existing password and cannot recover it. Queues a `reset_password` action on the hypervisor (`vpsqueue`). The new password is delivered via the standard hypervisor password-change channel (logged to `history_log` and surfaced through `getVpsWelcomeEmail` / dashboard credential views). **No rollback** — to undo, set a new password via `postVpsChangeRootPassword` or call `postVpsResetPassword` again. Sibling ops: `getVpsResetPassword`, `postVpsChangeRootPassword`, `postVpsChangeWebuzoPassword`.

**Path param:**
- `id` (integer, required) — VPS id from `getVpsList.vps_id`.

**Body:** None — password is generated server-side.

**Returns:** `{ text, queueId }` — allow ~2 minutes.

**Side effects:**
- Inserts `vpsqueue` `reset_password` row; hypervisor agent generates and applies the new password.

**Auth:** Session/API key. Ownership enforced.

**Errors:**
- `401` — unauthenticated.
- `404 Invalid VPS Passed`.
- `409 VPS is not active`.

**Related calls:**
- **Specific password instead:** `postVpsChangeRootPassword`.
- **Retrieve the new credentials:** `getVpsWelcomeEmail` (resends with current credentials)."
  [id int?]
  (let [res (:data (post-vps-reset-password-with-http-info id))]
    (if (:decode-models *api-context*)
       (st/decode queue-response-spec res st/string-transformer)
       res)))


(defn-spec post-vps-restore-with-http-info any?
  "Restore the VPS from a backup (DESTRUCTIVE — overwrites disk)
  **DESTRUCTIVE.** Overwrites the VPS disk with a previously created backup. Re-authenticates via the customer's MyAdmin password (when set), validates the backup row from `getVpsBackups`, checks disk capacity (skipped for ZFS), then queues `snapshot_restore` (ZFS — instant) or `restore` (Swift/MinIO — copy) on the hypervisor. Allow ~10 minutes. **Recommended pre-step:** `getVpsBackup` to snapshot current state first. Sibling ops: `getVpsBackups`, `getVpsBackup`, `postVpsReinstallOs` (wipe to fresh OS instead).

**Path param:**
- `id` (integer, required) — VPS id from `getVpsList.vps_id`.

**Body fields:**
- `backup` (string, required) — composite key `<type>:<service>:<name>` matching one of the entries from `getVpsBackups`. `type` is `swift` / `minio` / `zfs`; `service` is the originating VPS id; `name` is the backup filename.
- `password` (string, required for non-admin callers when the account has a password set) — the customer's MyAdmin account password (re-auth check via `auth->authenticate`).

**Returns:** `{ text: \"Action has been sent to the server. Please allow up to 10 minutes for action to be completed.\", queueId: <integer> }`.

**Side effects:**
- Inserts `vpsqueue` `snapshot_restore` (ZFS) or `restore` (Swift/MinIO) row.
- Calls `vps_resetup_vnc()`.

**Auth:** Session/API key plus re-auth via `password` for non-admin callers.

**Errors:**
- `401` — unauthenticated.
- `404 Invalid VPS Passed`.
- `409 VPS is not active`.
- `You do not seem to currently have a backup that you are allowed to restore yourself.` — no eligible backups found (admin-only Swift backups are excluded for non-admin callers).
- `Invalid Password` — `password` re-auth failed.
- `Invalid Backup Image` — `backup` doesn't match any row in `getVpsBackups`.
- `Not Enough Space To Restore Backup. (Backup Takes up X bytes, The VPS Has Y)` — disk-size check failed (skipped for ZFS).

**Related calls:**
- **Find the backup:** `getVpsBackups` (capture `type`, `service`, `name`).
- **Snapshot before restoring:** `getVpsBackup`.
- **Alternative (fresh OS, no data preserved):** `postVpsReinstallOs`.
- **Verify after restore:** `getVpsInfo`."
  [id int?, restore-request restore-request]
  (check-required-params id restore-request)
  (call-api "/vps/{id}/restore" :post
            {:path-params   {"id" id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :body-param    restore-request
             :content-types ["application/json" "multipart/form-data"]
             :accepts       ["application/json"]
             :auth-names    ["sessionIdCookieAuth" "apiKeyAuth" "sessionIdHeaderAuth"]}))

(defn-spec post-vps-restore queue-response-spec
  "Restore the VPS from a backup (DESTRUCTIVE — overwrites disk)
  **DESTRUCTIVE.** Overwrites the VPS disk with a previously created backup. Re-authenticates via the customer's MyAdmin password (when set), validates the backup row from `getVpsBackups`, checks disk capacity (skipped for ZFS), then queues `snapshot_restore` (ZFS — instant) or `restore` (Swift/MinIO — copy) on the hypervisor. Allow ~10 minutes. **Recommended pre-step:** `getVpsBackup` to snapshot current state first. Sibling ops: `getVpsBackups`, `getVpsBackup`, `postVpsReinstallOs` (wipe to fresh OS instead).

**Path param:**
- `id` (integer, required) — VPS id from `getVpsList.vps_id`.

**Body fields:**
- `backup` (string, required) — composite key `<type>:<service>:<name>` matching one of the entries from `getVpsBackups`. `type` is `swift` / `minio` / `zfs`; `service` is the originating VPS id; `name` is the backup filename.
- `password` (string, required for non-admin callers when the account has a password set) — the customer's MyAdmin account password (re-auth check via `auth->authenticate`).

**Returns:** `{ text: \"Action has been sent to the server. Please allow up to 10 minutes for action to be completed.\", queueId: <integer> }`.

**Side effects:**
- Inserts `vpsqueue` `snapshot_restore` (ZFS) or `restore` (Swift/MinIO) row.
- Calls `vps_resetup_vnc()`.

**Auth:** Session/API key plus re-auth via `password` for non-admin callers.

**Errors:**
- `401` — unauthenticated.
- `404 Invalid VPS Passed`.
- `409 VPS is not active`.
- `You do not seem to currently have a backup that you are allowed to restore yourself.` — no eligible backups found (admin-only Swift backups are excluded for non-admin callers).
- `Invalid Password` — `password` re-auth failed.
- `Invalid Backup Image` — `backup` doesn't match any row in `getVpsBackups`.
- `Not Enough Space To Restore Backup. (Backup Takes up X bytes, The VPS Has Y)` — disk-size check failed (skipped for ZFS).

**Related calls:**
- **Find the backup:** `getVpsBackups` (capture `type`, `service`, `name`).
- **Snapshot before restoring:** `getVpsBackup`.
- **Alternative (fresh OS, no data preserved):** `postVpsReinstallOs`.
- **Verify after restore:** `getVpsInfo`."
  [id int?, restore-request restore-request]
  (let [res (:data (post-vps-restore-with-http-info id restore-request))]
    (if (:decode-models *api-context*)
       (st/decode queue-response-spec res st/string-transformer)
       res)))


(defn-spec post-vps-reverse-dns-with-http-info any?
  "Bulk-update PTR (reverse-DNS) records for one or more VPS IPs
  Sets the PTR hostname for each VPS IP — bulk update via the `ips` map. Calls `reverse_dns($ip, $newHostname)` for every IP in the body whose value differs from the current PTR; IPs not currently attached to the VPS are silently ignored. Propagation depends on the reverse-zone TTL but is typically minutes, not instant. Sibling ops: `getVpsReverseDns`, `postVpsChangeHostname` (auto-sets PTR for primary IP), `getVpsBuyIp`/`postVpsBuyIp` (add more IPs first).

**Path param:**
- `id` (integer, required) — VPS id from `getVpsList.vps_id`.

**Body fields:**
- `ips` (object, required) — `{ \"<ip>\": \"<new-hostname>\", ... }`. Only IPs that already belong to the VPS will be updated; others are ignored. Empty-string values are skipped.

**Returns:** `{ message: \"DNS Updated\", success: true }`.

**Side effects:**
- One `reverse_dns()` call per IP whose value changed.
- PTR records are written to the in-addr.arpa zone; propagation depends on TTL.

**Auth:** Session/API key. Ownership enforced.

**Errors:**
- `401` — unauthenticated.
- `404 Invalid VPS Passed`.
- `409 VPS is not active`.

**Related calls:**
- **Read current PTRs first:** `getVpsReverseDns`.
- **For the primary IP:** `postVpsChangeHostname` (renames the VPS hostname and auto-PTRs in one go).
- **Adding IPs:** `getVpsBuyIp` → `postVpsBuyIp` → `postVpsReverseDns`."
  [id int?, reverse-dns-entries reverse-dns-entries]
  (check-required-params id reverse-dns-entries)
  (call-api "/vps/{id}/reverse_dns" :post
            {:path-params   {"id" id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :body-param    reverse-dns-entries
             :content-types ["application/json" "multipart/form-data"]
             :accepts       ["application/json"]
             :auth-names    ["sessionIdCookieAuth" "apiKeyAuth" "sessionIdHeaderAuth"]}))

(defn-spec post-vps-reverse-dns text-response-spec
  "Bulk-update PTR (reverse-DNS) records for one or more VPS IPs
  Sets the PTR hostname for each VPS IP — bulk update via the `ips` map. Calls `reverse_dns($ip, $newHostname)` for every IP in the body whose value differs from the current PTR; IPs not currently attached to the VPS are silently ignored. Propagation depends on the reverse-zone TTL but is typically minutes, not instant. Sibling ops: `getVpsReverseDns`, `postVpsChangeHostname` (auto-sets PTR for primary IP), `getVpsBuyIp`/`postVpsBuyIp` (add more IPs first).

**Path param:**
- `id` (integer, required) — VPS id from `getVpsList.vps_id`.

**Body fields:**
- `ips` (object, required) — `{ \"<ip>\": \"<new-hostname>\", ... }`. Only IPs that already belong to the VPS will be updated; others are ignored. Empty-string values are skipped.

**Returns:** `{ message: \"DNS Updated\", success: true }`.

**Side effects:**
- One `reverse_dns()` call per IP whose value changed.
- PTR records are written to the in-addr.arpa zone; propagation depends on TTL.

**Auth:** Session/API key. Ownership enforced.

**Errors:**
- `401` — unauthenticated.
- `404 Invalid VPS Passed`.
- `409 VPS is not active`.

**Related calls:**
- **Read current PTRs first:** `getVpsReverseDns`.
- **For the primary IP:** `postVpsChangeHostname` (renames the VPS hostname and auto-PTRs in one go).
- **Adding IPs:** `getVpsBuyIp` → `postVpsBuyIp` → `postVpsReverseDns`."
  [id int?, reverse-dns-entries reverse-dns-entries]
  (let [res (:data (post-vps-reverse-dns-with-http-info id reverse-dns-entries))]
    (if (:decode-models *api-context*)
       (st/decode text-response-spec res st/string-transformer)
       res)))


(defn-spec post-vps-setup-vnc-with-http-info any?
  "Provision or refresh the VNC console endpoint for the VPS
  (Re)establishes out-of-band VNC console access on the VPS — typically after a network change, hypervisor migration, or when troubleshooting boot issues. Validates the supplied VNC IP via `validIp()`, persists it to the `vps` row (`vps_vnc` column), and queues a `setup_vnc` action on the hypervisor (`vpsqueue`). Sibling ops: `getVpsSetupVnc` (read current), `getVpsViewDesktop` (Windows GUI/RDP path).

**Path param:**
- `id` (integer, required) — VPS id from `getVpsList.vps_id`.

**Body fields:**
- `vnc` (string, required) — IPv4 address for the VNC endpoint. Validated by `validIp()`.

**Returns:** `{ text, queueId }` — allow ~2 minutes for the hypervisor to bring up the listener.

**Side effects:**
- Updates `vps.vps_vnc` to the new IP.
- Inserts `vpsqueue` `setup_vnc` row.

**Auth:** Session/API key. Ownership enforced.

**Errors:**
- `401` — unauthenticated.
- `404 Invalid VPS Passed`.
- `409 VPS is not active`.
- `Invalid IP \"<value>\" or is blank` — `vnc` failed `validIp()`.

**Related calls:**
- **Read after provisioning:** `getVpsSetupVnc`.
- **Windows GUI access:** `getVpsViewDesktop`."
  [id int?]
  (check-required-params id)
  (call-api "/vps/{id}/setup_vnc" :post
            {:path-params   {"id" id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["sessionIdCookieAuth" "apiKeyAuth" "sessionIdHeaderAuth"]}))

(defn-spec post-vps-setup-vnc queue-response-spec
  "Provision or refresh the VNC console endpoint for the VPS
  (Re)establishes out-of-band VNC console access on the VPS — typically after a network change, hypervisor migration, or when troubleshooting boot issues. Validates the supplied VNC IP via `validIp()`, persists it to the `vps` row (`vps_vnc` column), and queues a `setup_vnc` action on the hypervisor (`vpsqueue`). Sibling ops: `getVpsSetupVnc` (read current), `getVpsViewDesktop` (Windows GUI/RDP path).

**Path param:**
- `id` (integer, required) — VPS id from `getVpsList.vps_id`.

**Body fields:**
- `vnc` (string, required) — IPv4 address for the VNC endpoint. Validated by `validIp()`.

**Returns:** `{ text, queueId }` — allow ~2 minutes for the hypervisor to bring up the listener.

**Side effects:**
- Updates `vps.vps_vnc` to the new IP.
- Inserts `vpsqueue` `setup_vnc` row.

**Auth:** Session/API key. Ownership enforced.

**Errors:**
- `401` — unauthenticated.
- `404 Invalid VPS Passed`.
- `409 VPS is not active`.
- `Invalid IP \"<value>\" or is blank` — `vnc` failed `validIp()`.

**Related calls:**
- **Read after provisioning:** `getVpsSetupVnc`.
- **Windows GUI access:** `getVpsViewDesktop`."
  [id int?]
  (let [res (:data (post-vps-setup-vnc-with-http-info id))]
    (if (:decode-models *api-context*)
       (st/decode queue-response-spec res st/string-transformer)
       res)))


(defn-spec post-vps-slices-with-http-info any?
  "Upgrade or downgrade the VPS slice count (creates prorated invoice on upgrade)
  Changes the VPS's slice count — bumps or shrinks CPU/RAM/disk allocation. Deletes any unpaid prior slice-upgrade invoices for this VPS, updates the recurring `repeat_invoices` row to the new slice count's cost, creates a one-off `invoices` row prorated for the rest of the cycle, and either auto-opens a support ticket (active services — slice upgrades typically need a manual hypervisor action) or queues `set_slices` directly. Downgrades complete free and immediately (`paid=1` zero-amount invoice). **Real money** on upgrades. Sibling ops: `getVpsSlices`, `postVpsBuyHdSpace`, `initiatePayment`, `getVpsInfo`.

**Path param:**
- `id` (integer, required) — VPS id from `getVpsList.vps_id`.

**Body fields:**
- `slices` (integer, required) — target slice count. `min_slices ≤ slices ≤ max_slices` per `getVpsSlices`. Must differ from current.

**Returns:**
- **Upgrade with payment owed:** `{ text: \"Thank you for your upgrade request. Kindly Pay the invoice to activate the upgrade.\", invoice: <integer> }` — pay via `initiatePayment`.
- **Active VPS, upgrade queued via ticket:** `{ text: \"Thank you for your upgrade request. A ticket has been automatically opened for you. Please allow us 24 hours to complete your upgrade. ...\" }`.
- **Downgrade:** `{ text: \"You have downgraded N slices from your VPS, the changes will be apply shortly.\" }`.

**Side effects:**
- Deletes unpaid `N Slice Upgrade for VPS {id}` invoices.
- Updates `repeat_invoices` recurring cost and description (`<plan_name> N Slices`).
- Creates a new `invoices` row for the prorated upgrade amount (or `paid=1` zero-amount for downgrades).
- Updates `vps.vps_slices` and `vps.vps_currency`.
- **Active VPS:** opens a support ticket via `create_ticket()` so an operator can resize manually, OR (when `$deferUpgradeViaTicket` is false) inserts `vpsqueue` `set_slices` row.

**Auth:** Session/API key. Ownership enforced.

**Errors:**
- `401` — unauthenticated.
- `404 Invalid VPS Passed`.
- `409 VPS is not active`.
- `Must pass the slices field.` — body field missing.
- `Invalid Slices. You requested N but that amount is not available currently.` — out of range.
- `No Changes were made, Please Try Again!` — equals current.
- `Please activate the service first.` — VPS not in `pending`/`active`.

**Related calls:**
- **Prerequisite:** `getVpsSlices` (read range + prorated cost).
- **Pay the upgrade invoice:** `initiatePayment` with the returned `invoice` id.
- **Disk-only addon:** `postVpsBuyHdSpace`.
- **Verify:** `getVpsInfo`."
  [id int?]
  (check-required-params id)
  (call-api "/vps/{id}/slices" :post
            {:path-params   {"id" id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["sessionIdCookieAuth" "apiKeyAuth" "sessionIdHeaderAuth"]}))

(defn-spec post-vps-slices any?
  "Upgrade or downgrade the VPS slice count (creates prorated invoice on upgrade)
  Changes the VPS's slice count — bumps or shrinks CPU/RAM/disk allocation. Deletes any unpaid prior slice-upgrade invoices for this VPS, updates the recurring `repeat_invoices` row to the new slice count's cost, creates a one-off `invoices` row prorated for the rest of the cycle, and either auto-opens a support ticket (active services — slice upgrades typically need a manual hypervisor action) or queues `set_slices` directly. Downgrades complete free and immediately (`paid=1` zero-amount invoice). **Real money** on upgrades. Sibling ops: `getVpsSlices`, `postVpsBuyHdSpace`, `initiatePayment`, `getVpsInfo`.

**Path param:**
- `id` (integer, required) — VPS id from `getVpsList.vps_id`.

**Body fields:**
- `slices` (integer, required) — target slice count. `min_slices ≤ slices ≤ max_slices` per `getVpsSlices`. Must differ from current.

**Returns:**
- **Upgrade with payment owed:** `{ text: \"Thank you for your upgrade request. Kindly Pay the invoice to activate the upgrade.\", invoice: <integer> }` — pay via `initiatePayment`.
- **Active VPS, upgrade queued via ticket:** `{ text: \"Thank you for your upgrade request. A ticket has been automatically opened for you. Please allow us 24 hours to complete your upgrade. ...\" }`.
- **Downgrade:** `{ text: \"You have downgraded N slices from your VPS, the changes will be apply shortly.\" }`.

**Side effects:**
- Deletes unpaid `N Slice Upgrade for VPS {id}` invoices.
- Updates `repeat_invoices` recurring cost and description (`<plan_name> N Slices`).
- Creates a new `invoices` row for the prorated upgrade amount (or `paid=1` zero-amount for downgrades).
- Updates `vps.vps_slices` and `vps.vps_currency`.
- **Active VPS:** opens a support ticket via `create_ticket()` so an operator can resize manually, OR (when `$deferUpgradeViaTicket` is false) inserts `vpsqueue` `set_slices` row.

**Auth:** Session/API key. Ownership enforced.

**Errors:**
- `401` — unauthenticated.
- `404 Invalid VPS Passed`.
- `409 VPS is not active`.
- `Must pass the slices field.` — body field missing.
- `Invalid Slices. You requested N but that amount is not available currently.` — out of range.
- `No Changes were made, Please Try Again!` — equals current.
- `Please activate the service first.` — VPS not in `pending`/`active`.

**Related calls:**
- **Prerequisite:** `getVpsSlices` (read range + prorated cost).
- **Pay the upgrade invoice:** `initiatePayment` with the returned `invoice` id.
- **Disk-only addon:** `postVpsBuyHdSpace`.
- **Verify:** `getVpsInfo`."
  [id int?]
  (let [res (:data (post-vps-slices-with-http-info id))]
    (if (:decode-models *api-context*)
       (st/decode any? res st/string-transformer)
       res)))


(defn-spec post-vps-traffic-usage-with-http-info any?
  "Search/filter VPS bandwidth usage with custom criteria (reserved)
  Filtered variant of the bandwidth-usage endpoint — reserved for date-range and granularity filters. The current implementation mirrors `getVpsTrafficUsage` behavior and returns the full dataset; the body shape is reserved for future filter parameters (start/end date, day/hour granularity). Sibling op: `getVpsTrafficUsage`.

**Path param:**
- `id` (integer, required) — VPS id from `getVpsList.vps_id`.

**Body:** Filter fields (reserved — date range, granularity).

**Returns:** Same `VpsTrafficResponse` shape as `getVpsTrafficUsage`.

**Auth:** Session/API key. Ownership enforced.

**Errors:**
- `401` — unauthenticated.
- `404 Invalid VPS Passed`.

**Related calls:**
- **Unfiltered alternative:** `getVpsTrafficUsage`."
  [id int?]
  (check-required-params id)
  (call-api "/vps/{id}/traffic_usage" :post
            {:path-params   {"id" id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["sessionIdCookieAuth" "apiKeyAuth" "sessionIdHeaderAuth"]}))

(defn-spec post-vps-traffic-usage any?
  "Search/filter VPS bandwidth usage with custom criteria (reserved)
  Filtered variant of the bandwidth-usage endpoint — reserved for date-range and granularity filters. The current implementation mirrors `getVpsTrafficUsage` behavior and returns the full dataset; the body shape is reserved for future filter parameters (start/end date, day/hour granularity). Sibling op: `getVpsTrafficUsage`.

**Path param:**
- `id` (integer, required) — VPS id from `getVpsList.vps_id`.

**Body:** Filter fields (reserved — date range, granularity).

**Returns:** Same `VpsTrafficResponse` shape as `getVpsTrafficUsage`.

**Auth:** Session/API key. Ownership enforced.

**Errors:**
- `401` — unauthenticated.
- `404 Invalid VPS Passed`.

**Related calls:**
- **Unfiltered alternative:** `getVpsTrafficUsage`."
  [id int?]
  (let [res (:data (post-vps-traffic-usage-with-http-info id))]
    (if (:decode-models *api-context*)
       (st/decode any? res st/string-transformer)
       res)))


(defn-spec post-vps-view-desktop-with-http-info any?
  "Refresh the remote-desktop session connection info after IP/hostname changes
  Force-refreshes the remote-desktop connection metadata — typically called after a hostname change (`postVpsChangeHostname`), IP addition (`postVpsBuyIp`), or reverse-DNS update (`postVpsReverseDns`) so the dashboard can re-fetch via its form-action pattern. Returns the same payload as `getVpsViewDesktop`. Sibling op: `getVpsViewDesktop`.

**Path param:**
- `id` (integer, required) — VPS id from `getVpsList.vps_id`.

**Body:** None (form-action pattern).

**Returns:** Same shape as `getVpsViewDesktop`.

**Auth:** Session/API key. Ownership enforced.

**Errors:**
- `401` — unauthenticated.
- `404 Invalid VPS Passed`.
- `409 VPS is not active`.

**Related calls:**
- **Read without refresh:** `getVpsViewDesktop`.
- **Common triggers:** `postVpsChangeHostname`, `postVpsBuyIp`, `postVpsReverseDns`.

Path param: `id` (integer). No body.

Returns the VPS view-desktop payload. Errors: HTTP 404 wrong owner, HTTP 409 not `active`. Sibling:
`getVpsViewDesktop`, `postVpsSetupVnc`."
  [id int?]
  (check-required-params id)
  (call-api "/vps/{id}/view_desktop" :post
            {:path-params   {"id" id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["sessionIdCookieAuth" "apiKeyAuth" "sessionIdHeaderAuth"]}))

(defn-spec post-vps-view-desktop any?
  "Refresh the remote-desktop session connection info after IP/hostname changes
  Force-refreshes the remote-desktop connection metadata — typically called after a hostname change (`postVpsChangeHostname`), IP addition (`postVpsBuyIp`), or reverse-DNS update (`postVpsReverseDns`) so the dashboard can re-fetch via its form-action pattern. Returns the same payload as `getVpsViewDesktop`. Sibling op: `getVpsViewDesktop`.

**Path param:**
- `id` (integer, required) — VPS id from `getVpsList.vps_id`.

**Body:** None (form-action pattern).

**Returns:** Same shape as `getVpsViewDesktop`.

**Auth:** Session/API key. Ownership enforced.

**Errors:**
- `401` — unauthenticated.
- `404 Invalid VPS Passed`.
- `409 VPS is not active`.

**Related calls:**
- **Read without refresh:** `getVpsViewDesktop`.
- **Common triggers:** `postVpsChangeHostname`, `postVpsBuyIp`, `postVpsReverseDns`.

Path param: `id` (integer). No body.

Returns the VPS view-desktop payload. Errors: HTTP 404 wrong owner, HTTP 409 not `active`. Sibling:
`getVpsViewDesktop`, `postVpsSetupVnc`."
  [id int?]
  (let [res (:data (post-vps-view-desktop-with-http-info id))]
    (if (:decode-models *api-context*)
       (st/decode any? res st/string-transformer)
       res)))


(defn-spec put-vps-with-http-info any?
  "Validate a VPS order configuration and quote the cost — dry run, no charge
  Step 2 of the VPS order flow. Validates a chosen VPS configuration (platform, OS, slices, location, control panel, coupon, etc.) against stock and policy, applies any coupon discount and frequency discount, and returns a cost breakdown — without creating any invoice or service record. Use this to preview the first-month and recurring cost before the customer commits via `addVps`. The body shape is identical between `putVps` and `addVps`; the only difference is the HTTP verb — PUT validates, POST commits. Sibling ops: `getNewVps` (catalog), `addVps` (place order).

**Required body fields:**
- `osDistro` (string) — OS template tag from `getNewVps.osNames` (e.g. `centos-7-x86_64`).
- `osVersion` (string) — OS version from `getNewVps.templates[platform][os][template_file]`.
- `vpsPlatform` (string) — one of the keys in `getNewVps.platformNames`: `kvm`, `kvmstorage`, `hyperv`, `openvz`, `ssdopenvz`, `virtuozzo`, `ssdvirtuozzo`, `lxc`, `cloudkvm`, `docker`. HTML stripped server-side.
- `slices` (integer) — `1 ≤ slices ≤ getNewVps.maxSlices`. Windows (`kvm` with `osDistro` starting `windows` or `os==5`, plus `hyperv`/`cloudkvm` Windows) requires `slices ≥ 2`.

**Optional body fields:**
- `location` (integer, default 1) — `1`=NJ, `2`=LA, `3`=TX. Out-of-stock platforms in a location auto-fail with an error.
- `period` (integer, default 1) — billing cycle in months: `1` / `6` / `12` / `24` / `36`. Discounts: 6mo=5%, 12mo=10%, 24mo=15%, 36mo=20%.
- `controlpanel` (string, default `none`) — `none` / `cpanel` (forces CentOS) / `da` (DirectAdmin). Incompatible with Windows.
- `coupon` (string) — coupon code; validated against `coupons` table (custid match, module=`vps`, applies-to-service-type, usable count). Returns \"Invalid Coupon\" if not found/usable.
- `hostname` (string) — FQDN matching `/^.*\\..*\\..*$/` (e.g. `server.example.com`). Skipped for Windows KVM (auto-set to `vps{id}` server-side).
- `rootpass` (string) — required for all Linux platforms. Must match `/(?=.{8,})(?=.*[a-z])(?=.*[A-Z])(?=.*\\d)(?=.*\\W)/`. Not required for Windows.
- `comment` (string) — free-form note saved on the `vps` row.

**Returned fields** (schema `VpsOrderPutResponse`):
- `continue` (bool) — `true` if validation passed and the order can be POSTed. If `false`, render `errors` and do not call `addVps`.
- `errors` (array of strings) — human-readable validation messages.
- `coupon_code` (integer) — id of the matched coupon row, or `0` if no coupon applied.
- `service_cost` (float) — first-period cost in customer currency (includes coupon + period discount).
- `slice_cost` (float) — per-slice cost after coupon.
- `repeat_service_cost` (float) — recurring monthly/period cost after coupon and period discount.
- `original_slice_cost`, `original_cost` (float) — undiscounted reference values.
- `service_type` (integer) — resolved service-type id (e.g. KVM Linux=33, KVM Win=32, KVM Storage=57, HyperV=54, OpenVZ=31, Virtuozzo=55).
- `monthly_service_cost` (float) — recurring cost normalized to monthly.

**Side effects:** None — `PUT /vps/order` is a pure read.

**Errors:**
- `400` — missing required field (`osDistro` / `vpsPlatform` / `slices` / `osVersion`) or invalid `location`. Body shape: `{error: \"Missing field <name>\"}`.
- `401` — unauthenticated.

**Related calls:**
- **Prerequisite:** `getNewVps` (provides every option value referenced in the body).
- **Next:** `addVps` (place the order with the same body once `continue == true`).

**Example request body:**
```json
{
  \"vpsPlatform\": \"kvm\",
  \"osDistro\": \"centos-7-x86_64\",
  \"osVersion\": \"centos-7-x86_64.qcow2\",
  \"slices\": 2,
  \"location\": 1,
  \"period\": 1,
  \"controlpanel\": \"none\",
  \"hostname\": \"web1.example.com\",
  \"rootpass\": \"Sup3rS3cret!\",
  \"coupon\": \"\"
}
```
**Example response (validation passed):**
```json
{
  \"continue\": true,
  \"errors\": [],
  \"coupon_code\": 0,
  \"service_cost\": 12.00,
  \"slice_cost\": 6.00,
  \"repeat_service_cost\": 12.00,
  \"service_type\": 33,
  \"monthly_service_cost\": 12.00,
  \"platform\": \"kvm\", \"os\": \"centos-7-x86_64\",
  \"slices\": 2, \"location\": 1, \"period\": 1,
  \"hostname\": \"web1.example.com\"
}
```"
  ([] (put-vps-with-http-info nil))
  ([{:keys [vps-order-put-request]} (s/map-of keyword? any?)]
   (call-api "/vps/order" :put
             {:path-params   {}
              :header-params {}
              :query-params  {}
              :form-params   {}
              :body-param    vps-order-put-request
              :content-types ["application/json" "multipart/form-data"]
              :accepts       ["application/json"]
              :auth-names    ["sessionIdCookieAuth" "apiKeyAuth" "sessionIdHeaderAuth"]})))

(defn-spec put-vps vps-order-put-response-spec
  "Validate a VPS order configuration and quote the cost — dry run, no charge
  Step 2 of the VPS order flow. Validates a chosen VPS configuration (platform, OS, slices, location, control panel, coupon, etc.) against stock and policy, applies any coupon discount and frequency discount, and returns a cost breakdown — without creating any invoice or service record. Use this to preview the first-month and recurring cost before the customer commits via `addVps`. The body shape is identical between `putVps` and `addVps`; the only difference is the HTTP verb — PUT validates, POST commits. Sibling ops: `getNewVps` (catalog), `addVps` (place order).

**Required body fields:**
- `osDistro` (string) — OS template tag from `getNewVps.osNames` (e.g. `centos-7-x86_64`).
- `osVersion` (string) — OS version from `getNewVps.templates[platform][os][template_file]`.
- `vpsPlatform` (string) — one of the keys in `getNewVps.platformNames`: `kvm`, `kvmstorage`, `hyperv`, `openvz`, `ssdopenvz`, `virtuozzo`, `ssdvirtuozzo`, `lxc`, `cloudkvm`, `docker`. HTML stripped server-side.
- `slices` (integer) — `1 ≤ slices ≤ getNewVps.maxSlices`. Windows (`kvm` with `osDistro` starting `windows` or `os==5`, plus `hyperv`/`cloudkvm` Windows) requires `slices ≥ 2`.

**Optional body fields:**
- `location` (integer, default 1) — `1`=NJ, `2`=LA, `3`=TX. Out-of-stock platforms in a location auto-fail with an error.
- `period` (integer, default 1) — billing cycle in months: `1` / `6` / `12` / `24` / `36`. Discounts: 6mo=5%, 12mo=10%, 24mo=15%, 36mo=20%.
- `controlpanel` (string, default `none`) — `none` / `cpanel` (forces CentOS) / `da` (DirectAdmin). Incompatible with Windows.
- `coupon` (string) — coupon code; validated against `coupons` table (custid match, module=`vps`, applies-to-service-type, usable count). Returns \"Invalid Coupon\" if not found/usable.
- `hostname` (string) — FQDN matching `/^.*\\..*\\..*$/` (e.g. `server.example.com`). Skipped for Windows KVM (auto-set to `vps{id}` server-side).
- `rootpass` (string) — required for all Linux platforms. Must match `/(?=.{8,})(?=.*[a-z])(?=.*[A-Z])(?=.*\\d)(?=.*\\W)/`. Not required for Windows.
- `comment` (string) — free-form note saved on the `vps` row.

**Returned fields** (schema `VpsOrderPutResponse`):
- `continue` (bool) — `true` if validation passed and the order can be POSTed. If `false`, render `errors` and do not call `addVps`.
- `errors` (array of strings) — human-readable validation messages.
- `coupon_code` (integer) — id of the matched coupon row, or `0` if no coupon applied.
- `service_cost` (float) — first-period cost in customer currency (includes coupon + period discount).
- `slice_cost` (float) — per-slice cost after coupon.
- `repeat_service_cost` (float) — recurring monthly/period cost after coupon and period discount.
- `original_slice_cost`, `original_cost` (float) — undiscounted reference values.
- `service_type` (integer) — resolved service-type id (e.g. KVM Linux=33, KVM Win=32, KVM Storage=57, HyperV=54, OpenVZ=31, Virtuozzo=55).
- `monthly_service_cost` (float) — recurring cost normalized to monthly.

**Side effects:** None — `PUT /vps/order` is a pure read.

**Errors:**
- `400` — missing required field (`osDistro` / `vpsPlatform` / `slices` / `osVersion`) or invalid `location`. Body shape: `{error: \"Missing field <name>\"}`.
- `401` — unauthenticated.

**Related calls:**
- **Prerequisite:** `getNewVps` (provides every option value referenced in the body).
- **Next:** `addVps` (place the order with the same body once `continue == true`).

**Example request body:**
```json
{
  \"vpsPlatform\": \"kvm\",
  \"osDistro\": \"centos-7-x86_64\",
  \"osVersion\": \"centos-7-x86_64.qcow2\",
  \"slices\": 2,
  \"location\": 1,
  \"period\": 1,
  \"controlpanel\": \"none\",
  \"hostname\": \"web1.example.com\",
  \"rootpass\": \"Sup3rS3cret!\",
  \"coupon\": \"\"
}
```
**Example response (validation passed):**
```json
{
  \"continue\": true,
  \"errors\": [],
  \"coupon_code\": 0,
  \"service_cost\": 12.00,
  \"slice_cost\": 6.00,
  \"repeat_service_cost\": 12.00,
  \"service_type\": 33,
  \"monthly_service_cost\": 12.00,
  \"platform\": \"kvm\", \"os\": \"centos-7-x86_64\",
  \"slices\": 2, \"location\": 1, \"period\": 1,
  \"hostname\": \"web1.example.com\"
}
```"
  ([] (put-vps nil))
  ([optional-params any?]
   (let [res (:data (put-vps-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode vps-order-put-response-spec res st/string-transformer)
        res))))


(defn-spec put-vps-buy-hd-space-with-http-info any?
  "Preview cost to set additional VPS disk to a target GB size — dry run
  Step 2 of the disk-space addon flow. Dry-run that quotes a new \"Additional N GB Space\" addon at the target size, prorated to the VPS's existing billing cycle. **No invoice is created and no charge happens.** Use to show the customer the immediate prorated `diffCost` and the new recurring `cost` before they commit via `postVpsBuyHdSpace`. Sibling ops: `getVpsBuyHdSpace`, `postVpsBuyHdSpace`.

**Path param:**
- `id` (integer, required) — VPS id from `getVpsList.vps_id`.

**Body fields:**
- `size` (integer, required) — target additional GB. Range `1 ≤ size ≤ 100`; rejected with \"Invalid Size Specified\" otherwise. Rejected with \"No Change Made, Size The Same\" if it equals current.

**Returns:**
- `gbCost` (float) — per-GB monthly cost in USD.
- `curSize` (integer) — currently purchased additional GB.
- `newSize` (integer) — requested target size.
- `cost` (float) — new recurring cost (size × gbCost × frequency).
- `diffCost` (float) — prorated immediate charge for the partial cycle plus the remainder of the period (when frequency > 1).
- `frequency` (integer) — billing cycle in months (e.g. 1, 6, 12).

**Side effects:** None — pure read.

**Auth:** Session/API key. Ownership enforced.

**Errors:**
- `401` — unauthenticated.
- `404 Invalid VPS Passed` — `id` not owned by caller.
- `Invalid Size Specified` — `size` out of `1..100`.
- `No Change Made, Size The Same` — `size == curSize`.

**Related calls:**
- **Prerequisite:** `getVpsBuyHdSpace` (read current state).
- **Next:** `postVpsBuyHdSpace` (commit; creates invoice when diffCost > 0, queues immediate update otherwise)."
  [id int?]
  (check-required-params id)
  (call-api "/vps/{id}/buy_hd_space" :put
            {:path-params   {"id" id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["sessionIdCookieAuth" "apiKeyAuth" "sessionIdHeaderAuth"]}))

(defn-spec put-vps-buy-hd-space any?
  "Preview cost to set additional VPS disk to a target GB size — dry run
  Step 2 of the disk-space addon flow. Dry-run that quotes a new \"Additional N GB Space\" addon at the target size, prorated to the VPS's existing billing cycle. **No invoice is created and no charge happens.** Use to show the customer the immediate prorated `diffCost` and the new recurring `cost` before they commit via `postVpsBuyHdSpace`. Sibling ops: `getVpsBuyHdSpace`, `postVpsBuyHdSpace`.

**Path param:**
- `id` (integer, required) — VPS id from `getVpsList.vps_id`.

**Body fields:**
- `size` (integer, required) — target additional GB. Range `1 ≤ size ≤ 100`; rejected with \"Invalid Size Specified\" otherwise. Rejected with \"No Change Made, Size The Same\" if it equals current.

**Returns:**
- `gbCost` (float) — per-GB monthly cost in USD.
- `curSize` (integer) — currently purchased additional GB.
- `newSize` (integer) — requested target size.
- `cost` (float) — new recurring cost (size × gbCost × frequency).
- `diffCost` (float) — prorated immediate charge for the partial cycle plus the remainder of the period (when frequency > 1).
- `frequency` (integer) — billing cycle in months (e.g. 1, 6, 12).

**Side effects:** None — pure read.

**Auth:** Session/API key. Ownership enforced.

**Errors:**
- `401` — unauthenticated.
- `404 Invalid VPS Passed` — `id` not owned by caller.
- `Invalid Size Specified` — `size` out of `1..100`.
- `No Change Made, Size The Same` — `size == curSize`.

**Related calls:**
- **Prerequisite:** `getVpsBuyHdSpace` (read current state).
- **Next:** `postVpsBuyHdSpace` (commit; creates invoice when diffCost > 0, queues immediate update otherwise)."
  [id int?]
  (let [res (:data (put-vps-buy-hd-space-with-http-info id))]
    (if (:decode-models *api-context*)
       (st/decode any? res st/string-transformer)
       res)))


(defn-spec update-vps-info-with-http-info any?
  "Update editable settings on a VPS service record
  Write-back endpoint for the VPS service record — typically the dashboard's \"save changes\" action. The body is processed by `ViewVPS::getDetails()`, the same handler as the GET, so the accepted fields mirror what the VPS detail view edits in place (e.g. customer comment/label, display preferences). For lifecycle or provisioning changes use the dedicated endpoints — they enforce platform-specific validation and queue hypervisor actions correctly. Sibling ops: `getVpsInfo`, `VPSCancel`, and all the dedicated mutation endpoints listed below.

**Path param:**
- `id` (integer, required) — VPS id from `getVpsList.vps_id`.

**Body:** Form-encoded or JSON with editable fields (handler decides which are persisted). Most callers should use the dedicated endpoints instead.

**Returns:** `SuccessTextResponse` — `{text: \"...\"}` on success.

**Auth:** Session/API key. Ownership enforced via `vps_custid` match.

**Errors:**
- `401 Unauthorized` — missing session/API key.
- `404 Invalid VPS Passed` — `id` not owned by caller.

**Prefer these dedicated endpoints when applicable:**
- Hostname → `postVpsChangeHostname` (OpenVZ/Virtuozzo only).
- Root password → `postVpsChangeRootPassword` (specific value) or `postVpsResetPassword` (random).
- Reverse DNS → `postVpsReverseDns`.
- Slice upgrade/downgrade → `getVpsSlices` → `postVpsSlices` (creates prorated invoice).
- Additional disk → `getVpsBuyHdSpace` → `putVpsBuyHdSpace` → `postVpsBuyHdSpace`.
- Additional IPs → `getVpsBuyIp` → `postVpsBuyIp`.
- Timezone → `getVpsChangeTimezone` → `postVpsChangeTimezone`.
- Cancel service entirely → `VPSCancel`."
  [id string?]
  (check-required-params id)
  (call-api "/vps/{id}" :post
            {:path-params   {"id" id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["sessionIdCookieAuth" "apiKeyAuth" "sessionIdHeaderAuth"]}))

(defn-spec update-vps-info success-text-response-spec
  "Update editable settings on a VPS service record
  Write-back endpoint for the VPS service record — typically the dashboard's \"save changes\" action. The body is processed by `ViewVPS::getDetails()`, the same handler as the GET, so the accepted fields mirror what the VPS detail view edits in place (e.g. customer comment/label, display preferences). For lifecycle or provisioning changes use the dedicated endpoints — they enforce platform-specific validation and queue hypervisor actions correctly. Sibling ops: `getVpsInfo`, `VPSCancel`, and all the dedicated mutation endpoints listed below.

**Path param:**
- `id` (integer, required) — VPS id from `getVpsList.vps_id`.

**Body:** Form-encoded or JSON with editable fields (handler decides which are persisted). Most callers should use the dedicated endpoints instead.

**Returns:** `SuccessTextResponse` — `{text: \"...\"}` on success.

**Auth:** Session/API key. Ownership enforced via `vps_custid` match.

**Errors:**
- `401 Unauthorized` — missing session/API key.
- `404 Invalid VPS Passed` — `id` not owned by caller.

**Prefer these dedicated endpoints when applicable:**
- Hostname → `postVpsChangeHostname` (OpenVZ/Virtuozzo only).
- Root password → `postVpsChangeRootPassword` (specific value) or `postVpsResetPassword` (random).
- Reverse DNS → `postVpsReverseDns`.
- Slice upgrade/downgrade → `getVpsSlices` → `postVpsSlices` (creates prorated invoice).
- Additional disk → `getVpsBuyHdSpace` → `putVpsBuyHdSpace` → `postVpsBuyHdSpace`.
- Additional IPs → `getVpsBuyIp` → `postVpsBuyIp`.
- Timezone → `getVpsChangeTimezone` → `postVpsChangeTimezone`.
- Cancel service entirely → `VPSCancel`."
  [id string?]
  (let [res (:data (update-vps-info-with-http-info id))]
    (if (:decode-models *api-context*)
       (st/decode success-text-response-spec res st/string-transformer)
       res)))


(defn-spec v-ps-cancel-with-http-info any?
  "Cancel a VPS service at the end of the current billing cycle
  Customer-facing cancel — schedules termination, stops future renewals, and queues deprovisioning. Billing continues until the end of the already-paid period, and the customer keeps access until then; this endpoint does **not** issue refunds. Delegates to `Billing\\CancelService::go()` (shared cancellation handler used across all service modules). The repeat-invoice is marked for cancellation and the VPS row's status will eventually flip to `cancelled`. Reversible: a customer can typically un-cancel before the cycle ends by opening a support ticket. Sibling ops: `getVpsInfo` (verify status), `getVpsInvoices` (review final invoices), `getVpsBackup` (snapshot before cancellation).

**Path param:**
- `id` (integer, required) — VPS id from `getVpsList.vps_id`.

**Body:** None.

**Returns:** `VPSCancelResponse` — confirmation text plus the scheduled cancellation date.

**Side effects:**
- Sets the `repeat_invoices` row for the VPS to non-renewing.
- Logs the cancellation event in `history_log`.
- Queues `vpsqueue` deprovisioning action to run at end-of-cycle.
- Does NOT immediately stop the VPS — power state is unchanged until the cycle ends.

**Auth:** Session/API key. Ownership enforced.

**Errors:**
- `401 Unauthorized` — missing session/API key.
- `404 Invalid VPS Passed` — `id` not owned by caller.

**Related calls:**
- **Before cancelling:** `getVpsBackup` (create a final snapshot), `downloadVpsBackup` (export it).
- **After cancelling:** `getVpsInfo` (confirm `vps_status` flipped), `getVpsInvoices` (final invoices).
- **Sibling cancels on other modules:** `CancelDomain`, `mailCancel`, `webhostingCancel`, etc. all use the same `CancelService` handler."
  [id int?]
  (check-required-params id)
  (call-api "/vps/{id}" :delete
            {:path-params   {"id" id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["sessionIdCookieAuth" "apiKeyAuth" "sessionIdHeaderAuth"]}))

(defn-spec v-ps-cancel vps-cancel-200-response-spec
  "Cancel a VPS service at the end of the current billing cycle
  Customer-facing cancel — schedules termination, stops future renewals, and queues deprovisioning. Billing continues until the end of the already-paid period, and the customer keeps access until then; this endpoint does **not** issue refunds. Delegates to `Billing\\CancelService::go()` (shared cancellation handler used across all service modules). The repeat-invoice is marked for cancellation and the VPS row's status will eventually flip to `cancelled`. Reversible: a customer can typically un-cancel before the cycle ends by opening a support ticket. Sibling ops: `getVpsInfo` (verify status), `getVpsInvoices` (review final invoices), `getVpsBackup` (snapshot before cancellation).

**Path param:**
- `id` (integer, required) — VPS id from `getVpsList.vps_id`.

**Body:** None.

**Returns:** `VPSCancelResponse` — confirmation text plus the scheduled cancellation date.

**Side effects:**
- Sets the `repeat_invoices` row for the VPS to non-renewing.
- Logs the cancellation event in `history_log`.
- Queues `vpsqueue` deprovisioning action to run at end-of-cycle.
- Does NOT immediately stop the VPS — power state is unchanged until the cycle ends.

**Auth:** Session/API key. Ownership enforced.

**Errors:**
- `401 Unauthorized` — missing session/API key.
- `404 Invalid VPS Passed` — `id` not owned by caller.

**Related calls:**
- **Before cancelling:** `getVpsBackup` (create a final snapshot), `downloadVpsBackup` (export it).
- **After cancelling:** `getVpsInfo` (confirm `vps_status` flipped), `getVpsInvoices` (final invoices).
- **Sibling cancels on other modules:** `CancelDomain`, `mailCancel`, `webhostingCancel`, etc. all use the same `CancelService` handler."
  [id int?]
  (let [res (:data (v-ps-cancel-with-http-info id))]
    (if (:decode-models *api-context*)
       (st/decode vps-cancel-200-response-spec res st/string-transformer)
       res)))


