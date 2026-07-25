(ns inter-server-management-api.api.billing
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


(defn-spec add-billing-credit-card-with-http-info any?
  "Store a credit card on the account — may return a verification flow
  Stores a new credit card on the account so it can later be selected via `updateBillingPaymentMethod` or used directly with `initiatePayment` (`method=cc`). The card number has dashes stripped and is sanitized through `FILTER_SANITIZE_NUMBER_INT`; billing address fields are HTML-entity-escaped server-side; the CC number is encrypted at rest via `App::encrypt()`. The flow may return `action='verify'` indicating a two-step micro-charge verification is required before the card is usable — complete it with `patchBillingCreditCardVerify` then `postBillingCreditCardVerify`. Sibling ops: `updateBillingCreditCard`, `deleteBillingCreditCard`, `patchBillingCreditCardVerify`, `postBillingCreditCardVerify`, `updateBillingPaymentMethod`.

**Body fields (JSON or multipart, schema `BillingAddCcRequest`):**
- `cc` (string, required) — card number; dashes stripped, non-digits filtered.
- `name` (string, required) — cardholder name.
- `cc_exp` (string, required) — `MM/YYYY`.
- `address` (string, required), `city`, `state`, `country`, `zip` (strings) — billing address; HTML-entity-escaped.

**Returns:**
- **Added directly:** `{success: true, text: \"Card Added Successfully!\"}`.
- **Verification needed:** `{success: false, text: \"Kindly verify your card by updating the amounts in the fields\", action: \"verify\"}` — proceed to `patchBillingCreditCardVerify`.

**Side effects:**
- Inserts the encrypted card into the account's `ccs` array (managed via `parse_ccs` / `add_cc`).
- May trigger a small initial test charge (gateway-dependent).
- First-card-on-account triggers MaxMind + FraudRecord risk-score recomputation.

**Auth:** Session/API key.

**Errors:**
- `Card number, Full Name, Expiry date are required!` — required field missing/empty.
- `401` — unauthenticated.
- Gateway/AVS error text — declined, mismatch, etc.

**Related calls:**
- **Verify (if `action='verify'`):** `patchBillingCreditCardVerify` (CVV + initiate micro-charge) → `postBillingCreditCardVerify` (submit amounts).
- **Make it the default:** `updateBillingPaymentMethod` with `payment_method=cc<idx>`.
- **Pay an invoice with it:** `initiatePayment` (`method=cc`)."
  [billing-add-cc-request billing-add-cc-request]
  (check-required-params billing-add-cc-request)
  (call-api "/billing/creditcards" :post
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :body-param    billing-add-cc-request
             :content-types ["application/json" "multipart/form-data"]
             :accepts       ["application/json"]
             :auth-names    ["sessionIdCookieAuth" "apiKeyAuth" "sessionIdHeaderAuth"]}))

(defn-spec add-billing-credit-card success-text-response-spec
  "Store a credit card on the account — may return a verification flow
  Stores a new credit card on the account so it can later be selected via `updateBillingPaymentMethod` or used directly with `initiatePayment` (`method=cc`). The card number has dashes stripped and is sanitized through `FILTER_SANITIZE_NUMBER_INT`; billing address fields are HTML-entity-escaped server-side; the CC number is encrypted at rest via `App::encrypt()`. The flow may return `action='verify'` indicating a two-step micro-charge verification is required before the card is usable — complete it with `patchBillingCreditCardVerify` then `postBillingCreditCardVerify`. Sibling ops: `updateBillingCreditCard`, `deleteBillingCreditCard`, `patchBillingCreditCardVerify`, `postBillingCreditCardVerify`, `updateBillingPaymentMethod`.

**Body fields (JSON or multipart, schema `BillingAddCcRequest`):**
- `cc` (string, required) — card number; dashes stripped, non-digits filtered.
- `name` (string, required) — cardholder name.
- `cc_exp` (string, required) — `MM/YYYY`.
- `address` (string, required), `city`, `state`, `country`, `zip` (strings) — billing address; HTML-entity-escaped.

**Returns:**
- **Added directly:** `{success: true, text: \"Card Added Successfully!\"}`.
- **Verification needed:** `{success: false, text: \"Kindly verify your card by updating the amounts in the fields\", action: \"verify\"}` — proceed to `patchBillingCreditCardVerify`.

**Side effects:**
- Inserts the encrypted card into the account's `ccs` array (managed via `parse_ccs` / `add_cc`).
- May trigger a small initial test charge (gateway-dependent).
- First-card-on-account triggers MaxMind + FraudRecord risk-score recomputation.

**Auth:** Session/API key.

**Errors:**
- `Card number, Full Name, Expiry date are required!` — required field missing/empty.
- `401` — unauthenticated.
- Gateway/AVS error text — declined, mismatch, etc.

**Related calls:**
- **Verify (if `action='verify'`):** `patchBillingCreditCardVerify` (CVV + initiate micro-charge) → `postBillingCreditCardVerify` (submit amounts).
- **Make it the default:** `updateBillingPaymentMethod` with `payment_method=cc<idx>`.
- **Pay an invoice with it:** `initiatePayment` (`method=cc`)."
  [billing-add-cc-request billing-add-cc-request]
  (let [res (:data (add-billing-credit-card-with-http-info billing-add-cc-request))]
    (if (:decode-models *api-context*)
       (st/decode success-text-response-spec res st/string-transformer)
       res)))


(defn-spec add-billing-prepay-with-http-info any?
  "Create a prepay deposit and return an invoice id to fund it
  Creates a prepay row (`prepays` table) at the requested amount and inserts a matching `invoices` row (`Prepay ID {pid} Invoice`) that the customer must pay through `initiatePayment` before the balance becomes usable. The prepay is added with `PREPAY_TYPE_ANY` / `PREPAY_SERVICE_ANY` defaults via `add_prepay()`. Use to seed an account balance the customer can later spend via `method=prepay` at checkout. **Real money** — funding the returned invoice charges a real payment method. Sibling ops: `getBillingPrePays`, `deleteBillingPrepay`, `getBillingInvoice`, `initiatePayment`.

**Body fields (JSON or multipart, schema `BillingPrepayRequest`):**
- `amount` (number, required) — deposit size in account currency. **Minimum $10**; smaller values are rejected.
- `module` (string, required) — service module scope (`default` for any service, or specific like `vps`, `webhosting`).
- `automatic_use` (bool, required) — when `true`, the balance auto-applies to future invoices in the scoped module.

**Returns:** `{text: \"Thank you! Prepay created! Kindly pay the invoice to activate the prepay fund.\", invoice: <integer>}` — pass `invoice` to `initiatePayment` (use a real `method` like `cc` / `paypal`, not `prepay` — you can't fund a prepay with a prepay).

**Side effects:**
- Inserts `prepays` row.
- Inserts `invoices` row (`invoices_description = \"Prepay ID {pid} Invoice\"`, `invoices_paid=0`, `invoices_module='default'`).

**Auth:** Session/API key.

**Errors:**
- `Sorry! Minimum prepay amount is $10.00` — amount below floor.
- `Something went wrong! Try again or contact our support team!` — invoice insert failed.
- `401` — unauthenticated.

**Related calls:**
- **Confirm invoice:** `getBillingInvoice` with the returned `invoice` id.
- **Pay it:** `initiatePayment` (`method=cc|paypal|...`, not `prepay`).
- **Verify it's now usable:** `getBillingPrePays` (look for `prepay_remaining > 0`).
- **Cancel before paying:** `deleteBillingPrepay`.

**Example happy path:**
```text
POST /apiv2/billing/prepays { \"amount\": 100, \"module\": \"default\", \"automatic_use\": true }
-> { \"text\": \"...\", \"invoice\": 25296701 }
GET /apiv2/billing/pay/cc/25296701
-> { \"type\": \"single\", \"text\": \"Payment processed.\" }
GET /apiv2/billing/prepays
-> [{ \"prepay_id\": 99, \"prepay_remaining\": 100, ... }]
```"
  [billing-prepay-request billing-prepay-request]
  (check-required-params billing-prepay-request)
  (call-api "/billing/prepays" :post
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :body-param    billing-prepay-request
             :content-types ["application/json" "multipart/form-data"]
             :accepts       ["application/json"]
             :auth-names    ["sessionIdCookieAuth" "apiKeyAuth" "sessionIdHeaderAuth"]}))

(defn-spec add-billing-prepay success-text-response-spec
  "Create a prepay deposit and return an invoice id to fund it
  Creates a prepay row (`prepays` table) at the requested amount and inserts a matching `invoices` row (`Prepay ID {pid} Invoice`) that the customer must pay through `initiatePayment` before the balance becomes usable. The prepay is added with `PREPAY_TYPE_ANY` / `PREPAY_SERVICE_ANY` defaults via `add_prepay()`. Use to seed an account balance the customer can later spend via `method=prepay` at checkout. **Real money** — funding the returned invoice charges a real payment method. Sibling ops: `getBillingPrePays`, `deleteBillingPrepay`, `getBillingInvoice`, `initiatePayment`.

**Body fields (JSON or multipart, schema `BillingPrepayRequest`):**
- `amount` (number, required) — deposit size in account currency. **Minimum $10**; smaller values are rejected.
- `module` (string, required) — service module scope (`default` for any service, or specific like `vps`, `webhosting`).
- `automatic_use` (bool, required) — when `true`, the balance auto-applies to future invoices in the scoped module.

**Returns:** `{text: \"Thank you! Prepay created! Kindly pay the invoice to activate the prepay fund.\", invoice: <integer>}` — pass `invoice` to `initiatePayment` (use a real `method` like `cc` / `paypal`, not `prepay` — you can't fund a prepay with a prepay).

**Side effects:**
- Inserts `prepays` row.
- Inserts `invoices` row (`invoices_description = \"Prepay ID {pid} Invoice\"`, `invoices_paid=0`, `invoices_module='default'`).

**Auth:** Session/API key.

**Errors:**
- `Sorry! Minimum prepay amount is $10.00` — amount below floor.
- `Something went wrong! Try again or contact our support team!` — invoice insert failed.
- `401` — unauthenticated.

**Related calls:**
- **Confirm invoice:** `getBillingInvoice` with the returned `invoice` id.
- **Pay it:** `initiatePayment` (`method=cc|paypal|...`, not `prepay`).
- **Verify it's now usable:** `getBillingPrePays` (look for `prepay_remaining > 0`).
- **Cancel before paying:** `deleteBillingPrepay`.

**Example happy path:**
```text
POST /apiv2/billing/prepays { \"amount\": 100, \"module\": \"default\", \"automatic_use\": true }
-> { \"text\": \"...\", \"invoice\": 25296701 }
GET /apiv2/billing/pay/cc/25296701
-> { \"type\": \"single\", \"text\": \"Payment processed.\" }
GET /apiv2/billing/prepays
-> [{ \"prepay_id\": 99, \"prepay_remaining\": 100, ... }]
```"
  [billing-prepay-request billing-prepay-request]
  (let [res (:data (add-billing-prepay-with-http-info billing-prepay-request))]
    (if (:decode-models *api-context*)
       (st/decode success-text-response-spec res st/string-transformer)
       res)))


(defn-spec delete-billing-credit-card-with-http-info any?
  "Remove a stored credit card from the account
  Removes the indexed credit card from the account's `ccs` collection. If the deleted card was also the account's primary `cc`, the primary field is cleared — `initiatePayment` (`method=cc`) will then return an error until a new default is designated via `updateBillingPaymentMethod`. **Irreversible** — to re-store the same card, re-run `addBillingCreditCard`. Sibling ops: `addBillingCreditCard`, `updateBillingCreditCard`, `updateBillingPaymentMethod`, `getBillingCreditCardVerify`.

**Path param:**
- `id` (integer, required) — credit card index from `parse_ccs`.

**Body:** None.

**Returns:** `Card removed successfully.`.

**Side effects:**
- Removes the entry from the `ccs` array; re-serialized via `myadmin_stringify`.
- When the deleted card was primary: clears account-level `cc`.

**Auth:** Session/API key. Card ownership enforced.

**Errors:**
- `Invalid Credit Card Passed` — `id` not in `parse_ccs`.
- `401` — unauthenticated.

**Related calls:**
- **Set a new default:** `updateBillingPaymentMethod`.
- **Add a replacement:** `addBillingCreditCard`."
  [id int?]
  (check-required-params id)
  (call-api "/billing/creditcards/{id}" :delete
            {:path-params   {"id" id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["sessionIdCookieAuth" "apiKeyAuth" "sessionIdHeaderAuth"]}))

(defn-spec delete-billing-credit-card success-text-response-spec
  "Remove a stored credit card from the account
  Removes the indexed credit card from the account's `ccs` collection. If the deleted card was also the account's primary `cc`, the primary field is cleared — `initiatePayment` (`method=cc`) will then return an error until a new default is designated via `updateBillingPaymentMethod`. **Irreversible** — to re-store the same card, re-run `addBillingCreditCard`. Sibling ops: `addBillingCreditCard`, `updateBillingCreditCard`, `updateBillingPaymentMethod`, `getBillingCreditCardVerify`.

**Path param:**
- `id` (integer, required) — credit card index from `parse_ccs`.

**Body:** None.

**Returns:** `Card removed successfully.`.

**Side effects:**
- Removes the entry from the `ccs` array; re-serialized via `myadmin_stringify`.
- When the deleted card was primary: clears account-level `cc`.

**Auth:** Session/API key. Card ownership enforced.

**Errors:**
- `Invalid Credit Card Passed` — `id` not in `parse_ccs`.
- `401` — unauthenticated.

**Related calls:**
- **Set a new default:** `updateBillingPaymentMethod`.
- **Add a replacement:** `addBillingCreditCard`."
  [id int?]
  (let [res (:data (delete-billing-credit-card-with-http-info id))]
    (if (:decode-models *api-context*)
       (st/decode success-text-response-spec res st/string-transformer)
       res)))


(defn-spec delete-billing-invoice-with-http-info any?
  "Cancel a pending unpaid invoice — and its pending service or repeat invoice
  Cancels an unpaid invoice and cleans up the records it represents. Behavior depends on what the invoice funds: a **prepay** invoice is routed to `deleteBillingPrepay`; an **initial service charge** (where `repeat_invoices_id` matches the service's `_invoice` field) deletes the `repeat_invoices` row, all child `invoices`, AND the pending service row from the module's table; an **addon/recurring** invoice just deletes that one `invoices` row plus its `repeat_invoices` row. **Only invoices for services in `pending` status can be deleted** — once provisioned, the service must be cancelled via the per-service Cancel endpoint instead. **Irreversible**. Sibling ops: `getBillingInvoice`, `deleteBillingPrepay`, `VPSCancel` / `CancelDomain` / `mailCancel` / `webhostingCancel` / etc.

**Path param:**
- `id` (integer, required) — invoice id (`invoices_type=1`, ownership enforced via `invoices_custid`).

**Body:** None.

**Returns:** `Invoice Deleted` text.

**Side effects:** (depends on invoice type)
- **Prepay invoice** (description matches `Prepay ID N Invoice`) — delegates to `deleteBillingPrepay($pid)`.
- **Initial service invoice** (`repeat_invoices_id == service._invoice`) — deletes:
  - the `repeat_invoices` row,
  - every `invoices` row for that service,
  - the service row in `{settings['TABLE']}`.
- **Addon/recurring invoice** — deletes only the matching `repeat_invoices` row and the single `invoices` row.

**Auth:** Session/API key. Ownership enforced.

**Errors:**
- `Invalid invoice` — `id` not found or wrong owner.
- `Invalid service` — invoice references a service that no longer exists.
- `Can only delete invoices for pending services or prepays` — service is `active`/`suspended`/`cancelled`.
- `401` — unauthenticated.

**Related calls:**
- **List candidates:** `getBillingInvoices`.
- **Detail first:** `getBillingInvoice`.
- **For active services:** `VPSCancel`, `CancelDomain`, `mailCancel`, `webhostingCancel`, `licensesCancel`, `sslCancel`, `cancelScrubIp`, `floating_ipsCancel`, `cancelBackup`, `quickserversCancel`, `serversCancel` — these use `Billing\\CancelService::go()`.
- **For prepay invoices:** `deleteBillingPrepay` (delegated automatically)."
  [id int?]
  (check-required-params id)
  (call-api "/billing/invoices/{id}" :delete
            {:path-params   {"id" id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["sessionIdCookieAuth" "apiKeyAuth" "sessionIdHeaderAuth"]}))

(defn-spec delete-billing-invoice success-text-response-spec
  "Cancel a pending unpaid invoice — and its pending service or repeat invoice
  Cancels an unpaid invoice and cleans up the records it represents. Behavior depends on what the invoice funds: a **prepay** invoice is routed to `deleteBillingPrepay`; an **initial service charge** (where `repeat_invoices_id` matches the service's `_invoice` field) deletes the `repeat_invoices` row, all child `invoices`, AND the pending service row from the module's table; an **addon/recurring** invoice just deletes that one `invoices` row plus its `repeat_invoices` row. **Only invoices for services in `pending` status can be deleted** — once provisioned, the service must be cancelled via the per-service Cancel endpoint instead. **Irreversible**. Sibling ops: `getBillingInvoice`, `deleteBillingPrepay`, `VPSCancel` / `CancelDomain` / `mailCancel` / `webhostingCancel` / etc.

**Path param:**
- `id` (integer, required) — invoice id (`invoices_type=1`, ownership enforced via `invoices_custid`).

**Body:** None.

**Returns:** `Invoice Deleted` text.

**Side effects:** (depends on invoice type)
- **Prepay invoice** (description matches `Prepay ID N Invoice`) — delegates to `deleteBillingPrepay($pid)`.
- **Initial service invoice** (`repeat_invoices_id == service._invoice`) — deletes:
  - the `repeat_invoices` row,
  - every `invoices` row for that service,
  - the service row in `{settings['TABLE']}`.
- **Addon/recurring invoice** — deletes only the matching `repeat_invoices` row and the single `invoices` row.

**Auth:** Session/API key. Ownership enforced.

**Errors:**
- `Invalid invoice` — `id` not found or wrong owner.
- `Invalid service` — invoice references a service that no longer exists.
- `Can only delete invoices for pending services or prepays` — service is `active`/`suspended`/`cancelled`.
- `401` — unauthenticated.

**Related calls:**
- **List candidates:** `getBillingInvoices`.
- **Detail first:** `getBillingInvoice`.
- **For active services:** `VPSCancel`, `CancelDomain`, `mailCancel`, `webhostingCancel`, `licensesCancel`, `sslCancel`, `cancelScrubIp`, `floating_ipsCancel`, `cancelBackup`, `quickserversCancel`, `serversCancel` — these use `Billing\\CancelService::go()`.
- **For prepay invoices:** `deleteBillingPrepay` (delegated automatically)."
  [id int?]
  (let [res (:data (delete-billing-invoice-with-http-info id))]
    (if (:decode-models *api-context*)
       (st/decode success-text-response-spec res st/string-transformer)
       res)))


(defn-spec delete-billing-prepay-with-http-info any?
  "Delete an unfunded prepay or strip its unpaid funding invoices
  Removes a prepay from the account, with one safety rule: a prepay that still has usable credit (`prepay_remaining > $0.01`) cannot be deleted *unless* it also has unpaid funding invoices we can clean up — in which case those unpaid `invoices` rows are deleted and the prepay row stays. Use to back out a never-funded prepay, or to surface stuck unpaid funding invoices. **Irreversible** — funded credit is unrecoverable through this endpoint. Sibling ops: `getBillingPrePays`, `addBillingPrepay`, `deleteBillingInvoice`.

**Path param:**
- `id` (integer, required) — prepay id from `getBillingPrePays.prepay_id`.

**Body:** None.

**Returns:**
- When unpaid funding invoices were stripped but prepay still has funds: `\"PrePay {id} Unpaid Invoices Deleted\"`.
- When the prepay row was deleted: `\"PrePay {id} deleted.\"`.

**Side effects:**
- Deletes any unpaid `invoices` rows matching `invoices_description = \"Prepay ID {id} Invoice\"` and `invoices_paid=0`.
- Deletes the `prepays` row when remaining balance ≤ $0.01.

**Auth:** Session/API key.

**Errors:**
- `Invalid Prepay` — `id` not found.
- `That prepay still hands funds available on it` — funds remain AND no unpaid invoices to clean up.
- `There was an error deleting the prepay, please contact support` — delete affected 0 rows.
- `401` — unauthenticated.

**Related calls:**
- **List first:** `getBillingPrePays`.
- **Re-add later:** `addBillingPrepay`.
- **Cancel a specific funding invoice:** `deleteBillingInvoice` (routes prepay invoices here automatically)."
  [id int?]
  (check-required-params id)
  (call-api "/billing/prepays/{id}" :delete
            {:path-params   {"id" id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["sessionIdCookieAuth" "apiKeyAuth" "sessionIdHeaderAuth"]}))

(defn-spec delete-billing-prepay success-text-response-spec
  "Delete an unfunded prepay or strip its unpaid funding invoices
  Removes a prepay from the account, with one safety rule: a prepay that still has usable credit (`prepay_remaining > $0.01`) cannot be deleted *unless* it also has unpaid funding invoices we can clean up — in which case those unpaid `invoices` rows are deleted and the prepay row stays. Use to back out a never-funded prepay, or to surface stuck unpaid funding invoices. **Irreversible** — funded credit is unrecoverable through this endpoint. Sibling ops: `getBillingPrePays`, `addBillingPrepay`, `deleteBillingInvoice`.

**Path param:**
- `id` (integer, required) — prepay id from `getBillingPrePays.prepay_id`.

**Body:** None.

**Returns:**
- When unpaid funding invoices were stripped but prepay still has funds: `\"PrePay {id} Unpaid Invoices Deleted\"`.
- When the prepay row was deleted: `\"PrePay {id} deleted.\"`.

**Side effects:**
- Deletes any unpaid `invoices` rows matching `invoices_description = \"Prepay ID {id} Invoice\"` and `invoices_paid=0`.
- Deletes the `prepays` row when remaining balance ≤ $0.01.

**Auth:** Session/API key.

**Errors:**
- `Invalid Prepay` — `id` not found.
- `That prepay still hands funds available on it` — funds remain AND no unpaid invoices to clean up.
- `There was an error deleting the prepay, please contact support` — delete affected 0 rows.
- `401` — unauthenticated.

**Related calls:**
- **List first:** `getBillingPrePays`.
- **Re-add later:** `addBillingPrepay`.
- **Cancel a specific funding invoice:** `deleteBillingInvoice` (routes prepay invoices here automatically)."
  [id int?]
  (let [res (:data (delete-billing-prepay-with-http-info id))]
    (if (:decode-models *api-context*)
       (st/decode success-text-response-spec res st/string-transformer)
       res)))


(defn-spec get-affiliate-banners-with-http-info any?
  "List affiliate banner image assets with filename and dimensions
  Returns the catalog of pre-built banner images affiliates can embed on partner sites — same catalog for every account (not per-affiliate). Use to render a creative-asset picker in the affiliate dashboard. Each row carries the image filename and dimensions so the client can build correctly-sized `<img>` tags. Read-only. Sibling ops: `getAffiliateRichReport`, `getAffiliateSalesGraph`, `getAffiliateTrafficGraph`, `getAffiliateWebTraffic`, `getAffiliateSignups`, `updateAffiliateDockSetup`.

**Path/Query/Body:** None.

**Returns:** Array of `AffiliateBannerRow`:
- `image` (string) — filename (e.g. `12946798.gif`); served from the affiliate asset bucket.
- `width` (string) — pixels.
- `height` (string) — pixels.

**Auth:** Session/API key.

**Errors:**
- `401` — unauthenticated."
  []
  (call-api "/affiliate/banners" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["sessionIdCookieAuth" "apiKeyAuth" "sessionIdHeaderAuth"]}))

(defn-spec get-affiliate-banners (s/coll-of affiliate-banner-row-spec)
  "List affiliate banner image assets with filename and dimensions
  Returns the catalog of pre-built banner images affiliates can embed on partner sites — same catalog for every account (not per-affiliate). Use to render a creative-asset picker in the affiliate dashboard. Each row carries the image filename and dimensions so the client can build correctly-sized `<img>` tags. Read-only. Sibling ops: `getAffiliateRichReport`, `getAffiliateSalesGraph`, `getAffiliateTrafficGraph`, `getAffiliateWebTraffic`, `getAffiliateSignups`, `updateAffiliateDockSetup`.

**Path/Query/Body:** None.

**Returns:** Array of `AffiliateBannerRow`:
- `image` (string) — filename (e.g. `12946798.gif`); served from the affiliate asset bucket.
- `width` (string) — pixels.
- `height` (string) — pixels.

**Auth:** Session/API key.

**Errors:**
- `401` — unauthenticated."
  []
  (let [res (:data (get-affiliate-banners-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of affiliate-banner-row-spec) res st/string-transformer)
       res)))


(defn-spec get-affiliate-download-with-http-info any?
  "Export the affiliate signup report as CSV, XLS, XLSX, or PDF file download
  Exports the affiliate signup report as a downloadable file in the requested format. Use for accounting, tax filings, or sharing reports outside the dashboard. **Response is a binary stream, not JSON** — the handler emits the file body with matching `Content-Type` + `Content-Disposition: attachment` headers and `exit()`s the request immediately. Consumers must read the raw response body. Sibling ops: `getAffiliateRichReport`, `getAffiliateSignups`, `getAffiliateSalesGraph`.

**Query params:**
- `ex` (string, optional, enum `csv`/`xls`/`xlsx`/`pdf`, default `csv`) — export format.
- `st` (string, optional, default `default`) — status filter (same as `getAffiliateSignups`).
- `year` (integer, optional, default current year) — report scope.

**Returns:** File download with format-appropriate Content-Type:
- `csv` → `text/csv`, filename `Interserver_Affiliates.csv`.
- `xls` / `xlsx` → `application/vnd.openxmlformats-officedocument.spreadsheetml.sheet`, filename `Interserver_Affiliates.<ext>`.
- `pdf` → `application/pdf`, filename `Interserver_Affiliates.pdf`.

**Auth:** Session/API key.

**Errors:**
- `401` — unauthenticated."
  ([] (get-affiliate-download-with-http-info nil))
  ([{:keys [st ex year]} (s/map-of keyword? any?)]
   (call-api "/affiliate/download" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"st" st "ex" ex "year" year }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    ["sessionIdCookieAuth" "apiKeyAuth" "sessionIdHeaderAuth"]})))

(defn-spec get-affiliate-download any?
  "Export the affiliate signup report as CSV, XLS, XLSX, or PDF file download
  Exports the affiliate signup report as a downloadable file in the requested format. Use for accounting, tax filings, or sharing reports outside the dashboard. **Response is a binary stream, not JSON** — the handler emits the file body with matching `Content-Type` + `Content-Disposition: attachment` headers and `exit()`s the request immediately. Consumers must read the raw response body. Sibling ops: `getAffiliateRichReport`, `getAffiliateSignups`, `getAffiliateSalesGraph`.

**Query params:**
- `ex` (string, optional, enum `csv`/`xls`/`xlsx`/`pdf`, default `csv`) — export format.
- `st` (string, optional, default `default`) — status filter (same as `getAffiliateSignups`).
- `year` (integer, optional, default current year) — report scope.

**Returns:** File download with format-appropriate Content-Type:
- `csv` → `text/csv`, filename `Interserver_Affiliates.csv`.
- `xls` / `xlsx` → `application/vnd.openxmlformats-officedocument.spreadsheetml.sheet`, filename `Interserver_Affiliates.<ext>`.
- `pdf` → `application/pdf`, filename `Interserver_Affiliates.pdf`.

**Auth:** Session/API key.

**Errors:**
- `401` — unauthenticated."
  ([] (get-affiliate-download nil))
  ([optional-params any?]
   (let [res (:data (get-affiliate-download-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec get-affiliate-rich-report-with-http-info any?
  "Read a combined affiliate performance summary (HTML payload)
  Returns a server-rendered HTML/text summary report combining commission totals, conversion rates, and traffic in one round-trip — useful for embedding in a dashboard panel. The payload is **not structured JSON** — for chart-friendly data use `getAffiliateSalesGraph` and `getAffiliateTrafficGraph` instead. Backed by `affiliate_summary_report()`. Sibling ops: `getAffiliateSalesGraph`, `getAffiliateTrafficGraph`, `getAffiliateSignups`, `getAffiliateDownload`, `getAffiliateWebTraffic`.

**Path/Query/Body:** None.

**Returns:** `{text: \"<html-or-plain-text-report>\"}`.

**Auth:** Session/API key.

**Errors:**
- `401` — unauthenticated.

**Related calls:**
- **Structured time series:** `getAffiliateSalesGraph`, `getAffiliateTrafficGraph`.
- **Per-signup detail:** `getAffiliateSignups`.
- **CSV/XLSX export:** `getAffiliateDownload`."
  []
  (call-api "/affiliate/rich_report" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["sessionIdCookieAuth" "apiKeyAuth" "sessionIdHeaderAuth"]}))

(defn-spec get-affiliate-rich-report text-response-spec
  "Read a combined affiliate performance summary (HTML payload)
  Returns a server-rendered HTML/text summary report combining commission totals, conversion rates, and traffic in one round-trip — useful for embedding in a dashboard panel. The payload is **not structured JSON** — for chart-friendly data use `getAffiliateSalesGraph` and `getAffiliateTrafficGraph` instead. Backed by `affiliate_summary_report()`. Sibling ops: `getAffiliateSalesGraph`, `getAffiliateTrafficGraph`, `getAffiliateSignups`, `getAffiliateDownload`, `getAffiliateWebTraffic`.

**Path/Query/Body:** None.

**Returns:** `{text: \"<html-or-plain-text-report>\"}`.

**Auth:** Session/API key.

**Errors:**
- `401` — unauthenticated.

**Related calls:**
- **Structured time series:** `getAffiliateSalesGraph`, `getAffiliateTrafficGraph`.
- **Per-signup detail:** `getAffiliateSignups`.
- **CSV/XLSX export:** `getAffiliateDownload`."
  []
  (let [res (:data (get-affiliate-rich-report-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode text-response-spec res st/string-transformer)
       res)))


(defn-spec get-affiliate-sales-graph-with-http-info any?
  "Read aggregated affiliate sales time-series (monthly buckets) for chart rendering
  Returns aggregated sales time-series data — monthly buckets with sale counts/totals — for the requested look-back window. Use to render a sales trend chart in the affiliate dashboard. Bucket granularity is fixed at monthly by `sales_graph_lte_data`; increasing `days` extends the window, it does not change bucket size. Sibling ops: `getAffiliateTrafficGraph` (clicks), `getAffiliateRichReport` (combined summary), `getAffiliateSignups`, `getAffiliateDownload`.

**Query params:**
- `days` (integer, optional, default `365`) — look-back window in days.

**Returns:** `StatusMonthlyBreakdown` — buckets keyed by month with aggregated sale counts and amounts.

**Auth:** Session/API key.

**Errors:**
- `401` — unauthenticated."
  ([] (get-affiliate-sales-graph-with-http-info nil))
  ([{:keys [days]} (s/map-of keyword? any?)]
   (call-api "/affiliate/sales_graph" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"days" days }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    ["sessionIdCookieAuth" "apiKeyAuth" "sessionIdHeaderAuth"]})))

(defn-spec get-affiliate-sales-graph status-monthly-breakdown-spec
  "Read aggregated affiliate sales time-series (monthly buckets) for chart rendering
  Returns aggregated sales time-series data — monthly buckets with sale counts/totals — for the requested look-back window. Use to render a sales trend chart in the affiliate dashboard. Bucket granularity is fixed at monthly by `sales_graph_lte_data`; increasing `days` extends the window, it does not change bucket size. Sibling ops: `getAffiliateTrafficGraph` (clicks), `getAffiliateRichReport` (combined summary), `getAffiliateSignups`, `getAffiliateDownload`.

**Query params:**
- `days` (integer, optional, default `365`) — look-back window in days.

**Returns:** `StatusMonthlyBreakdown` — buckets keyed by month with aggregated sale counts and amounts.

**Auth:** Session/API key.

**Errors:**
- `401` — unauthenticated."
  ([] (get-affiliate-sales-graph nil))
  ([optional-params any?]
   (let [res (:data (get-affiliate-sales-graph-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode status-monthly-breakdown-spec res st/string-transformer)
        res))))


(defn-spec get-affiliate-signups-with-http-info any?
  "Read affiliate signup stats and per-customer conversion data
  Returns referred-customer signup statistics with optional status filtering — counts, conversion data, and per-customer detail produced by `affiliates_clientside()`. The inner `data` shape varies by status filter; pass `default` for the full dataset. Sibling ops: `getAffiliateRichReport`, `getAffiliateSalesGraph`, `getAffiliateTrafficGraph`, `getAffiliateDownload`.

**Query params:**
- `st` (string, optional, default `default`) — status filter. `default` returns all; other values narrow the results to that status.

**Returns:** `{data: <object>}` — signup counts, conversions, per-customer detail (shape depends on `st`).

**Auth:** Session/API key.

**Errors:**
- `401` — unauthenticated."
  ([] (get-affiliate-signups-with-http-info nil))
  ([{:keys [st]} (s/map-of keyword? any?)]
   (call-api "/affiliate/signups" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"st" st }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    ["sessionIdCookieAuth" "apiKeyAuth" "sessionIdHeaderAuth"]})))

(defn-spec get-affiliate-signups get-affiliate-signups-200-response-spec
  "Read affiliate signup stats and per-customer conversion data
  Returns referred-customer signup statistics with optional status filtering — counts, conversion data, and per-customer detail produced by `affiliates_clientside()`. The inner `data` shape varies by status filter; pass `default` for the full dataset. Sibling ops: `getAffiliateRichReport`, `getAffiliateSalesGraph`, `getAffiliateTrafficGraph`, `getAffiliateDownload`.

**Query params:**
- `st` (string, optional, default `default`) — status filter. `default` returns all; other values narrow the results to that status.

**Returns:** `{data: <object>}` — signup counts, conversions, per-customer detail (shape depends on `st`).

**Auth:** Session/API key.

**Errors:**
- `401` — unauthenticated."
  ([] (get-affiliate-signups nil))
  ([optional-params any?]
   (let [res (:data (get-affiliate-signups-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode get-affiliate-signups-200-response-spec res st/string-transformer)
        res))))


(defn-spec get-affiliate-traffic-graph-with-http-info any?
  "Read aggregated affiliate referral click/visit time-series for chart rendering
  Returns aggregated click/visit time-series data from the `affiliate_traffic` table — monthly buckets with visit counts — for the requested look-back window. Pair with `getAffiliateSalesGraph` to compute click-to-sale conversion ratios client-side. Sibling ops: `getAffiliateSalesGraph` (sales), `getAffiliateWebTraffic` (raw per-visit log entries), `getAffiliateRichReport`.

**Query params:**
- `days` (integer, optional, default `180`) — look-back window in days.

**Returns:** `MonthlyCounts` — buckets keyed by month with aggregated visit counts.

**Auth:** Session/API key.

**Errors:**
- `401` — unauthenticated."
  ([] (get-affiliate-traffic-graph-with-http-info nil))
  ([{:keys [days]} (s/map-of keyword? any?)]
   (call-api "/affiliate/traffic_graph" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"days" days }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    ["sessionIdCookieAuth" "apiKeyAuth" "sessionIdHeaderAuth"]})))

(defn-spec get-affiliate-traffic-graph monthly-counts-spec
  "Read aggregated affiliate referral click/visit time-series for chart rendering
  Returns aggregated click/visit time-series data from the `affiliate_traffic` table — monthly buckets with visit counts — for the requested look-back window. Pair with `getAffiliateSalesGraph` to compute click-to-sale conversion ratios client-side. Sibling ops: `getAffiliateSalesGraph` (sales), `getAffiliateWebTraffic` (raw per-visit log entries), `getAffiliateRichReport`.

**Query params:**
- `days` (integer, optional, default `180`) — look-back window in days.

**Returns:** `MonthlyCounts` — buckets keyed by month with aggregated visit counts.

**Auth:** Session/API key.

**Errors:**
- `401` — unauthenticated."
  ([] (get-affiliate-traffic-graph nil))
  ([optional-params any?]
   (let [res (:data (get-affiliate-traffic-graph-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode monthly-counts-spec res st/string-transformer)
        res))))


(defn-spec get-affiliate-web-traffic-with-http-info any?
  "List the 20 most recent affiliate referral visits with IP, referrer, timestamp
  Returns the 20 most recent raw referral visits from the `affiliate_traffic` table — visitor IP, full referral URL, and timestamp per row. Use to audit traffic sources, identify top referrers, or investigate suspicious click patterns. Hard-coded limit 20 (no pagination); for longer-term analysis use `getAffiliateTrafficGraph` or export via `getAffiliateDownload`. Sibling ops: `getAffiliateTrafficGraph`, `getAffiliateSignups`, `getAffiliateRichReport`, `getAffiliateDownload`.

**Path/Query/Body:** None.

**Returns:** Array of `AffiliateTrafficRow`:
- `traffic_id` (string) — row id (most-recent-first).
- `traffic_ip` (string) — visitor IP (IPv4 or IPv6).
- `traffic_url` (string) — referral landing URL.
- `traffic_affiliate` (string) — affiliate (= session `account_id`).
- `traffic_referrer` (string) — HTTP Referer (may be empty).
- `traffic_timestamp` (string) — `YYYY-MM-DD HH:MM:SS` in account timezone.

**Auth:** Session/API key.

**Errors:**
- `401` — unauthenticated."
  []
  (call-api "/affiliate/web_traffic" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["sessionIdCookieAuth" "apiKeyAuth" "sessionIdHeaderAuth"]}))

(defn-spec get-affiliate-web-traffic (s/coll-of affiliate-traffic-row-spec)
  "List the 20 most recent affiliate referral visits with IP, referrer, timestamp
  Returns the 20 most recent raw referral visits from the `affiliate_traffic` table — visitor IP, full referral URL, and timestamp per row. Use to audit traffic sources, identify top referrers, or investigate suspicious click patterns. Hard-coded limit 20 (no pagination); for longer-term analysis use `getAffiliateTrafficGraph` or export via `getAffiliateDownload`. Sibling ops: `getAffiliateTrafficGraph`, `getAffiliateSignups`, `getAffiliateRichReport`, `getAffiliateDownload`.

**Path/Query/Body:** None.

**Returns:** Array of `AffiliateTrafficRow`:
- `traffic_id` (string) — row id (most-recent-first).
- `traffic_ip` (string) — visitor IP (IPv4 or IPv6).
- `traffic_url` (string) — referral landing URL.
- `traffic_affiliate` (string) — affiliate (= session `account_id`).
- `traffic_referrer` (string) — HTTP Referer (may be empty).
- `traffic_timestamp` (string) — `YYYY-MM-DD HH:MM:SS` in account timezone.

**Auth:** Session/API key.

**Errors:**
- `401` — unauthenticated."
  []
  (let [res (:data (get-affiliate-web-traffic-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of affiliate-traffic-row-spec) res st/string-transformer)
       res)))


(defn-spec get-billing-cart-with-http-info any?
  "Read the current shopping cart contents, totals, and available payment methods
  Returns the customer's checkout state — every pending/unpaid invoice on the account aggregated as a cart, plus available payment methods, currency totals, and checkout metadata. Use to render a checkout page or, in agent flows, as a pre-payment confirmation step before calling `initiatePayment`. Backed by the `cart` helper module; `modules_json` and `csrf_token` are stripped from the response. Read-only. Sibling ops: `getBillingInvoices` (raw list), `getBillingInvoice` (one invoice in detail), `initiatePayment` (pay), `getBillingPrePays` (check prepay balance first).

**Path/Query/Body:** None.

**Returns:** A cart object with:
- Line items aggregated from unpaid `invoices` rows for the session account.
- Currency-normalized subtotal / total.
- Available payment methods (filtered by feature flags, account country, and which gateways are enabled): `cc`, `paypal`, `btcpay`, `coinbase`, `payu`, `ccavenue`, `cashfree`, `payssion`, `prepay`.
- Per-invoice description, module, service-id, amount.

**Auth:** Session/API key.

**Errors:**
- `401` — unauthenticated.

**Related calls:**
- **List unpaid invoices directly:** `getBillingInvoices`.
- **Drill into one invoice:** `getBillingInvoice`.
- **Pay:** `initiatePayment` (use the cart's invoice ids or the `SERVICEvpsN` / `INVvpsN` tag forms).
- **Top up prepay first:** `getBillingPrePays`, `addBillingPrepay`."
  []
  (call-api "/billing/cart" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["sessionIdCookieAuth" "apiKeyAuth" "sessionIdHeaderAuth"]}))

(defn-spec get-billing-cart any?
  "Read the current shopping cart contents, totals, and available payment methods
  Returns the customer's checkout state — every pending/unpaid invoice on the account aggregated as a cart, plus available payment methods, currency totals, and checkout metadata. Use to render a checkout page or, in agent flows, as a pre-payment confirmation step before calling `initiatePayment`. Backed by the `cart` helper module; `modules_json` and `csrf_token` are stripped from the response. Read-only. Sibling ops: `getBillingInvoices` (raw list), `getBillingInvoice` (one invoice in detail), `initiatePayment` (pay), `getBillingPrePays` (check prepay balance first).

**Path/Query/Body:** None.

**Returns:** A cart object with:
- Line items aggregated from unpaid `invoices` rows for the session account.
- Currency-normalized subtotal / total.
- Available payment methods (filtered by feature flags, account country, and which gateways are enabled): `cc`, `paypal`, `btcpay`, `coinbase`, `payu`, `ccavenue`, `cashfree`, `payssion`, `prepay`.
- Per-invoice description, module, service-id, amount.

**Auth:** Session/API key.

**Errors:**
- `401` — unauthenticated.

**Related calls:**
- **List unpaid invoices directly:** `getBillingInvoices`.
- **Drill into one invoice:** `getBillingInvoice`.
- **Pay:** `initiatePayment` (use the cart's invoice ids or the `SERVICEvpsN` / `INVvpsN` tag forms).
- **Top up prepay first:** `getBillingPrePays`, `addBillingPrepay`."
  []
  (let [res (:data (get-billing-cart-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode any? res st/string-transformer)
       res)))


(defn-spec get-billing-credit-card-verify-with-http-info any?
  "Probe whether a stored card still needs micro-charge verification
  Status probe for the credit-card verification flow. Read-only — current implementation returns a placeholder string indicating verification is pending; the actual two-step verification happens via `patchBillingCreditCardVerify` (initiate dual micro-charge with CVV) followed by `postBillingCreditCardVerify` (submit the charged amounts). Use to drive the UI's \"verify card\" form rendering. Sibling ops: `patchBillingCreditCardVerify`, `postBillingCreditCardVerify`, `addBillingCreditCard`, `updateBillingPaymentMethod`.

**Path param:**
- `id` (integer, required) — credit card index from `parse_ccs`.

**Body:** None.

**Returns:** `Verification requirements` (placeholder text — reserved for future structured response with `requires_cvv` / `requires_amounts` flags).

**Auth:** Session/API key.

**Errors:**
- `401` — unauthenticated.

**Related calls:**
- **Step 1 of verify flow:** `patchBillingCreditCardVerify`.
- **Step 2 of verify flow:** `postBillingCreditCardVerify`.
- **Add a new card:** `addBillingCreditCard`."
  [id int?]
  (check-required-params id)
  (call-api "/billing/creditcards/{id}/verify" :get
            {:path-params   {"id" id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["sessionIdCookieAuth" "apiKeyAuth" "sessionIdHeaderAuth"]}))

(defn-spec get-billing-credit-card-verify success-text-response-spec
  "Probe whether a stored card still needs micro-charge verification
  Status probe for the credit-card verification flow. Read-only — current implementation returns a placeholder string indicating verification is pending; the actual two-step verification happens via `patchBillingCreditCardVerify` (initiate dual micro-charge with CVV) followed by `postBillingCreditCardVerify` (submit the charged amounts). Use to drive the UI's \"verify card\" form rendering. Sibling ops: `patchBillingCreditCardVerify`, `postBillingCreditCardVerify`, `addBillingCreditCard`, `updateBillingPaymentMethod`.

**Path param:**
- `id` (integer, required) — credit card index from `parse_ccs`.

**Body:** None.

**Returns:** `Verification requirements` (placeholder text — reserved for future structured response with `requires_cvv` / `requires_amounts` flags).

**Auth:** Session/API key.

**Errors:**
- `401` — unauthenticated.

**Related calls:**
- **Step 1 of verify flow:** `patchBillingCreditCardVerify`.
- **Step 2 of verify flow:** `postBillingCreditCardVerify`.
- **Add a new card:** `addBillingCreditCard`."
  [id int?]
  (let [res (:data (get-billing-credit-card-verify-with-http-info id))]
    (if (:decode-models *api-context*)
       (st/decode success-text-response-spec res st/string-transformer)
       res)))


(defn-spec get-billing-invoice-with-http-info any?
  "Read full invoice detail — line items, totals, paid status, customer info
  Returns the full rendered invoice payload for a single invoice — backed by `get_invoice_data()`, the same helper that builds the email-style invoice document. Use to confirm the exact balance due and the invoice description before calling `initiatePayment`, or to render an invoice viewer page. Read-only. The response is an email-style/HTML payload (not a structured line-item array) — for a structured cart-style summary use `getBillingCart`. The response includes a Link to `deleteBillingInvoice` for unpaid pending-service invoices. Sibling ops: `getBillingInvoices`, `deleteBillingInvoice`, `initiatePayment`, `getBillingCart`, per-service `getVpsInvoices` / `getMailInvoices` / etc.

**Path param:**
- `id` (integer, required) — invoice id from `getBillingInvoices.rows[].id`, from an order endpoint's response (e.g. `addVps.iid`), or from a per-service invoice list.

**Body:** None.

**Returns:** `BillingInvoiceDetail` — full rendered invoice payload (email body) with line items, totals, customer/billing info, and paid status. The exact shape mirrors what gets sent to the customer.

**Auth:** Session/API key. Ownership enforced through the invoice's `invoices_custid`.

**Errors:**
- `Invalid Invoice` — `id` not found or owned by another account.
- `401` — unauthenticated.

**Related calls:**
- **Pay it:** `initiatePayment` (`/billing/pay/{method}/{id}`).
- **Delete if pending/unpaid:** `deleteBillingInvoice`.
- **List all:** `getBillingInvoices`.
- **Cart-style summary across all unpaid:** `getBillingCart`."
  [id int?]
  (check-required-params id)
  (call-api "/billing/invoices/{id}" :get
            {:path-params   {"id" id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["sessionIdCookieAuth" "apiKeyAuth" "sessionIdHeaderAuth"]}))

(defn-spec get-billing-invoice billing-invoice-detail-spec
  "Read full invoice detail — line items, totals, paid status, customer info
  Returns the full rendered invoice payload for a single invoice — backed by `get_invoice_data()`, the same helper that builds the email-style invoice document. Use to confirm the exact balance due and the invoice description before calling `initiatePayment`, or to render an invoice viewer page. Read-only. The response is an email-style/HTML payload (not a structured line-item array) — for a structured cart-style summary use `getBillingCart`. The response includes a Link to `deleteBillingInvoice` for unpaid pending-service invoices. Sibling ops: `getBillingInvoices`, `deleteBillingInvoice`, `initiatePayment`, `getBillingCart`, per-service `getVpsInvoices` / `getMailInvoices` / etc.

**Path param:**
- `id` (integer, required) — invoice id from `getBillingInvoices.rows[].id`, from an order endpoint's response (e.g. `addVps.iid`), or from a per-service invoice list.

**Body:** None.

**Returns:** `BillingInvoiceDetail` — full rendered invoice payload (email body) with line items, totals, customer/billing info, and paid status. The exact shape mirrors what gets sent to the customer.

**Auth:** Session/API key. Ownership enforced through the invoice's `invoices_custid`.

**Errors:**
- `Invalid Invoice` — `id` not found or owned by another account.
- `401` — unauthenticated.

**Related calls:**
- **Pay it:** `initiatePayment` (`/billing/pay/{method}/{id}`).
- **Delete if pending/unpaid:** `deleteBillingInvoice`.
- **List all:** `getBillingInvoices`.
- **Cart-style summary across all unpaid:** `getBillingCart`."
  [id int?]
  (let [res (:data (get-billing-invoice-with-http-info id))]
    (if (:decode-models *api-context*)
       (st/decode billing-invoice-detail-spec res st/string-transformer)
       res)))


(defn-spec get-billing-invoices-with-http-info any?
  "List every invoice on the account with summary totals and paid/unpaid status
  Returns the customer's complete invoice ledger — every charge, paid or unpaid, across every service module. Use to render a billing-history page, find an unpaid invoice id to pass to `initiatePayment`, or audit recent activity. Server-side strips the first synthetic header row from `get_view_invoices()` and reindexes the array. Read-only. The response includes a Link to `getBillingInvoice` for drilling into any row. Sibling ops: `getBillingInvoice`, `deleteBillingInvoice`, `initiatePayment`, `getBillingCart`, `getBillingPrePays`.

**Path/Query/Body:** None.

**Returns:** `BillingInvoiceList` — object containing:
- `rows` (array) — per-invoice summaries: `id`, `amount`, `paid`, `description`, `date`, `due_date`, `module`, `service` (service-id within the module), `currency`.
- Aggregate totals across the array (totals object: `total`, `paid_total`, `unpaid_total`).

**Auth:** Session/API key.

**Errors:**
- `401` — unauthenticated.

**Related calls:**
- **Drill into one invoice:** `getBillingInvoice`.
- **Pay an unpaid invoice:** `initiatePayment`.
- **Cancel an unpaid pending-service invoice:** `deleteBillingInvoice` (only works on pending services / unpaid prepays).
- **Per-service invoices instead:** `getVpsInvoices`, `getDomainInvoices`, `getMailInvoices`, `getBackupInvoices`, etc."
  []
  (call-api "/billing/invoices" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["sessionIdCookieAuth" "apiKeyAuth" "sessionIdHeaderAuth"]}))

(defn-spec get-billing-invoices billing-invoice-list-spec
  "List every invoice on the account with summary totals and paid/unpaid status
  Returns the customer's complete invoice ledger — every charge, paid or unpaid, across every service module. Use to render a billing-history page, find an unpaid invoice id to pass to `initiatePayment`, or audit recent activity. Server-side strips the first synthetic header row from `get_view_invoices()` and reindexes the array. Read-only. The response includes a Link to `getBillingInvoice` for drilling into any row. Sibling ops: `getBillingInvoice`, `deleteBillingInvoice`, `initiatePayment`, `getBillingCart`, `getBillingPrePays`.

**Path/Query/Body:** None.

**Returns:** `BillingInvoiceList` — object containing:
- `rows` (array) — per-invoice summaries: `id`, `amount`, `paid`, `description`, `date`, `due_date`, `module`, `service` (service-id within the module), `currency`.
- Aggregate totals across the array (totals object: `total`, `paid_total`, `unpaid_total`).

**Auth:** Session/API key.

**Errors:**
- `401` — unauthenticated.

**Related calls:**
- **Drill into one invoice:** `getBillingInvoice`.
- **Pay an unpaid invoice:** `initiatePayment`.
- **Cancel an unpaid pending-service invoice:** `deleteBillingInvoice` (only works on pending services / unpaid prepays).
- **Per-service invoices instead:** `getVpsInvoices`, `getDomainInvoices`, `getMailInvoices`, `getBackupInvoices`, etc."
  []
  (let [res (:data (get-billing-invoices-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode billing-invoice-list-spec res st/string-transformer)
       res)))


(defn-spec get-billing-pre-pays-with-http-info any?
  "List prepay deposits on the account — remaining balance and auto-use flags
  Returns every prepay deposit on the account — funded or pending — with remaining balances, modules they're scoped to, and the `automatic_use` flag controlling whether the balance auto-applies to future invoices. Use to gate `method=prepay` at checkout (a prepay must be funded to count toward payment) or to render a prepays management page. Read-only. `csrf_token` is stripped from the helper output. Sibling ops: `addBillingPrepay` (top up), `deleteBillingPrepay` (remove), `initiatePayment` (`method=prepay`), `getBillingCart`.

**Path/Query/Body:** None.

**Returns:** Object with per-prepay rows:
- `prepay_id` (integer).
- `prepay_module` (string) — service module the prepay is scoped to (or `default` for any).
- `prepay_amount` (decimal) — original deposit amount.
- `prepay_remaining` (decimal) — funds left.
- `prepay_automatic_use` (bool) — auto-apply to invoices.
- `prepay_paid` (bool) — whether the funding invoice has been paid (unpaid prepays are listed but unusable).

**Auth:** Session/API key.

**Errors:**
- `401` — unauthenticated.

**Related calls:**
- **Top up:** `addBillingPrepay` (returns an invoice id you then pay via `initiatePayment`).
- **Pay with prepay:** `initiatePayment` with `method=prepay`.
- **Remove an unfunded prepay:** `deleteBillingPrepay`.
- **Cart view:** `getBillingCart` (includes prepay summary)."
  []
  (call-api "/billing/prepays" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["sessionIdCookieAuth" "apiKeyAuth" "sessionIdHeaderAuth"]}))

(defn-spec get-billing-pre-pays any?
  "List prepay deposits on the account — remaining balance and auto-use flags
  Returns every prepay deposit on the account — funded or pending — with remaining balances, modules they're scoped to, and the `automatic_use` flag controlling whether the balance auto-applies to future invoices. Use to gate `method=prepay` at checkout (a prepay must be funded to count toward payment) or to render a prepays management page. Read-only. `csrf_token` is stripped from the helper output. Sibling ops: `addBillingPrepay` (top up), `deleteBillingPrepay` (remove), `initiatePayment` (`method=prepay`), `getBillingCart`.

**Path/Query/Body:** None.

**Returns:** Object with per-prepay rows:
- `prepay_id` (integer).
- `prepay_module` (string) — service module the prepay is scoped to (or `default` for any).
- `prepay_amount` (decimal) — original deposit amount.
- `prepay_remaining` (decimal) — funds left.
- `prepay_automatic_use` (bool) — auto-apply to invoices.
- `prepay_paid` (bool) — whether the funding invoice has been paid (unpaid prepays are listed but unusable).

**Auth:** Session/API key.

**Errors:**
- `401` — unauthenticated.

**Related calls:**
- **Top up:** `addBillingPrepay` (returns an invoice id you then pay via `initiatePayment`).
- **Pay with prepay:** `initiatePayment` with `method=prepay`.
- **Remove an unfunded prepay:** `deleteBillingPrepay`.
- **Cart view:** `getBillingCart` (includes prepay summary)."
  []
  (let [res (:data (get-billing-pre-pays-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode any? res st/string-transformer)
       res)))


(defn-spec initiate-payment-with-http-info any?
  "Pay invoices through the chosen gateway — returns the next-step action
  Universal payment trigger — the final step in every order/checkout flow. Use after any order endpoint (`addVps`, `addQs`, `addBackup`, `addMail`, `addBillingPrepay`) returns an invoice id, or after `getBillingInvoices` surfaces unpaid invoices. Resolves the chosen gateway class under `include/Api/Billing/Pay/`, populates it with the invoices, and returns one of three response shapes the client must act on: `redirect` (send the user to the gateway URL), `submit` (POST a form with the supplied items), or `single` (processed synchronously). Sibling ops: `getBillingCart`, `getBillingInvoices`, `getBillingInvoice`, `addBillingPrepay`, `updateBillingPaymentMethod`, `addBillingCreditCard`.

**Path params:**
- `method` (string enum, required) — one of `cc`, `paypal`, `prepay`, `payssion`, `payu`, `ccavenue`, `cashfree`, `coinbase`, `btcpay`. Rejected with 400 otherwise.
- `invoices` (string, required) — comma-separated identifiers. Each identifier may be:
  - a bare integer invoice id (e.g. `25296600`);
  - `INV<module><iid>` (e.g. `INVvps25296600`) — strict invoice lookup;
  - `SERVICE<module><id>` (e.g. `SERVICEvps12345`) — picks the most recent unpaid invoice for that service;
  - `RINV<module><rid>` (e.g. `RINVvps78901`) — picks the most recent unpaid invoice for that repeat-invoice row;
  - `PREPAYID<pid>INV<iid>` — explicit prepay-funding invoice.

**Query params:**
- `redirectUrl` (string, optional) — override the gateway return-URL. Defaults to `https://my.interserver.net/pay/`.

**Returns** (one of three shapes — branch on `type`):
- **type=`redirect`:** `{type: \"redirect\", redirect: \"<gateway-url>\", text: \"...\"}` — send the user to `redirect`.
- **type=`submit`:** `{type: \"submit\", action: \"<url>\", method: \"POST\", items: {field: value, ...}}` — render a form with those fields, POST to `action`.
- **type=`single`:** `{type: \"single\", text: \"...\"}` — payment already processed; surface `text` to the customer.

**Side effects:**
- Creates a `payment_requests` row tracking the attempt (via `addPaymentRequest`).
- On `single`-mode success (`cc`, `prepay`): marks the underlying `invoices.invoices_paid=1`, triggers `queue_process_payment($iid)` → service activation.
- On `redirect`/`submit`-mode: nothing is paid yet; the gateway IPN/callback handler in `confirm()` (in each `Pay/*.php` subclass) runs `queue_process_payment` after the gateway notifies us of success.

**Auth:** Session/API key. Ownership of every referenced invoice is enforced through the `setInvoices()` lookup (filters by session `account_id`).

**Errors:**
- `400 Invalid payment method` — unrecognized `method`.
- `402` / gateway-specific text — card declined, balance insufficient, etc. Returned as `{error: \"<text>\"}`.
- `422 Invalid Invoice Tag` — identifier format not recognized.
- `401` — unauthenticated.
- Method-specific:
  - `cc`: card not verified (use `addBillingCreditCard` → `patchBillingCreditCardVerify` → `postBillingCreditCardVerify` first; verify via `updateBillingPaymentMethod`).
  - `prepay`: insufficient prepay balance (use `addBillingPrepay` to top up first).

**Related calls:**
- **Get an invoice id to pass:** `addVps` / `addQs` / `addBackup` / `addMail` / `addBillingPrepay` / `getBillingInvoices`.
- **Confirm invoice detail first:** `getBillingInvoice`.
- **Set up payment methods:** `addBillingCreditCard`, `patchBillingCreditCardVerify`, `postBillingCreditCardVerify`, `updateBillingPaymentMethod`.
- **After payment:** poll the originating service endpoint (e.g. `getVpsInfo` for VPS) until status flips to `active`.

**Example happy-path (VPS):**
```text
# 1) Order created — POST /vps/order returned {serviceid: 12345, real_iids: [\"25296600\"]}
# 2) Pay with stored credit card:
GET /apiv2/billing/pay/cc/25296600
# 3) Response:
{\"type\": \"single\", \"text\": \"Payment processed.\"}
# 4) Poll service:
GET /apiv2/vps/12345  -> {\"vps_status\": \"active\", ...}
```
**Example PayPal flow:**
```text
GET /apiv2/billing/pay/paypal/25296600
{\"type\": \"redirect\", \"redirect\": \"https://www.paypal.com/...\", \"text\": \"...\"}
# Client redirects user; PayPal IPN later marks invoice paid and activates service.
```"
  [method string?, invoices string?]
  (check-required-params method invoices)
  (call-api "/billing/pay/{method}/{invoices}" :get
            {:path-params   {"method" method "invoices" invoices }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["sessionIdCookieAuth" "apiKeyAuth" "sessionIdHeaderAuth"]}))

(defn-spec initiate-payment initiate-payment-200-response-spec
  "Pay invoices through the chosen gateway — returns the next-step action
  Universal payment trigger — the final step in every order/checkout flow. Use after any order endpoint (`addVps`, `addQs`, `addBackup`, `addMail`, `addBillingPrepay`) returns an invoice id, or after `getBillingInvoices` surfaces unpaid invoices. Resolves the chosen gateway class under `include/Api/Billing/Pay/`, populates it with the invoices, and returns one of three response shapes the client must act on: `redirect` (send the user to the gateway URL), `submit` (POST a form with the supplied items), or `single` (processed synchronously). Sibling ops: `getBillingCart`, `getBillingInvoices`, `getBillingInvoice`, `addBillingPrepay`, `updateBillingPaymentMethod`, `addBillingCreditCard`.

**Path params:**
- `method` (string enum, required) — one of `cc`, `paypal`, `prepay`, `payssion`, `payu`, `ccavenue`, `cashfree`, `coinbase`, `btcpay`. Rejected with 400 otherwise.
- `invoices` (string, required) — comma-separated identifiers. Each identifier may be:
  - a bare integer invoice id (e.g. `25296600`);
  - `INV<module><iid>` (e.g. `INVvps25296600`) — strict invoice lookup;
  - `SERVICE<module><id>` (e.g. `SERVICEvps12345`) — picks the most recent unpaid invoice for that service;
  - `RINV<module><rid>` (e.g. `RINVvps78901`) — picks the most recent unpaid invoice for that repeat-invoice row;
  - `PREPAYID<pid>INV<iid>` — explicit prepay-funding invoice.

**Query params:**
- `redirectUrl` (string, optional) — override the gateway return-URL. Defaults to `https://my.interserver.net/pay/`.

**Returns** (one of three shapes — branch on `type`):
- **type=`redirect`:** `{type: \"redirect\", redirect: \"<gateway-url>\", text: \"...\"}` — send the user to `redirect`.
- **type=`submit`:** `{type: \"submit\", action: \"<url>\", method: \"POST\", items: {field: value, ...}}` — render a form with those fields, POST to `action`.
- **type=`single`:** `{type: \"single\", text: \"...\"}` — payment already processed; surface `text` to the customer.

**Side effects:**
- Creates a `payment_requests` row tracking the attempt (via `addPaymentRequest`).
- On `single`-mode success (`cc`, `prepay`): marks the underlying `invoices.invoices_paid=1`, triggers `queue_process_payment($iid)` → service activation.
- On `redirect`/`submit`-mode: nothing is paid yet; the gateway IPN/callback handler in `confirm()` (in each `Pay/*.php` subclass) runs `queue_process_payment` after the gateway notifies us of success.

**Auth:** Session/API key. Ownership of every referenced invoice is enforced through the `setInvoices()` lookup (filters by session `account_id`).

**Errors:**
- `400 Invalid payment method` — unrecognized `method`.
- `402` / gateway-specific text — card declined, balance insufficient, etc. Returned as `{error: \"<text>\"}`.
- `422 Invalid Invoice Tag` — identifier format not recognized.
- `401` — unauthenticated.
- Method-specific:
  - `cc`: card not verified (use `addBillingCreditCard` → `patchBillingCreditCardVerify` → `postBillingCreditCardVerify` first; verify via `updateBillingPaymentMethod`).
  - `prepay`: insufficient prepay balance (use `addBillingPrepay` to top up first).

**Related calls:**
- **Get an invoice id to pass:** `addVps` / `addQs` / `addBackup` / `addMail` / `addBillingPrepay` / `getBillingInvoices`.
- **Confirm invoice detail first:** `getBillingInvoice`.
- **Set up payment methods:** `addBillingCreditCard`, `patchBillingCreditCardVerify`, `postBillingCreditCardVerify`, `updateBillingPaymentMethod`.
- **After payment:** poll the originating service endpoint (e.g. `getVpsInfo` for VPS) until status flips to `active`.

**Example happy-path (VPS):**
```text
# 1) Order created — POST /vps/order returned {serviceid: 12345, real_iids: [\"25296600\"]}
# 2) Pay with stored credit card:
GET /apiv2/billing/pay/cc/25296600
# 3) Response:
{\"type\": \"single\", \"text\": \"Payment processed.\"}
# 4) Poll service:
GET /apiv2/vps/12345  -> {\"vps_status\": \"active\", ...}
```
**Example PayPal flow:**
```text
GET /apiv2/billing/pay/paypal/25296600
{\"type\": \"redirect\", \"redirect\": \"https://www.paypal.com/...\", \"text\": \"...\"}
# Client redirects user; PayPal IPN later marks invoice paid and activates service.
```"
  [method string?, invoices string?]
  (let [res (:data (initiate-payment-with-http-info method invoices))]
    (if (:decode-models *api-context*)
       (st/decode initiate-payment-200-response-spec res st/string-transformer)
       res)))


(defn-spec patch-billing-credit-card-verify-with-http-info any?
  "Place two micro-charges on the card to start CVV verification (step 1 of 2)
  Step 1 of the two-step card-verification flow. After `addBillingCreditCard` returns `action='verify'`, call this with the card's CVV to place two small charges (cents-scale) on the card. The customer must then look up the exact amounts in their bank statement and submit them via `postBillingCreditCardVerify` to finalize verification. **After 3 failed CVV attempts** (`cc_fails_<cc>` counter on the account) the card is locked from further verification attempts — contact support. Sibling ops: `getBillingCreditCardVerify`, `postBillingCreditCardVerify`, `addBillingCreditCard`, `updateBillingPaymentMethod`.

**Path param:**
- `id` (integer, required) — credit card index from `parse_ccs`.

**Body fields:**
- `cc_ccv2` (string, required) — the 3- or 4-digit CVV/CVC code from the back (or front, for Amex) of the card.

**Returns:** `Your card is charged. Please enter the amounts charged up!` — surface to the UI to prompt for the two amounts.

**Side effects:**
- Places two test charges via `verify_cc_charge()` (gateway-side).
- On failure: increments `cc_fails_<cc>` on the account.

**Auth:** Session/API key. Card ownership enforced.

**Errors:**
- `Invalid Credit Card Passed` — `id` not in `parse_ccs`.
- `Reached the max number of tries to authenticate this card` — `cc_fails_<cc> > 3`.
- `Missing or blank CVV` — `cc_ccv2` absent or empty.
- Gateway error text — charge attempt failed.
- `401` — unauthenticated.

**Related calls:**
- **Prerequisite:** `addBillingCreditCard` (must have returned `action='verify'`).
- **Next (step 2):** `postBillingCreditCardVerify` (submit `cc_amount1` + `cc_amount2`).
- **After verification:** `updateBillingPaymentMethod` to make it the default."
  [id int?, patch-billing-credit-card-verify-request patch-billing-credit-card-verify-request]
  (check-required-params id patch-billing-credit-card-verify-request)
  (call-api "/billing/creditcards/{id}/verify" :patch
            {:path-params   {"id" id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :body-param    patch-billing-credit-card-verify-request
             :content-types ["application/json" "multipart/form-data"]
             :accepts       ["application/json"]
             :auth-names    ["sessionIdCookieAuth" "apiKeyAuth" "sessionIdHeaderAuth"]}))

(defn-spec patch-billing-credit-card-verify success-text-response-spec
  "Place two micro-charges on the card to start CVV verification (step 1 of 2)
  Step 1 of the two-step card-verification flow. After `addBillingCreditCard` returns `action='verify'`, call this with the card's CVV to place two small charges (cents-scale) on the card. The customer must then look up the exact amounts in their bank statement and submit them via `postBillingCreditCardVerify` to finalize verification. **After 3 failed CVV attempts** (`cc_fails_<cc>` counter on the account) the card is locked from further verification attempts — contact support. Sibling ops: `getBillingCreditCardVerify`, `postBillingCreditCardVerify`, `addBillingCreditCard`, `updateBillingPaymentMethod`.

**Path param:**
- `id` (integer, required) — credit card index from `parse_ccs`.

**Body fields:**
- `cc_ccv2` (string, required) — the 3- or 4-digit CVV/CVC code from the back (or front, for Amex) of the card.

**Returns:** `Your card is charged. Please enter the amounts charged up!` — surface to the UI to prompt for the two amounts.

**Side effects:**
- Places two test charges via `verify_cc_charge()` (gateway-side).
- On failure: increments `cc_fails_<cc>` on the account.

**Auth:** Session/API key. Card ownership enforced.

**Errors:**
- `Invalid Credit Card Passed` — `id` not in `parse_ccs`.
- `Reached the max number of tries to authenticate this card` — `cc_fails_<cc> > 3`.
- `Missing or blank CVV` — `cc_ccv2` absent or empty.
- Gateway error text — charge attempt failed.
- `401` — unauthenticated.

**Related calls:**
- **Prerequisite:** `addBillingCreditCard` (must have returned `action='verify'`).
- **Next (step 2):** `postBillingCreditCardVerify` (submit `cc_amount1` + `cc_amount2`).
- **After verification:** `updateBillingPaymentMethod` to make it the default."
  [id int?, patch-billing-credit-card-verify-request patch-billing-credit-card-verify-request]
  (let [res (:data (patch-billing-credit-card-verify-with-http-info id patch-billing-credit-card-verify-request))]
    (if (:decode-models *api-context*)
       (st/decode success-text-response-spec res st/string-transformer)
       res)))


(defn-spec post-billing-credit-card-verify-with-http-info any?
  "Submit two micro-charge amounts to finalize card verification (step 2 of 2)
  Step 2 of the two-step card-verification flow. Submits the two exact micro-charge amounts the customer saw on their statement (placed by `patchBillingCreditCardVerify`) so the gateway can confirm the customer controls the card. On success, the card is marked verified and can be selected via `updateBillingPaymentMethod` (`payment_method=cc<idx>`) or used directly with `initiatePayment` (`method=cc`). After 3 failed attempts (`cc_fails_<cc> > 3`) the card is locked. Sibling ops: `getBillingCreditCardVerify`, `patchBillingCreditCardVerify`, `addBillingCreditCard`, `updateBillingPaymentMethod`.

**Path param:**
- `id` (integer, required) — credit card index from `parse_ccs`.

**Body fields (schema `BillingVerifyCcRequest`):**
- `cc_amount1` (number, required) — first micro-charge amount (in dollars, decimal).
- `cc_amount2` (number, required) — second micro-charge amount.

**Returns:** Verification success text (gateway-returned).

**Side effects:**
- Marks the card as verified when amounts match.
- On failure: increments `cc_fails_<cc>` on the account.

**Auth:** Session/API key. Card ownership enforced.

**Errors:**
- `Invalid Credit Card Passed` — `id` not in `parse_ccs`.
- `Reached the max number of tries to authenticate this card` — `cc_fails_<cc> > 3`.
- `Missing charge amounts` — `cc_amount1` or `cc_amount2` absent.
- Verification failure text (status `failed` / `error` / `warning`) — amounts don't match.
- `401` — unauthenticated.

**Related calls:**
- **Prerequisite (step 1):** `patchBillingCreditCardVerify`.
- **Next:** `updateBillingPaymentMethod` to make the verified card default, or `initiatePayment` (`method=cc`) to pay immediately."
  [id int?, billing-verify-cc-request billing-verify-cc-request]
  (check-required-params id billing-verify-cc-request)
  (call-api "/billing/creditcards/{id}/verify" :post
            {:path-params   {"id" id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :body-param    billing-verify-cc-request
             :content-types ["application/json" "multipart/form-data"]
             :accepts       ["application/json"]
             :auth-names    ["sessionIdCookieAuth" "apiKeyAuth" "sessionIdHeaderAuth"]}))

(defn-spec post-billing-credit-card-verify success-text-response-spec
  "Submit two micro-charge amounts to finalize card verification (step 2 of 2)
  Step 2 of the two-step card-verification flow. Submits the two exact micro-charge amounts the customer saw on their statement (placed by `patchBillingCreditCardVerify`) so the gateway can confirm the customer controls the card. On success, the card is marked verified and can be selected via `updateBillingPaymentMethod` (`payment_method=cc<idx>`) or used directly with `initiatePayment` (`method=cc`). After 3 failed attempts (`cc_fails_<cc> > 3`) the card is locked. Sibling ops: `getBillingCreditCardVerify`, `patchBillingCreditCardVerify`, `addBillingCreditCard`, `updateBillingPaymentMethod`.

**Path param:**
- `id` (integer, required) — credit card index from `parse_ccs`.

**Body fields (schema `BillingVerifyCcRequest`):**
- `cc_amount1` (number, required) — first micro-charge amount (in dollars, decimal).
- `cc_amount2` (number, required) — second micro-charge amount.

**Returns:** Verification success text (gateway-returned).

**Side effects:**
- Marks the card as verified when amounts match.
- On failure: increments `cc_fails_<cc>` on the account.

**Auth:** Session/API key. Card ownership enforced.

**Errors:**
- `Invalid Credit Card Passed` — `id` not in `parse_ccs`.
- `Reached the max number of tries to authenticate this card` — `cc_fails_<cc> > 3`.
- `Missing charge amounts` — `cc_amount1` or `cc_amount2` absent.
- Verification failure text (status `failed` / `error` / `warning`) — amounts don't match.
- `401` — unauthenticated.

**Related calls:**
- **Prerequisite (step 1):** `patchBillingCreditCardVerify`.
- **Next:** `updateBillingPaymentMethod` to make the verified card default, or `initiatePayment` (`method=cc`) to pay immediately."
  [id int?, billing-verify-cc-request billing-verify-cc-request]
  (let [res (:data (post-billing-credit-card-verify-with-http-info id billing-verify-cc-request))]
    (if (:decode-models *api-context*)
       (st/decode success-text-response-spec res st/string-transformer)
       res)))


(defn-spec update-affiliate-dock-setup-with-http-info any?
  "Configure the affiliate landing dock title, description, and referrer coupon
  Customizes the branded landing-dock page shown to visitors arriving via the affiliate's referral link, and reserves a unique referrer coupon code that's automatically created across all affiliate-eligible modules. Title/description allow a limited HTML allowlist (`<b>`, `<br>`, `<strong>`, `<hr>`); everything else is entity-escaped. Coupon changes propagate to **all** affiliate modules atomically. Sibling ops: `updateAffiliatePaymentSetup`, `getAffiliateSignups`.

**Body fields (multipart or JSON, schema `AffiliateDockSetup`):**
- `affiliate_dock_title` (string, optional) — landing-page title. HTML allowlist: `<b>`, `<br>`, `<strong>`, `<hr>`.
- `affiliate_dock_description` (string, optional) — landing-page body. Same allowlist.
- `referrer_coupon` (string, optional) — coupon code reservation. Requirements:
  - ≥ 6 chars.
  - `^[a-zA-Z0-9]+$` (alphanumeric only).
  - Must NOT contain `facebook`, `test`, or `interserver` (substring check, case-insensitive).
  - Must NOT exactly match a reserved word.
  - Must NOT already exist as a coupon in any affiliate module (`webhosting`, `vps`, `quickservers`, `servers`, `backups`).

**Returns:** `{text: \"<status message>\"}`.

**Side effects:**
- First time setting `referrer_coupon`: inserts a `coupons` row in each affiliate module (`type=3`, `amount=0.01`, `onetime=1`, `customer=-1`, `usable=1`, `applies=-1`).
- Changing `referrer_coupon`: renames the coupon across all affiliate modules in one transaction.
- Updates the account's `affiliate_dock_title`, `affiliate_dock_description`, `referrer_coupon` fields.

**Auth:** Session/API key.

**Errors:**
- `422 The name must be at least 6 characters long`.
- `422 Invalid Characters, use only standard english letters and numbers`.
- `422 That is a reserved word that cannot be used here`.
- `422 <position> is a reserved word that cannot be used here` (substring match against `facebook`/`test`/`interserver`).
- `409 That name is already taken` — coupon exists in another account's module.
- `401` — unauthenticated."
  ([] (update-affiliate-dock-setup-with-http-info nil))
  ([{:keys [affiliate_dock_title affiliate_dock_description referrer_coupon]} (s/map-of keyword? any?)]
   (call-api "/affiliate/dock_setup" :post
             {:path-params   {}
              :header-params {}
              :query-params  {}
              :form-params   {"affiliate_dock_title" affiliate_dock_title "affiliate_dock_description" affiliate_dock_description "referrer_coupon" referrer_coupon }
              :content-types ["multipart/form-data" "application/json"]
              :accepts       ["application/json"]
              :auth-names    ["sessionIdCookieAuth" "apiKeyAuth" "sessionIdHeaderAuth"]})))

(defn-spec update-affiliate-dock-setup text-response-spec
  "Configure the affiliate landing dock title, description, and referrer coupon
  Customizes the branded landing-dock page shown to visitors arriving via the affiliate's referral link, and reserves a unique referrer coupon code that's automatically created across all affiliate-eligible modules. Title/description allow a limited HTML allowlist (`<b>`, `<br>`, `<strong>`, `<hr>`); everything else is entity-escaped. Coupon changes propagate to **all** affiliate modules atomically. Sibling ops: `updateAffiliatePaymentSetup`, `getAffiliateSignups`.

**Body fields (multipart or JSON, schema `AffiliateDockSetup`):**
- `affiliate_dock_title` (string, optional) — landing-page title. HTML allowlist: `<b>`, `<br>`, `<strong>`, `<hr>`.
- `affiliate_dock_description` (string, optional) — landing-page body. Same allowlist.
- `referrer_coupon` (string, optional) — coupon code reservation. Requirements:
  - ≥ 6 chars.
  - `^[a-zA-Z0-9]+$` (alphanumeric only).
  - Must NOT contain `facebook`, `test`, or `interserver` (substring check, case-insensitive).
  - Must NOT exactly match a reserved word.
  - Must NOT already exist as a coupon in any affiliate module (`webhosting`, `vps`, `quickservers`, `servers`, `backups`).

**Returns:** `{text: \"<status message>\"}`.

**Side effects:**
- First time setting `referrer_coupon`: inserts a `coupons` row in each affiliate module (`type=3`, `amount=0.01`, `onetime=1`, `customer=-1`, `usable=1`, `applies=-1`).
- Changing `referrer_coupon`: renames the coupon across all affiliate modules in one transaction.
- Updates the account's `affiliate_dock_title`, `affiliate_dock_description`, `referrer_coupon` fields.

**Auth:** Session/API key.

**Errors:**
- `422 The name must be at least 6 characters long`.
- `422 Invalid Characters, use only standard english letters and numbers`.
- `422 That is a reserved word that cannot be used here`.
- `422 <position> is a reserved word that cannot be used here` (substring match against `facebook`/`test`/`interserver`).
- `409 That name is already taken` — coupon exists in another account's module.
- `401` — unauthenticated."
  ([] (update-affiliate-dock-setup nil))
  ([optional-params any?]
   (let [res (:data (update-affiliate-dock-setup-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode text-response-spec res st/string-transformer)
        res))))


(defn-spec update-affiliate-payment-setup-with-http-info any?
  "Configure how affiliate commissions get paid out (PayPal or internal prepay)
  Sets the disbursement preferences for affiliate commission payouts. Choose between PayPal payout (provide an email — validated) or internal prepay credit (auto-applied to future invoices via `method=prepay`). Selecting `not set` suspends payouts. Sibling ops: `updateAffiliateDockSetup`, `getAffiliateRichReport`, `getAffiliateDownload`.

**Body fields (multipart or JSON, schema `AffiliatePaymentSetup`):**
- `affiliate_payment_method` (string, optional) — one of `paypal` / `prepay` / `not set`.
- `affiliate_paypal` (string, optional, required when method=`paypal`) — email validated by `valid_email()`.

**Returns:** `{text: \"Ok\"}`.

**Side effects:**
- Updates the account's `affiliate_payment_method` and/or `affiliate_paypal` fields.

**Auth:** Session/API key.

**Errors:**
- `422 Invalid Email` — `affiliate_paypal` fails `valid_email()`.
- `422 Invalid Payment Method` — value not in `{paypal, prepay, not set}`.
- `401` — unauthenticated.

**Related calls:**
- **Read current commissions:** `getAffiliateRichReport`, `getAffiliateSalesGraph`.
- **Export commission report:** `getAffiliateDownload`."
  ([] (update-affiliate-payment-setup-with-http-info nil))
  ([{:keys [affiliate_paypal affiliate_payment_method]} (s/map-of keyword? any?)]
   (call-api "/affiliate/payment_setup" :post
             {:path-params   {}
              :header-params {}
              :query-params  {}
              :form-params   {"affiliate_paypal" affiliate_paypal "affiliate_payment_method" affiliate_payment_method }
              :content-types ["multipart/form-data" "application/json"]
              :accepts       ["application/json"]
              :auth-names    ["sessionIdCookieAuth" "apiKeyAuth" "sessionIdHeaderAuth"]})))

(defn-spec update-affiliate-payment-setup text-response-spec
  "Configure how affiliate commissions get paid out (PayPal or internal prepay)
  Sets the disbursement preferences for affiliate commission payouts. Choose between PayPal payout (provide an email — validated) or internal prepay credit (auto-applied to future invoices via `method=prepay`). Selecting `not set` suspends payouts. Sibling ops: `updateAffiliateDockSetup`, `getAffiliateRichReport`, `getAffiliateDownload`.

**Body fields (multipart or JSON, schema `AffiliatePaymentSetup`):**
- `affiliate_payment_method` (string, optional) — one of `paypal` / `prepay` / `not set`.
- `affiliate_paypal` (string, optional, required when method=`paypal`) — email validated by `valid_email()`.

**Returns:** `{text: \"Ok\"}`.

**Side effects:**
- Updates the account's `affiliate_payment_method` and/or `affiliate_paypal` fields.

**Auth:** Session/API key.

**Errors:**
- `422 Invalid Email` — `affiliate_paypal` fails `valid_email()`.
- `422 Invalid Payment Method` — value not in `{paypal, prepay, not set}`.
- `401` — unauthenticated.

**Related calls:**
- **Read current commissions:** `getAffiliateRichReport`, `getAffiliateSalesGraph`.
- **Export commission report:** `getAffiliateDownload`."
  ([] (update-affiliate-payment-setup nil))
  ([optional-params any?]
   (let [res (:data (update-affiliate-payment-setup-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode text-response-spec res st/string-transformer)
        res))))


(defn-spec update-billing-credit-card-with-http-info any?
  "Refresh stored card expiration and re-trigger MaxMind fraud scoring
  Updates the expiration date on a stored credit card and re-encrypts the card record. If the updated card matches the account's primary `cc`, the account-level `cc_exp` is also refreshed. If no MaxMind risk score exists yet for the card, `update_maxmind()` is called to compute one. Use to fix an upcoming expiration before recurring charges fail. Sibling ops: `addBillingCreditCard`, `deleteBillingCreditCard`, `getBillingCreditCardVerify`, `postBillingCreditCardVerify`, `updateBillingPaymentMethod`.

**Path param:**
- `id` (integer, required) — credit card index (the key in the account's `ccs` array, returned by `parse_ccs` and surfaced as `cc<idx>` in `updateBillingPaymentMethod`).

**Body fields:**
- `cc_exp` (string, required) — new expiration in `MM/YYYY` format.

**Returns:** `Card updated successfully.`.

**Side effects:**
- Updates the `ccs` array (re-serialized via `myadmin_stringify`) on the account.
- When the card == primary `cc`, the account-level `cc_exp` is also written.
- Triggers `update_maxmind($custid, false, $cc_idx)` if no risk score exists.

**Auth:** Session/API key. Card ownership enforced via `parse_ccs`.

**Errors:**
- `Invalid Credit Card Passed` — `id` not in `parse_ccs`.
- `Please enter valid card expiry date` — `cc_exp` body field missing.
- `Invalid expiration date. It must be in the form of MM/YYYY` — wrong format.
- `401` — unauthenticated.

**Related calls:**
- **Verify a freshly added card:** `patchBillingCreditCardVerify` → `postBillingCreditCardVerify`.
- **Remove the card:** `deleteBillingCreditCard`.
- **Make it default:** `updateBillingPaymentMethod` with `payment_method=cc<idx>`."
  [id int?]
  (check-required-params id)
  (call-api "/billing/creditcards/{id}" :post
            {:path-params   {"id" id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["sessionIdCookieAuth" "apiKeyAuth" "sessionIdHeaderAuth"]}))

(defn-spec update-billing-credit-card success-text-response-spec
  "Refresh stored card expiration and re-trigger MaxMind fraud scoring
  Updates the expiration date on a stored credit card and re-encrypts the card record. If the updated card matches the account's primary `cc`, the account-level `cc_exp` is also refreshed. If no MaxMind risk score exists yet for the card, `update_maxmind()` is called to compute one. Use to fix an upcoming expiration before recurring charges fail. Sibling ops: `addBillingCreditCard`, `deleteBillingCreditCard`, `getBillingCreditCardVerify`, `postBillingCreditCardVerify`, `updateBillingPaymentMethod`.

**Path param:**
- `id` (integer, required) — credit card index (the key in the account's `ccs` array, returned by `parse_ccs` and surfaced as `cc<idx>` in `updateBillingPaymentMethod`).

**Body fields:**
- `cc_exp` (string, required) — new expiration in `MM/YYYY` format.

**Returns:** `Card updated successfully.`.

**Side effects:**
- Updates the `ccs` array (re-serialized via `myadmin_stringify`) on the account.
- When the card == primary `cc`, the account-level `cc_exp` is also written.
- Triggers `update_maxmind($custid, false, $cc_idx)` if no risk score exists.

**Auth:** Session/API key. Card ownership enforced via `parse_ccs`.

**Errors:**
- `Invalid Credit Card Passed` — `id` not in `parse_ccs`.
- `Please enter valid card expiry date` — `cc_exp` body field missing.
- `Invalid expiration date. It must be in the form of MM/YYYY` — wrong format.
- `401` — unauthenticated.

**Related calls:**
- **Verify a freshly added card:** `patchBillingCreditCardVerify` → `postBillingCreditCardVerify`.
- **Remove the card:** `deleteBillingCreditCard`.
- **Make it default:** `updateBillingPaymentMethod` with `payment_method=cc<idx>`."
  [id int?]
  (let [res (:data (update-billing-credit-card-with-http-info id))]
    (if (:decode-models *api-context*)
       (st/decode success-text-response-spec res st/string-transformer)
       res)))


(defn-spec update-billing-payment-method-with-http-info any?
  "Set the account's default payment method for recurring/auto charges
  Sets the account's preferred payment method for recurring/automatic charges and (when applicable) promotes a specific stored credit card to be the primary `cc` on the account. Use after `addBillingCreditCard` + verification to select the new card, or when switching between PayPal and credit-card billing. First-time payment-method assignment triggers `update_maxmind()` and `update_fraudrecord()` risk-score generation. Sibling ops: `addBillingCreditCard`, `postBillingCreditCardVerify`, `deleteBillingCreditCard`, `initiatePayment`.

**Body fields (JSON or multipart, schema `BillingPaymentMethodRequest`):**
- `payment_method` (string, required) — one of:
  - `cc` — use the existing primary credit card.
  - `cc<idx>` (e.g. `cc2`) — promote the card at index `idx` (from `parse_ccs`) to primary. Must be verified.
  - `paypal` — switch to PayPal.
- `cc_auto` (string `0`/`1`, optional) — auto-charge flag. Implicitly set to `1` when selecting `cc`/`cc<idx>`, `0` for `paypal`.

**Returns:** `{text: \"Payment Method Updated\"}`.

**Side effects:**
- When `payment_method=cc<idx>`: copies the indexed card's encrypted `cc` and `cc_exp` onto the account's primary fields.
- First time a payment method is set: runs MaxMind risk score, then FraudRecord score.

**Auth:** Session/API key.

**Errors:**
- `Invalid Credit Card Specified` — `cc<idx>` is malformed or `idx` not found in `parse_ccs`.
- `This CC has not been verified.` — the chosen card hasn't completed `postBillingCreditCardVerify`.
- `Invalid Payment Method Specified` — value not in `{cc, paypal, cc<idx>}`.
- `401` — unauthenticated.

**Related calls:**
- **Prerequisite for `cc<idx>`:** `addBillingCreditCard` → `patchBillingCreditCardVerify` → `postBillingCreditCardVerify`.
- **Now pay an invoice:** `initiatePayment` (`method=cc` will use the default; `method=paypal` if you switched).
- **Audit current methods:** `getAccountInfo` (account profile shows cards as masked)."
  [billing-payment-method-request billing-payment-method-request]
  (check-required-params billing-payment-method-request)
  (call-api "/billing/payment_method" :post
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :body-param    billing-payment-method-request
             :content-types ["application/json" "multipart/form-data"]
             :accepts       ["application/json"]
             :auth-names    ["sessionIdCookieAuth" "apiKeyAuth" "sessionIdHeaderAuth"]}))

(defn-spec update-billing-payment-method success-text-response-spec
  "Set the account's default payment method for recurring/auto charges
  Sets the account's preferred payment method for recurring/automatic charges and (when applicable) promotes a specific stored credit card to be the primary `cc` on the account. Use after `addBillingCreditCard` + verification to select the new card, or when switching between PayPal and credit-card billing. First-time payment-method assignment triggers `update_maxmind()` and `update_fraudrecord()` risk-score generation. Sibling ops: `addBillingCreditCard`, `postBillingCreditCardVerify`, `deleteBillingCreditCard`, `initiatePayment`.

**Body fields (JSON or multipart, schema `BillingPaymentMethodRequest`):**
- `payment_method` (string, required) — one of:
  - `cc` — use the existing primary credit card.
  - `cc<idx>` (e.g. `cc2`) — promote the card at index `idx` (from `parse_ccs`) to primary. Must be verified.
  - `paypal` — switch to PayPal.
- `cc_auto` (string `0`/`1`, optional) — auto-charge flag. Implicitly set to `1` when selecting `cc`/`cc<idx>`, `0` for `paypal`.

**Returns:** `{text: \"Payment Method Updated\"}`.

**Side effects:**
- When `payment_method=cc<idx>`: copies the indexed card's encrypted `cc` and `cc_exp` onto the account's primary fields.
- First time a payment method is set: runs MaxMind risk score, then FraudRecord score.

**Auth:** Session/API key.

**Errors:**
- `Invalid Credit Card Specified` — `cc<idx>` is malformed or `idx` not found in `parse_ccs`.
- `This CC has not been verified.` — the chosen card hasn't completed `postBillingCreditCardVerify`.
- `Invalid Payment Method Specified` — value not in `{cc, paypal, cc<idx>}`.
- `401` — unauthenticated.

**Related calls:**
- **Prerequisite for `cc<idx>`:** `addBillingCreditCard` → `patchBillingCreditCardVerify` → `postBillingCreditCardVerify`.
- **Now pay an invoice:** `initiatePayment` (`method=cc` will use the default; `method=paypal` if you switched).
- **Audit current methods:** `getAccountInfo` (account profile shows cards as masked)."
  [billing-payment-method-request billing-payment-method-request]
  (let [res (:data (update-billing-payment-method-with-http-info billing-payment-method-request))]
    (if (:decode-models *api-context*)
       (st/decode success-text-response-spec res st/string-transformer)
       res)))


