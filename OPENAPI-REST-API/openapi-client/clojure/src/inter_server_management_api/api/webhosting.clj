(ns inter-server-management-api.api.webhosting
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


(defn-spec add-website-with-http-info any?
  "Place a new webhosting order, create the invoice, and queue provisioning
  Step 3 of the webhosting order flow — actually places the order. Revalidates via `validate_buy_website()` (same checks as `putWebsites`), then calls `place_buy_website()` to allocate a backing webhosting server, create the `webhosting` service row in `pending` status, generate a `Repeat_Invoice` recurring billing row, produce an initial `invoices` row, and (when `registerDomain=true`) also kick off a domain order with its own invoice. The activator runs once the invoice is paid; `getWebsitesWelcomeEmail` then fires automatically with control-panel credentials. **Real money** — call `putWebsites` first to preview cost. Sibling ops: `getNewWebsite`, `putWebsites`, `getWebsiteInfo`, `webhostingCancel`.

**Body fields:** Identical to `putWebsites`. Required: `hostname`, `packageId`. Optional: `rootpass` (auto-generated if blank), `period`, `coupon`, `serviceOfferId`, `script`, `comment`, `registerDomain`.

**Returns** (schema `ServiceOrderPostResponse`):
- `total_cost` (string/decimal) — total to pay across all generated invoices.
- `iid` (string) — primary invoice id (numeric).
- `iids` (array) — tagged invoice ids (e.g. `SERVICEwebhosting12345`).
- `real_iids` (array) — numeric invoice ids to pass to `initiatePayment`.
- `serviceId` (integer) — new `website_id`; use with `getWebsiteInfo` to poll status.
- `invoice_description` (string) — human-readable summary.
- `cj_params` (object) — Commission Junction tracking parameters.

**Side effects:**
- Inserts `webhosting` service row (`website_status='pending'`).
- Inserts `repeat_invoices` row for recurring charge.
- Inserts `invoices` row for the first period.
- When `registerDomain=true`: also creates a domain service row and its own invoice (`domain_serviceid`, `diid` returned alongside).
- Hashes/encrypts `rootpass` to `history_log`.

**Auth:** Session/API key.

**Errors:**
- When validation fails: response is the same `errors` array from `putWebsites` (HTTP 200 with `continue=false` shape).
- `401` — unauthenticated.

**Related calls:**
- **Prerequisite:** `getNewWebsite`, `putWebsites`.
- **Next:** `getBillingInvoice` (confirm), `initiatePayment` (pay with `real_iids`), then poll `getWebsiteInfo` until `website_status=='active'`.
- **Resend credentials after activation:** `getWebsitesWelcomeEmail`.
- **Cancel before paying:** `webhostingCancel` (or `deleteBillingInvoice` for the pending invoice).

**Full ordering happy path:**
```text
GET /websites/order                              -> catalog (getNewWebsite)
PUT /websites/order { ...config }                -> price quote (putWebsites)
POST /websites/order { ...config }               -> { serviceId, real_iids } (addWebsite)
GET /billing/invoices/{iid}                      -> confirm invoice (getBillingInvoice)
GET /billing/pay/cc/{real_iids[0]}               -> pay (initiatePayment)
GET /websites/{serviceId}                        -> poll until website_status==\"active\"
GET /websites/{serviceId}/welcome_email          -> resend credentials if needed
```"
  [website-order-post-request website-order-post-request]
  (check-required-params website-order-post-request)
  (call-api "/websites/order" :post
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :body-param    website-order-post-request
             :content-types ["application/json"]
             :accepts       ["application/json"]
             :auth-names    ["sessionIdCookieAuth" "apiKeyAuth" "sessionIdHeaderAuth"]}))

(defn-spec add-website service-order-post-response-spec
  "Place a new webhosting order, create the invoice, and queue provisioning
  Step 3 of the webhosting order flow — actually places the order. Revalidates via `validate_buy_website()` (same checks as `putWebsites`), then calls `place_buy_website()` to allocate a backing webhosting server, create the `webhosting` service row in `pending` status, generate a `Repeat_Invoice` recurring billing row, produce an initial `invoices` row, and (when `registerDomain=true`) also kick off a domain order with its own invoice. The activator runs once the invoice is paid; `getWebsitesWelcomeEmail` then fires automatically with control-panel credentials. **Real money** — call `putWebsites` first to preview cost. Sibling ops: `getNewWebsite`, `putWebsites`, `getWebsiteInfo`, `webhostingCancel`.

**Body fields:** Identical to `putWebsites`. Required: `hostname`, `packageId`. Optional: `rootpass` (auto-generated if blank), `period`, `coupon`, `serviceOfferId`, `script`, `comment`, `registerDomain`.

**Returns** (schema `ServiceOrderPostResponse`):
- `total_cost` (string/decimal) — total to pay across all generated invoices.
- `iid` (string) — primary invoice id (numeric).
- `iids` (array) — tagged invoice ids (e.g. `SERVICEwebhosting12345`).
- `real_iids` (array) — numeric invoice ids to pass to `initiatePayment`.
- `serviceId` (integer) — new `website_id`; use with `getWebsiteInfo` to poll status.
- `invoice_description` (string) — human-readable summary.
- `cj_params` (object) — Commission Junction tracking parameters.

**Side effects:**
- Inserts `webhosting` service row (`website_status='pending'`).
- Inserts `repeat_invoices` row for recurring charge.
- Inserts `invoices` row for the first period.
- When `registerDomain=true`: also creates a domain service row and its own invoice (`domain_serviceid`, `diid` returned alongside).
- Hashes/encrypts `rootpass` to `history_log`.

**Auth:** Session/API key.

**Errors:**
- When validation fails: response is the same `errors` array from `putWebsites` (HTTP 200 with `continue=false` shape).
- `401` — unauthenticated.

**Related calls:**
- **Prerequisite:** `getNewWebsite`, `putWebsites`.
- **Next:** `getBillingInvoice` (confirm), `initiatePayment` (pay with `real_iids`), then poll `getWebsiteInfo` until `website_status=='active'`.
- **Resend credentials after activation:** `getWebsitesWelcomeEmail`.
- **Cancel before paying:** `webhostingCancel` (or `deleteBillingInvoice` for the pending invoice).

**Full ordering happy path:**
```text
GET /websites/order                              -> catalog (getNewWebsite)
PUT /websites/order { ...config }                -> price quote (putWebsites)
POST /websites/order { ...config }               -> { serviceId, real_iids } (addWebsite)
GET /billing/invoices/{iid}                      -> confirm invoice (getBillingInvoice)
GET /billing/pay/cc/{real_iids[0]}               -> pay (initiatePayment)
GET /websites/{serviceId}                        -> poll until website_status==\"active\"
GET /websites/{serviceId}/welcome_email          -> resend credentials if needed
```"
  [website-order-post-request website-order-post-request]
  (let [res (:data (add-website-with-http-info website-order-post-request))]
    (if (:decode-models *api-context*)
       (st/decode service-order-post-response-spec res st/string-transformer)
       res)))


(defn-spec get-new-website-with-http-info any?
  "Read the webhosting order catalog — plans, packages, promo offers, pricing
  Step 1 of the webhosting order flow. Returns the full ordering catalog needed to build a valid order: available `serviceTypes` (plans), `serviceOffers` (promotional bundles), `packages`, billing `period` options, the customer's currency symbol, default `serviceOfferId`, and `enableDomainRegistering` (whether free/paid domain registration is bundled). Read-only — no service or invoice created. Sibling discovery endpoints in other modules: `getNewVps`, `getNewMail`, `getNewDomain`. Sibling order-flow ops: `putWebsites`, `addWebsite`.

**Path/Query/Body:** None.

**Returns** (schema `WebsitesOrder`):
- `currencySymbol` (string) — locale currency symbol for display.
- `step` (integer) — current step in the multi-step order wizard.
- `website` (integer) — pre-selected default plan id.
- `period` (integer) — pre-selected default billing frequency.
- `serviceOfferId` (integer) — pre-selected promo offer.
- `serviceTypes` (array) — every plan; `services_ourcost` stripped server-side. Keys per row: `services_id`, `services_name`, `services_cost`, `services_type` (`WEB_CPANEL` / `WEB_DIRECTADMIN` / `WEB_PLESK` / `WEB_VESTA` / `WEB_PPA` / `WEB_WORDPRESS` / `WEB_STORAGE`), etc.
- `serviceOffers` (array) — current promotional bundles.
- `packages`, `packges` (array — legacy field name preserved alongside `packages`).
- `enableDomainRegistering` (bool) — when `true`, the order can also register/transfer a domain.
- `jsonServices`, `jsonServiceOffers` (string) — JSON-encoded copies for inline use in HTML.

**Auth:** Session/API key.

**Errors:**
- `401` — unauthenticated.

**Related calls:**
- **Next:** `putWebsites` (validate + quote — no charge), `addWebsite` (place order).

**Example abridged response:**
```json
{
  \"currencySymbol\": \"$\",
  \"step\": 1,
  \"website\": 23,
  \"period\": 1,
  \"enableDomainRegistering\": true,
  \"serviceTypes\": [
    {\"services_id\": 23, \"services_name\": \"Standard\", \"services_cost\": 8.00, \"services_type\": 1},
    {\"services_id\": 25, \"services_name\": \"Reseller\", \"services_cost\": 24.95, \"services_type\": 1}
  ]
}
```"
  []
  (call-api "/websites/order" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["sessionIdCookieAuth" "apiKeyAuth" "sessionIdHeaderAuth"]}))

(defn-spec get-new-website websites-order-spec
  "Read the webhosting order catalog — plans, packages, promo offers, pricing
  Step 1 of the webhosting order flow. Returns the full ordering catalog needed to build a valid order: available `serviceTypes` (plans), `serviceOffers` (promotional bundles), `packages`, billing `period` options, the customer's currency symbol, default `serviceOfferId`, and `enableDomainRegistering` (whether free/paid domain registration is bundled). Read-only — no service or invoice created. Sibling discovery endpoints in other modules: `getNewVps`, `getNewMail`, `getNewDomain`. Sibling order-flow ops: `putWebsites`, `addWebsite`.

**Path/Query/Body:** None.

**Returns** (schema `WebsitesOrder`):
- `currencySymbol` (string) — locale currency symbol for display.
- `step` (integer) — current step in the multi-step order wizard.
- `website` (integer) — pre-selected default plan id.
- `period` (integer) — pre-selected default billing frequency.
- `serviceOfferId` (integer) — pre-selected promo offer.
- `serviceTypes` (array) — every plan; `services_ourcost` stripped server-side. Keys per row: `services_id`, `services_name`, `services_cost`, `services_type` (`WEB_CPANEL` / `WEB_DIRECTADMIN` / `WEB_PLESK` / `WEB_VESTA` / `WEB_PPA` / `WEB_WORDPRESS` / `WEB_STORAGE`), etc.
- `serviceOffers` (array) — current promotional bundles.
- `packages`, `packges` (array — legacy field name preserved alongside `packages`).
- `enableDomainRegistering` (bool) — when `true`, the order can also register/transfer a domain.
- `jsonServices`, `jsonServiceOffers` (string) — JSON-encoded copies for inline use in HTML.

**Auth:** Session/API key.

**Errors:**
- `401` — unauthenticated.

**Related calls:**
- **Next:** `putWebsites` (validate + quote — no charge), `addWebsite` (place order).

**Example abridged response:**
```json
{
  \"currencySymbol\": \"$\",
  \"step\": 1,
  \"website\": 23,
  \"period\": 1,
  \"enableDomainRegistering\": true,
  \"serviceTypes\": [
    {\"services_id\": 23, \"services_name\": \"Standard\", \"services_cost\": 8.00, \"services_type\": 1},
    {\"services_id\": 25, \"services_name\": \"Reseller\", \"services_cost\": 24.95, \"services_type\": 1}
  ]
}
```"
  []
  (let [res (:data (get-new-website-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode websites-order-spec res st/string-transformer)
       res)))


(defn-spec get-website-buy-ip-with-http-info any?
  "Read website IPs, current reverse DNS, and additional-IP pricing
  Combined IP/billing view for a website: returns the primary `website_ip` plus any addon extras, each mapped to its current PTR hostname (via `get_hostname()`), the list of existing additional-IP repeat invoices (with `cancel_link` URLs), the count of paid extras, and the per-IP cost (in the website's billing currency, falling back to USD/`WEBSITE_IP_COST`). Read-only. Use to populate a \"buy another IP\" form or to audit current IP allocations. Sibling ops: `postWebsiteBuyIp` (buy or update PTR), `gettWebsiteReverseDns` (PTR-only view), `postWebsitesReverseDns` (PTR-only update).

**Path param:**
- `id` (integer, required) — `website_id` from `getWebsiteList`.

**Body:** None.

**Returns:**
- `ips` (object) — `{\"<ipv4>\": \"<ptr-hostname>\", ...}` for every IP attached.
- `ipsDetails` (array) — existing addon invoices with each row's `ip`, `cancel_link` (`cancel_addon?module=webhosting&r=<rid>`), invoice metadata.
- `ipCount` (integer) — count of paid addon IPs.
- `ipCost` (float) — per-IP recurring cost in `currency`.
- `currency` (string), `currencySymbol` (string).

**Auth:** Session/API key. Ownership enforced.

**Errors:**
- `401` — unauthenticated.
- `404 Invalid Website Passed` — `id` not owned by caller.
- `409 Website is not active` — `website_status != \"active\"`.

**Related calls:**
- **Buy another IP:** `postWebsiteBuyIp`.
- **Update PTRs only:** `postWebsitesReverseDns` (or `postWebsiteBuyIp` with `action=reverse_dns`).
- **Cancel an addon IP:** follow the `cancel_link` URL."
  [id int?]
  (check-required-params id)
  (call-api "/websites/{id}/buy_ip" :get
            {:path-params   {"id" id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["sessionIdCookieAuth" "apiKeyAuth" "sessionIdHeaderAuth"]}))

(defn-spec get-website-buy-ip get-website-buy-ip-200-response-spec
  "Read website IPs, current reverse DNS, and additional-IP pricing
  Combined IP/billing view for a website: returns the primary `website_ip` plus any addon extras, each mapped to its current PTR hostname (via `get_hostname()`), the list of existing additional-IP repeat invoices (with `cancel_link` URLs), the count of paid extras, and the per-IP cost (in the website's billing currency, falling back to USD/`WEBSITE_IP_COST`). Read-only. Use to populate a \"buy another IP\" form or to audit current IP allocations. Sibling ops: `postWebsiteBuyIp` (buy or update PTR), `gettWebsiteReverseDns` (PTR-only view), `postWebsitesReverseDns` (PTR-only update).

**Path param:**
- `id` (integer, required) — `website_id` from `getWebsiteList`.

**Body:** None.

**Returns:**
- `ips` (object) — `{\"<ipv4>\": \"<ptr-hostname>\", ...}` for every IP attached.
- `ipsDetails` (array) — existing addon invoices with each row's `ip`, `cancel_link` (`cancel_addon?module=webhosting&r=<rid>`), invoice metadata.
- `ipCount` (integer) — count of paid addon IPs.
- `ipCost` (float) — per-IP recurring cost in `currency`.
- `currency` (string), `currencySymbol` (string).

**Auth:** Session/API key. Ownership enforced.

**Errors:**
- `401` — unauthenticated.
- `404 Invalid Website Passed` — `id` not owned by caller.
- `409 Website is not active` — `website_status != \"active\"`.

**Related calls:**
- **Buy another IP:** `postWebsiteBuyIp`.
- **Update PTRs only:** `postWebsitesReverseDns` (or `postWebsiteBuyIp` with `action=reverse_dns`).
- **Cancel an addon IP:** follow the `cancel_link` URL."
  [id int?]
  (let [res (:data (get-website-buy-ip-with-http-info id))]
    (if (:decode-models *api-context*)
       (st/decode get-website-buy-ip-200-response-spec res st/string-transformer)
       res)))


(defn-spec get-website-info-with-http-info any?
  "Read full configuration and status detail for one webhosting service
  Returns everything the customer dashboard shows for one website — status, hostname, control-panel username, primary IP, host server, plan, billing summary, action `client_links`, and supported addons. Read-only. Backed by `ViewWebsite::getDetails()`. Internal `admin_links`, `settings`, `csrf`, and `serviceMaster.website_key` (the API key) are stripped before return. Use to render a website detail page, verify ownership before mutating, or poll `website_status` after `addWebsite`. Sibling ops: `getWebsiteList`, `getWebsitesLogin`, `getWebsitesBackups`, `getWebsiteInvoices`, `webhostingCancel`.

**Path param:**
- `id` (integer, required) — `website_id` from `getWebsiteList`.

**Body:** None.

**Returns** (schema `Website`):
- `serviceInfo` — `website_id`, `website_hostname`, `website_username`, `website_ip`, `website_server`, `website_type` (plan id), `website_status`, `website_comment`.
- `serviceMaster` — host-server row (cPanel/DA/Plesk hostname, panel URL). `website_key` is stripped.
- `serviceType` — plan row (`services_ourcost` stripped).
- `client_links` (array) — `{name, link, icon}` for restart, login, backup, etc. Internal `?link=queue&action=...` URLs are pre-resolved to plain action names.
- `serviceAddons` — extra IPs, additional resources.

**Auth:** Session/API key. Ownership enforced via `website_custid`.

**Errors:**
- `401` — unauthenticated.
- `404 Invalid VPS Passed` (legacy text — webhosting reuses the helper) — `id` not owned by caller.

**Related calls:**
- **Login to panel:** `getWebsitesLogin` (auto-login URL).
- **Backups + restore:** `getWebsitesBackups`.
- **Billing:** `getWebsiteInvoices`.
- **Reverse DNS:** `gettWebsiteReverseDns`, `postWebsitesReverseDns`.
- **Buy extra IP:** `getWebsiteBuyIp`, `postWebsiteBuyIp`.
- **Migration:** `postWebsiteMigration`.
- **Resend welcome email:** `getWebsitesWelcomeEmail`.
- **Cancel:** `webhostingCancel`."
  [id int?]
  (check-required-params id)
  (call-api "/websites/{id}" :get
            {:path-params   {"id" id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["sessionIdCookieAuth" "apiKeyAuth" "sessionIdHeaderAuth"]}))

(defn-spec get-website-info website-spec
  "Read full configuration and status detail for one webhosting service
  Returns everything the customer dashboard shows for one website — status, hostname, control-panel username, primary IP, host server, plan, billing summary, action `client_links`, and supported addons. Read-only. Backed by `ViewWebsite::getDetails()`. Internal `admin_links`, `settings`, `csrf`, and `serviceMaster.website_key` (the API key) are stripped before return. Use to render a website detail page, verify ownership before mutating, or poll `website_status` after `addWebsite`. Sibling ops: `getWebsiteList`, `getWebsitesLogin`, `getWebsitesBackups`, `getWebsiteInvoices`, `webhostingCancel`.

**Path param:**
- `id` (integer, required) — `website_id` from `getWebsiteList`.

**Body:** None.

**Returns** (schema `Website`):
- `serviceInfo` — `website_id`, `website_hostname`, `website_username`, `website_ip`, `website_server`, `website_type` (plan id), `website_status`, `website_comment`.
- `serviceMaster` — host-server row (cPanel/DA/Plesk hostname, panel URL). `website_key` is stripped.
- `serviceType` — plan row (`services_ourcost` stripped).
- `client_links` (array) — `{name, link, icon}` for restart, login, backup, etc. Internal `?link=queue&action=...` URLs are pre-resolved to plain action names.
- `serviceAddons` — extra IPs, additional resources.

**Auth:** Session/API key. Ownership enforced via `website_custid`.

**Errors:**
- `401` — unauthenticated.
- `404 Invalid VPS Passed` (legacy text — webhosting reuses the helper) — `id` not owned by caller.

**Related calls:**
- **Login to panel:** `getWebsitesLogin` (auto-login URL).
- **Backups + restore:** `getWebsitesBackups`.
- **Billing:** `getWebsiteInvoices`.
- **Reverse DNS:** `gettWebsiteReverseDns`, `postWebsitesReverseDns`.
- **Buy extra IP:** `getWebsiteBuyIp`, `postWebsiteBuyIp`.
- **Migration:** `postWebsiteMigration`.
- **Resend welcome email:** `getWebsitesWelcomeEmail`.
- **Cancel:** `webhostingCancel`."
  [id int?]
  (let [res (:data (get-website-info-with-http-info id))]
    (if (:decode-models *api-context*)
       (st/decode website-spec res st/string-transformer)
       res)))


(defn-spec get-website-invoices-with-http-info any?
  "List all billing invoices and recurring charges scoped to one website
  Returns the billing history for one webhosting service — initial purchase invoice, recurring monthly/period invoices, and any IP-addon invoices created via `postWebsiteBuyIp`. Backed by `Billing\\InvoicesList::go()` with `module='webhosting'` (same handler pattern as VPS/Mail/etc. per-service invoice endpoints). Use to render a per-website billing-history view or find an unpaid invoice id to pass to `initiatePayment`. Sibling ops: `getBillingInvoice`, `initiatePayment`, sibling cross-module: `getVpsInvoices`, `getDomainInvoices`, `getMailInvoices`. For account-wide history use top-level `getBillingInvoices`.

**Path param:**
- `id` (integer, required) — `website_id` from `getWebsiteList`.

**Body:** None.

**Returns:** `ChargeInvoiceRows` — array of invoice rows: `id`, `amount`, `paid`, `description`, `date`, `due_date`, `currency`, `module=webhosting`, `service={id}`.

**Auth:** Session/API key. Ownership enforced via parent website.

**Errors:**
- `401` — unauthenticated.
- `400 Invalid Service` — `id` not owned by caller.

**Related calls:**
- **Single invoice detail:** `getBillingInvoice`.
- **Pay an unpaid invoice:** `initiatePayment`.
- **Account-wide history:** `getBillingInvoices`."
  [id int?]
  (check-required-params id)
  (call-api "/websites/{id}/invoices" :get
            {:path-params   {"id" id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["sessionIdCookieAuth" "apiKeyAuth" "sessionIdHeaderAuth"]}))

(defn-spec get-website-invoices charge-invoice-rows-spec
  "List all billing invoices and recurring charges scoped to one website
  Returns the billing history for one webhosting service — initial purchase invoice, recurring monthly/period invoices, and any IP-addon invoices created via `postWebsiteBuyIp`. Backed by `Billing\\InvoicesList::go()` with `module='webhosting'` (same handler pattern as VPS/Mail/etc. per-service invoice endpoints). Use to render a per-website billing-history view or find an unpaid invoice id to pass to `initiatePayment`. Sibling ops: `getBillingInvoice`, `initiatePayment`, sibling cross-module: `getVpsInvoices`, `getDomainInvoices`, `getMailInvoices`. For account-wide history use top-level `getBillingInvoices`.

**Path param:**
- `id` (integer, required) — `website_id` from `getWebsiteList`.

**Body:** None.

**Returns:** `ChargeInvoiceRows` — array of invoice rows: `id`, `amount`, `paid`, `description`, `date`, `due_date`, `currency`, `module=webhosting`, `service={id}`.

**Auth:** Session/API key. Ownership enforced via parent website.

**Errors:**
- `401` — unauthenticated.
- `400 Invalid Service` — `id` not owned by caller.

**Related calls:**
- **Single invoice detail:** `getBillingInvoice`.
- **Pay an unpaid invoice:** `initiatePayment`.
- **Account-wide history:** `getBillingInvoices`."
  [id int?]
  (let [res (:data (get-website-invoices-with-http-info id))]
    (if (:decode-models *api-context*)
       (st/decode charge-invoice-rows-spec res st/string-transformer)
       res)))


(defn-spec get-website-list-with-http-info any?
  "List the caller's webhosting (cPanel/DirectAdmin/Plesk/Webuzo) services
  Enumerates every shared/reseller hosting account (\"website\") owned by the authenticated customer. The canonical entry point for discovering a `website_id` to pass into other webhosting endpoints. Filtered server-side by `website_custid = session account_id` — cross-customer leaks are not possible. Empty array means the account has no websites (not an error). Sibling ops: `getWebsiteInfo`, `getWebsitesLogin`, `getWebsitesBackups`, `getWebsiteInvoices`, `webhostingCancel`, `getNewWebsite` (order a new one).

**Path/Query/Body:** None.

**Returns:** Array of `WebsiteRow` — per-website summary:
- `website_id` (integer) — canonical id used in `/websites/{id}/*` paths.
- `website_hostname` (string) — primary FQDN.
- `website_status` (string enum) — `pending` / `active` / `pending-cancel` / `canceled`.
- `services_name` (string) — plan/package label (e.g. `Standard`, `Reseller`).
- `repeat_invoices_cost` (decimal) — current recurring cost in the website's billing currency.
- `website_comment` (string|null) — customer-provided note.

**Auth:** Session/API key. Ownership filter enforced via `website_custid`.

**Errors:**
- `401` — unauthenticated.

**Related calls:**
- **Per-website detail:** `getWebsiteInfo` (full).
- **Control panel:** `getWebsitesLogin` (auto-login URL).
- **Backups + restore points:** `getWebsitesBackups`.
- **Billing:** `getWebsiteInvoices`.
- **Order a new site:** `getNewWebsite` → `putWebsites` → `addWebsite`.
- **Cancel:** `webhostingCancel`."
  []
  (call-api "/websites" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json" "multipart/form-data"]
             :auth-names    ["sessionIdCookieAuth" "apiKeyAuth" "sessionIdHeaderAuth"]}))

(defn-spec get-website-list (s/coll-of website-row-spec)
  "List the caller's webhosting (cPanel/DirectAdmin/Plesk/Webuzo) services
  Enumerates every shared/reseller hosting account (\"website\") owned by the authenticated customer. The canonical entry point for discovering a `website_id` to pass into other webhosting endpoints. Filtered server-side by `website_custid = session account_id` — cross-customer leaks are not possible. Empty array means the account has no websites (not an error). Sibling ops: `getWebsiteInfo`, `getWebsitesLogin`, `getWebsitesBackups`, `getWebsiteInvoices`, `webhostingCancel`, `getNewWebsite` (order a new one).

**Path/Query/Body:** None.

**Returns:** Array of `WebsiteRow` — per-website summary:
- `website_id` (integer) — canonical id used in `/websites/{id}/*` paths.
- `website_hostname` (string) — primary FQDN.
- `website_status` (string enum) — `pending` / `active` / `pending-cancel` / `canceled`.
- `services_name` (string) — plan/package label (e.g. `Standard`, `Reseller`).
- `repeat_invoices_cost` (decimal) — current recurring cost in the website's billing currency.
- `website_comment` (string|null) — customer-provided note.

**Auth:** Session/API key. Ownership filter enforced via `website_custid`.

**Errors:**
- `401` — unauthenticated.

**Related calls:**
- **Per-website detail:** `getWebsiteInfo` (full).
- **Control panel:** `getWebsitesLogin` (auto-login URL).
- **Backups + restore points:** `getWebsitesBackups`.
- **Billing:** `getWebsiteInvoices`.
- **Order a new site:** `getNewWebsite` → `putWebsites` → `addWebsite`.
- **Cancel:** `webhostingCancel`."
  []
  (let [res (:data (get-website-list-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of website-row-spec) res st/string-transformer)
       res)))


(defn-spec get-websites-backups-with-http-info any?
  "List off-site cpmove backups stored in Swift — list or inline-download archive
  Returns the list of off-site cpmove backups stored for the webhosting account, or — with the `download=<name>` query param — inline-streams the chosen archive as base64. Backups are read from the OpenStack Swift container `serviceMaster.website_name` (authenticated with `SWIFT_WEBHOSTING_USER`/`SWIFT_WEBHOSTING_PASS`) and filtered to objects matching `cpmove-{website_username}-*`. Use to find restore points before a risky change or before `webhostingCancel`. Empty array means no off-site cpmoves have been pushed for this account. Sibling ops: `webhostingCancel` (snapshot before terminating), `getWebsiteInfo`.

**Path param:**
- `id` (integer, required) — `website_id` from `getWebsiteList`.

**Query params:**
- `download` (string, optional) — when set to a backup `name` from the list, switches to inline download mode (returns the file base64-encoded). **Large payload** — only fetch when actually restoring.

**Returns:**
- **List mode** (no `download`): array of `{name: \"<cpmove-...>\", size: \"<human-scaled>\"}` (size from `Content-Length` via `Scale($len, 'bytes', 1)`).
- **Download mode** (`?download=<name>`): single object `{name, size, file: \"<base64-encoded-archive>\"}`.

**Auth:** Session/API key. Ownership enforced.

**Errors:**
- `401` — unauthenticated.
- `404 Invalid VPS Passed` (legacy text) — `id` not owned by caller.
- `409 Website is not active` — `website_status != \"active\"`.

**Related calls:**
- **Take a backup before cancelling:** `getWebsitesBackups` (with `download=`) → `webhostingCancel`.
- **Migrate to/from another host:** `postWebsiteMigration`."
  [id int?]
  (check-required-params id)
  (call-api "/websites/{id}/backups" :get
            {:path-params   {"id" id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["sessionIdCookieAuth" "apiKeyAuth" "sessionIdHeaderAuth"]}))

(defn-spec get-websites-backups website-backups-spec
  "List off-site cpmove backups stored in Swift — list or inline-download archive
  Returns the list of off-site cpmove backups stored for the webhosting account, or — with the `download=<name>` query param — inline-streams the chosen archive as base64. Backups are read from the OpenStack Swift container `serviceMaster.website_name` (authenticated with `SWIFT_WEBHOSTING_USER`/`SWIFT_WEBHOSTING_PASS`) and filtered to objects matching `cpmove-{website_username}-*`. Use to find restore points before a risky change or before `webhostingCancel`. Empty array means no off-site cpmoves have been pushed for this account. Sibling ops: `webhostingCancel` (snapshot before terminating), `getWebsiteInfo`.

**Path param:**
- `id` (integer, required) — `website_id` from `getWebsiteList`.

**Query params:**
- `download` (string, optional) — when set to a backup `name` from the list, switches to inline download mode (returns the file base64-encoded). **Large payload** — only fetch when actually restoring.

**Returns:**
- **List mode** (no `download`): array of `{name: \"<cpmove-...>\", size: \"<human-scaled>\"}` (size from `Content-Length` via `Scale($len, 'bytes', 1)`).
- **Download mode** (`?download=<name>`): single object `{name, size, file: \"<base64-encoded-archive>\"}`.

**Auth:** Session/API key. Ownership enforced.

**Errors:**
- `401` — unauthenticated.
- `404 Invalid VPS Passed` (legacy text) — `id` not owned by caller.
- `409 Website is not active` — `website_status != \"active\"`.

**Related calls:**
- **Take a backup before cancelling:** `getWebsitesBackups` (with `download=`) → `webhostingCancel`.
- **Migrate to/from another host:** `postWebsiteMigration`."
  [id int?]
  (let [res (:data (get-websites-backups-with-http-info id))]
    (if (:decode-models *api-context*)
       (st/decode website-backups-spec res st/string-transformer)
       res)))


(defn-spec get-websites-login-with-http-info any?
  "Get a one-time auto-login URL for the website's control panel
  Returns a single-use auto-login URL so the customer can jump into their control panel without entering credentials. Branches on `serviceMaster.website_type`:
- **WEB_CPANEL** (default): calls WHM `create_user_session` for the `cpaneld` service, returns a session-bound cPanel URL.
- **WEB_DIRECTADMIN**: calls DA `CMD_API_LOGIN_KEYS` (`max_uses=2`, IP-locked to `127.0.0.1` plus the caller's `client_ip`); returns one-time URL.
- **WEB_PLESK**: calls Plesk SDK `createSession`, returns `https://<host>:8443/enterprise/rsession_init.php?PLESKSESSID=...`.
- **WEB_PPA**, **WEB_VESTA**: placeholders (return `Unhandled Server Type`).

Sibling ops: `getWebsiteInfo`, `getWebsitesWelcomeEmail` (re-send credentials instead).

**Path param:**
- `id` (integer, required) — `website_id` from `getWebsiteList`.

**Body:** None.

**Returns:** `{type: \"location\", location: \"<one-time-url>\"}`.

**Side effects:**
- WHM/DA/Plesk-side session creation; sessions usually expire after first use (DirectAdmin: `max_uses=2`, IP-locked).

**Auth:** Session/API key. Ownership enforced.

**Errors:**
- `401` — unauthenticated.
- `Invalid Website Passed` — `id` not owned by caller.
- `Website is <status>, only websites that are \"active\" can do this.` — `website_status != \"active\"`.
- `No Host server or username` — service has no `website_username` or `website_server` resolved.
- `Sorry! something went wrong, couldn't connect to <panel>!` — panel-side failure.
- `Unhandled Server Type` — `website_type` is WEB_PPA / WEB_VESTA (or unrecognized).

**Related calls:**
- **If you need the credentials themselves:** `getWebsitesWelcomeEmail` (re-sends the welcome email with username/password).
- **List sites first:** `getWebsiteList`."
  [id int?]
  (check-required-params id)
  (call-api "/websites/{id}/login" :get
            {:path-params   {"id" id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["sessionIdCookieAuth" "apiKeyAuth" "sessionIdHeaderAuth"]}))

(defn-spec get-websites-login website-login-response-spec
  "Get a one-time auto-login URL for the website's control panel
  Returns a single-use auto-login URL so the customer can jump into their control panel without entering credentials. Branches on `serviceMaster.website_type`:
- **WEB_CPANEL** (default): calls WHM `create_user_session` for the `cpaneld` service, returns a session-bound cPanel URL.
- **WEB_DIRECTADMIN**: calls DA `CMD_API_LOGIN_KEYS` (`max_uses=2`, IP-locked to `127.0.0.1` plus the caller's `client_ip`); returns one-time URL.
- **WEB_PLESK**: calls Plesk SDK `createSession`, returns `https://<host>:8443/enterprise/rsession_init.php?PLESKSESSID=...`.
- **WEB_PPA**, **WEB_VESTA**: placeholders (return `Unhandled Server Type`).

Sibling ops: `getWebsiteInfo`, `getWebsitesWelcomeEmail` (re-send credentials instead).

**Path param:**
- `id` (integer, required) — `website_id` from `getWebsiteList`.

**Body:** None.

**Returns:** `{type: \"location\", location: \"<one-time-url>\"}`.

**Side effects:**
- WHM/DA/Plesk-side session creation; sessions usually expire after first use (DirectAdmin: `max_uses=2`, IP-locked).

**Auth:** Session/API key. Ownership enforced.

**Errors:**
- `401` — unauthenticated.
- `Invalid Website Passed` — `id` not owned by caller.
- `Website is <status>, only websites that are \"active\" can do this.` — `website_status != \"active\"`.
- `No Host server or username` — service has no `website_username` or `website_server` resolved.
- `Sorry! something went wrong, couldn't connect to <panel>!` — panel-side failure.
- `Unhandled Server Type` — `website_type` is WEB_PPA / WEB_VESTA (or unrecognized).

**Related calls:**
- **If you need the credentials themselves:** `getWebsitesWelcomeEmail` (re-sends the welcome email with username/password).
- **List sites first:** `getWebsiteList`."
  [id int?]
  (let [res (:data (get-websites-login-with-http-info id))]
    (if (:decode-models *api-context*)
       (st/decode website-login-response-spec res st/string-transformer)
       res)))


(defn-spec get-websites-welcome-email-with-http-info any?
  "Resend the webhosting welcome email with control-panel credentials and URL
  Resends the webhosting welcome email — the new-account email containing control-panel hostname, username, password, and getting-started instructions. Calls the dynamically-resolved `website_welcome_email($id)` helper which composes and dispatches the message to the account's `account_lid`. Idempotent — safe to call multiple times. Use after `addWebsite` finishes provisioning, or whenever a customer reports losing the original. Sibling welcome-email endpoints in other modules: `getVpsWelcomeEmail`, `getDomainsWelcomeEmail`, `getMailWelcomeEmail`. For an auto-login URL (no password reveal), use `getWebsitesLogin` instead.

**Path param:**
- `id` (integer, required) — `website_id` from `getWebsiteList`.

**Body:** None.

**Returns:** `SuccessTextResponse` — `{text: \"Welcome Email has been resent.\"}`.

**Side effects:**
- Sends an email to the account's billing email address with the control-panel credentials currently stored in `history_log` for this website.

**Auth:** Session/API key. Ownership enforced.

**Errors:**
- `401` — unauthenticated.
- `404 Invalid Service Passed` — `id` not owned by caller.
- `409 Service is not active` — `website_status != \"active\"`.

**Related calls:**
- **Auto-login instead:** `getWebsitesLogin` (one-time URL, no password disclosure).
- **List sites first:** `getWebsiteList`."
  [id int?]
  (check-required-params id)
  (call-api "/websites/{id}/welcome_email" :get
            {:path-params   {"id" id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["sessionIdCookieAuth" "apiKeyAuth" "sessionIdHeaderAuth"]}))

(defn-spec get-websites-welcome-email success-text-response-spec
  "Resend the webhosting welcome email with control-panel credentials and URL
  Resends the webhosting welcome email — the new-account email containing control-panel hostname, username, password, and getting-started instructions. Calls the dynamically-resolved `website_welcome_email($id)` helper which composes and dispatches the message to the account's `account_lid`. Idempotent — safe to call multiple times. Use after `addWebsite` finishes provisioning, or whenever a customer reports losing the original. Sibling welcome-email endpoints in other modules: `getVpsWelcomeEmail`, `getDomainsWelcomeEmail`, `getMailWelcomeEmail`. For an auto-login URL (no password reveal), use `getWebsitesLogin` instead.

**Path param:**
- `id` (integer, required) — `website_id` from `getWebsiteList`.

**Body:** None.

**Returns:** `SuccessTextResponse` — `{text: \"Welcome Email has been resent.\"}`.

**Side effects:**
- Sends an email to the account's billing email address with the control-panel credentials currently stored in `history_log` for this website.

**Auth:** Session/API key. Ownership enforced.

**Errors:**
- `401` — unauthenticated.
- `404 Invalid Service Passed` — `id` not owned by caller.
- `409 Service is not active` — `website_status != \"active\"`.

**Related calls:**
- **Auto-login instead:** `getWebsitesLogin` (one-time URL, no password disclosure).
- **List sites first:** `getWebsiteList`."
  [id int?]
  (let [res (:data (get-websites-welcome-email-with-http-info id))]
    (if (:decode-models *api-context*)
       (st/decode success-text-response-spec res st/string-transformer)
       res)))


(defn-spec gett-website-reverse-dns-with-http-info any?
  "Read current reverse-DNS (PTR) records for the website's IPs
  Returns the current PTR/reverse-DNS hostname for every IP attached to the website — primary `website_ip` plus any addons (from `get_service_addons().extra_ips`). PTRs are read live via `get_hostname()`, not cached. Use to render a PTR editor before calling `postWebsitesReverseDns`. **Note:** the operationId has a typo (`gettWebsiteReverseDns` with double-t) preserved for back-compat — do not rename. Sibling ops: `postWebsitesReverseDns` (update), `getWebsiteBuyIp` (broader IP+billing view), `postWebsiteBuyIp` (also supports `action=reverse_dns`).

**Path param:**
- `id` (integer, required) — `website_id` from `getWebsiteList`.

**Body:** None.

**Returns:** `ReverseDnsEntries` — `{\"ips\": {\"<ip>\": \"<ptr-hostname>\", ...}}`. Empty string for IPs with no PTR set.

**Auth:** Session/API key. Ownership enforced.

**Errors:**
- `401` — unauthenticated.
- `404 Invalid VPS Passed` (legacy text) — `id` not owned by caller.
- `409 Website is not active` — `website_status != \"active\"`.

**Related calls:**
- **Update PTRs:** `postWebsitesReverseDns`.
- **Add IPs first:** `getWebsiteBuyIp` → `postWebsiteBuyIp`."
  [id int?]
  (check-required-params id)
  (call-api "/websites/{id}/reverse_dns" :get
            {:path-params   {"id" id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["sessionIdCookieAuth" "apiKeyAuth" "sessionIdHeaderAuth"]}))

(defn-spec gett-website-reverse-dns reverse-dns-entries-spec
  "Read current reverse-DNS (PTR) records for the website's IPs
  Returns the current PTR/reverse-DNS hostname for every IP attached to the website — primary `website_ip` plus any addons (from `get_service_addons().extra_ips`). PTRs are read live via `get_hostname()`, not cached. Use to render a PTR editor before calling `postWebsitesReverseDns`. **Note:** the operationId has a typo (`gettWebsiteReverseDns` with double-t) preserved for back-compat — do not rename. Sibling ops: `postWebsitesReverseDns` (update), `getWebsiteBuyIp` (broader IP+billing view), `postWebsiteBuyIp` (also supports `action=reverse_dns`).

**Path param:**
- `id` (integer, required) — `website_id` from `getWebsiteList`.

**Body:** None.

**Returns:** `ReverseDnsEntries` — `{\"ips\": {\"<ip>\": \"<ptr-hostname>\", ...}}`. Empty string for IPs with no PTR set.

**Auth:** Session/API key. Ownership enforced.

**Errors:**
- `401` — unauthenticated.
- `404 Invalid VPS Passed` (legacy text) — `id` not owned by caller.
- `409 Website is not active` — `website_status != \"active\"`.

**Related calls:**
- **Update PTRs:** `postWebsitesReverseDns`.
- **Add IPs first:** `getWebsiteBuyIp` → `postWebsiteBuyIp`."
  [id int?]
  (let [res (:data (gett-website-reverse-dns-with-http-info id))]
    (if (:decode-models *api-context*)
       (st/decode reverse-dns-entries-spec res st/string-transformer)
       res)))


(defn-spec post-website-buy-ip-with-http-info any?
  "Buy an additional IP for the website OR update reverse DNS records
  Dual-purpose mutation that branches on the `action` body field. **`action=buy_ip`** (default): allocates a new addon IP via `website_addon_get_free_ips`, creates an addon `repeat_invoices` row at `WEBSITE_IP_COST` (currency-converted to the parent invoice's currency), and emits a one-period `invoices` row to fund the first month — provisioning waits on payment and free-IP availability on the host server. **Real money**. **`action=reverse_dns`**: skips billing entirely and updates PTR records via `reverse_dns()` for any IP in the `ips` map whose new hostname differs from the current `get_hostname()` value. Sibling ops: `getWebsiteBuyIp` (preview), `gettWebsiteReverseDns` / `postWebsitesReverseDns` (PTR-only).

**Path param:**
- `id` (integer, required) — `website_id` from `getWebsiteList`.

**Body fields:**
- `action` (string, optional, default `buy_ip`) — `buy_ip` or `reverse_dns`.
- For `action=reverse_dns`: `ips` (object, required) — `{\"<ip>\": \"<new-hostname>\", ...}`. Only IPs already on the website are updated; others ignored. Empty-string values skipped.

**Returns:**
- For `buy_ip`: `{text: \"Ordered Additional IP successfully.\", invoice: <integer>, repeatInvoice: <integer>}`.
- For `reverse_dns`: `{message: \"DNS Updated\", success: true}`.

**Side effects:**
- `buy_ip`: inserts `repeat_invoices` row (`Additional IP for Webhosting <id>`) and an `invoices` row for the first period.
- `reverse_dns`: writes PTR records to the in-addr.arpa zone for changed IPs.

**Auth:** Session/API key. Ownership enforced.

**Errors:**
- `401` — unauthenticated.
- `404 Invalid Website Passed`.
- `409 Website is not active`.
- `No available free IPs on this server. Please contact support to order additional IPs.` — host has no free IPs.

**Related calls:**
- **Preview first:** `getWebsiteBuyIp`.
- **Pay the new addon invoice:** `initiatePayment` with the returned `invoice`."
  [id int?, post-website-buy-ip-request post-website-buy-ip-request]
  (check-required-params id post-website-buy-ip-request)
  (call-api "/websites/{id}/buy_ip" :post
            {:path-params   {"id" id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :body-param    post-website-buy-ip-request
             :content-types ["application/json" "multipart/form-data"]
             :accepts       ["application/json"]
             :auth-names    ["sessionIdCookieAuth" "apiKeyAuth" "sessionIdHeaderAuth"]}))

(defn-spec post-website-buy-ip post-website-buy-ip-200-response-spec
  "Buy an additional IP for the website OR update reverse DNS records
  Dual-purpose mutation that branches on the `action` body field. **`action=buy_ip`** (default): allocates a new addon IP via `website_addon_get_free_ips`, creates an addon `repeat_invoices` row at `WEBSITE_IP_COST` (currency-converted to the parent invoice's currency), and emits a one-period `invoices` row to fund the first month — provisioning waits on payment and free-IP availability on the host server. **Real money**. **`action=reverse_dns`**: skips billing entirely and updates PTR records via `reverse_dns()` for any IP in the `ips` map whose new hostname differs from the current `get_hostname()` value. Sibling ops: `getWebsiteBuyIp` (preview), `gettWebsiteReverseDns` / `postWebsitesReverseDns` (PTR-only).

**Path param:**
- `id` (integer, required) — `website_id` from `getWebsiteList`.

**Body fields:**
- `action` (string, optional, default `buy_ip`) — `buy_ip` or `reverse_dns`.
- For `action=reverse_dns`: `ips` (object, required) — `{\"<ip>\": \"<new-hostname>\", ...}`. Only IPs already on the website are updated; others ignored. Empty-string values skipped.

**Returns:**
- For `buy_ip`: `{text: \"Ordered Additional IP successfully.\", invoice: <integer>, repeatInvoice: <integer>}`.
- For `reverse_dns`: `{message: \"DNS Updated\", success: true}`.

**Side effects:**
- `buy_ip`: inserts `repeat_invoices` row (`Additional IP for Webhosting <id>`) and an `invoices` row for the first period.
- `reverse_dns`: writes PTR records to the in-addr.arpa zone for changed IPs.

**Auth:** Session/API key. Ownership enforced.

**Errors:**
- `401` — unauthenticated.
- `404 Invalid Website Passed`.
- `409 Website is not active`.
- `No available free IPs on this server. Please contact support to order additional IPs.` — host has no free IPs.

**Related calls:**
- **Preview first:** `getWebsiteBuyIp`.
- **Pay the new addon invoice:** `initiatePayment` with the returned `invoice`."
  [id int?, post-website-buy-ip-request post-website-buy-ip-request]
  (let [res (:data (post-website-buy-ip-with-http-info id post-website-buy-ip-request))]
    (if (:decode-models *api-context*)
       (st/decode post-website-buy-ip-200-response-spec res st/string-transformer)
       res)))


(defn-spec post-website-migration-with-http-info any?
  "Submit a request for InterServer staff to migrate a website from another host
  Submits a migration request: opens a support ticket containing the customer's credentials for their current host (cPanel/FTP/domain registrar) so InterServer staff can copy the site, databases, and email into this webhosting account. **Sensitive** — the body contains plaintext credentials for the source host. Do not log responses. The created ticket's id is returned; track progress with the helpdesk/tickets API. Sibling ops: `getWebsiteInfo`, `getWebsitesBackups`.

**Path param:**
- `id` (integer, required) — `website_id` from `getWebsiteList`.

**Body fields** (JSON or multipart):
- `custPortal` (string) — URL of the current hosting provider's customer portal (e.g. `sso.godaddy.com`).
- `regEmail` (string) — email/username at the current host.
- `password` (string) — password at the current host.
- `ctrlPanel` (string) — current control-panel URL (e.g. `yourdomain.com/cpanel/`).
- `ftpUsername` (string), `ftpPassword` (string) — FTP credentials.
- `siteBusyMig` (string) — info on site traffic / whether a holding page can be shown during migration.
- `splReqMig` (string) — special requirements (PHP version, modules, etc.).
- `domainReg` (string) — whether domain-registration transfer is also needed (`yes`/`no` or freeform).
- `dataMig` (string) — nameserver switch timing preference.
- `domainRegPortal`, `domainRegEmail`, `domainRegPassword` (strings) — domain-registrar credentials.

**Returns:** `{text: \"Your migration request has been sucessfully submitted...\", ticket: <integer>}` — pass `ticket` to the tickets API to monitor.

**Side effects:**
- Creates a support ticket via `create_ticket()` with the credentials in the ticket body.
- Inserts a `history_log` row of type `Webhost Migration`.

**Auth:** Session/API key. Ownership enforced.

**Errors:**
- `401` — unauthenticated.
- `404 Invalid Service Passed` — `id` not owned by caller.

**Related calls:**
- **Track migration progress:** Tickets API (use the returned `ticket` id).
- **Verify after migration:** `getWebsitesLogin`, `getWebsiteInfo`."
  [id int?, post-website-migration-request post-website-migration-request]
  (check-required-params id post-website-migration-request)
  (call-api "/websites/{id}/migration" :post
            {:path-params   {"id" id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :body-param    post-website-migration-request
             :content-types ["application/json" "multipart/form-data"]
             :accepts       ["application/json"]
             :auth-names    ["sessionIdCookieAuth" "apiKeyAuth" "sessionIdHeaderAuth"]}))

(defn-spec post-website-migration post-website-migration-200-response-spec
  "Submit a request for InterServer staff to migrate a website from another host
  Submits a migration request: opens a support ticket containing the customer's credentials for their current host (cPanel/FTP/domain registrar) so InterServer staff can copy the site, databases, and email into this webhosting account. **Sensitive** — the body contains plaintext credentials for the source host. Do not log responses. The created ticket's id is returned; track progress with the helpdesk/tickets API. Sibling ops: `getWebsiteInfo`, `getWebsitesBackups`.

**Path param:**
- `id` (integer, required) — `website_id` from `getWebsiteList`.

**Body fields** (JSON or multipart):
- `custPortal` (string) — URL of the current hosting provider's customer portal (e.g. `sso.godaddy.com`).
- `regEmail` (string) — email/username at the current host.
- `password` (string) — password at the current host.
- `ctrlPanel` (string) — current control-panel URL (e.g. `yourdomain.com/cpanel/`).
- `ftpUsername` (string), `ftpPassword` (string) — FTP credentials.
- `siteBusyMig` (string) — info on site traffic / whether a holding page can be shown during migration.
- `splReqMig` (string) — special requirements (PHP version, modules, etc.).
- `domainReg` (string) — whether domain-registration transfer is also needed (`yes`/`no` or freeform).
- `dataMig` (string) — nameserver switch timing preference.
- `domainRegPortal`, `domainRegEmail`, `domainRegPassword` (strings) — domain-registrar credentials.

**Returns:** `{text: \"Your migration request has been sucessfully submitted...\", ticket: <integer>}` — pass `ticket` to the tickets API to monitor.

**Side effects:**
- Creates a support ticket via `create_ticket()` with the credentials in the ticket body.
- Inserts a `history_log` row of type `Webhost Migration`.

**Auth:** Session/API key. Ownership enforced.

**Errors:**
- `401` — unauthenticated.
- `404 Invalid Service Passed` — `id` not owned by caller.

**Related calls:**
- **Track migration progress:** Tickets API (use the returned `ticket` id).
- **Verify after migration:** `getWebsitesLogin`, `getWebsiteInfo`."
  [id int?, post-website-migration-request post-website-migration-request]
  (let [res (:data (post-website-migration-with-http-info id post-website-migration-request))]
    (if (:decode-models *api-context*)
       (st/decode post-website-migration-200-response-spec res st/string-transformer)
       res)))


(defn-spec post-websites-reverse-dns-with-http-info any?
  "Bulk-update reverse-DNS (PTR) records for one or more website IPs
  Sets the PTR hostname for each IP in the website's IP set. Calls `reverse_dns($ip, $newHostname)` for every IP in the body whose value differs from the current PTR and is non-empty; IPs not in the body are left alone. Always returns `{message: \"DNS Updated\", success: true}` even if no entries actually changed. PTR propagation is asynchronous — re-call `gettWebsiteReverseDns` after a few minutes to confirm. Equivalent to calling `postWebsiteBuyIp` with `action=reverse_dns`. Sibling ops: `gettWebsiteReverseDns`, `getWebsiteBuyIp`, `postWebsiteBuyIp`.

**Path param:**
- `id` (integer, required) — `website_id` from `getWebsiteList`.

**Body fields** (schema `ReverseDnsEntries`):
- `ips` (object, required) — `{\"<ip>\": \"<new-hostname>\", ...}`. Only IPs that already belong to the website are updated; others ignored. Empty-string values skipped.

**Returns:** `{message: \"DNS Updated\", success: true}`.

**Side effects:**
- One `reverse_dns()` call per IP whose value changed. Records are written to the in-addr.arpa zone; TTL-dependent propagation.

**Auth:** Session/API key. Ownership enforced.

**Errors:**
- `401` — unauthenticated.
- `404 Invalid VPS Passed` (legacy text) — `id` not owned by caller.
- `409 Website is not active` — `website_status != \"active\"`.

**Related calls:**
- **Read current PTRs first:** `gettWebsiteReverseDns`.
- **Equivalent endpoint:** `postWebsiteBuyIp` (`action=reverse_dns`)."
  [id int?, reverse-dns-entries reverse-dns-entries]
  (check-required-params id reverse-dns-entries)
  (call-api "/websites/{id}/reverse_dns" :post
            {:path-params   {"id" id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :body-param    reverse-dns-entries
             :content-types ["application/json" "multipart/form-data"]
             :accepts       ["application/json"]
             :auth-names    ["sessionIdCookieAuth" "apiKeyAuth" "sessionIdHeaderAuth"]}))

(defn-spec post-websites-reverse-dns text-response-spec
  "Bulk-update reverse-DNS (PTR) records for one or more website IPs
  Sets the PTR hostname for each IP in the website's IP set. Calls `reverse_dns($ip, $newHostname)` for every IP in the body whose value differs from the current PTR and is non-empty; IPs not in the body are left alone. Always returns `{message: \"DNS Updated\", success: true}` even if no entries actually changed. PTR propagation is asynchronous — re-call `gettWebsiteReverseDns` after a few minutes to confirm. Equivalent to calling `postWebsiteBuyIp` with `action=reverse_dns`. Sibling ops: `gettWebsiteReverseDns`, `getWebsiteBuyIp`, `postWebsiteBuyIp`.

**Path param:**
- `id` (integer, required) — `website_id` from `getWebsiteList`.

**Body fields** (schema `ReverseDnsEntries`):
- `ips` (object, required) — `{\"<ip>\": \"<new-hostname>\", ...}`. Only IPs that already belong to the website are updated; others ignored. Empty-string values skipped.

**Returns:** `{message: \"DNS Updated\", success: true}`.

**Side effects:**
- One `reverse_dns()` call per IP whose value changed. Records are written to the in-addr.arpa zone; TTL-dependent propagation.

**Auth:** Session/API key. Ownership enforced.

**Errors:**
- `401` — unauthenticated.
- `404 Invalid VPS Passed` (legacy text) — `id` not owned by caller.
- `409 Website is not active` — `website_status != \"active\"`.

**Related calls:**
- **Read current PTRs first:** `gettWebsiteReverseDns`.
- **Equivalent endpoint:** `postWebsiteBuyIp` (`action=reverse_dns`)."
  [id int?, reverse-dns-entries reverse-dns-entries]
  (let [res (:data (post-websites-reverse-dns-with-http-info id reverse-dns-entries))]
    (if (:decode-models *api-context*)
       (st/decode text-response-spec res st/string-transformer)
       res)))


(defn-spec put-websites-with-http-info any?
  "Validate a webhosting order and preview cost — dry run, no charge
  Step 2 of the webhosting order flow. Dry-runs the order through `validate_buy_website()`: checks `hostname` against `valid_hostname()` and the keyword blocklist, validates `packageId` against the customer's plan eligibility, confirms the chosen plan's hypervisor pool is in stock (`OUTOFSTOCK_WEBHOSTING_*` constants), applies any coupon and frequency discount, and returns a cost preview plus any validation errors. No invoice or service record is created. **Always call before `addWebsite`** to surface coupon/pricing/hostname problems cheaply. Sibling ops: `getNewWebsite` (catalog), `addWebsite` (place order).

**Body fields (form or JSON):**
- `hostname` (string, required) — primary FQDN for the website. Must pass `valid_hostname()`, must not contain `interserver.net` (non-admin), must not be on the blocked-keyword list, must match the plan's TOS rules.
- `rootpass` (string, optional) — control-panel admin password; if blank, a random 8-char password is generated server-side via `generateRandomString(8,1,1,1,1)`.
- `packageId` (integer, required) — plan id from `getNewWebsite.serviceTypes[].services_id`. Must have `services_module='webhosting'` and `services_buyable=1` (non-admin).
- `period` (integer, optional, default 1) — billing cycle in months: 1 / 6 / 12 / 24 / 36. Same frequency discounts as VPS apply.
- `coupon` (string, optional) — coupon code.
- `serviceOfferId` (integer, optional) — promo bundle from `getNewWebsite.serviceOffers`.
- `script` (integer, optional, default 0) — auto-installer id (Softaculous/WordPress/etc., 0 = none).
- `comment` (string, optional) — free-form note saved on the service row.
- `registerDomain` (bool, optional) — when `true` and `enableDomainRegistering=true` from the catalog, also registers/transfers the domain through the order.
- Implicit: TOS acceptance (validated via `tos='yes'` in source — required for non-admin).

**Returns** (validation envelope):
- `continue` (bool) — `true` if the order can safely be POSTed.
- `errors` (array of strings) — human-readable validation messages.
- `frequency` (integer) — resolved billing frequency.
- `coupon` (string) — the applied coupon name (echoed).
- `couponCode` (integer) — the matched coupon row id, or `0` if none.
- `serviceType` (integer) — resolved plan id.
- `serviceCost` (float) — first-period total cost (includes coupon + period discount).
- `originalCost` (float) — undiscounted reference.
- `repeatServiceCost` (float) — recurring cost after discounts.
- `hostname`, `password` (string) — final sanitized values (may differ from input — e.g. random password generated).
- `introFrequency` (integer) — first-period bonus length (intro pricing).

**Side effects:** None — pure read.

**Auth:** Session/API key.

**Errors (within `errors` array, `continue=false`):**
- `Invalid Billing Interval` — `period` not numeric.
- `All webhosting servers are currently full.` — `OUTOFSTOCK_WEBHOSTING`.
- `Invalid Package Specified.` — plan id not in the webhosting module or not buyable.
- `Our <Plan> Webhosting Servers are currently full.` — plan-specific stock check.
- `The hostname cannot contain interserver.net`.
- `Hostname \"<x>\" Contains Invalid Characters Or Is Blank`.
- `Hostname contains a blocked keyword.`.
- `You must agree to the terms of service and click the checkbox saying so.`.
- `Invalid Coupon Specified` — coupon not usable for this plan/customer.

Top-level HTTP errors: `401` unauthenticated.

**Related calls:**
- **Prerequisite:** `getNewWebsite` (catalog).
- **Next:** `addWebsite` (same body — actually places the order).

**Example request body:**
```json
{
  \"hostname\": \"mystore.example.com\",
  \"rootpass\": \"Sup3rS3cret!\",
  \"packageId\": 23,
  \"period\": 12,
  \"coupon\": \"\",
  \"registerDomain\": false,
  \"script\": 0
}
```"
  [website-order-put-request website-order-put-request]
  (check-required-params website-order-put-request)
  (call-api "/websites/order" :put
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :body-param    website-order-put-request
             :content-types ["application/json"]
             :accepts       ["application/json"]
             :auth-names    ["sessionIdCookieAuth" "apiKeyAuth" "sessionIdHeaderAuth"]}))

(defn-spec put-websites any?
  "Validate a webhosting order and preview cost — dry run, no charge
  Step 2 of the webhosting order flow. Dry-runs the order through `validate_buy_website()`: checks `hostname` against `valid_hostname()` and the keyword blocklist, validates `packageId` against the customer's plan eligibility, confirms the chosen plan's hypervisor pool is in stock (`OUTOFSTOCK_WEBHOSTING_*` constants), applies any coupon and frequency discount, and returns a cost preview plus any validation errors. No invoice or service record is created. **Always call before `addWebsite`** to surface coupon/pricing/hostname problems cheaply. Sibling ops: `getNewWebsite` (catalog), `addWebsite` (place order).

**Body fields (form or JSON):**
- `hostname` (string, required) — primary FQDN for the website. Must pass `valid_hostname()`, must not contain `interserver.net` (non-admin), must not be on the blocked-keyword list, must match the plan's TOS rules.
- `rootpass` (string, optional) — control-panel admin password; if blank, a random 8-char password is generated server-side via `generateRandomString(8,1,1,1,1)`.
- `packageId` (integer, required) — plan id from `getNewWebsite.serviceTypes[].services_id`. Must have `services_module='webhosting'` and `services_buyable=1` (non-admin).
- `period` (integer, optional, default 1) — billing cycle in months: 1 / 6 / 12 / 24 / 36. Same frequency discounts as VPS apply.
- `coupon` (string, optional) — coupon code.
- `serviceOfferId` (integer, optional) — promo bundle from `getNewWebsite.serviceOffers`.
- `script` (integer, optional, default 0) — auto-installer id (Softaculous/WordPress/etc., 0 = none).
- `comment` (string, optional) — free-form note saved on the service row.
- `registerDomain` (bool, optional) — when `true` and `enableDomainRegistering=true` from the catalog, also registers/transfers the domain through the order.
- Implicit: TOS acceptance (validated via `tos='yes'` in source — required for non-admin).

**Returns** (validation envelope):
- `continue` (bool) — `true` if the order can safely be POSTed.
- `errors` (array of strings) — human-readable validation messages.
- `frequency` (integer) — resolved billing frequency.
- `coupon` (string) — the applied coupon name (echoed).
- `couponCode` (integer) — the matched coupon row id, or `0` if none.
- `serviceType` (integer) — resolved plan id.
- `serviceCost` (float) — first-period total cost (includes coupon + period discount).
- `originalCost` (float) — undiscounted reference.
- `repeatServiceCost` (float) — recurring cost after discounts.
- `hostname`, `password` (string) — final sanitized values (may differ from input — e.g. random password generated).
- `introFrequency` (integer) — first-period bonus length (intro pricing).

**Side effects:** None — pure read.

**Auth:** Session/API key.

**Errors (within `errors` array, `continue=false`):**
- `Invalid Billing Interval` — `period` not numeric.
- `All webhosting servers are currently full.` — `OUTOFSTOCK_WEBHOSTING`.
- `Invalid Package Specified.` — plan id not in the webhosting module or not buyable.
- `Our <Plan> Webhosting Servers are currently full.` — plan-specific stock check.
- `The hostname cannot contain interserver.net`.
- `Hostname \"<x>\" Contains Invalid Characters Or Is Blank`.
- `Hostname contains a blocked keyword.`.
- `You must agree to the terms of service and click the checkbox saying so.`.
- `Invalid Coupon Specified` — coupon not usable for this plan/customer.

Top-level HTTP errors: `401` unauthenticated.

**Related calls:**
- **Prerequisite:** `getNewWebsite` (catalog).
- **Next:** `addWebsite` (same body — actually places the order).

**Example request body:**
```json
{
  \"hostname\": \"mystore.example.com\",
  \"rootpass\": \"Sup3rS3cret!\",
  \"packageId\": 23,
  \"period\": 12,
  \"coupon\": \"\",
  \"registerDomain\": false,
  \"script\": 0
}
```"
  [website-order-put-request website-order-put-request]
  (let [res (:data (put-websites-with-http-info website-order-put-request))]
    (if (:decode-models *api-context*)
       (st/decode any? res st/string-transformer)
       res)))


(defn-spec update-website-info-with-http-info any?
  "POST mutation hook for the website detail page (use dedicated ops where possible)
  POST mutation hook for the website detail page. The implementation currently routes through the same `View::go()` handler as `getWebsiteInfo`; concrete update behavior depends on which `client_links` action the form is driving. **For specific changes, prefer the dedicated endpoints** — they enforce field-level validation and queue the correct hypervisor/panel actions. Sibling ops: `getWebsiteInfo`, all dedicated mutation endpoints below.

**Path param:**
- `id` (integer, required) — `website_id` from `getWebsiteList`.

**Body:** Form-encoded fields appropriate to the `client_links` action being driven.

**Returns:** `SuccessTextResponse` — `{text: \"...\"}`.

**Auth:** Session/API key. Ownership enforced.

**Errors:**
- `401` — unauthenticated.
- `404` — `id` not owned by caller.

**Prefer these dedicated endpoints:**
- **Buy a paid IP or update reverse DNS:** `postWebsiteBuyIp` (the latter via `action=reverse_dns`).
- **PTR-only changes:** `postWebsitesReverseDns`.
- **Migrate site from another host:** `postWebsiteMigration`.
- **Resend control-panel credentials:** `getWebsitesWelcomeEmail`.
- **Auto-login to cPanel/DA/Plesk:** `getWebsitesLogin`.
- **Cancel:** `webhostingCancel`."
  [id string?]
  (check-required-params id)
  (call-api "/websites/{id}" :post
            {:path-params   {"id" id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["sessionIdCookieAuth" "apiKeyAuth" "sessionIdHeaderAuth"]}))

(defn-spec update-website-info success-text-response-spec
  "POST mutation hook for the website detail page (use dedicated ops where possible)
  POST mutation hook for the website detail page. The implementation currently routes through the same `View::go()` handler as `getWebsiteInfo`; concrete update behavior depends on which `client_links` action the form is driving. **For specific changes, prefer the dedicated endpoints** — they enforce field-level validation and queue the correct hypervisor/panel actions. Sibling ops: `getWebsiteInfo`, all dedicated mutation endpoints below.

**Path param:**
- `id` (integer, required) — `website_id` from `getWebsiteList`.

**Body:** Form-encoded fields appropriate to the `client_links` action being driven.

**Returns:** `SuccessTextResponse` — `{text: \"...\"}`.

**Auth:** Session/API key. Ownership enforced.

**Errors:**
- `401` — unauthenticated.
- `404` — `id` not owned by caller.

**Prefer these dedicated endpoints:**
- **Buy a paid IP or update reverse DNS:** `postWebsiteBuyIp` (the latter via `action=reverse_dns`).
- **PTR-only changes:** `postWebsitesReverseDns`.
- **Migrate site from another host:** `postWebsiteMigration`.
- **Resend control-panel credentials:** `getWebsitesWelcomeEmail`.
- **Auto-login to cPanel/DA/Plesk:** `getWebsitesLogin`.
- **Cancel:** `webhostingCancel`."
  [id string?]
  (let [res (:data (update-website-info-with-http-info id))]
    (if (:decode-models *api-context*)
       (st/decode success-text-response-spec res st/string-transformer)
       res)))


(defn-spec webhosting-cancel-with-http-info any?
  "Schedule termination of a webhosting service — wipes panel account at cycle end
  **DESTRUCTIVE.** Schedules the website for cancellation via the shared `Billing\\CancelService::go($id)` flow with `module='webhosting'`. Marks the service `pending-cancel`, halts the recurring invoice, and queues deprovisioning so cPanel/DirectAdmin/Plesk/Webuzo removes the account and **all hosted files, databases, mailboxes, and DNS** at end-of-cycle. **There is no client-side restore** — take a cpmove backup via `getWebsitesBackups` first (with `download=<name>`) if data must be preserved. Sibling ops: `getWebsitesBackups`, `getWebsiteInfo` (verify status flipped), `getWebsiteInvoices`.

**Path param:**
- `id` (integer, required) — `website_id` from `getWebsiteList`.

**Body:** None.

**Returns:** `WebsiteCancelResponse` — cancel-service confirmation payload.

**Side effects:**
- Sets `website_status='pending-cancel'`.
- Marks the `repeat_invoices` row as non-renewing.
- Logs the cancellation in `history_log`.
- Queues deprovisioning to run at end-of-cycle (the cPanel/DA/Plesk account, all hosted files, databases, email accounts, and DNS will be removed).
- Customer retains panel access until the cycle ends.

**Auth:** Session/API key. Ownership enforced.

**Errors:**
- `401` — unauthenticated.
- `404` — `id` not owned by caller.
- `409` — service in a state that cannot be cancelled (already `canceled`, etc.).

**Related calls:**
- **Before cancelling:** `getWebsitesBackups` (download a cpmove archive — irretrievable after deprovisioning).
- **After cancelling:** `getWebsiteInfo` (confirm `pending-cancel`), `getWebsiteInvoices` (final invoices).
- **Sibling cancels on other modules:** `VPSCancel`, `CancelDomain`, `mailCancel`, etc. all use the same `CancelService` handler."
  [id string?]
  (check-required-params id)
  (call-api "/websites/{id}" :delete
            {:path-params   {"id" id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["sessionIdCookieAuth" "apiKeyAuth" "sessionIdHeaderAuth"]}))

(defn-spec webhosting-cancel webhosting-cancel-200-response-spec
  "Schedule termination of a webhosting service — wipes panel account at cycle end
  **DESTRUCTIVE.** Schedules the website for cancellation via the shared `Billing\\CancelService::go($id)` flow with `module='webhosting'`. Marks the service `pending-cancel`, halts the recurring invoice, and queues deprovisioning so cPanel/DirectAdmin/Plesk/Webuzo removes the account and **all hosted files, databases, mailboxes, and DNS** at end-of-cycle. **There is no client-side restore** — take a cpmove backup via `getWebsitesBackups` first (with `download=<name>`) if data must be preserved. Sibling ops: `getWebsitesBackups`, `getWebsiteInfo` (verify status flipped), `getWebsiteInvoices`.

**Path param:**
- `id` (integer, required) — `website_id` from `getWebsiteList`.

**Body:** None.

**Returns:** `WebsiteCancelResponse` — cancel-service confirmation payload.

**Side effects:**
- Sets `website_status='pending-cancel'`.
- Marks the `repeat_invoices` row as non-renewing.
- Logs the cancellation in `history_log`.
- Queues deprovisioning to run at end-of-cycle (the cPanel/DA/Plesk account, all hosted files, databases, email accounts, and DNS will be removed).
- Customer retains panel access until the cycle ends.

**Auth:** Session/API key. Ownership enforced.

**Errors:**
- `401` — unauthenticated.
- `404` — `id` not owned by caller.
- `409` — service in a state that cannot be cancelled (already `canceled`, etc.).

**Related calls:**
- **Before cancelling:** `getWebsitesBackups` (download a cpmove archive — irretrievable after deprovisioning).
- **After cancelling:** `getWebsiteInfo` (confirm `pending-cancel`), `getWebsiteInvoices` (final invoices).
- **Sibling cancels on other modules:** `VPSCancel`, `CancelDomain`, `mailCancel`, etc. all use the same `CancelService` handler."
  [id string?]
  (let [res (:data (webhosting-cancel-with-http-info id))]
    (if (:decode-models *api-context*)
       (st/decode webhosting-cancel-200-response-spec res st/string-transformer)
       res)))


