(ns inter-server-management-api.api.mail
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


(defn-spec add-mail-with-http-info any?
  "Place a new Mail Baby order, generate invoice, and queue provisioning
  Step 3 of the Mail Baby order flow. Revalidates via `validate_buy_mail()`, then calls `place_buy_mail()` to create a `Repeat_Invoice` recurring billing row, an initial `invoices` row, and a `mail` service record in pending status. SMTP credentials become active once the activation worker runs the welcome email (after the invoice is paid). **Real money** — call `putMail` first. Sibling ops: `getNewMail`, `putMail`, `getMailInfo`, `initiatePayment`.

**Body fields:**
- `serviceType` (integer, required) — plan id from `getNewMail`.
- `coupon` (string, optional).
- `comment` (string, optional) — saved on the order row.

**Returns** (on success): `{continue: true, total_cost, iid, iids, real_iids, serviceId (new mail_id), invoice_description, cj_params}` — pass `real_iids` to `initiatePayment`. On validation failure: `{continue: false, errors: [...]}` with HTTP 200.

**Side effects:**
- Inserts `mail` service row in `pending` status.
- Inserts `repeat_invoices` + `invoices` rows.

**Auth:** Session/API key.

**Errors:**
- `401` — unauthenticated.

**Related calls:**
- **Pay:** `initiatePayment` with `real_iids`.
- **Confirm activation:** `getMailInfo` (poll until `mail_status=='active'`).
- **Resend credentials:** `getMailWelcomeEmail`.

**Full ordering happy path:**
```text
GET /mail/order                                    -> catalog (getNewMail)
PUT /mail/order { serviceType, coupon? }           -> quote (putMail)
POST /mail/order { serviceType, coupon?, comment? } -> { serviceId, real_iids }
GET /billing/pay/cc/{real_iids[0]}                 -> pay (initiatePayment)
GET /mail/{serviceId}                              -> poll until mail_status=='active'
```"
  [mail-order-request mail-order-request]
  (check-required-params mail-order-request)
  (call-api "/mail/order" :post
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :body-param    mail-order-request
             :content-types ["application/json"]
             :accepts       ["application/json"]
             :auth-names    ["sessionIdCookieAuth" "apiKeyAuth" "sessionIdHeaderAuth"]}))

(defn-spec add-mail service-order-post-response-spec
  "Place a new Mail Baby order, generate invoice, and queue provisioning
  Step 3 of the Mail Baby order flow. Revalidates via `validate_buy_mail()`, then calls `place_buy_mail()` to create a `Repeat_Invoice` recurring billing row, an initial `invoices` row, and a `mail` service record in pending status. SMTP credentials become active once the activation worker runs the welcome email (after the invoice is paid). **Real money** — call `putMail` first. Sibling ops: `getNewMail`, `putMail`, `getMailInfo`, `initiatePayment`.

**Body fields:**
- `serviceType` (integer, required) — plan id from `getNewMail`.
- `coupon` (string, optional).
- `comment` (string, optional) — saved on the order row.

**Returns** (on success): `{continue: true, total_cost, iid, iids, real_iids, serviceId (new mail_id), invoice_description, cj_params}` — pass `real_iids` to `initiatePayment`. On validation failure: `{continue: false, errors: [...]}` with HTTP 200.

**Side effects:**
- Inserts `mail` service row in `pending` status.
- Inserts `repeat_invoices` + `invoices` rows.

**Auth:** Session/API key.

**Errors:**
- `401` — unauthenticated.

**Related calls:**
- **Pay:** `initiatePayment` with `real_iids`.
- **Confirm activation:** `getMailInfo` (poll until `mail_status=='active'`).
- **Resend credentials:** `getMailWelcomeEmail`.

**Full ordering happy path:**
```text
GET /mail/order                                    -> catalog (getNewMail)
PUT /mail/order { serviceType, coupon? }           -> quote (putMail)
POST /mail/order { serviceType, coupon?, comment? } -> { serviceId, real_iids }
GET /billing/pay/cc/{real_iids[0]}                 -> pay (initiatePayment)
GET /mail/{serviceId}                              -> poll until mail_status=='active'
```"
  [mail-order-request mail-order-request]
  (let [res (:data (add-mail-with-http-info mail-order-request))]
    (if (:decode-models *api-context*)
       (st/decode service-order-post-response-spec res st/string-transformer)
       res)))


(defn-spec add-rule-with-http-info any?
  "Create a new deny rule to auto-block matching submissions
  Inserts a new `mail_spam` row scoped to this service's `mail_username` so the relay drops matching submissions. Sibling ops: `getRules`, `updateRule`, `deleteRule`.

**Path param:**
- `id` (integer, required) — `mail_id` from `getMailList`.

**Body fields (schema `DenyRuleNew`):**
- `type` (string, required) — `domain` / `email` / `startswith` / `destination`.
- `data` (string, required) — literal value matched; validation: no quotes, valid domain for `type=domain`, valid email for `type=email`, `[A-Z0-9+_.-]+` for `startswith`.

**Returns:** `\"Spam Block Added\"`.

**Auth:** Session/API key. Ownership enforced.

**Errors:** field-level errors on validation failure, `401`, `404`, `409 not active`."
  [id int?, deny-rule-new deny-rule-new]
  (check-required-params id deny-rule-new)
  (call-api "/mail/{id}/rules" :post
            {:path-params   {"id" id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :body-param    deny-rule-new
             :content-types ["application/json" "application/x-www-form-urlencoded"]
             :accepts       ["application/json"]
             :auth-names    ["sessionIdCookieAuth" "apiKeyAuth" "sessionIdHeaderAuth"]}))

(defn-spec add-rule generic-response-spec
  "Create a new deny rule to auto-block matching submissions
  Inserts a new `mail_spam` row scoped to this service's `mail_username` so the relay drops matching submissions. Sibling ops: `getRules`, `updateRule`, `deleteRule`.

**Path param:**
- `id` (integer, required) — `mail_id` from `getMailList`.

**Body fields (schema `DenyRuleNew`):**
- `type` (string, required) — `domain` / `email` / `startswith` / `destination`.
- `data` (string, required) — literal value matched; validation: no quotes, valid domain for `type=domain`, valid email for `type=email`, `[A-Z0-9+_.-]+` for `startswith`.

**Returns:** `\"Spam Block Added\"`.

**Auth:** Session/API key. Ownership enforced.

**Errors:** field-level errors on validation failure, `401`, `404`, `409 not active`."
  [id int?, deny-rule-new deny-rule-new]
  (let [res (:data (add-rule-with-http-info id deny-rule-new))]
    (if (:decode-models *api-context*)
       (st/decode generic-response-spec res st/string-transformer)
       res)))


(defn-spec create-mail-alert-with-http-info any?
  "Create a new Mail Baby alert for delivery, bounce, or quota events
  Inserts a new alert row via the `Alert` ORM. The new `alert_id` is retrievable via `getMailAlerts`. Sibling ops: `getMailAlerts`, `updateMailAlert`, `deleteMailAlert`.

**Path param:**
- `id` (integer, required) — `mail_id` from `getMailList`.

**Body fields (schema `MailAlertRequest`):**
- `type` (string, required).
- `value` (string/numeric, required) — threshold.
- `to` (string, required) — notification email; validated via `FILTER_VALIDATE_EMAIL`.
- `enabled` (bool, optional).

**Returns:** `SuccessTextResponse`.

**Auth:** Session/API key. Ownership enforced.

**Errors:** field-level errors for missing/invalid body, `401`, `404`, `409 not active`."
  [id int?, mail-alert-request mail-alert-request]
  (check-required-params id mail-alert-request)
  (call-api "/mail/{id}/alerts" :post
            {:path-params   {"id" id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :body-param    mail-alert-request
             :content-types ["application/json" "multipart/form-data"]
             :accepts       ["application/json"]
             :auth-names    ["sessionIdCookieAuth" "apiKeyAuth" "sessionIdHeaderAuth"]}))

(defn-spec create-mail-alert success-text-response-spec
  "Create a new Mail Baby alert for delivery, bounce, or quota events
  Inserts a new alert row via the `Alert` ORM. The new `alert_id` is retrievable via `getMailAlerts`. Sibling ops: `getMailAlerts`, `updateMailAlert`, `deleteMailAlert`.

**Path param:**
- `id` (integer, required) — `mail_id` from `getMailList`.

**Body fields (schema `MailAlertRequest`):**
- `type` (string, required).
- `value` (string/numeric, required) — threshold.
- `to` (string, required) — notification email; validated via `FILTER_VALIDATE_EMAIL`.
- `enabled` (bool, optional).

**Returns:** `SuccessTextResponse`.

**Auth:** Session/API key. Ownership enforced.

**Errors:** field-level errors for missing/invalid body, `401`, `404`, `409 not active`."
  [id int?, mail-alert-request mail-alert-request]
  (let [res (:data (create-mail-alert-with-http-info id mail-alert-request))]
    (if (:decode-models *api-context*)
       (st/decode success-text-response-spec res st/string-transformer)
       res)))


(defn-spec delete-mail-alert-with-http-info any?
  "Delete a Mail Baby alert by alert_id (hard delete — no recovery)
  Hard-deletes a single alert row. Handler verifies the alert belongs to this service+module before deleting. **Irreversible** — no history is preserved; recreate via `createMailAlert` if needed. Sibling ops: `getMailAlerts`, `createMailAlert`, `updateMailAlert`.

**Path param:**
- `id` (integer, required) — `mail_id` from `getMailList`.

**Body fields:**
- `alert_id` (integer, required) — from `getMailAlerts`.

**Returns:** `SuccessTextResponse`.

**Auth:** Session/API key. Ownership enforced.

**Errors:** `Invalid alert!` (alert not owned), `401`, `404`, `409 not active`."
  [id int?, delete-mail-alert-request delete-mail-alert-request]
  (check-required-params id delete-mail-alert-request)
  (call-api "/mail/{id}/alerts" :delete
            {:path-params   {"id" id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :body-param    delete-mail-alert-request
             :content-types ["application/json" "multipart/form-data"]
             :accepts       ["application/json"]
             :auth-names    ["sessionIdCookieAuth" "apiKeyAuth" "sessionIdHeaderAuth"]}))

(defn-spec delete-mail-alert success-text-response-spec
  "Delete a Mail Baby alert by alert_id (hard delete — no recovery)
  Hard-deletes a single alert row. Handler verifies the alert belongs to this service+module before deleting. **Irreversible** — no history is preserved; recreate via `createMailAlert` if needed. Sibling ops: `getMailAlerts`, `createMailAlert`, `updateMailAlert`.

**Path param:**
- `id` (integer, required) — `mail_id` from `getMailList`.

**Body fields:**
- `alert_id` (integer, required) — from `getMailAlerts`.

**Returns:** `SuccessTextResponse`.

**Auth:** Session/API key. Ownership enforced.

**Errors:** `Invalid alert!` (alert not owned), `401`, `404`, `409 not active`."
  [id int?, delete-mail-alert-request delete-mail-alert-request]
  (let [res (:data (delete-mail-alert-with-http-info id delete-mail-alert-request))]
    (if (:decode-models *api-context*)
       (st/decode success-text-response-spec res st/string-transformer)
       res)))


(defn-spec delete-rule-with-http-info any?
  "Delete a Mail Baby deny rule by rule ID (hard delete — no recovery)
  Hard-deletes a single `mail_spam` row scoped to this service's `mail_username`. **Irreversible** — no audit copy preserved. Query filter `id={rule} AND user='{mail_username}'` prevents cross-tenant deletes; passing a `rule` belonging to a different mail order is silently a no-op (still returns success). Sibling ops: `getRules`, `addRule`, `updateRule`.

**Path params:**
- `id` (integer, required) — `mail_id` from `getMailList`.
- `rule` (string, required) — rule id from `getRules`.

**Returns:** `\"Block deleted successfully.\"`.

**Auth:** Session/API key. Ownership enforced.

**Errors:** `401`, `404`, `409 not active`."
  [id int?, rule string?]
  (check-required-params id rule)
  (call-api "/mail/{id}/rules/{rule}" :delete
            {:path-params   {"id" id "rule" rule }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["sessionIdCookieAuth" "apiKeyAuth" "sessionIdHeaderAuth"]}))

(defn-spec delete-rule generic-response-spec
  "Delete a Mail Baby deny rule by rule ID (hard delete — no recovery)
  Hard-deletes a single `mail_spam` row scoped to this service's `mail_username`. **Irreversible** — no audit copy preserved. Query filter `id={rule} AND user='{mail_username}'` prevents cross-tenant deletes; passing a `rule` belonging to a different mail order is silently a no-op (still returns success). Sibling ops: `getRules`, `addRule`, `updateRule`.

**Path params:**
- `id` (integer, required) — `mail_id` from `getMailList`.
- `rule` (string, required) — rule id from `getRules`.

**Returns:** `\"Block deleted successfully.\"`.

**Auth:** Session/API key. Ownership enforced.

**Errors:** `401`, `404`, `409 not active`."
  [id int?, rule string?]
  (let [res (:data (delete-rule-with-http-info id rule))]
    (if (:decode-models *api-context*)
       (st/decode generic-response-spec res st/string-transformer)
       res)))


(defn-spec delist-block-with-http-info any?
  "Delist a sender email from rspamd / mailchannels / mailbaby block lists
  Removes block rows for the supplied email across the three reputation stores: `rspamd` (by `fromemail`), `mailchannels` (by `email`), `mailbaby` (by `emailfrom`). Functionally equivalent to `postMailDelist` but uses `email` parameter naming and returns 400 (not error JSON) for an invalid address. Sibling ops: `getMailBlocks`, `getMailDelist`, `postMailDelist`.

**Path param:**
- `id` (integer, required) — `mail_id` from `getMailList`.

**Body fields (schema `EmailAddress`):**
- `email` (string, required) — sender address; validated via `FILTER_VALIDATE_EMAIL`.

**Returns:** `{status: \"ok\", text: \"Email '...' removed from block list\"}`.

**Auth:** Session/API key. Ownership enforced.

**Errors:** `400` invalid email, `401`, `404`, `409 not active`."
  ([id int?, ] (delist-block-with-http-info id nil))
  ([id int?, {:keys [email]} (s/map-of keyword? any?)]
   (check-required-params id)
   (call-api "/mail/{id}/blocks/delete" :post
             {:path-params   {"id" id }
              :header-params {}
              :query-params  {}
              :form-params   {"email" email }
              :content-types ["multipart/form-data" "application/json"]
              :accepts       ["application/json"]
              :auth-names    ["sessionIdCookieAuth" "apiKeyAuth" "sessionIdHeaderAuth"]})))

(defn-spec delist-block generic-response-spec
  "Delist a sender email from rspamd / mailchannels / mailbaby block lists
  Removes block rows for the supplied email across the three reputation stores: `rspamd` (by `fromemail`), `mailchannels` (by `email`), `mailbaby` (by `emailfrom`). Functionally equivalent to `postMailDelist` but uses `email` parameter naming and returns 400 (not error JSON) for an invalid address. Sibling ops: `getMailBlocks`, `getMailDelist`, `postMailDelist`.

**Path param:**
- `id` (integer, required) — `mail_id` from `getMailList`.

**Body fields (schema `EmailAddress`):**
- `email` (string, required) — sender address; validated via `FILTER_VALIDATE_EMAIL`.

**Returns:** `{status: \"ok\", text: \"Email '...' removed from block list\"}`.

**Auth:** Session/API key. Ownership enforced.

**Errors:** `400` invalid email, `401`, `404`, `409 not active`."
  ([id int?, ] (delist-block id nil))
  ([id int?, optional-params any?]
   (let [res (:data (delist-block-with-http-info id optional-params))]
     (if (:decode-models *api-context*)
        (st/decode generic-response-spec res st/string-transformer)
        res))))


(defn-spec get-mail-alerts-with-http-info any?
  "List configured delivery/bounce/quota alerts for one Mail Baby service
  Returns every alert row from `alerts` matching this service. Each row carries `alert_id` (use with PUT/DELETE), `alert_type`, `alert_value` (threshold), `alert_to` (notification email), `alert_enabled`, and timestamps. Sibling ops: `createMailAlert`, `updateMailAlert`, `deleteMailAlert`.

**Path param:**
- `id` (integer, required) — `mail_id` from `getMailList`.

**Returns** (schema `MailAlertsResponse`): array of alert rows.

**Auth:** Session/API key. Ownership enforced.

**Errors:** `401`, `404`, `409 not active`."
  [id int?]
  (check-required-params id)
  (call-api "/mail/{id}/alerts" :get
            {:path-params   {"id" id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["sessionIdCookieAuth" "apiKeyAuth" "sessionIdHeaderAuth"]}))

(defn-spec get-mail-alerts mail-alerts-response-spec
  "List configured delivery/bounce/quota alerts for one Mail Baby service
  Returns every alert row from `alerts` matching this service. Each row carries `alert_id` (use with PUT/DELETE), `alert_type`, `alert_value` (threshold), `alert_to` (notification email), `alert_enabled`, and timestamps. Sibling ops: `createMailAlert`, `updateMailAlert`, `deleteMailAlert`.

**Path param:**
- `id` (integer, required) — `mail_id` from `getMailList`.

**Returns** (schema `MailAlertsResponse`): array of alert rows.

**Auth:** Session/API key. Ownership enforced.

**Errors:** `401`, `404`, `409 not active`."
  [id int?]
  (let [res (:data (get-mail-alerts-with-http-info id))]
    (if (:decode-models *api-context*)
       (st/decode mail-alerts-response-spec res st/string-transformer)
       res)))


(defn-spec get-mail-blocks-with-http-info any?
  "List recent local-blocklist hits and spam-trap captures for the mail user
  Returns relay-side block events for the SMTP user behind `mail_id` — the last 24 hours of `LOCAL_BL_RCPT` and `MBTRAP` rspamd hits, plus a 3-day window of suspicious-subject hits (credential-leak heuristic firing on subjects containing `@` / `smtp` / `socks5` / `socks4` more than 4 times). Use the `from` value with `delistBlock` or `postMailDelist` to clear a block. Sibling ops: `delistBlock`, `getMailDelist`.

**Path param:**
- `id` (integer, required) — `mail_id` from `getMailList`.

**Returns** (schema `MailBlocks`):
- `local` (array) — rspamd `LOCAL_BL_RCPT` hits: `{date, from, messageId, subject, to}`.
- `mbtrap` (array) — spam-trap captures (`MBTRAP` symbol): same shape.
- `subject` (array) — senders flagged by subject-line heuristic: `{from, subject}`.

**Auth:** Session/API key. Ownership enforced.

**Errors:**
- `401` — unauthenticated.
- `404` — `id` not owned by caller.
- `409` — `mail_status != \"active\"`.

**Related calls:**
- **Clear a block:** `delistBlock` (POST `/mail/{id}/blocks/delete`).
- **Broader delist UI:** `getMailDelist`, `postMailDelist`."
  [id int?]
  (check-required-params id)
  (call-api "/mail/{id}/blocks" :get
            {:path-params   {"id" id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["sessionIdCookieAuth" "apiKeyAuth" "sessionIdHeaderAuth"]}))

(defn-spec get-mail-blocks mail-blocks-spec
  "List recent local-blocklist hits and spam-trap captures for the mail user
  Returns relay-side block events for the SMTP user behind `mail_id` — the last 24 hours of `LOCAL_BL_RCPT` and `MBTRAP` rspamd hits, plus a 3-day window of suspicious-subject hits (credential-leak heuristic firing on subjects containing `@` / `smtp` / `socks5` / `socks4` more than 4 times). Use the `from` value with `delistBlock` or `postMailDelist` to clear a block. Sibling ops: `delistBlock`, `getMailDelist`.

**Path param:**
- `id` (integer, required) — `mail_id` from `getMailList`.

**Returns** (schema `MailBlocks`):
- `local` (array) — rspamd `LOCAL_BL_RCPT` hits: `{date, from, messageId, subject, to}`.
- `mbtrap` (array) — spam-trap captures (`MBTRAP` symbol): same shape.
- `subject` (array) — senders flagged by subject-line heuristic: `{from, subject}`.

**Auth:** Session/API key. Ownership enforced.

**Errors:**
- `401` — unauthenticated.
- `404` — `id` not owned by caller.
- `409` — `mail_status != \"active\"`.

**Related calls:**
- **Clear a block:** `delistBlock` (POST `/mail/{id}/blocks/delete`).
- **Broader delist UI:** `getMailDelist`, `postMailDelist`."
  [id int?]
  (let [res (:data (get-mail-blocks-with-http-info id))]
    (if (:decode-models *api-context*)
       (st/decode mail-blocks-spec res st/string-transformer)
       res)))


(defn-spec get-mail-delist-with-http-info any?
  "Read blocklist diagnostics and find senders eligible for delisting
  Returns a richer diagnostic snapshot than `getMailBlocks` — intended for the delist UI. Use any `SMTPFrom`/`from` value as the `unblock` field for `postMailDelist`. Sibling ops: `postMailDelist`, `getMailBlocks`, `delistBlock`.

**Path param:**
- `id` (integer, required) — `mail_id` from `getMailList`.

**Returns** (schema `MailDelistResponse`):
- `id` (integer) — `mail_id` echo.
- `local`, `mbtrap` (array) — last 24h rspamd hits with capitalized keys (`Date`, `SMTPFrom`, `MessageId`, `Subject`, `MimeRecipients`).
- `subject` (array) — credential-leak-heuristic firings (3-day window).
- `manual` (array) — manually added blocks.

**Auth:** Session/API key. Ownership enforced.

**Errors:** `401`, `404`, `409 not active`."
  [id int?]
  (check-required-params id)
  (call-api "/mail/{id}/delist" :get
            {:path-params   {"id" id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["sessionIdCookieAuth" "apiKeyAuth" "sessionIdHeaderAuth"]}))

(defn-spec get-mail-delist mail-delist-response-spec
  "Read blocklist diagnostics and find senders eligible for delisting
  Returns a richer diagnostic snapshot than `getMailBlocks` — intended for the delist UI. Use any `SMTPFrom`/`from` value as the `unblock` field for `postMailDelist`. Sibling ops: `postMailDelist`, `getMailBlocks`, `delistBlock`.

**Path param:**
- `id` (integer, required) — `mail_id` from `getMailList`.

**Returns** (schema `MailDelistResponse`):
- `id` (integer) — `mail_id` echo.
- `local`, `mbtrap` (array) — last 24h rspamd hits with capitalized keys (`Date`, `SMTPFrom`, `MessageId`, `Subject`, `MimeRecipients`).
- `subject` (array) — credential-leak-heuristic firings (3-day window).
- `manual` (array) — manually added blocks.

**Auth:** Session/API key. Ownership enforced.

**Errors:** `401`, `404`, `409 not active`."
  [id int?]
  (let [res (:data (get-mail-delist-with-http-info id))]
    (if (:decode-models *api-context*)
       (st/decode mail-delist-response-spec res st/string-transformer)
       res)))


(defn-spec get-mail-deliverability-with-http-info any?
  "Read delivered vs bounced totals broken down by sender (or by recipient domain)
  Returns deliverability analytics from `MailDeliveryStats` (Dragonfly cache) for the SMTP user behind `mail_id`. Default pivot is by sender; pass `?filter_domain=1` to pivot by recipient domain for the current year instead. Use to drive analytics dashboards. Sibling ops: `getStats`, `viewMailLog`, `getMailBlocks`, `getMailDelist`.

**Path param:**
- `id` (integer, required) — `mail_id` from `getMailList`.

**Query params:**
- `filter_domain` (string `1`, optional) — pivot by recipient domain instead of sender.

**Returns** (schema `MailDeliverabilityResponse`):
- `stat`: `{delivered, bounced, percent}` — totals and bounce ratio.
- `header` (string), `col1` (string) — table headers.
- `table_data` (array) — rows of `[<sender-or-domain>, bounced, delivered, bouncePercent]`.

**Auth:** Session/API key. Ownership enforced.

**Errors:** `401`, `404`, `409 not active`."
  [id int?]
  (check-required-params id)
  (call-api "/mail/{id}/deliverability" :get
            {:path-params   {"id" id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["sessionIdCookieAuth" "apiKeyAuth" "sessionIdHeaderAuth"]}))

(defn-spec get-mail-deliverability mail-deliverability-response-spec
  "Read delivered vs bounced totals broken down by sender (or by recipient domain)
  Returns deliverability analytics from `MailDeliveryStats` (Dragonfly cache) for the SMTP user behind `mail_id`. Default pivot is by sender; pass `?filter_domain=1` to pivot by recipient domain for the current year instead. Use to drive analytics dashboards. Sibling ops: `getStats`, `viewMailLog`, `getMailBlocks`, `getMailDelist`.

**Path param:**
- `id` (integer, required) — `mail_id` from `getMailList`.

**Query params:**
- `filter_domain` (string `1`, optional) — pivot by recipient domain instead of sender.

**Returns** (schema `MailDeliverabilityResponse`):
- `stat`: `{delivered, bounced, percent}` — totals and bounce ratio.
- `header` (string), `col1` (string) — table headers.
- `table_data` (array) — rows of `[<sender-or-domain>, bounced, delivered, bouncePercent]`.

**Auth:** Session/API key. Ownership enforced.

**Errors:** `401`, `404`, `409 not active`."
  [id int?]
  (let [res (:data (get-mail-deliverability-with-http-info id))]
    (if (:decode-models *api-context*)
       (st/decode mail-deliverability-response-spec res st/string-transformer)
       res)))


(defn-spec get-mail-info-with-http-info any?
  "Read full detail for one Mail Baby service including SMTP credentials
  Returns the full `ViewMail` payload for one Mail Baby service — `serviceInfo`, `serviceType`, and `client_links` (URLs rewritten to API paths, e.g. `view_mail_log` → `log`). Admin fields (`admin_links`, `settings`, `csrf`) stripped. Use to render a service dashboard or retrieve SMTP host/username for MTA configuration. Sibling ops: `getMailList`, `updateMailInfo`, `mailCancel`, `resetMailPassword`, `getMailWelcomeEmail`.

**Path param:**
- `id` (integer, required) — `mail_id` from `getMailList`.

**Returns** (schema `MailSchema`):
- `serviceInfo` — `mail_id`, `mail_username` (e.g. `mb1234`), `mail_status`, `mail_invoice`, `mail_custid`, dates, currency.
- `serviceType` — plan row (`services_ourcost` stripped).
- `client_links` (array) — action URLs (log, alerts, blocks, etc.).

**Auth:** Session/API key. Ownership enforced.

**Errors:**
- `401` — unauthenticated.
- `404` — `id` not owned by caller.

**Related calls:**
- **Send:** `sendMail` / `sendAdvMail`.
- **Rotate password:** `resetMailPassword`.
- **Reset credentials:** `getMailWelcomeEmail`.
- **Cancel:** `mailCancel`."
  [id int?]
  (check-required-params id)
  (call-api "/mail/{id}" :get
            {:path-params   {"id" id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["sessionIdCookieAuth" "apiKeyAuth" "sessionIdHeaderAuth"]}))

(defn-spec get-mail-info mail-schema-spec
  "Read full detail for one Mail Baby service including SMTP credentials
  Returns the full `ViewMail` payload for one Mail Baby service — `serviceInfo`, `serviceType`, and `client_links` (URLs rewritten to API paths, e.g. `view_mail_log` → `log`). Admin fields (`admin_links`, `settings`, `csrf`) stripped. Use to render a service dashboard or retrieve SMTP host/username for MTA configuration. Sibling ops: `getMailList`, `updateMailInfo`, `mailCancel`, `resetMailPassword`, `getMailWelcomeEmail`.

**Path param:**
- `id` (integer, required) — `mail_id` from `getMailList`.

**Returns** (schema `MailSchema`):
- `serviceInfo` — `mail_id`, `mail_username` (e.g. `mb1234`), `mail_status`, `mail_invoice`, `mail_custid`, dates, currency.
- `serviceType` — plan row (`services_ourcost` stripped).
- `client_links` (array) — action URLs (log, alerts, blocks, etc.).

**Auth:** Session/API key. Ownership enforced.

**Errors:**
- `401` — unauthenticated.
- `404` — `id` not owned by caller.

**Related calls:**
- **Send:** `sendMail` / `sendAdvMail`.
- **Rotate password:** `resetMailPassword`.
- **Reset credentials:** `getMailWelcomeEmail`.
- **Cancel:** `mailCancel`."
  [id int?]
  (let [res (:data (get-mail-info-with-http-info id))]
    (if (:decode-models *api-context*)
       (st/decode mail-schema-spec res st/string-transformer)
       res)))


(defn-spec get-mail-invoices-with-http-info any?
  "List billing invoices linked to this Mail Baby service
  Returns every invoice associated with this `mail_id` via the shared `InvoicesList` workflow. Use to render per-service billing history or find unpaid invoices to pay via `initiatePayment`. Sibling ops: `getBillingInvoice`, `initiatePayment`, `addMail`, `mailCancel`.

**Path param:**
- `id` (integer, required) — `mail_id` from `getMailList`.

**Returns:** `ChargeInvoiceRows` — array of `{id, amount, currency, paid, date, due_date, description, module: \"mail\", service}`.

**Auth:** Session/API key. Ownership enforced.

**Errors:** `401`, `404 Invalid Service`."
  [id int?]
  (check-required-params id)
  (call-api "/mail/{id}/invoices" :get
            {:path-params   {"id" id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["sessionIdCookieAuth" "apiKeyAuth" "sessionIdHeaderAuth"]}))

(defn-spec get-mail-invoices charge-invoice-rows-spec
  "List billing invoices linked to this Mail Baby service
  Returns every invoice associated with this `mail_id` via the shared `InvoicesList` workflow. Use to render per-service billing history or find unpaid invoices to pay via `initiatePayment`. Sibling ops: `getBillingInvoice`, `initiatePayment`, `addMail`, `mailCancel`.

**Path param:**
- `id` (integer, required) — `mail_id` from `getMailList`.

**Returns:** `ChargeInvoiceRows` — array of `{id, amount, currency, paid, date, due_date, description, module: \"mail\", service}`.

**Auth:** Session/API key. Ownership enforced.

**Errors:** `401`, `404 Invalid Service`."
  [id int?]
  (let [res (:data (get-mail-invoices-with-http-info id))]
    (if (:decode-models *api-context*)
       (st/decode charge-invoice-rows-spec res st/string-transformer)
       res)))


(defn-spec get-mail-list-with-http-info any?
  "List every Mail Baby SMTP relay service on the account
  Enumerates every Mail Baby SMTP relay service owned by the authenticated customer. Canonical entry point for finding a `mail_id` to pass to other Mail endpoints. Filtered server-side by `mail_custid`. Sibling ops: `getMailInfo`, `getStats`, `viewMailLog`, `getMailDeliverability`, `getMailBlocks`, `getMailInvoices`, `addMail`.

**Path/Query/Body:** None.

**Returns:** Array of `MailRow`:
- `mail_id` (integer) — canonical id.
- `mail_username` (string) — SMTP username (e.g. `mb1234`).
- `mail_status` (string enum) — `active` / `pending` / `canceled` / `suspended`.
- `services_name` (string) — plan label.
- `repeat_invoices_cost` (decimal string) — recurring cost.

**Auth:** Session/API key.

**Errors:**
- `401` — unauthenticated.

**Related calls:**
- **Per-service detail:** `getMailInfo`.
- **Send mail:** `sendMail` / `sendAdvMail`.
- **Reputation:** `getMailDeliverability` / `getMailBlocks` / `getMailDelist`.
- **Order a new service:** `getNewMail` → `putMail` → `addMail`."
  []
  (call-api "/mail" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["sessionIdCookieAuth" "apiKeyAuth" "sessionIdHeaderAuth"]}))

(defn-spec get-mail-list (s/coll-of mail-row-spec)
  "List every Mail Baby SMTP relay service on the account
  Enumerates every Mail Baby SMTP relay service owned by the authenticated customer. Canonical entry point for finding a `mail_id` to pass to other Mail endpoints. Filtered server-side by `mail_custid`. Sibling ops: `getMailInfo`, `getStats`, `viewMailLog`, `getMailDeliverability`, `getMailBlocks`, `getMailInvoices`, `addMail`.

**Path/Query/Body:** None.

**Returns:** Array of `MailRow`:
- `mail_id` (integer) — canonical id.
- `mail_username` (string) — SMTP username (e.g. `mb1234`).
- `mail_status` (string enum) — `active` / `pending` / `canceled` / `suspended`.
- `services_name` (string) — plan label.
- `repeat_invoices_cost` (decimal string) — recurring cost.

**Auth:** Session/API key.

**Errors:**
- `401` — unauthenticated.

**Related calls:**
- **Per-service detail:** `getMailInfo`.
- **Send mail:** `sendMail` / `sendAdvMail`.
- **Reputation:** `getMailDeliverability` / `getMailBlocks` / `getMailDelist`.
- **Order a new service:** `getNewMail` → `putMail` → `addMail`."
  []
  (let [res (:data (get-mail-list-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of mail-row-spec) res st/string-transformer)
       res)))


(defn-spec get-mail-welcome-email-with-http-info any?
  "Resend the Mail Baby welcome email with SMTP credentials and setup info
  Re-runs the `mail_welcome_email` plugin function — composes and sends the standard welcome email (SMTP host `relay.mailbaby.net`, port, username `mb{mail_id}`, current password, configuration tips) to the account-on-file. Use after `resetMailPassword` to redeliver the rotated credential, or when a customer reports losing the original setup email. Idempotent. Sibling ops: `resetMailPassword`, `getMailInfo`. Cross-module welcome-email endpoints: `getVpsWelcomeEmail`, `getWebsitesWelcomeEmail`, `getDomainsWelcomeEmail`.

**Path param:**
- `id` (integer, required) — `mail_id` from `getMailList`.

**Returns:** `{text: \"Welcome Email has been resent.\"}`.

**Auth:** Session/API key. Ownership enforced.

**Errors:** `401`, `404`, `409 not active`."
  [id int?]
  (check-required-params id)
  (call-api "/mail/{id}/welcome_email" :get
            {:path-params   {"id" id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["sessionIdCookieAuth" "apiKeyAuth" "sessionIdHeaderAuth"]}))

(defn-spec get-mail-welcome-email success-text-response-spec
  "Resend the Mail Baby welcome email with SMTP credentials and setup info
  Re-runs the `mail_welcome_email` plugin function — composes and sends the standard welcome email (SMTP host `relay.mailbaby.net`, port, username `mb{mail_id}`, current password, configuration tips) to the account-on-file. Use after `resetMailPassword` to redeliver the rotated credential, or when a customer reports losing the original setup email. Idempotent. Sibling ops: `resetMailPassword`, `getMailInfo`. Cross-module welcome-email endpoints: `getVpsWelcomeEmail`, `getWebsitesWelcomeEmail`, `getDomainsWelcomeEmail`.

**Path param:**
- `id` (integer, required) — `mail_id` from `getMailList`.

**Returns:** `{text: \"Welcome Email has been resent.\"}`.

**Auth:** Session/API key. Ownership enforced.

**Errors:** `401`, `404`, `409 not active`."
  [id int?]
  (let [res (:data (get-mail-welcome-email-with-http-info id))]
    (if (:decode-models *api-context*)
       (st/decode success-text-response-spec res st/string-transformer)
       res)))


(defn-spec get-new-mail-with-http-info any?
  "Read the Mail Baby order catalog — plans, package costs, service-type metadata
  Step 1 of the Mail Baby order flow. Returns the catalog used to bootstrap an order form: `packageCosts` keyed by `services_id` (only buyable services where `services_buyable=1`) and the full `serviceTypes` map. Read-only. Pricing is normalized to the customer's currency via `getCurrency()`. Sibling ops: `putMail`, `addMail`, `getMailList`.

**Path/Query/Body:** None.

**Returns** (schema `MailOrder`):
- `packageCosts` (object) — `{<services_id>: <cost>}` per buyable plan.
- `serviceTypes` (object) — full service-types registry (plan metadata).

**Auth:** Session/API key.

**Errors:**
- `401` — unauthenticated.

**Related calls:**
- **Next:** `putMail` (validate + quote — no charge), `addMail` (place order)."
  []
  (call-api "/mail/order" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["sessionIdCookieAuth" "apiKeyAuth" "sessionIdHeaderAuth"]}))

(defn-spec get-new-mail mail-order-spec
  "Read the Mail Baby order catalog — plans, package costs, service-type metadata
  Step 1 of the Mail Baby order flow. Returns the catalog used to bootstrap an order form: `packageCosts` keyed by `services_id` (only buyable services where `services_buyable=1`) and the full `serviceTypes` map. Read-only. Pricing is normalized to the customer's currency via `getCurrency()`. Sibling ops: `putMail`, `addMail`, `getMailList`.

**Path/Query/Body:** None.

**Returns** (schema `MailOrder`):
- `packageCosts` (object) — `{<services_id>: <cost>}` per buyable plan.
- `serviceTypes` (object) — full service-types registry (plan metadata).

**Auth:** Session/API key.

**Errors:**
- `401` — unauthenticated.

**Related calls:**
- **Next:** `putMail` (validate + quote — no charge), `addMail` (place order)."
  []
  (let [res (:data (get-new-mail-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode mail-order-spec res st/string-transformer)
       res)))


(defn-spec get-rules-with-http-info any?
  "List configured deny rules (sender/recipient blocks) for a Mail Baby service
  Returns every `mail_spam` row scoped to this service's `mail_username` — local sender/recipient block rules the customer has configured. Sibling ops: `addRule`, `updateRule`, `deleteRule`.

**Path param:**
- `id` (integer, required) — `mail_id` from `getMailList`.

**Returns:** Array of `DenyRuleRecord` — `{id, user, type, data, created}`. `type` values:
- `domain` — block by sender domain.
- `email` — block by exact sender email.
- `startswith` — block when sender local-part starts with a string.
- `destination` — block by recipient email.

**Auth:** Session/API key. Ownership enforced.

**Errors:** `401`, `404`, `409 not active`."
  [id int?]
  (check-required-params id)
  (call-api "/mail/{id}/rules" :get
            {:path-params   {"id" id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["sessionIdCookieAuth" "apiKeyAuth" "sessionIdHeaderAuth"]}))

(defn-spec get-rules (s/coll-of deny-rule-record-spec)
  "List configured deny rules (sender/recipient blocks) for a Mail Baby service
  Returns every `mail_spam` row scoped to this service's `mail_username` — local sender/recipient block rules the customer has configured. Sibling ops: `addRule`, `updateRule`, `deleteRule`.

**Path param:**
- `id` (integer, required) — `mail_id` from `getMailList`.

**Returns:** Array of `DenyRuleRecord` — `{id, user, type, data, created}`. `type` values:
- `domain` — block by sender domain.
- `email` — block by exact sender email.
- `startswith` — block when sender local-part starts with a string.
- `destination` — block by recipient email.

**Auth:** Session/API key. Ownership enforced.

**Errors:** `401`, `404`, `409 not active`."
  [id int?]
  (let [res (:data (get-rules-with-http-info id))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of deny-rule-record-spec) res st/string-transformer)
       res)))


(defn-spec get-stats-with-http-info any?
  "Read Mail Baby usage counts, send volume totals, top destinations, and projected cost
  Returns aggregate usage and cost metrics for the SMTP user behind `mail_id` from the ZoneMTA `mail_messagestore` / `mail_senderdelivered` tables. Use to drive an analytics dashboard or to project end-of-cycle cost. Sibling ops: `viewMailLog`, `getMailDeliverability`.

**Path param:**
- `id` (integer, required) — `mail_id` from `getMailList`.

**Query params:**
- `time` (string enum, optional, default `1h`) — window: `all` / `billing` (current invoice cycle) / `month` / `7d` / `24h` / `1d` / `1h`.

**Returns** (schema `MailStatsType`):
- `time` (string) — echo of selected window.
- `usage` (integer) — full-billing-cycle send count.
- `currency`, `currencySymbol` (string).
- `cost` (decimal) — projected = base + `$0.20 / 1000 emails`.
- `received`, `sent` (integer).
- `volume.to`, `volume.from`, `volume.ip` (object) — top-500 destinations / senders / origin IPs by count.

**Auth:** Session/API key. Ownership enforced.

**Errors:** `Invalid or missing mail order id`, `401`."
  ([id int?, ] (get-stats-with-http-info id nil))
  ([id int?, {:keys [time]} (s/map-of keyword? any?)]
   (check-required-params id)
   (call-api "/mail/{id}/stats" :get
             {:path-params   {"id" id }
              :header-params {}
              :query-params  {"time" time }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    ["sessionIdCookieAuth" "apiKeyAuth" "sessionIdHeaderAuth"]})))

(defn-spec get-stats mail-stats-type-spec
  "Read Mail Baby usage counts, send volume totals, top destinations, and projected cost
  Returns aggregate usage and cost metrics for the SMTP user behind `mail_id` from the ZoneMTA `mail_messagestore` / `mail_senderdelivered` tables. Use to drive an analytics dashboard or to project end-of-cycle cost. Sibling ops: `viewMailLog`, `getMailDeliverability`.

**Path param:**
- `id` (integer, required) — `mail_id` from `getMailList`.

**Query params:**
- `time` (string enum, optional, default `1h`) — window: `all` / `billing` (current invoice cycle) / `month` / `7d` / `24h` / `1d` / `1h`.

**Returns** (schema `MailStatsType`):
- `time` (string) — echo of selected window.
- `usage` (integer) — full-billing-cycle send count.
- `currency`, `currencySymbol` (string).
- `cost` (decimal) — projected = base + `$0.20 / 1000 emails`.
- `received`, `sent` (integer).
- `volume.to`, `volume.from`, `volume.ip` (object) — top-500 destinations / senders / origin IPs by count.

**Auth:** Session/API key. Ownership enforced.

**Errors:** `Invalid or missing mail order id`, `401`."
  ([id int?, ] (get-stats id nil))
  ([id int?, optional-params any?]
   (let [res (:data (get-stats-with-http-info id optional-params))]
     (if (:decode-models *api-context*)
        (st/decode mail-stats-type-spec res st/string-transformer)
        res))))


(defn-spec mail-cancel-with-http-info any?
  "Cancel a Mail Baby service and stop the recurring invoice
  Cancels the Mail Baby service through the shared `Billing\\CancelService::go($id)` flow with `module='mail'`. SMTP credentials are deactivated, the service transitions to canceled, the `repeat_invoice` is stopped, and queued submissions stop being accepted. **Irreversible via API** — re-activation requires placing a new order via `addMail`. Sibling ops: `getMailInfo`, `getMailInvoices`, `addMail`.

**Path param:**
- `id` (integer, required) — `mail_id` from `getMailList`.

**Returns:** `MailCancelResponse`.

**Side effects:**
- Sets `mail_status='canceled'`.
- Marks `repeat_invoices` non-renewing.
- ZoneMTA-side: stops accepting new submissions for `mb{mail_id}`.

**Auth:** Session/API key. Ownership enforced.

**Errors:**
- `401` — unauthenticated.
- `404` — `id` not owned by caller.

**Related calls:**
- **Sibling cancels:** `VPSCancel`, `CancelDomain`, `webhostingCancel`, etc.
- **Re-provision:** `addMail`."
  [id int?]
  (check-required-params id)
  (call-api "/mail/{id}" :delete
            {:path-params   {"id" id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["sessionIdCookieAuth" "apiKeyAuth" "sessionIdHeaderAuth"]}))

(defn-spec mail-cancel mail-cancel-200-response-spec
  "Cancel a Mail Baby service and stop the recurring invoice
  Cancels the Mail Baby service through the shared `Billing\\CancelService::go($id)` flow with `module='mail'`. SMTP credentials are deactivated, the service transitions to canceled, the `repeat_invoice` is stopped, and queued submissions stop being accepted. **Irreversible via API** — re-activation requires placing a new order via `addMail`. Sibling ops: `getMailInfo`, `getMailInvoices`, `addMail`.

**Path param:**
- `id` (integer, required) — `mail_id` from `getMailList`.

**Returns:** `MailCancelResponse`.

**Side effects:**
- Sets `mail_status='canceled'`.
- Marks `repeat_invoices` non-renewing.
- ZoneMTA-side: stops accepting new submissions for `mb{mail_id}`.

**Auth:** Session/API key. Ownership enforced.

**Errors:**
- `401` — unauthenticated.
- `404` — `id` not owned by caller.

**Related calls:**
- **Sibling cancels:** `VPSCancel`, `CancelDomain`, `webhostingCancel`, etc.
- **Re-provision:** `addMail`."
  [id int?]
  (let [res (:data (mail-cancel-with-http-info id))]
    (if (:decode-models *api-context*)
       (st/decode mail-cancel-200-response-spec res st/string-transformer)
       res)))


(defn-spec post-mail-delist-with-http-info any?
  "Delist a sender from rspamd / mailchannels / mailbaby block lists
  Removes all block rows for one sender email across three reputation stores: `rspamd` (by `fromemail`), `mailchannels` (by `email`), `mailbaby` (by `emailfrom`). Effect is global per-address across all three tables; takes effect immediately for new submissions. Sibling ops: `getMailDelist`, `delistBlock` (alias at `/mail/{id}/blocks/delete`), `getMailBlocks`.

**Path param:**
- `id` (integer, required) — `mail_id` from `getMailList`.

**Body fields (schema `MailDelistRequest`):**
- `unblock` (string, required) — sender email from `getMailDelist`/`getMailBlocks`.

**Returns:** `SuccessTextResponse`.

**Auth:** Session/API key. Ownership enforced.

**Errors:** `Missing parameter unblock`, `401`, `404`, `409 not active`."
  [id int?, mail-delist-request mail-delist-request]
  (check-required-params id mail-delist-request)
  (call-api "/mail/{id}/delist" :post
            {:path-params   {"id" id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :body-param    mail-delist-request
             :content-types ["application/json" "multipart/form-data"]
             :accepts       ["application/json"]
             :auth-names    ["sessionIdCookieAuth" "apiKeyAuth" "sessionIdHeaderAuth"]}))

(defn-spec post-mail-delist success-text-response-spec
  "Delist a sender from rspamd / mailchannels / mailbaby block lists
  Removes all block rows for one sender email across three reputation stores: `rspamd` (by `fromemail`), `mailchannels` (by `email`), `mailbaby` (by `emailfrom`). Effect is global per-address across all three tables; takes effect immediately for new submissions. Sibling ops: `getMailDelist`, `delistBlock` (alias at `/mail/{id}/blocks/delete`), `getMailBlocks`.

**Path param:**
- `id` (integer, required) — `mail_id` from `getMailList`.

**Body fields (schema `MailDelistRequest`):**
- `unblock` (string, required) — sender email from `getMailDelist`/`getMailBlocks`.

**Returns:** `SuccessTextResponse`.

**Auth:** Session/API key. Ownership enforced.

**Errors:** `Missing parameter unblock`, `401`, `404`, `409 not active`."
  [id int?, mail-delist-request mail-delist-request]
  (let [res (:data (post-mail-delist-with-http-info id mail-delist-request))]
    (if (:decode-models *api-context*)
       (st/decode success-text-response-spec res st/string-transformer)
       res)))


(defn-spec put-mail-with-http-info any?
  "Validate Mail Baby order, quote pricing, and verify coupon — no charge
  Step 2 of the Mail Baby order flow. Dry-runs the order through `validate_buy_mail()` without creating invoices. Returns the cost preview, coupon resolution, and validation errors. The endpoint also auto-generates an SMTP password preview the order will use. Use to surface live pricing in the UI before `addMail`. Sibling ops: `getNewMail`, `addMail`.

**Body fields:**
- `serviceType` (integer, required) — plan id from `getNewMail.packageCosts` keys.
- `coupon` (string, optional) — coupon code.

**Returns:**
- `continue` (bool) — `true` if order can safely be POSTed.
- `errors` (array) — validation messages.
- `serviceType`, `serviceCost`, `originalCost`, `repeatServiceCost` (numeric).
- `password` (string) — auto-generated SMTP password preview.
- `introFrequency` (integer).
- `coupon`, `couponCode` (string/integer) — resolved coupon.

**Auth:** Session/API key.

**Errors:**
- `200` with `continue=false` and `errors[]` — validation problems.
- `401` — unauthenticated.

**Related calls:**
- **Prerequisite:** `getNewMail` (catalog).
- **Place order:** `addMail`."
  [mail-order-request mail-order-request]
  (check-required-params mail-order-request)
  (call-api "/mail/order" :put
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :body-param    mail-order-request
             :content-types ["application/json"]
             :accepts       ["application/json"]
             :auth-names    ["sessionIdCookieAuth" "apiKeyAuth" "sessionIdHeaderAuth"]}))

(defn-spec put-mail any?
  "Validate Mail Baby order, quote pricing, and verify coupon — no charge
  Step 2 of the Mail Baby order flow. Dry-runs the order through `validate_buy_mail()` without creating invoices. Returns the cost preview, coupon resolution, and validation errors. The endpoint also auto-generates an SMTP password preview the order will use. Use to surface live pricing in the UI before `addMail`. Sibling ops: `getNewMail`, `addMail`.

**Body fields:**
- `serviceType` (integer, required) — plan id from `getNewMail.packageCosts` keys.
- `coupon` (string, optional) — coupon code.

**Returns:**
- `continue` (bool) — `true` if order can safely be POSTed.
- `errors` (array) — validation messages.
- `serviceType`, `serviceCost`, `originalCost`, `repeatServiceCost` (numeric).
- `password` (string) — auto-generated SMTP password preview.
- `introFrequency` (integer).
- `coupon`, `couponCode` (string/integer) — resolved coupon.

**Auth:** Session/API key.

**Errors:**
- `200` with `continue=false` and `errors[]` — validation problems.
- `401` — unauthenticated.

**Related calls:**
- **Prerequisite:** `getNewMail` (catalog).
- **Place order:** `addMail`."
  [mail-order-request mail-order-request]
  (let [res (:data (put-mail-with-http-info mail-order-request))]
    (if (:decode-models *api-context*)
       (st/decode any? res st/string-transformer)
       res)))


(defn-spec reset-mail-password-with-http-info any?
  "Rotate the SMTP password and email the new credential to the account owner
  Generates a new 20-char SMTP password (lower/upper/digits via `generate_password`), writes it to the ZoneMTA Mongo `users` collection for username `mb{mail_id}`, logs the change to `App::history()`, and emails the result to the account-on-file via `client_email.tpl`. **Any MTA, app, or saved client still using the old password will start failing auth immediately.** The new password is **not** returned in the response — fetch via `getMailWelcomeEmail` or `getMailInfo`. Sibling ops: `getMailWelcomeEmail`, `getMailInfo`.

**Path param:**
- `id` (integer, required) — `mail_id` from `getMailList`.

**Returns:** `SuccessTextResponse`.

**Side effects:**
- Mongo update on ZoneMTA `users` for `mb{mail_id}`.
- `App::history()` audit entry.
- Email sent to account owner.

**Auth:** Session/API key. Ownership enforced.

**Errors:** Mongo update modified 0 rows → error text; `401`, `404`, `409 not active`."
  [id int?]
  (check-required-params id)
  (call-api "/mail/{id}/reset_password" :get
            {:path-params   {"id" id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["sessionIdCookieAuth" "apiKeyAuth" "sessionIdHeaderAuth"]}))

(defn-spec reset-mail-password success-text-response-spec
  "Rotate the SMTP password and email the new credential to the account owner
  Generates a new 20-char SMTP password (lower/upper/digits via `generate_password`), writes it to the ZoneMTA Mongo `users` collection for username `mb{mail_id}`, logs the change to `App::history()`, and emails the result to the account-on-file via `client_email.tpl`. **Any MTA, app, or saved client still using the old password will start failing auth immediately.** The new password is **not** returned in the response — fetch via `getMailWelcomeEmail` or `getMailInfo`. Sibling ops: `getMailWelcomeEmail`, `getMailInfo`.

**Path param:**
- `id` (integer, required) — `mail_id` from `getMailList`.

**Returns:** `SuccessTextResponse`.

**Side effects:**
- Mongo update on ZoneMTA `users` for `mb{mail_id}`.
- `App::history()` audit entry.
- Email sent to account owner.

**Auth:** Session/API key. Ownership enforced.

**Errors:** Mongo update modified 0 rows → error text; `401`, `404`, `409 not active`."
  [id int?]
  (let [res (:data (reset-mail-password-with-http-info id))]
    (if (:decode-models *api-context*)
       (st/decode success-text-response-spec res st/string-transformer)
       res)))


(defn-spec send-adv-mail-with-http-info any?
  "Send email via Mail Baby SMTP relay with attachments, CC/BCC, and multi-recipient
  Submits an outbound message through `relay.mailbaby.net:25` using the service's SMTP credentials (fetched via `mail_get_password`). Use for multi-recipient sends, named addresses, CC/BCC, ReplyTo, or attachments. For single-recipient plain sends, `sendMail` is the lighter option. Sibling ops: `sendMail`, `viewMailLog` (find queued message), `getMailDeliverability` (analyze bounces).

**Path param:**
- `id` (integer, required) — `mail_id` from `getMailList`.

**Body fields (JSON or form-urlencoded, schema `SendMailAdv`):**
- `from` (string or `{email, name}`, required).
- `to` (array of strings or `{email, name}` objects, required).
- `subject` (string, required).
- `body` (string, required) — HTML auto-detected when tags are present.
- `replyto` (array, optional) — same shape as `to`.
- `cc`, `bcc` (array, optional) — same shape as `to`.
- `attachments` (array, optional) — each `{filename, data}` where `data` is base64-encoded; added via `addStringAttachment`.

**Returns:** `{status: \"ok\", text: \"Email queued successfully\"}`.

**Auth:** Session/API key. Ownership enforced.

**Errors:**
- `400` with PHPMailer `ErrorInfo` on send failure or missing required field.
- `401` — unauthenticated.
- `404 Invalid Service Passed`.
- `409 Service is not active`."
  [id int?, send-mail-adv send-mail-adv]
  (check-required-params id send-mail-adv)
  (call-api "/mail/{id}/advsend" :post
            {:path-params   {"id" id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :body-param    send-mail-adv
             :content-types ["application/json" "application/x-www-form-urlencoded"]
             :accepts       ["application/json"]
             :auth-names    ["sessionIdCookieAuth" "apiKeyAuth" "sessionIdHeaderAuth"]}))

(defn-spec send-adv-mail generic-response-spec
  "Send email via Mail Baby SMTP relay with attachments, CC/BCC, and multi-recipient
  Submits an outbound message through `relay.mailbaby.net:25` using the service's SMTP credentials (fetched via `mail_get_password`). Use for multi-recipient sends, named addresses, CC/BCC, ReplyTo, or attachments. For single-recipient plain sends, `sendMail` is the lighter option. Sibling ops: `sendMail`, `viewMailLog` (find queued message), `getMailDeliverability` (analyze bounces).

**Path param:**
- `id` (integer, required) — `mail_id` from `getMailList`.

**Body fields (JSON or form-urlencoded, schema `SendMailAdv`):**
- `from` (string or `{email, name}`, required).
- `to` (array of strings or `{email, name}` objects, required).
- `subject` (string, required).
- `body` (string, required) — HTML auto-detected when tags are present.
- `replyto` (array, optional) — same shape as `to`.
- `cc`, `bcc` (array, optional) — same shape as `to`.
- `attachments` (array, optional) — each `{filename, data}` where `data` is base64-encoded; added via `addStringAttachment`.

**Returns:** `{status: \"ok\", text: \"Email queued successfully\"}`.

**Auth:** Session/API key. Ownership enforced.

**Errors:**
- `400` with PHPMailer `ErrorInfo` on send failure or missing required field.
- `401` — unauthenticated.
- `404 Invalid Service Passed`.
- `409 Service is not active`."
  [id int?, send-mail-adv send-mail-adv]
  (let [res (:data (send-adv-mail-with-http-info id send-mail-adv))]
    (if (:decode-models *api-context*)
       (st/decode generic-response-spec res st/string-transformer)
       res)))


(defn-spec send-mail-with-http-info any?
  "Send a simple single-recipient email through the Mail Baby SMTP relay
  Sends a single-recipient transactional email through `relay.mailbaby.net:25` authenticated as this `mail_id`. Body fields are the minimum needed for a plain send; Reply-To is auto-set to `from`. For multi-recipient sends, CC/BCC, named addresses, or attachments use `sendAdvMail` instead. Sibling ops: `sendAdvMail`, `viewMailLog`.

**Path param:**
- `id` (integer, required) — `mail_id` from `getMailList`.

**Body fields (JSON or form-urlencoded, schema `SendMail`):**
- `to` (string, required) — recipient email.
- `from` (string, required) — sender email.
- `subject` (string, required).
- `body` (string, required) — HTML auto-detected when tags are present.

**Returns:** `{status: \"ok\", text: \"Email queued successfully\"}`.

**Auth:** Session/API key. Ownership enforced.

**Errors:** `400` with PHPMailer `ErrorInfo` on send failure or missing required field, `401`, `404`, `409 not active`."
  [id int?, send-mail send-mail]
  (check-required-params id send-mail)
  (call-api "/mail/{id}/send" :post
            {:path-params   {"id" id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :body-param    send-mail
             :content-types ["application/json" "application/x-www-form-urlencoded"]
             :accepts       ["application/json"]
             :auth-names    ["sessionIdCookieAuth" "apiKeyAuth" "sessionIdHeaderAuth"]}))

(defn-spec send-mail generic-response-spec
  "Send a simple single-recipient email through the Mail Baby SMTP relay
  Sends a single-recipient transactional email through `relay.mailbaby.net:25` authenticated as this `mail_id`. Body fields are the minimum needed for a plain send; Reply-To is auto-set to `from`. For multi-recipient sends, CC/BCC, named addresses, or attachments use `sendAdvMail` instead. Sibling ops: `sendAdvMail`, `viewMailLog`.

**Path param:**
- `id` (integer, required) — `mail_id` from `getMailList`.

**Body fields (JSON or form-urlencoded, schema `SendMail`):**
- `to` (string, required) — recipient email.
- `from` (string, required) — sender email.
- `subject` (string, required).
- `body` (string, required) — HTML auto-detected when tags are present.

**Returns:** `{status: \"ok\", text: \"Email queued successfully\"}`.

**Auth:** Session/API key. Ownership enforced.

**Errors:** `400` with PHPMailer `ErrorInfo` on send failure or missing required field, `401`, `404`, `409 not active`."
  [id int?, send-mail send-mail]
  (let [res (:data (send-mail-with-http-info id send-mail))]
    (if (:decode-models *api-context*)
       (st/decode generic-response-spec res st/string-transformer)
       res)))


(defn-spec update-mail-alert-with-http-info any?
  "Update an existing Mail Baby alert by alert_id
  Updates a single alert row by `alert_id`. Handler verifies the alert belongs to this service+module before writing. Sibling ops: `getMailAlerts`, `createMailAlert`, `deleteMailAlert`.

**Path param:**
- `id` (integer, required) — `mail_id` from `getMailList`.

**Body fields (schema `MailAlertUpdateRequest`):**
- `alert_id` (integer, required) — from `getMailAlerts`.
- `type` (string, required).
- `value` (string/numeric, required) — threshold.
- `to` (string, required) — notification email; validated via `FILTER_VALIDATE_EMAIL`.
- `enabled` (bool, optional).

**Returns:** `SuccessTextResponse`.

**Auth:** Session/API key. Ownership enforced.

**Errors:** `Invalid alert!` (alert not owned), field-level errors for missing/invalid body, `401`, `404`, `409 not active`."
  [id int?, mail-alert-update-request mail-alert-update-request]
  (check-required-params id mail-alert-update-request)
  (call-api "/mail/{id}/alerts" :put
            {:path-params   {"id" id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :body-param    mail-alert-update-request
             :content-types ["application/json" "multipart/form-data"]
             :accepts       ["application/json"]
             :auth-names    ["sessionIdCookieAuth" "apiKeyAuth" "sessionIdHeaderAuth"]}))

(defn-spec update-mail-alert success-text-response-spec
  "Update an existing Mail Baby alert by alert_id
  Updates a single alert row by `alert_id`. Handler verifies the alert belongs to this service+module before writing. Sibling ops: `getMailAlerts`, `createMailAlert`, `deleteMailAlert`.

**Path param:**
- `id` (integer, required) — `mail_id` from `getMailList`.

**Body fields (schema `MailAlertUpdateRequest`):**
- `alert_id` (integer, required) — from `getMailAlerts`.
- `type` (string, required).
- `value` (string/numeric, required) — threshold.
- `to` (string, required) — notification email; validated via `FILTER_VALIDATE_EMAIL`.
- `enabled` (bool, optional).

**Returns:** `SuccessTextResponse`.

**Auth:** Session/API key. Ownership enforced.

**Errors:** `Invalid alert!` (alert not owned), field-level errors for missing/invalid body, `401`, `404`, `409 not active`."
  [id int?, mail-alert-update-request mail-alert-update-request]
  (let [res (:data (update-mail-alert-with-http-info id mail-alert-update-request))]
    (if (:decode-models *api-context*)
       (st/decode success-text-response-spec res st/string-transformer)
       res)))


(defn-spec update-mail-info-with-http-info any?
  "POST mutation hook for the Mail Baby service detail page
  POST mutation hook for the Mail Baby service detail page. Currently delegates to the same `View::go()` handler as `getMailInfo` — placeholder for future field updates. Does NOT rotate credentials (use `resetMailPassword`) and does NOT change billing (use `/billing` endpoints). Sibling ops: `getMailInfo`, `mailCancel`, `resetMailPassword`.

**Path param:**
- `id` (integer, required) — `mail_id` from `getMailList`.

**Body:** Form fields.

**Returns:** `SuccessTextResponse`.

**Auth:** Session/API key. Ownership enforced.

**Errors:**
- `401` — unauthenticated.
- `404` — `id` not owned by caller.
- `409` — `mail_status != \"active\"`.

**Related calls:**
- **Read:** `getMailInfo`.
- **Rotate password:** `resetMailPassword`."
  [id string?]
  (check-required-params id)
  (call-api "/mail/{id}" :post
            {:path-params   {"id" id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["sessionIdCookieAuth" "apiKeyAuth" "sessionIdHeaderAuth"]}))

(defn-spec update-mail-info success-text-response-spec
  "POST mutation hook for the Mail Baby service detail page
  POST mutation hook for the Mail Baby service detail page. Currently delegates to the same `View::go()` handler as `getMailInfo` — placeholder for future field updates. Does NOT rotate credentials (use `resetMailPassword`) and does NOT change billing (use `/billing` endpoints). Sibling ops: `getMailInfo`, `mailCancel`, `resetMailPassword`.

**Path param:**
- `id` (integer, required) — `mail_id` from `getMailList`.

**Body:** Form fields.

**Returns:** `SuccessTextResponse`.

**Auth:** Session/API key. Ownership enforced.

**Errors:**
- `401` — unauthenticated.
- `404` — `id` not owned by caller.
- `409` — `mail_status != \"active\"`.

**Related calls:**
- **Read:** `getMailInfo`.
- **Rotate password:** `resetMailPassword`."
  [id string?]
  (let [res (:data (update-mail-info-with-http-info id))]
    (if (:decode-models *api-context*)
       (st/decode success-text-response-spec res st/string-transformer)
       res)))


(defn-spec update-rule-with-http-info any?
  "Update an existing Mail Baby deny rule's type and match data
  Updates `type` and `data` on a single `mail_spam` row. Query is bounded by `id={rule} AND user='{mail_username}'` so cross-tenant updates are impossible. Same validation rules as `addRule`. Sibling ops: `getRules`, `addRule`, `deleteRule`.

**Path params:**
- `id` (integer, required) — `mail_id` from `getMailList`.
- `rule` (string, required) — rule id from `getRules`.

**Body fields (schema `DenyRuleNew`):**
- `type` (string, required) — `domain` / `email` / `startswith` / `destination`.
- `data` (string, required) — see `addRule` for type-specific validation.

**Returns:** `\"Record updated successfully.\"`.

**Auth:** Session/API key. Ownership enforced.

**Errors:** field-level errors on validation failure, `401`, `404`, `409 not active`."
  [id int?, rule string?, deny-rule-new deny-rule-new]
  (check-required-params id rule deny-rule-new)
  (call-api "/mail/{id}/rules/{rule}" :put
            {:path-params   {"id" id "rule" rule }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :body-param    deny-rule-new
             :content-types ["application/json" "multipart/form-data"]
             :accepts       ["application/json"]
             :auth-names    ["sessionIdCookieAuth" "apiKeyAuth" "sessionIdHeaderAuth"]}))

(defn-spec update-rule generic-response-spec
  "Update an existing Mail Baby deny rule's type and match data
  Updates `type` and `data` on a single `mail_spam` row. Query is bounded by `id={rule} AND user='{mail_username}'` so cross-tenant updates are impossible. Same validation rules as `addRule`. Sibling ops: `getRules`, `addRule`, `deleteRule`.

**Path params:**
- `id` (integer, required) — `mail_id` from `getMailList`.
- `rule` (string, required) — rule id from `getRules`.

**Body fields (schema `DenyRuleNew`):**
- `type` (string, required) — `domain` / `email` / `startswith` / `destination`.
- `data` (string, required) — see `addRule` for type-specific validation.

**Returns:** `\"Record updated successfully.\"`.

**Auth:** Session/API key. Ownership enforced.

**Errors:** field-level errors on validation failure, `401`, `404`, `409 not active`."
  [id int?, rule string?, deny-rule-new deny-rule-new]
  (let [res (:data (update-rule-with-http-info id rule deny-rule-new))]
    (if (:decode-models *api-context*)
       (st/decode generic-response-spec res st/string-transformer)
       res)))


(defn-spec view-mail-log-with-http-info any?
  "Search and paginate per-message Mail Baby delivery log entries
  Paginated search over ZoneMTA's `mail_messagestore` joined with `mail_senderdelivered` and `mail_queuerelease`. Supports envelope, header, and metadata filters; sortable; choose recipient-level or message-level grouping. Use to investigate delivery issues, find specific messages by Message-ID, audit bounce rates, or feed an analytics dashboard. Sibling ops: `getStats`, `getMailDeliverability`, `delistBlock` (clear a block surfaced by a bounce).

**Path param:**
- `id` (integer, required) — `mail_id` from `getMailList` (omit to span all owned mail users — admin-only).

**Query params:**
- `from`, `to` (string) — envelope address, exact match.
- `headerfrom`, `replyto` (string) — header address, exact match; validated as email.
- `subject` (string) — LIKE match on subject.
- `mailid` (string, 18–19 chars) — relay id, exact.
- `messageId` (string) — Message-ID header, substring match.
- `origin` (string) — submitter IP, exact.
- `mx` (string) — destination MX hostname, LIKE.
- `delivered` (integer 0/1).
- `startDate`, `endDate` (Unix timestamp or `strtotime`-parseable string).
- `skip` (integer, default 0), `limit` (integer 1–10000, default 100).
- `sort` (`time`), `dir` (`asc`/`desc`, default `desc`).
- `groupby` (`recipient` default — one row per delivery attempt; `message` — one row per `_id`).

**Returns** (schema `MailLog`):
`{total, skip, limit, emails: [{id, _id, from, to, subject, messageId, time, mxHostname, delivered, code, response, recipient, ...}]}`.

**Auth:** Session/API key. Ownership enforced.

**Errors:** `400` bad input, `401`."
  ([id int?, ] (view-mail-log-with-http-info id nil))
  ([id int?, {:keys [id2 origin mx from to subject mailid messageId replyto headerfrom delivered skip limit startDate endDate sort dir groupby]} (s/map-of keyword? any?)]
   (check-required-params id)
   (call-api "/mail/{id}/log" :get
             {:path-params   {"id" id }
              :header-params {}
              :query-params  {"id" id2 "origin" origin "mx" mx "from" from "to" to "subject" subject "mailid" mailid "messageId" messageId "replyto" replyto "headerfrom" headerfrom "delivered" delivered "skip" skip "limit" limit "startDate" startDate "endDate" endDate "sort" sort "dir" dir "groupby" groupby }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    ["sessionIdCookieAuth" "apiKeyAuth" "sessionIdHeaderAuth"]})))

(defn-spec view-mail-log mail-log-spec
  "Search and paginate per-message Mail Baby delivery log entries
  Paginated search over ZoneMTA's `mail_messagestore` joined with `mail_senderdelivered` and `mail_queuerelease`. Supports envelope, header, and metadata filters; sortable; choose recipient-level or message-level grouping. Use to investigate delivery issues, find specific messages by Message-ID, audit bounce rates, or feed an analytics dashboard. Sibling ops: `getStats`, `getMailDeliverability`, `delistBlock` (clear a block surfaced by a bounce).

**Path param:**
- `id` (integer, required) — `mail_id` from `getMailList` (omit to span all owned mail users — admin-only).

**Query params:**
- `from`, `to` (string) — envelope address, exact match.
- `headerfrom`, `replyto` (string) — header address, exact match; validated as email.
- `subject` (string) — LIKE match on subject.
- `mailid` (string, 18–19 chars) — relay id, exact.
- `messageId` (string) — Message-ID header, substring match.
- `origin` (string) — submitter IP, exact.
- `mx` (string) — destination MX hostname, LIKE.
- `delivered` (integer 0/1).
- `startDate`, `endDate` (Unix timestamp or `strtotime`-parseable string).
- `skip` (integer, default 0), `limit` (integer 1–10000, default 100).
- `sort` (`time`), `dir` (`asc`/`desc`, default `desc`).
- `groupby` (`recipient` default — one row per delivery attempt; `message` — one row per `_id`).

**Returns** (schema `MailLog`):
`{total, skip, limit, emails: [{id, _id, from, to, subject, messageId, time, mxHostname, delivered, code, response, recipient, ...}]}`.

**Auth:** Session/API key. Ownership enforced.

**Errors:** `400` bad input, `401`."
  ([id int?, ] (view-mail-log id nil))
  ([id int?, optional-params any?]
   (let [res (:data (view-mail-log-with-http-info id optional-params))]
     (if (:decode-models *api-context*)
        (st/decode mail-log-spec res st/string-transformer)
        res))))


