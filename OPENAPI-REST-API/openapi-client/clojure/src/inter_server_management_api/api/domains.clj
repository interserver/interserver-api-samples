(ns inter-server-management-api.api.domains
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


(defn-spec add-domain-with-http-info any?
  "Place a new domain registration or transfer order, generate billing invoice
  Places a new domain registration or transfer order. Resolves the TLD to a `services_id`, runs `validate_buy_domain()` (hostname, TLD service, fields, coupon, whois-privacy add-on), then calls `place_buy_domain()` to create the `Repeat_Invoice` recurring billing row, generate the initial `invoices` row, and (when `whois_privacy=enable`) an additional add-on `Repeat_Invoice` for privacy. **Real money** — call `putDomains` then `patchDomains` first to preview and validate. Sibling ops: `getDomainLookup`, `getNewDomain`, `putDomains`, `patchDomains`, `initiatePayment`.

**Body fields (JSON or form):**
- `hostname` (string, required) — FQDN to register or transfer.
- `type` (string, optional, default `register`) — `register` or `transfer`.
- `whois_privacy` (string, optional) — `enable` to add the privacy add-on (separate recurring invoice).
- `coupon` (string, optional) — coupon code.
- All per-TLD contact/registration fields from `putDomains.domainFields` (registrant contact details, TLD-specific fields like nexus codes, EPP `auth_info` for transfers, etc.).

**Returns** (schema `ServiceOrderPostResponse`): `{total_cost, iid, iids, real_iids, serviceid (new domain_id), invoice_description, cj_params, payUrl}` — pass `real_iids` to `initiatePayment` to fund the order.

**Side effects:**
- Inserts `domains` service row in `pending` status.
- Inserts `repeat_invoices` row for recurring renewal.
- Inserts `invoices` row for the first-period charge.
- When `whois_privacy=enable`: inserts a separate add-on `repeat_invoices` row + its initial invoice.
- For transfers: stores `auth_info` and marks `service_extra` as `transfer`.

**Auth:** Session/API key.

**Errors:**
- `400 Missing hostname parameter`.
- `400 Unable to determine service type for this domain TLD.`.
- `401` — unauthenticated.
- `422` — validation failure (e.g. coupon invalid, required TLD field missing, hostname not registerable). Response body is the combined `errors` array from `validate_buy_domain()`.

**Related calls:**
- **Prerequisites:** `getDomainLookup` → `getNewDomain` → `putDomains` → `patchDomains`.
- **Pay:** `initiatePayment` with `real_iids`.
- **Verify activation:** `getDomainInfo` (poll for `domain_status='active'`).
- **Track in-progress transfer:** `getDomainTransfer`.
- **For pending transfers needing EPP/auth_info:** `updateDomainContact` (set `auth_info`).

**Example happy path (register):**
```text
GET /apiv2/domains/lookup/example.com           -> available, pricing, fields
PUT /apiv2/domains/order { hostname, type }     -> domainFields
PATCH /apiv2/domains/order { hostname, ...fields } -> \"success\"
POST /apiv2/domains/order { hostname, type, ...fields } -> { serviceid, real_iids }
GET /apiv2/billing/pay/cc/{real_iids[0]}        -> pay
GET /apiv2/domains/{serviceid}                  -> poll until domain_status==\"active\"
```"
  [domain-order-request domain-order-request]
  (check-required-params domain-order-request)
  (call-api "/domains/order" :post
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :body-param    domain-order-request
             :content-types ["application/json"]
             :accepts       ["application/json"]
             :auth-names    ["sessionIdCookieAuth" "apiKeyAuth" "sessionIdHeaderAuth"]}))

(defn-spec add-domain service-order-post-response-spec
  "Place a new domain registration or transfer order, generate billing invoice
  Places a new domain registration or transfer order. Resolves the TLD to a `services_id`, runs `validate_buy_domain()` (hostname, TLD service, fields, coupon, whois-privacy add-on), then calls `place_buy_domain()` to create the `Repeat_Invoice` recurring billing row, generate the initial `invoices` row, and (when `whois_privacy=enable`) an additional add-on `Repeat_Invoice` for privacy. **Real money** — call `putDomains` then `patchDomains` first to preview and validate. Sibling ops: `getDomainLookup`, `getNewDomain`, `putDomains`, `patchDomains`, `initiatePayment`.

**Body fields (JSON or form):**
- `hostname` (string, required) — FQDN to register or transfer.
- `type` (string, optional, default `register`) — `register` or `transfer`.
- `whois_privacy` (string, optional) — `enable` to add the privacy add-on (separate recurring invoice).
- `coupon` (string, optional) — coupon code.
- All per-TLD contact/registration fields from `putDomains.domainFields` (registrant contact details, TLD-specific fields like nexus codes, EPP `auth_info` for transfers, etc.).

**Returns** (schema `ServiceOrderPostResponse`): `{total_cost, iid, iids, real_iids, serviceid (new domain_id), invoice_description, cj_params, payUrl}` — pass `real_iids` to `initiatePayment` to fund the order.

**Side effects:**
- Inserts `domains` service row in `pending` status.
- Inserts `repeat_invoices` row for recurring renewal.
- Inserts `invoices` row for the first-period charge.
- When `whois_privacy=enable`: inserts a separate add-on `repeat_invoices` row + its initial invoice.
- For transfers: stores `auth_info` and marks `service_extra` as `transfer`.

**Auth:** Session/API key.

**Errors:**
- `400 Missing hostname parameter`.
- `400 Unable to determine service type for this domain TLD.`.
- `401` — unauthenticated.
- `422` — validation failure (e.g. coupon invalid, required TLD field missing, hostname not registerable). Response body is the combined `errors` array from `validate_buy_domain()`.

**Related calls:**
- **Prerequisites:** `getDomainLookup` → `getNewDomain` → `putDomains` → `patchDomains`.
- **Pay:** `initiatePayment` with `real_iids`.
- **Verify activation:** `getDomainInfo` (poll for `domain_status='active'`).
- **Track in-progress transfer:** `getDomainTransfer`.
- **For pending transfers needing EPP/auth_info:** `updateDomainContact` (set `auth_info`).

**Example happy path (register):**
```text
GET /apiv2/domains/lookup/example.com           -> available, pricing, fields
PUT /apiv2/domains/order { hostname, type }     -> domainFields
PATCH /apiv2/domains/order { hostname, ...fields } -> \"success\"
POST /apiv2/domains/order { hostname, type, ...fields } -> { serviceid, real_iids }
GET /apiv2/billing/pay/cc/{real_iids[0]}        -> pay
GET /apiv2/domains/{serviceid}                  -> poll until domain_status==\"active\"
```"
  [domain-order-request domain-order-request]
  (let [res (:data (add-domain-with-http-info domain-order-request))]
    (if (:decode-models *api-context*)
       (st/decode service-order-post-response-spec res st/string-transformer)
       res)))


(defn-spec add-domain-dnssec-with-http-info any?
  "Register DNSSEC DS records on the domain at OpenSRS
  Registers one or more DNSSEC DS records at the registrar. Body uses parallel arrays indexed per record. **Propagation caveat:** DNSSEC publication is asynchronous at the registry — a 200 here does not guarantee the records have propagated; re-call `getDomainDnssec` to verify. **Sets, not adds:** this replaces the full DS record set in one transaction; to remove all DS records use `deleteDomainDnssec`. Sibling ops: `getDomainDnssec`, `deleteDomainDnssec`.

**Path param:**
- `id` (integer, required) — `domain_id` from `getDomainsList`.

**Body fields (JSON or multipart, parallel arrays — `algorithm[0]` pairs with `key_tag[0]`, etc., schema `DomainDnssecRequest`):**
- `algorithm[]` (integer) — DNSKEY algorithm (e.g. 8 = RSASHA256, 13 = ECDSAP256SHA256).
- `key_tag[]` (integer) — must be < 65536.
- `digest_type[]` (integer) — `1` (SHA-1, 40 hex chars), `2` (SHA-256, 64), `3` (GOST, 64), `4` (SHA-384, 96).
- `digest[]` (string) — hex digest; length must match `digest_type[i]`.

**Returns:** `SuccessTextResponse` on registrar confirmation.

**Auth:** Session/API key. Ownership enforced.

**Errors:**
- `401` — unauthenticated.
- `404` — `id` not owned by caller.
- `409` — `domain_status != \"active\"` or registrar refused.
- `422` — `key_tag >= 65536` or digest length mismatch.

**Related calls:**
- **Verify propagation:** `getDomainDnssec`.
- **Clear all records:** `deleteDomainDnssec`."
  [id int?, domain-dnssec-request domain-dnssec-request]
  (check-required-params id domain-dnssec-request)
  (call-api "/domains/{id}/dnssec" :post
            {:path-params   {"id" id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :body-param    domain-dnssec-request
             :content-types ["application/json" "multipart/form-data"]
             :accepts       ["application/json"]
             :auth-names    ["sessionIdCookieAuth" "apiKeyAuth" "sessionIdHeaderAuth"]}))

(defn-spec add-domain-dnssec success-text-response-spec
  "Register DNSSEC DS records on the domain at OpenSRS
  Registers one or more DNSSEC DS records at the registrar. Body uses parallel arrays indexed per record. **Propagation caveat:** DNSSEC publication is asynchronous at the registry — a 200 here does not guarantee the records have propagated; re-call `getDomainDnssec` to verify. **Sets, not adds:** this replaces the full DS record set in one transaction; to remove all DS records use `deleteDomainDnssec`. Sibling ops: `getDomainDnssec`, `deleteDomainDnssec`.

**Path param:**
- `id` (integer, required) — `domain_id` from `getDomainsList`.

**Body fields (JSON or multipart, parallel arrays — `algorithm[0]` pairs with `key_tag[0]`, etc., schema `DomainDnssecRequest`):**
- `algorithm[]` (integer) — DNSKEY algorithm (e.g. 8 = RSASHA256, 13 = ECDSAP256SHA256).
- `key_tag[]` (integer) — must be < 65536.
- `digest_type[]` (integer) — `1` (SHA-1, 40 hex chars), `2` (SHA-256, 64), `3` (GOST, 64), `4` (SHA-384, 96).
- `digest[]` (string) — hex digest; length must match `digest_type[i]`.

**Returns:** `SuccessTextResponse` on registrar confirmation.

**Auth:** Session/API key. Ownership enforced.

**Errors:**
- `401` — unauthenticated.
- `404` — `id` not owned by caller.
- `409` — `domain_status != \"active\"` or registrar refused.
- `422` — `key_tag >= 65536` or digest length mismatch.

**Related calls:**
- **Verify propagation:** `getDomainDnssec`.
- **Clear all records:** `deleteDomainDnssec`."
  [id int?, domain-dnssec-request domain-dnssec-request]
  (let [res (:data (add-domain-dnssec-with-http-info id domain-dnssec-request))]
    (if (:decode-models *api-context*)
       (st/decode success-text-response-spec res st/string-transformer)
       res)))


(defn-spec add-domain-nameserver-with-http-info any?
  "Register a new nameserver host with glue IP at the registry (registered nameserver)
  Adds a registered nameserver (host + glue IP) for the domain at the registrar via `opensrs_create_nameserver`. Use when running your own authoritative nameservers under the domain itself (e.g. `ns1.example.com`, `ns2.example.com`). **Glue records, not delegation:** this registers the host's IP at the registry; the domain's delegation must separately point at these names via `updateDomainNameservers`. Sibling ops: `getDomainNameservers`, `updateDomainNameservers`, `deleteDomainNameserver`.

**Path param:**
- `id` (integer, required) — `domain_id` from `getDomainsList`.

**Body fields (schema `DomainNameserverPostRequest`):**
- `name` (string, required) — FQDN of the nameserver (e.g. `ns1.example.com`). Validated by `valid_hostname()`.
- `ipAddress` (string, required) — IPv4 address. Validated by `validIp()`.

**Returns:** `SuccessTextResponse` on success.

**Auth:** Session/API key. Ownership enforced.

**Errors:**
- `401` — unauthenticated.
- `404` — `id` not owned by caller.
- `409` — `domain_status != \"active\"`.
- `422` — invalid hostname or IP, or registrar refused.

**Related calls:**
- **Verify glue record:** `getDomainNameservers`.
- **Use this nameserver in delegation:** `updateDomainNameservers`."
  [id int?, domain-nameserver-post-request domain-nameserver-post-request]
  (check-required-params id domain-nameserver-post-request)
  (call-api "/domains/{id}/nameservers" :post
            {:path-params   {"id" id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :body-param    domain-nameserver-post-request
             :content-types ["application/json" "multipart/form-data"]
             :accepts       ["application/json"]
             :auth-names    ["sessionIdCookieAuth" "apiKeyAuth" "sessionIdHeaderAuth"]}))

(defn-spec add-domain-nameserver text-response-spec
  "Register a new nameserver host with glue IP at the registry (registered nameserver)
  Adds a registered nameserver (host + glue IP) for the domain at the registrar via `opensrs_create_nameserver`. Use when running your own authoritative nameservers under the domain itself (e.g. `ns1.example.com`, `ns2.example.com`). **Glue records, not delegation:** this registers the host's IP at the registry; the domain's delegation must separately point at these names via `updateDomainNameservers`. Sibling ops: `getDomainNameservers`, `updateDomainNameservers`, `deleteDomainNameserver`.

**Path param:**
- `id` (integer, required) — `domain_id` from `getDomainsList`.

**Body fields (schema `DomainNameserverPostRequest`):**
- `name` (string, required) — FQDN of the nameserver (e.g. `ns1.example.com`). Validated by `valid_hostname()`.
- `ipAddress` (string, required) — IPv4 address. Validated by `validIp()`.

**Returns:** `SuccessTextResponse` on success.

**Auth:** Session/API key. Ownership enforced.

**Errors:**
- `401` — unauthenticated.
- `404` — `id` not owned by caller.
- `409` — `domain_status != \"active\"`.
- `422` — invalid hostname or IP, or registrar refused.

**Related calls:**
- **Verify glue record:** `getDomainNameservers`.
- **Use this nameserver in delegation:** `updateDomainNameservers`."
  [id int?, domain-nameserver-post-request domain-nameserver-post-request]
  (let [res (:data (add-domain-nameserver-with-http-info id domain-nameserver-post-request))]
    (if (:decode-models *api-context*)
       (st/decode text-response-spec res st/string-transformer)
       res)))


(defn-spec cancel-domain-with-http-info any?
  "Cancel a domain order in the billing system to stop auto-renewals
  Stops billing and auto-renewal for a domain in the customer account by setting the service to `canceled` via the shared `Billing\\CancelService::go($id)` flow with `module='domains'`. **Important:** this only stops billing on InterServer's side — the domain registration at the registrar (OpenSRS) typically remains active until its current expiration date. To release the domain back to the public pool, let it expire OR submit a release request via support ticket. Sibling ops: `getDomainInfo` (verify status), `getDomainsList`, `postDomainRenewal` (re-activate before expiry).

**Path param:**
- `id` (integer, required) — `domain_id` from `getDomainsList`.

**Returns:** `DomainsCancelResponse` — confirmation envelope.

**Side effects:**
- Sets `domain_status='canceled'`.
- Marks the `repeat_invoices` row non-renewing — no future renewal invoices generated.
- Does **not** call the registrar — the registration remains active at OpenSRS until natural expiry.

**Auth:** Session/API key. Ownership enforced.

**Errors:**
- `401` — unauthenticated.
- `404` — `id` not owned by caller.
- `409` — already canceled.

**Related calls:**
- **Re-activate before expiry:** `postDomainRenewal`.
- **Verify status:** `getDomainInfo`.
- **Sibling cancels on other modules:** `VPSCancel`, `mailCancel`, `webhostingCancel`, etc. (same `CancelService` handler)."
  [id int?]
  (check-required-params id)
  (call-api "/domains/{id}" :delete
            {:path-params   {"id" id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["sessionIdCookieAuth" "apiKeyAuth" "sessionIdHeaderAuth"]}))

(defn-spec cancel-domain cancel-domain-200-response-spec
  "Cancel a domain order in the billing system to stop auto-renewals
  Stops billing and auto-renewal for a domain in the customer account by setting the service to `canceled` via the shared `Billing\\CancelService::go($id)` flow with `module='domains'`. **Important:** this only stops billing on InterServer's side — the domain registration at the registrar (OpenSRS) typically remains active until its current expiration date. To release the domain back to the public pool, let it expire OR submit a release request via support ticket. Sibling ops: `getDomainInfo` (verify status), `getDomainsList`, `postDomainRenewal` (re-activate before expiry).

**Path param:**
- `id` (integer, required) — `domain_id` from `getDomainsList`.

**Returns:** `DomainsCancelResponse` — confirmation envelope.

**Side effects:**
- Sets `domain_status='canceled'`.
- Marks the `repeat_invoices` row non-renewing — no future renewal invoices generated.
- Does **not** call the registrar — the registration remains active at OpenSRS until natural expiry.

**Auth:** Session/API key. Ownership enforced.

**Errors:**
- `401` — unauthenticated.
- `404` — `id` not owned by caller.
- `409` — already canceled.

**Related calls:**
- **Re-activate before expiry:** `postDomainRenewal`.
- **Verify status:** `getDomainInfo`.
- **Sibling cancels on other modules:** `VPSCancel`, `mailCancel`, `webhostingCancel`, etc. (same `CancelService` handler)."
  [id int?]
  (let [res (:data (cancel-domain-with-http-info id))]
    (if (:decode-models *api-context*)
       (st/decode cancel-domain-200-response-spec res st/string-transformer)
       res)))


(defn-spec delete-domain-dnssec-with-http-info any?
  "Clear all DNSSEC DS records on the domain (disable DNSSEC at the registrar)
  Disables DNSSEC at the registrar by removing the entire DS record set in one call. **Propagation caveat:** DNSSEC removal can fail at the registry even after a 200 response — propagation is asynchronous; re-check with `getDomainDnssec` to confirm. To remove records selectively, replace the set via `addDomainDnssec` instead. Sibling ops: `getDomainDnssec`, `addDomainDnssec`.

**Path param:**
- `id` (integer, required) — `domain_id` from `getDomainsList`.

**Body:** None — removes the full DS record set.

**Returns:** `SuccessTextResponse`.

**Auth:** Session/API key. Ownership enforced.

**Errors:**
- `401` — unauthenticated.
- `404` — `id` not owned by caller.
- `409` — `domain_status != \"active\"`.
- Registrar error surfaced as 4xx.

**Related calls:**
- **Verify propagation:** `getDomainDnssec`.
- **Replace records selectively:** `addDomainDnssec`."
  [id int?]
  (check-required-params id)
  (call-api "/domains/{id}/dnssec" :delete
            {:path-params   {"id" id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["sessionIdCookieAuth" "apiKeyAuth" "sessionIdHeaderAuth"]}))

(defn-spec delete-domain-dnssec success-text-response-spec
  "Clear all DNSSEC DS records on the domain (disable DNSSEC at the registrar)
  Disables DNSSEC at the registrar by removing the entire DS record set in one call. **Propagation caveat:** DNSSEC removal can fail at the registry even after a 200 response — propagation is asynchronous; re-check with `getDomainDnssec` to confirm. To remove records selectively, replace the set via `addDomainDnssec` instead. Sibling ops: `getDomainDnssec`, `addDomainDnssec`.

**Path param:**
- `id` (integer, required) — `domain_id` from `getDomainsList`.

**Body:** None — removes the full DS record set.

**Returns:** `SuccessTextResponse`.

**Auth:** Session/API key. Ownership enforced.

**Errors:**
- `401` — unauthenticated.
- `404` — `id` not owned by caller.
- `409` — `domain_status != \"active\"`.
- Registrar error surfaced as 4xx.

**Related calls:**
- **Verify propagation:** `getDomainDnssec`.
- **Replace records selectively:** `addDomainDnssec`."
  [id int?]
  (let [res (:data (delete-domain-dnssec-with-http-info id))]
    (if (:decode-models *api-context*)
       (st/decode success-text-response-spec res st/string-transformer)
       res)))


(defn-spec delete-domain-nameserver-with-http-info any?
  "Remove one registered nameserver glue record from the domain
  Removes a single registered nameserver entry from the domain at the registrar. Handler first calls OpenSRS `nsGet` to resolve the entry by index, then `nsDelete`. Per-entry — to replace the full delegation set use `updateDomainNameservers` instead. Sibling ops: `getDomainNameservers`, `addDomainNameserver`, `updateDomainNameservers`.

**Path param:**
- `id` (integer, required) — `domain_id` from `getDomainsList`.

**Query params:**
- `index` (integer, required) — zero-based index from `getDomainNameservers` array — or alternatively pass `name` + `ip` to target by value.

**Returns:** `SuccessTextResponse`.

**Auth:** Session/API key. Ownership enforced.

**Errors:**
- `401` — unauthenticated.
- `404` — `id` not owned by caller.
- `409` — `domain_status != \"active\"`.
- `422` — `index` out of range or `name`/`ip` not provided.
- Registrar errors surfaced as 4xx.

**Related calls:**
- **List candidates:** `getDomainNameservers`.
- **Replace delegation entirely:** `updateDomainNameservers`."
  [id int?, index int?]
  (check-required-params id index)
  (call-api "/domains/{id}/nameservers" :delete
            {:path-params   {"id" id }
             :header-params {}
             :query-params  {"index" index }
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["sessionIdCookieAuth" "apiKeyAuth" "sessionIdHeaderAuth"]}))

(defn-spec delete-domain-nameserver text-response-spec
  "Remove one registered nameserver glue record from the domain
  Removes a single registered nameserver entry from the domain at the registrar. Handler first calls OpenSRS `nsGet` to resolve the entry by index, then `nsDelete`. Per-entry — to replace the full delegation set use `updateDomainNameservers` instead. Sibling ops: `getDomainNameservers`, `addDomainNameserver`, `updateDomainNameservers`.

**Path param:**
- `id` (integer, required) — `domain_id` from `getDomainsList`.

**Query params:**
- `index` (integer, required) — zero-based index from `getDomainNameservers` array — or alternatively pass `name` + `ip` to target by value.

**Returns:** `SuccessTextResponse`.

**Auth:** Session/API key. Ownership enforced.

**Errors:**
- `401` — unauthenticated.
- `404` — `id` not owned by caller.
- `409` — `domain_status != \"active\"`.
- `422` — `index` out of range or `name`/`ip` not provided.
- Registrar errors surfaced as 4xx.

**Related calls:**
- **List candidates:** `getDomainNameservers`.
- **Replace delegation entirely:** `updateDomainNameservers`."
  [id int?, index int?]
  (let [res (:data (delete-domain-nameserver-with-http-info id index))]
    (if (:decode-models *api-context*)
       (st/decode text-response-spec res st/string-transformer)
       res)))


(defn-spec get-domain-contact-with-http-info any?
  "Read the current registrant/admin/tech/billing contact field set for a domain
  Returns the current contact field set (registrant/admin/tech/billing) with current values for the domain — schema and values mirror what was set at registration. For pending transfer services, the response also includes a `transfer` selector and the EPP `auth_info` code so the client can resubmit. Read-only. Sibling ops: `updateDomainContact` (push changes to OpenSRS), `getDomainInfo`.

**Path param:**
- `id` (integer, required) — `domain_id` from `getDomainsList`.

**Returns** (schema `DomainContactDetails`):
- `firstname`, `lastname`, `email`.
- `address`, `address2`, `address3`, `city`, `state`, `zip`, `country`.
- `phone`, `fax` (E.164 format expected).
- `company` (optional).
- `auth_info` (string) — EPP/transfer code (present on transfer services).
- `transfer` (string `yes`/`no`) — selector for pending transfer services.

**Auth:** Session/API key. Ownership enforced.

**Errors:**
- `401` — unauthenticated.
- `404` — `id` not owned by caller.

**Related calls:**
- **Update:** `updateDomainContact`.
- **Transfer status:** `getDomainTransfer`."
  [id int?]
  (check-required-params id)
  (call-api "/domains/{id}/contact" :get
            {:path-params   {"id" id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["sessionIdCookieAuth" "apiKeyAuth" "sessionIdHeaderAuth"]}))

(defn-spec get-domain-contact domain-contact-details-spec
  "Read the current registrant/admin/tech/billing contact field set for a domain
  Returns the current contact field set (registrant/admin/tech/billing) with current values for the domain — schema and values mirror what was set at registration. For pending transfer services, the response also includes a `transfer` selector and the EPP `auth_info` code so the client can resubmit. Read-only. Sibling ops: `updateDomainContact` (push changes to OpenSRS), `getDomainInfo`.

**Path param:**
- `id` (integer, required) — `domain_id` from `getDomainsList`.

**Returns** (schema `DomainContactDetails`):
- `firstname`, `lastname`, `email`.
- `address`, `address2`, `address3`, `city`, `state`, `zip`, `country`.
- `phone`, `fax` (E.164 format expected).
- `company` (optional).
- `auth_info` (string) — EPP/transfer code (present on transfer services).
- `transfer` (string `yes`/`no`) — selector for pending transfer services.

**Auth:** Session/API key. Ownership enforced.

**Errors:**
- `401` — unauthenticated.
- `404` — `id` not owned by caller.

**Related calls:**
- **Update:** `updateDomainContact`.
- **Transfer status:** `getDomainTransfer`."
  [id int?]
  (let [res (:data (get-domain-contact-with-http-info id))]
    (if (:decode-models *api-context*)
       (st/decode domain-contact-details-spec res st/string-transformer)
       res)))


(defn-spec get-domain-dnssec-with-http-info any?
  "Read the DNSSEC DS record set currently registered with the registrar
  Returns the DNSSEC DS record set currently registered for the domain at OpenSRS. Empty array means DNSSEC is not configured. Use to mirror existing settings or as a baseline before `addDomainDnssec` (which replaces the set). Sibling ops: `addDomainDnssec`, `deleteDomainDnssec`.

**Path param:**
- `id` (integer, required) — `domain_id` from `getDomainsList`.

**Returns** (schema `DomainDnssecRecords`):
- `records` (array) — DS entries:
  - `algorithm` (integer) — DNSKEY algorithm (e.g. 8 for RSASHA256, 13 for ECDSAP256SHA256).
  - `key_tag` (integer, < 65536).
  - `digest_type` (integer) — `1` (SHA-1), `2` (SHA-256), `3` (GOST), `4` (SHA-384).
  - `digest` (string, hex) — length depends on `digest_type`.

**Auth:** Session/API key. Ownership enforced.

**Errors:**
- `401` — unauthenticated.
- `404` — `id` not owned by caller.
- `409` — `domain_status != \"active\"`.

**Related calls:**
- **Replace records:** `addDomainDnssec`.
- **Clear all records:** `deleteDomainDnssec`."
  [id int?]
  (check-required-params id)
  (call-api "/domains/{id}/dnssec" :get
            {:path-params   {"id" id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["sessionIdCookieAuth" "apiKeyAuth" "sessionIdHeaderAuth"]}))

(defn-spec get-domain-dnssec domain-dnssec-records-spec
  "Read the DNSSEC DS record set currently registered with the registrar
  Returns the DNSSEC DS record set currently registered for the domain at OpenSRS. Empty array means DNSSEC is not configured. Use to mirror existing settings or as a baseline before `addDomainDnssec` (which replaces the set). Sibling ops: `addDomainDnssec`, `deleteDomainDnssec`.

**Path param:**
- `id` (integer, required) — `domain_id` from `getDomainsList`.

**Returns** (schema `DomainDnssecRecords`):
- `records` (array) — DS entries:
  - `algorithm` (integer) — DNSKEY algorithm (e.g. 8 for RSASHA256, 13 for ECDSAP256SHA256).
  - `key_tag` (integer, < 65536).
  - `digest_type` (integer) — `1` (SHA-1), `2` (SHA-256), `3` (GOST), `4` (SHA-384).
  - `digest` (string, hex) — length depends on `digest_type`.

**Auth:** Session/API key. Ownership enforced.

**Errors:**
- `401` — unauthenticated.
- `404` — `id` not owned by caller.
- `409` — `domain_status != \"active\"`.

**Related calls:**
- **Replace records:** `addDomainDnssec`.
- **Clear all records:** `deleteDomainDnssec`."
  [id int?]
  (let [res (:data (get-domain-dnssec-with-http-info id))]
    (if (:decode-models *api-context*)
       (st/decode domain-dnssec-records-spec res st/string-transformer)
       res)))


(defn-spec get-domain-info-with-http-info any?
  "Read full billing, registrar, and service detail for one domain
  Returns the full `ViewDomain` payload for one domain — billing summary, registration status, lock state, expiry date, contact summary, and `client_links` for related dashboard actions. Read-only. Internal `admin_links`, `settings`, `csrf` are stripped before return. Use to render a domain detail page, verify ownership before mutating, or poll `domain_status` after `addDomain`. Sibling ops: `getDomainContact`, `getDomainNameservers`, `getDomainDnssec`, `getDomainWhoisPrivacy`, `getDomainInvoices`, `updateDomainInfo`, `CancelDomain`.

**Path param:**
- `id` (integer, required) — `domain_id` from `getDomainsList`.

**Returns** (schema `Domain`):
- `serviceInfo` — `domain_id`, `domain_hostname`, `domain_status`, `domain_expire_date`, lock state, registrar metadata.
- `serviceType` — TLD service row.
- `client_links` (array) — `{name, link, icon}` for renew/transfer/contact/DNSSEC/whois-privacy actions. URLs pre-resolved.

**Auth:** Session/API key. Ownership enforced via `domain_custid`.

**Errors:**
- `401` — unauthenticated.
- `404` — `id` not owned by caller.

**Related calls:**
- **Contact:** `getDomainContact` / `updateDomainContact`.
- **Nameservers:** `getDomainNameservers` / `updateDomainNameservers`.
- **DNSSEC:** `getDomainDnssec` / `addDomainDnssec` / `deleteDomainDnssec`.
- **Whois privacy:** `getDomainWhoisPrivacy` / `updateDomainWhoisPrivacy`.
- **Billing:** `getDomainInvoices`, `getDomainRenewal` / `postDomainRenewal`.
- **Transfer status:** `getDomainTransfer`.
- **Cancel:** `CancelDomain`."
  [id int?]
  (check-required-params id)
  (call-api "/domains/{id}" :get
            {:path-params   {"id" id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["sessionIdCookieAuth" "apiKeyAuth" "sessionIdHeaderAuth"]}))

(defn-spec get-domain-info domain-spec
  "Read full billing, registrar, and service detail for one domain
  Returns the full `ViewDomain` payload for one domain — billing summary, registration status, lock state, expiry date, contact summary, and `client_links` for related dashboard actions. Read-only. Internal `admin_links`, `settings`, `csrf` are stripped before return. Use to render a domain detail page, verify ownership before mutating, or poll `domain_status` after `addDomain`. Sibling ops: `getDomainContact`, `getDomainNameservers`, `getDomainDnssec`, `getDomainWhoisPrivacy`, `getDomainInvoices`, `updateDomainInfo`, `CancelDomain`.

**Path param:**
- `id` (integer, required) — `domain_id` from `getDomainsList`.

**Returns** (schema `Domain`):
- `serviceInfo` — `domain_id`, `domain_hostname`, `domain_status`, `domain_expire_date`, lock state, registrar metadata.
- `serviceType` — TLD service row.
- `client_links` (array) — `{name, link, icon}` for renew/transfer/contact/DNSSEC/whois-privacy actions. URLs pre-resolved.

**Auth:** Session/API key. Ownership enforced via `domain_custid`.

**Errors:**
- `401` — unauthenticated.
- `404` — `id` not owned by caller.

**Related calls:**
- **Contact:** `getDomainContact` / `updateDomainContact`.
- **Nameservers:** `getDomainNameservers` / `updateDomainNameservers`.
- **DNSSEC:** `getDomainDnssec` / `addDomainDnssec` / `deleteDomainDnssec`.
- **Whois privacy:** `getDomainWhoisPrivacy` / `updateDomainWhoisPrivacy`.
- **Billing:** `getDomainInvoices`, `getDomainRenewal` / `postDomainRenewal`.
- **Transfer status:** `getDomainTransfer`.
- **Cancel:** `CancelDomain`."
  [id int?]
  (let [res (:data (get-domain-info-with-http-info id))]
    (if (:decode-models *api-context*)
       (st/decode domain-spec res st/string-transformer)
       res)))


(defn-spec get-domain-invoices-with-http-info any?
  "List all billing invoices scoped to one domain order
  Returns the billing history for one domain — initial registration/transfer invoice, recurring renewal invoices, Whois privacy add-on invoices. Extends `Billing\\InvoicesList::go()` with `module='domains'`. Use to render a per-domain billing-history view or find an unpaid renewal/privacy invoice to pass to `initiatePayment`. Sibling ops: `getDomainInfo`, `postDomainRenewal`, `updateDomainWhoisPrivacy`, `initiatePayment`, `getBillingInvoice`.

**Path param:**
- `id` (integer, required) — `domain_id` from `getDomainsList`.

**Returns:** `ChargeInvoiceRows` — array of `{id, amount, paid, description, date, due_date, currency, module: \"domains\", service: <id>}`.

**Auth:** Session/API key. Ownership enforced.

**Errors:**
- `401` — unauthenticated.
- `404 Invalid Service` — `id` not owned by caller.

**Related calls:**
- **Pay an unpaid invoice:** `initiatePayment`.
- **Renew:** `postDomainRenewal`.
- **Account-wide history:** `getBillingInvoices`."
  [id int?]
  (check-required-params id)
  (call-api "/domains/{id}/invoices" :get
            {:path-params   {"id" id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["sessionIdCookieAuth" "apiKeyAuth" "sessionIdHeaderAuth"]}))

(defn-spec get-domain-invoices charge-invoice-rows-spec
  "List all billing invoices scoped to one domain order
  Returns the billing history for one domain — initial registration/transfer invoice, recurring renewal invoices, Whois privacy add-on invoices. Extends `Billing\\InvoicesList::go()` with `module='domains'`. Use to render a per-domain billing-history view or find an unpaid renewal/privacy invoice to pass to `initiatePayment`. Sibling ops: `getDomainInfo`, `postDomainRenewal`, `updateDomainWhoisPrivacy`, `initiatePayment`, `getBillingInvoice`.

**Path param:**
- `id` (integer, required) — `domain_id` from `getDomainsList`.

**Returns:** `ChargeInvoiceRows` — array of `{id, amount, paid, description, date, due_date, currency, module: \"domains\", service: <id>}`.

**Auth:** Session/API key. Ownership enforced.

**Errors:**
- `401` — unauthenticated.
- `404 Invalid Service` — `id` not owned by caller.

**Related calls:**
- **Pay an unpaid invoice:** `initiatePayment`.
- **Renew:** `postDomainRenewal`.
- **Account-wide history:** `getBillingInvoices`."
  [id int?]
  (let [res (:data (get-domain-invoices-with-http-info id))]
    (if (:decode-models *api-context*)
       (st/decode charge-invoice-rows-spec res st/string-transformer)
       res)))


(defn-spec get-domain-lookup-with-http-info any?
  "Check availability, premium status, and pricing for a specific domain
  Looks up a single FQDN against OpenSRS: returns availability, premium-name flag, current new/renewal/transfer prices, per-TLD order field metadata, and multi-currency quotes. **Public** endpoint — no auth required (rate-limited via `domainlookup` cache). Repeated lookups within a short window may return cached results from the `domainlookup` table. Use as step 1 of an order: discover availability and pricing, then call `addDomain` to commit. Sibling ops: `getDomainSearch` (suggestions), `getNewDomain` (catalog), `addDomain`, `postDomainSearch`.

**Path param:**
- `name` (string, required) — full FQDN (e.g. `example.com`).

**Returns** (schema `DomainLookupResponse`):
- `available` (bool) — registerable now.
- `premium` (bool) — premium-name pricing (often > $100).
- `website` (bool) — same hostname is already a webhosting service on this account.
- `domain_service` (bool) — same hostname is already a domain on this account.
- `service` (object) — `services_id`, `services_name`, `services_cost`, `services_field1` (TLD), `services_module`.
- `whois_privacy` (bool) — privacy add-on available for this TLD.
- `new`, `renewal`, `transfer` (float) — base USD prices (with profit markup).
- `fields` (object) — per-TLD order form schema (labels, options, current account values).
- `currencies` (object) — `{<code>: {services_cost, new, renewal, transfer}}` converted to each enabled currency.

**Auth:** Public (no auth required).

**Errors:**
- `422 Invalid Domain` — `valid_domain()` rejected input.

**Related calls:**
- **Brainstorm alternatives:** `getDomainSearch`.
- **Place order:** `addDomain` with the resolved `service.services_id` and `fields`.
- **TLD catalog:** `getNewDomain`."
  [name string?]
  (check-required-params name)
  (call-api "/domains/lookup/{name}" :get
            {:path-params   {"name" name }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["sessionIdCookieAuth" "apiKeyAuth" "sessionIdHeaderAuth"]}))

(defn-spec get-domain-lookup domain-lookup-response-spec
  "Check availability, premium status, and pricing for a specific domain
  Looks up a single FQDN against OpenSRS: returns availability, premium-name flag, current new/renewal/transfer prices, per-TLD order field metadata, and multi-currency quotes. **Public** endpoint — no auth required (rate-limited via `domainlookup` cache). Repeated lookups within a short window may return cached results from the `domainlookup` table. Use as step 1 of an order: discover availability and pricing, then call `addDomain` to commit. Sibling ops: `getDomainSearch` (suggestions), `getNewDomain` (catalog), `addDomain`, `postDomainSearch`.

**Path param:**
- `name` (string, required) — full FQDN (e.g. `example.com`).

**Returns** (schema `DomainLookupResponse`):
- `available` (bool) — registerable now.
- `premium` (bool) — premium-name pricing (often > $100).
- `website` (bool) — same hostname is already a webhosting service on this account.
- `domain_service` (bool) — same hostname is already a domain on this account.
- `service` (object) — `services_id`, `services_name`, `services_cost`, `services_field1` (TLD), `services_module`.
- `whois_privacy` (bool) — privacy add-on available for this TLD.
- `new`, `renewal`, `transfer` (float) — base USD prices (with profit markup).
- `fields` (object) — per-TLD order form schema (labels, options, current account values).
- `currencies` (object) — `{<code>: {services_cost, new, renewal, transfer}}` converted to each enabled currency.

**Auth:** Public (no auth required).

**Errors:**
- `422 Invalid Domain` — `valid_domain()` rejected input.

**Related calls:**
- **Brainstorm alternatives:** `getDomainSearch`.
- **Place order:** `addDomain` with the resolved `service.services_id` and `fields`.
- **TLD catalog:** `getNewDomain`."
  [name string?]
  (let [res (:data (get-domain-lookup-with-http-info name))]
    (if (:decode-models *api-context*)
       (st/decode domain-lookup-response-spec res st/string-transformer)
       res)))


(defn-spec get-domain-nameservers-with-http-info any?
  "List registered nameserver hosts and glue IP addresses for a domain
  Returns the registered-nameserver / glue-record entries currently set for the domain at OpenSRS. **Important distinction:** these are *registered nameservers* (`host.example.com` + glue IP records the registrant has created at the registry), NOT the domain's delegation NS records. To replace the delegation set, use `updateDomainNameservers`. Empty array means no glue records are registered. Sibling ops: `addDomainNameserver`, `updateDomainNameservers`, `deleteDomainNameserver`.

**Path param:**
- `id` (integer, required) — `domain_id` from `getDomainsList`.

**Returns** (schema `DomainNameserverGetResponse`):
- Array of `{name, ipaddress, sortorder}` — use the zero-based array index when calling `deleteDomainNameserver` with `index`.

**Auth:** Session/API key. Ownership enforced.

**Errors:**
- `401` — unauthenticated.
- `404` — `id` not owned by caller.
- `409` — `domain_status != \"active\"`.
- `5xx` — registrar communication failure.

**Related calls:**
- **Add glue record:** `addDomainNameserver`.
- **Replace delegation set:** `updateDomainNameservers`.
- **Remove glue record:** `deleteDomainNameserver`."
  [id int?]
  (check-required-params id)
  (call-api "/domains/{id}/nameservers" :get
            {:path-params   {"id" id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["sessionIdCookieAuth" "apiKeyAuth" "sessionIdHeaderAuth"]}))

(defn-spec get-domain-nameservers domain-nameserver-get-response-spec
  "List registered nameserver hosts and glue IP addresses for a domain
  Returns the registered-nameserver / glue-record entries currently set for the domain at OpenSRS. **Important distinction:** these are *registered nameservers* (`host.example.com` + glue IP records the registrant has created at the registry), NOT the domain's delegation NS records. To replace the delegation set, use `updateDomainNameservers`. Empty array means no glue records are registered. Sibling ops: `addDomainNameserver`, `updateDomainNameservers`, `deleteDomainNameserver`.

**Path param:**
- `id` (integer, required) — `domain_id` from `getDomainsList`.

**Returns** (schema `DomainNameserverGetResponse`):
- Array of `{name, ipaddress, sortorder}` — use the zero-based array index when calling `deleteDomainNameserver` with `index`.

**Auth:** Session/API key. Ownership enforced.

**Errors:**
- `401` — unauthenticated.
- `404` — `id` not owned by caller.
- `409` — `domain_status != \"active\"`.
- `5xx` — registrar communication failure.

**Related calls:**
- **Add glue record:** `addDomainNameserver`.
- **Replace delegation set:** `updateDomainNameservers`.
- **Remove glue record:** `deleteDomainNameserver`."
  [id int?]
  (let [res (:data (get-domain-nameservers-with-http-info id))]
    (if (:decode-models *api-context*)
       (st/decode domain-nameserver-get-response-spec res st/string-transformer)
       res)))


(defn-spec get-domain-renewal-with-http-info any?
  "Read renewal pricing, expiry, and whether a renewal invoice already exists
  Returns renewal pricing, current expiry, Whois privacy availability, and whether an unpaid renewal invoice already exists for the domain. Use before triggering `postDomainRenewal` to render a renewal form and prevent duplicate invoices. Costs are converted to the customer's preferred currency. Sibling ops: `postDomainRenewal`, `getDomainInvoices`, `getDomainInfo`.

**Path param:**
- `id` (integer, required) — `domain_id` from `getDomainsList`.

**Returns:**
- `renewCost` (float) — renewal cost in `currency`.
- `whoisCost` (float) — Whois privacy renewal cost.
- `whoisAvailable` (bool) — privacy supported on this TLD.
- `currency` (string), `currencySymbol` (string).
- `expiryDate` (string).
- `alreadyInvoiced` (bool) — a renewal `Repeat_Invoice` already produced an invoice.
- `invoicePaid` (bool) — whether that invoice is paid.
- `tld` (string).

**Auth:** Session/API key. Ownership enforced.

**Errors:**
- `401` — unauthenticated.
- `404` — `id` not owned by caller.
- `409` — `domain_status != \"active\"`.
- `4xx` — renewal not available for this TLD.

**Related calls:**
- **Submit renewal:** `postDomainRenewal`.
- **Pay existing renewal invoice:** `getDomainInvoices` → `initiatePayment`."
  [id int?]
  (check-required-params id)
  (call-api "/domains/{id}/renew" :get
            {:path-params   {"id" id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["sessionIdCookieAuth" "apiKeyAuth" "sessionIdHeaderAuth"]}))

(defn-spec get-domain-renewal success-text-response-spec
  "Read renewal pricing, expiry, and whether a renewal invoice already exists
  Returns renewal pricing, current expiry, Whois privacy availability, and whether an unpaid renewal invoice already exists for the domain. Use before triggering `postDomainRenewal` to render a renewal form and prevent duplicate invoices. Costs are converted to the customer's preferred currency. Sibling ops: `postDomainRenewal`, `getDomainInvoices`, `getDomainInfo`.

**Path param:**
- `id` (integer, required) — `domain_id` from `getDomainsList`.

**Returns:**
- `renewCost` (float) — renewal cost in `currency`.
- `whoisCost` (float) — Whois privacy renewal cost.
- `whoisAvailable` (bool) — privacy supported on this TLD.
- `currency` (string), `currencySymbol` (string).
- `expiryDate` (string).
- `alreadyInvoiced` (bool) — a renewal `Repeat_Invoice` already produced an invoice.
- `invoicePaid` (bool) — whether that invoice is paid.
- `tld` (string).

**Auth:** Session/API key. Ownership enforced.

**Errors:**
- `401` — unauthenticated.
- `404` — `id` not owned by caller.
- `409` — `domain_status != \"active\"`.
- `4xx` — renewal not available for this TLD.

**Related calls:**
- **Submit renewal:** `postDomainRenewal`.
- **Pay existing renewal invoice:** `getDomainInvoices` → `initiatePayment`."
  [id int?]
  (let [res (:data (get-domain-renewal-with-http-info id))]
    (if (:decode-models *api-context*)
       (st/decode success-text-response-spec res st/string-transformer)
       res)))


(defn-spec get-domain-search-with-http-info any?
  "Get registrar-suggested domain alternatives and bulk availability for a search term
  Returns registrar-suggested alternatives plus bulk availability data from OpenSRS for the supplied search term. Useful when a customer is brainstorming names. Pair with `getDomainLookup` to get full pricing and per-TLD order fields for any specific chosen result. Sibling ops: `postDomainSearch`, `getDomainLookup`, `getNewDomain`, `addDomain`.

**Path param:**
- `name` (string, required) — search term (e.g. `example` or `example.com`).

**Returns** (schema `DomainSearchResponse`):
- `success` (bool) — registrar call succeeded.
- `response_text` (string) — registrar response message.
- `response_time` (float) — registrar latency (seconds).
- `lookup` (array) — exact-match availability across the searched TLD set.
- `suggest` (array) — registrar's recommended alternative names with availability.
- `tlds` (array) — TLDs queried.

**Auth:** Public.

**Errors:**
- `422 Invalid Search Response!` — registrar returned no usable results.

**Related calls:**
- **Single-domain detail:** `getDomainLookup`.
- **One-shot order preview from a search term:** `postDomainSearch`."
  [name string?]
  (check-required-params name)
  (call-api "/domains/search/{name}" :get
            {:path-params   {"name" name }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["sessionIdCookieAuth" "apiKeyAuth" "sessionIdHeaderAuth"]}))

(defn-spec get-domain-search domain-search-response-spec
  "Get registrar-suggested domain alternatives and bulk availability for a search term
  Returns registrar-suggested alternatives plus bulk availability data from OpenSRS for the supplied search term. Useful when a customer is brainstorming names. Pair with `getDomainLookup` to get full pricing and per-TLD order fields for any specific chosen result. Sibling ops: `postDomainSearch`, `getDomainLookup`, `getNewDomain`, `addDomain`.

**Path param:**
- `name` (string, required) — search term (e.g. `example` or `example.com`).

**Returns** (schema `DomainSearchResponse`):
- `success` (bool) — registrar call succeeded.
- `response_text` (string) — registrar response message.
- `response_time` (float) — registrar latency (seconds).
- `lookup` (array) — exact-match availability across the searched TLD set.
- `suggest` (array) — registrar's recommended alternative names with availability.
- `tlds` (array) — TLDs queried.

**Auth:** Public.

**Errors:**
- `422 Invalid Search Response!` — registrar returned no usable results.

**Related calls:**
- **Single-domain detail:** `getDomainLookup`.
- **One-shot order preview from a search term:** `postDomainSearch`."
  [name string?]
  (let [res (:data (get-domain-search-with-http-info name))]
    (if (:decode-models *api-context*)
       (st/decode domain-search-response-spec res st/string-transformer)
       res)))


(defn-spec get-domain-transfer-with-http-info any?
  "Read OpenSRS transfer status for an in-progress domain transfer order
  Returns the OpenSRS transfer state for a domain order flagged as a transfer in `service_extra`. Use to poll an in-progress transfer; `pending_owner` means the customer must click the approval link in the email sent by OpenSRS to the registrant. Sibling ops: `postDomainTransfer` (re-poll), `getDomainContact` (set `auth_info`), `addDomain` (initiate new transfer).

**Path param:**
- `id` (integer, required) — `domain_id` from `getDomainsList`.

**Returns:**
- When not a transfer: `{transfer: false, message: \"...\"}`.
- When a transfer: `{transfer: true, info: {status, statusText, type, transferrable, reason}}` where `status` is one of:
  - `pending` — submitted to OpenSRS, awaiting state change.
  - `pending_owner` — **customer action required** (approve the OpenSRS email).
  - `pending_admin` — InterServer staff review.
  - `pending_registry` — registry processing.
  - `declined` — transfer rejected (see `reason`).
  - `completed` — transfer landed.
  - `undef` — unknown.

**Auth:** Session/API key. Ownership enforced.

**Errors:**
- `401` — unauthenticated.
- `404` — `id` not owned by caller.
- `409` — `domain_status != \"active\"`.
- Registrar communication failures returned as errors.

**Related calls:**
- **Re-poll:** `postDomainTransfer`.
- **Update auth_info:** `updateDomainContact`.
- **Initiate new transfer:** `addDomain` with `type=transfer`."
  [id int?]
  (check-required-params id)
  (call-api "/domains/{id}/transfer" :get
            {:path-params   {"id" id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["sessionIdCookieAuth" "apiKeyAuth" "sessionIdHeaderAuth"]}))

(defn-spec get-domain-transfer success-text-response-spec
  "Read OpenSRS transfer status for an in-progress domain transfer order
  Returns the OpenSRS transfer state for a domain order flagged as a transfer in `service_extra`. Use to poll an in-progress transfer; `pending_owner` means the customer must click the approval link in the email sent by OpenSRS to the registrant. Sibling ops: `postDomainTransfer` (re-poll), `getDomainContact` (set `auth_info`), `addDomain` (initiate new transfer).

**Path param:**
- `id` (integer, required) — `domain_id` from `getDomainsList`.

**Returns:**
- When not a transfer: `{transfer: false, message: \"...\"}`.
- When a transfer: `{transfer: true, info: {status, statusText, type, transferrable, reason}}` where `status` is one of:
  - `pending` — submitted to OpenSRS, awaiting state change.
  - `pending_owner` — **customer action required** (approve the OpenSRS email).
  - `pending_admin` — InterServer staff review.
  - `pending_registry` — registry processing.
  - `declined` — transfer rejected (see `reason`).
  - `completed` — transfer landed.
  - `undef` — unknown.

**Auth:** Session/API key. Ownership enforced.

**Errors:**
- `401` — unauthenticated.
- `404` — `id` not owned by caller.
- `409` — `domain_status != \"active\"`.
- Registrar communication failures returned as errors.

**Related calls:**
- **Re-poll:** `postDomainTransfer`.
- **Update auth_info:** `updateDomainContact`.
- **Initiate new transfer:** `addDomain` with `type=transfer`."
  [id int?]
  (let [res (:data (get-domain-transfer-with-http-info id))]
    (if (:decode-models *api-context*)
       (st/decode success-text-response-spec res st/string-transformer)
       res)))


(defn-spec get-domain-whois-privacy-with-http-info any?
  "Read Whois privacy availability, current state, and add-on pricing for a domain
  Returns Whois privacy state for the domain — whether the TLD supports privacy, whether it's currently enabled at OpenSRS, and the add-on cost. Some TLDs (e.g. `.us`, `.uk`, country-code variants) do not allow privacy regardless of pricing. Sibling op: `updateDomainWhoisPrivacy` (order/enable/disable).

**Path param:**
- `id` (integer, required) — `domain_id` from `getDomainsList`.

**Returns:**
- `available` (bool) — privacy supported for this TLD (via `get_domain_tld_whois_privacy()`).
- `cost` (float) — annual privacy cost in `currency`.
- `currency` (string), `currencySymbol` (string).
- `whoisPrivacy` (string enum) — `enabled` / `disabled` (live OpenSRS state).
- `repeatInvoice` (object|null) — current privacy add-on `Repeat_Invoice` row, if one exists.

**Auth:** Session/API key. Ownership enforced.

**Errors:**
- `401` — unauthenticated.
- `404` — `id` not owned by caller.

**Related calls:**
- **Order/enable/disable:** `updateDomainWhoisPrivacy`.
- **Billing:** `getDomainInvoices`."
  [id int?]
  (check-required-params id)
  (call-api "/domains/{id}/whois" :get
            {:path-params   {"id" id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["sessionIdCookieAuth" "apiKeyAuth" "sessionIdHeaderAuth"]}))

(defn-spec get-domain-whois-privacy success-text-response-spec
  "Read Whois privacy availability, current state, and add-on pricing for a domain
  Returns Whois privacy state for the domain — whether the TLD supports privacy, whether it's currently enabled at OpenSRS, and the add-on cost. Some TLDs (e.g. `.us`, `.uk`, country-code variants) do not allow privacy regardless of pricing. Sibling op: `updateDomainWhoisPrivacy` (order/enable/disable).

**Path param:**
- `id` (integer, required) — `domain_id` from `getDomainsList`.

**Returns:**
- `available` (bool) — privacy supported for this TLD (via `get_domain_tld_whois_privacy()`).
- `cost` (float) — annual privacy cost in `currency`.
- `currency` (string), `currencySymbol` (string).
- `whoisPrivacy` (string enum) — `enabled` / `disabled` (live OpenSRS state).
- `repeatInvoice` (object|null) — current privacy add-on `Repeat_Invoice` row, if one exists.

**Auth:** Session/API key. Ownership enforced.

**Errors:**
- `401` — unauthenticated.
- `404` — `id` not owned by caller.

**Related calls:**
- **Order/enable/disable:** `updateDomainWhoisPrivacy`.
- **Billing:** `getDomainInvoices`."
  [id int?]
  (let [res (:data (get-domain-whois-privacy-with-http-info id))]
    (if (:decode-models *api-context*)
       (st/decode success-text-response-spec res st/string-transformer)
       res)))


(defn-spec get-domains-list-with-http-info any?
  "List every domain registration on the account with billing and registration metadata
  Enumerates every domain registration owned by the authenticated customer — hostname, expiry, recurring cost, status. The canonical entry point for finding a `domain_id` to pass into other Domains endpoints. Empty array means the account has no domains (not an error). Sibling ops: `getDomainInfo`, `getNewDomain`, `getDomainLookup`, `addDomain`, `CancelDomain`.

**Path/Query/Body:** None.

**Returns:** Array of `DomainRow`:
- `domain_id` (string) — canonical id; pass to every `/domains/{id}/*` endpoint.
- `domain_hostname` (string) — registered FQDN.
- `domain_expire_date` (string ISO 8601 or empty) — registry expiry; empty when not yet activated or unknown.
- `cost` (decimal string) — recurring renewal cost in the domain's billing currency.
- `domain_status` (string enum) — `pending` / `active` / `expired` / `canceled` / `pending-transfer`.

**Auth:** Session/API key. Filtered by `domain_custid`.

**Errors:**
- `401` — unauthenticated.

**Related calls:**
- **Per-domain detail:** `getDomainInfo`.
- **Manage:** `getDomainContact` / `updateDomainContact`, `getDomainNameservers` / `updateDomainNameservers`, `getDomainDnssec` / `addDomainDnssec`, `getDomainWhoisPrivacy` / `updateDomainWhoisPrivacy`.
- **Renew / transfer:** `getDomainRenewal` / `postDomainRenewal`, `getDomainTransfer`.
- **Order a new domain:** `getDomainLookup` → `getNewDomain` → `addDomain`.
- **Cancel:** `CancelDomain`."
  []
  (call-api "/domains" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["sessionIdCookieAuth" "apiKeyAuth" "sessionIdHeaderAuth"]}))

(defn-spec get-domains-list (s/coll-of domain-row-spec)
  "List every domain registration on the account with billing and registration metadata
  Enumerates every domain registration owned by the authenticated customer — hostname, expiry, recurring cost, status. The canonical entry point for finding a `domain_id` to pass into other Domains endpoints. Empty array means the account has no domains (not an error). Sibling ops: `getDomainInfo`, `getNewDomain`, `getDomainLookup`, `addDomain`, `CancelDomain`.

**Path/Query/Body:** None.

**Returns:** Array of `DomainRow`:
- `domain_id` (string) — canonical id; pass to every `/domains/{id}/*` endpoint.
- `domain_hostname` (string) — registered FQDN.
- `domain_expire_date` (string ISO 8601 or empty) — registry expiry; empty when not yet activated or unknown.
- `cost` (decimal string) — recurring renewal cost in the domain's billing currency.
- `domain_status` (string enum) — `pending` / `active` / `expired` / `canceled` / `pending-transfer`.

**Auth:** Session/API key. Filtered by `domain_custid`.

**Errors:**
- `401` — unauthenticated.

**Related calls:**
- **Per-domain detail:** `getDomainInfo`.
- **Manage:** `getDomainContact` / `updateDomainContact`, `getDomainNameservers` / `updateDomainNameservers`, `getDomainDnssec` / `addDomainDnssec`, `getDomainWhoisPrivacy` / `updateDomainWhoisPrivacy`.
- **Renew / transfer:** `getDomainRenewal` / `postDomainRenewal`, `getDomainTransfer`.
- **Order a new domain:** `getDomainLookup` → `getNewDomain` → `addDomain`.
- **Cancel:** `CancelDomain`."
  []
  (let [res (:data (get-domains-list-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of domain-row-spec) res st/string-transformer)
       res)))


(defn-spec get-domains-welcome-email-with-http-info any?
  "Resend the domain welcome email with registration details and management instructions
  Resends the domain welcome email (registration details, management instructions, EPP code where applicable) to the customer's address on file. Idempotent — safe to call multiple times. Sibling welcome-email endpoints: `getVpsWelcomeEmail`, `getWebsitesWelcomeEmail`, `getMailWelcomeEmail`.

**Path param:**
- `id` (integer, required) — `domain_id` from `getDomainsList`.

**Body:** None.

**Returns:** `{text: \"Welcome Email has been resent.\"}`.

**Side effects:**
- Sends an email to the account's billing email address.

**Auth:** Session/API key. Ownership enforced.

**Errors:**
- `401` — unauthenticated.
- `404 Invalid Service Passed` — `id` not owned by caller.
- `409 Service is not active` — `domain_status != \"active\"`.

**Related calls:**
- **Domain detail:** `getDomainInfo`.
- **Contact info:** `getDomainContact`."
  [id int?]
  (check-required-params id)
  (call-api "/domains/{id}/welcome_email" :get
            {:path-params   {"id" id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["sessionIdCookieAuth" "apiKeyAuth" "sessionIdHeaderAuth"]}))

(defn-spec get-domains-welcome-email success-text-response-spec
  "Resend the domain welcome email with registration details and management instructions
  Resends the domain welcome email (registration details, management instructions, EPP code where applicable) to the customer's address on file. Idempotent — safe to call multiple times. Sibling welcome-email endpoints: `getVpsWelcomeEmail`, `getWebsitesWelcomeEmail`, `getMailWelcomeEmail`.

**Path param:**
- `id` (integer, required) — `domain_id` from `getDomainsList`.

**Body:** None.

**Returns:** `{text: \"Welcome Email has been resent.\"}`.

**Side effects:**
- Sends an email to the account's billing email address.

**Auth:** Session/API key. Ownership enforced.

**Errors:**
- `401` — unauthenticated.
- `404 Invalid Service Passed` — `id` not owned by caller.
- `409 Service is not active` — `domain_status != \"active\"`.

**Related calls:**
- **Domain detail:** `getDomainInfo`.
- **Contact info:** `getDomainContact`."
  [id int?]
  (let [res (:data (get-domains-welcome-email-with-http-info id))]
    (if (:decode-models *api-context*)
       (st/decode success-text-response-spec res st/string-transformer)
       res)))


(defn-spec get-new-domain-with-http-info any?
  "Read the buyable domain TLD service catalog and Whois privacy pricing
  Returns the catalog of buyable TLD services and the base Whois-privacy add-on pricing. Use to resolve a hostname's TLD to a `service_id` for ordering, or to render a TLD picker. Pair with `getDomainLookup` for per-domain pricing and `addDomain` to commit. Sibling ops: `getDomainLookup`, `putDomains`, `patchDomains`, `addDomain`.

**Path/Query/Body:** None.

**Returns** (schema `DomainOrder`):
- `whoisPrivacyCost` (float) — base per-year privacy cost (`OPENSRS_PRIVACY_COST` constant).
- `whoisPrivacyCostTotal` (object) — privacy cost per TLD multiplied by that TLD's term length: `{<tld>: <total-cost>}`.
- `services` (object) — `{<services_id>: {services_name, services_cost, services_field1 (tld), ...}}`. `services_ourcost` is stripped.
- `tldServices` (object) — TLD → `services_id` lookup map (e.g. `{\"com\": 100, \"net\": 101, \"io\": 234}`).

**Auth:** Session/API key.

**Errors:**
- `401` — unauthenticated.

**Related calls:**
- **Per-domain pricing:** `getDomainLookup`.
- **Preview order fields:** `putDomains`.
- **Validate fields:** `patchDomains`.
- **Place order:** `addDomain`."
  []
  (call-api "/domains/order" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["sessionIdCookieAuth" "apiKeyAuth" "sessionIdHeaderAuth"]}))

(defn-spec get-new-domain domain-order-spec
  "Read the buyable domain TLD service catalog and Whois privacy pricing
  Returns the catalog of buyable TLD services and the base Whois-privacy add-on pricing. Use to resolve a hostname's TLD to a `service_id` for ordering, or to render a TLD picker. Pair with `getDomainLookup` for per-domain pricing and `addDomain` to commit. Sibling ops: `getDomainLookup`, `putDomains`, `patchDomains`, `addDomain`.

**Path/Query/Body:** None.

**Returns** (schema `DomainOrder`):
- `whoisPrivacyCost` (float) — base per-year privacy cost (`OPENSRS_PRIVACY_COST` constant).
- `whoisPrivacyCostTotal` (object) — privacy cost per TLD multiplied by that TLD's term length: `{<tld>: <total-cost>}`.
- `services` (object) — `{<services_id>: {services_name, services_cost, services_field1 (tld), ...}}`. `services_ourcost` is stripped.
- `tldServices` (object) — TLD → `services_id` lookup map (e.g. `{\"com\": 100, \"net\": 101, \"io\": 234}`).

**Auth:** Session/API key.

**Errors:**
- `401` — unauthenticated.

**Related calls:**
- **Per-domain pricing:** `getDomainLookup`.
- **Preview order fields:** `putDomains`.
- **Validate fields:** `patchDomains`.
- **Place order:** `addDomain`."
  []
  (let [res (:data (get-new-domain-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode domain-order-spec res st/string-transformer)
       res)))


(defn-spec patch-domains-with-http-info any?
  "Validate posted domain-order field values before committing — dry run
  Validates posted contact/registration field values via `validate_domain_fields()`. Enforces per-TLD requirements (nexus codes, postal formats, registrant org rules, EPP `auth_info` syntax for transfers, etc.). Use as the last step before `addDomain` to surface form errors cheaply. No commit — no invoice, no service record. Sibling ops: `putDomains`, `addDomain`, `getDomainLookup`, `getNewDomain`.

**Body fields:**
- `hostname` (string, required).
- `type` (string, optional, default `register`) — `register` or `transfer`.
- All per-TLD fields from `putDomains.domainFields`.

**Returns:** `\"success\"` (string) when all fields validate; otherwise an `errors` object describing the failing fields and per-field validation messages.

**Auth:** Session/API key.

**Errors:**
- `400 Missing hostname parameter`.
- `400 Unable to determine service type for this domain TLD.`.
- `401` — unauthenticated.
- Validation error object — fields-level failures.

**Related calls:**
- **Schema:** `putDomains` (returns the field set to validate).
- **Commit:** `addDomain`."
  [domain-order-request domain-order-request]
  (check-required-params domain-order-request)
  (call-api "/domains/order" :patch
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :body-param    domain-order-request
             :content-types ["application/json"]
             :accepts       ["application/json"]
             :auth-names    ["sessionIdCookieAuth" "apiKeyAuth" "sessionIdHeaderAuth"]}))

(defn-spec patch-domains any?
  "Validate posted domain-order field values before committing — dry run
  Validates posted contact/registration field values via `validate_domain_fields()`. Enforces per-TLD requirements (nexus codes, postal formats, registrant org rules, EPP `auth_info` syntax for transfers, etc.). Use as the last step before `addDomain` to surface form errors cheaply. No commit — no invoice, no service record. Sibling ops: `putDomains`, `addDomain`, `getDomainLookup`, `getNewDomain`.

**Body fields:**
- `hostname` (string, required).
- `type` (string, optional, default `register`) — `register` or `transfer`.
- All per-TLD fields from `putDomains.domainFields`.

**Returns:** `\"success\"` (string) when all fields validate; otherwise an `errors` object describing the failing fields and per-field validation messages.

**Auth:** Session/API key.

**Errors:**
- `400 Missing hostname parameter`.
- `400 Unable to determine service type for this domain TLD.`.
- `401` — unauthenticated.
- Validation error object — fields-level failures.

**Related calls:**
- **Schema:** `putDomains` (returns the field set to validate).
- **Commit:** `addDomain`."
  [domain-order-request domain-order-request]
  (let [res (:data (patch-domains-with-http-info domain-order-request))]
    (if (:decode-models *api-context*)
       (st/decode any? res st/string-transformer)
       res)))


(defn-spec post-domain-renewal-with-http-info any?
  "Submit a domain renewal request and generate the renewal invoice
  Generates a renewal invoice for the domain (and optionally the Whois privacy add-on). Updates the domain's `Repeat_Invoice` cost/frequency/currency to the current price, then calls `Repeat_Invoice::invoice()` to produce a fresh invoice. **Real money.** If a prior unpaid renewal invoice already exists, returns an error directing the user to pay that one instead — prevents double-billing. Renewal is not supported for some TLDs. Sibling ops: `getDomainRenewal`, `getDomainInvoices`, `initiatePayment`.

**Path param:**
- `id` (integer, required) — `domain_id` from `getDomainsList`.

**Body fields:**
- `whois_privacy` (string, optional) — `enable` to add or keep the privacy add-on; otherwise the existing privacy `Repeat_Invoice` is marked `deleted=1` on renewal.

**Returns:** `{text, invoices, invoiceIds, payUrl}` — pass `invoiceIds` to `initiatePayment` to settle.

**Side effects:**
- Updates `repeat_invoices` cost/frequency/currency.
- Inserts a new `invoices` row for the renewal period.
- When `whois_privacy=enable`: extends the privacy add-on `repeat_invoices` and creates its renewal invoice.
- When `whois_privacy` not enabled: marks the existing privacy `repeat_invoices` row `deleted=1`.

**Auth:** Session/API key. Ownership enforced.

**Errors:**
- `401` — unauthenticated.
- `404` — `id` not owned by caller.
- `409` — `domain_status != \"active\"`, or unpaid renewal invoice already exists, or already-paid renewal exists.
- Registrar errors surfaced as 4xx.

**Related calls:**
- **Preview:** `getDomainRenewal`.
- **Pay:** `initiatePayment` with the returned `invoiceIds`.
- **Cancel auto-renew:** `CancelDomain`."
  [id int?]
  (check-required-params id)
  (call-api "/domains/{id}/renew" :post
            {:path-params   {"id" id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["sessionIdCookieAuth" "apiKeyAuth" "sessionIdHeaderAuth"]}))

(defn-spec post-domain-renewal success-text-response-spec
  "Submit a domain renewal request and generate the renewal invoice
  Generates a renewal invoice for the domain (and optionally the Whois privacy add-on). Updates the domain's `Repeat_Invoice` cost/frequency/currency to the current price, then calls `Repeat_Invoice::invoice()` to produce a fresh invoice. **Real money.** If a prior unpaid renewal invoice already exists, returns an error directing the user to pay that one instead — prevents double-billing. Renewal is not supported for some TLDs. Sibling ops: `getDomainRenewal`, `getDomainInvoices`, `initiatePayment`.

**Path param:**
- `id` (integer, required) — `domain_id` from `getDomainsList`.

**Body fields:**
- `whois_privacy` (string, optional) — `enable` to add or keep the privacy add-on; otherwise the existing privacy `Repeat_Invoice` is marked `deleted=1` on renewal.

**Returns:** `{text, invoices, invoiceIds, payUrl}` — pass `invoiceIds` to `initiatePayment` to settle.

**Side effects:**
- Updates `repeat_invoices` cost/frequency/currency.
- Inserts a new `invoices` row for the renewal period.
- When `whois_privacy=enable`: extends the privacy add-on `repeat_invoices` and creates its renewal invoice.
- When `whois_privacy` not enabled: marks the existing privacy `repeat_invoices` row `deleted=1`.

**Auth:** Session/API key. Ownership enforced.

**Errors:**
- `401` — unauthenticated.
- `404` — `id` not owned by caller.
- `409` — `domain_status != \"active\"`, or unpaid renewal invoice already exists, or already-paid renewal exists.
- Registrar errors surfaced as 4xx.

**Related calls:**
- **Preview:** `getDomainRenewal`.
- **Pay:** `initiatePayment` with the returned `invoiceIds`.
- **Cancel auto-renew:** `CancelDomain`."
  [id int?]
  (let [res (:data (post-domain-renewal-with-http-info id))]
    (if (:decode-models *api-context*)
       (st/decode success-text-response-spec res st/string-transformer)
       res)))


(defn-spec post-domain-search-with-http-info any?
  "Get the full order form data for a hostname in one round-trip (search → order preview)
  Returns the complete order-form payload — pricing, service catalog entry, per-TLD order fields — for the hostname in a single POST. Equivalent to calling `getDomainLookup` + `getNewDomain` + `putDomains` and merging the results, but with one round-trip. The path `name` is moved server-side into `$_POST['hostname']` and passed to `getOrderDomainData(true)`. Sibling ops: `getDomainSearch`, `getDomainLookup`, `getNewDomain`, `addDomain`.

**Path param:**
- `name` (string, required) — hostname (e.g. `example.com`).

**Body:** None.

**Returns:** Combined order-data response — pricing, service catalog entry, form fields ready to populate for `addDomain`.

**Auth:** Session/API key (path is `client_api`, but called publicly).

**Errors:**
- `4xx` — hostname cannot be resolved to a TLD service.

**Related calls:**
- **Place order:** `addDomain` with the returned fields."
  [name string?]
  (check-required-params name)
  (call-api "/domains/search/{name}" :post
            {:path-params   {"name" name }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["sessionIdCookieAuth" "apiKeyAuth" "sessionIdHeaderAuth"]}))

(defn-spec post-domain-search any?
  "Get the full order form data for a hostname in one round-trip (search → order preview)
  Returns the complete order-form payload — pricing, service catalog entry, per-TLD order fields — for the hostname in a single POST. Equivalent to calling `getDomainLookup` + `getNewDomain` + `putDomains` and merging the results, but with one round-trip. The path `name` is moved server-side into `$_POST['hostname']` and passed to `getOrderDomainData(true)`. Sibling ops: `getDomainSearch`, `getDomainLookup`, `getNewDomain`, `addDomain`.

**Path param:**
- `name` (string, required) — hostname (e.g. `example.com`).

**Body:** None.

**Returns:** Combined order-data response — pricing, service catalog entry, form fields ready to populate for `addDomain`.

**Auth:** Session/API key (path is `client_api`, but called publicly).

**Errors:**
- `4xx` — hostname cannot be resolved to a TLD service.

**Related calls:**
- **Place order:** `addDomain` with the returned fields."
  [name string?]
  (let [res (:data (post-domain-search-with-http-info name))]
    (if (:decode-models *api-context*)
       (st/decode any? res st/string-transformer)
       res)))


(defn-spec post-domain-transfer-with-http-info any?
  "Re-poll OpenSRS transfer status for a domain order via POST
  Re-polls OpenSRS transfer state. Behaves identically to `getDomainTransfer` (same `go()` handler) — provided so dashboards can refresh via a form-action pattern. **This endpoint does not initiate transfers** — to start a transfer, use `addDomain` with `type=transfer`. Sibling ops: `getDomainTransfer`, `addDomain` (initiate), `getDomainContact` (set `auth_info`).

**Path param:**
- `id` (integer, required) — `domain_id` from `getDomainsList`.

**Body:** None.

**Returns:** Same payload as `getDomainTransfer`.

**Auth:** Session/API key. Ownership enforced.

**Errors:**
- `401` — unauthenticated.
- `404` — `id` not owned by caller.
- `409` — `domain_status != \"active\"`.

**Related calls:**
- **Read:** `getDomainTransfer`.
- **Initiate new transfer:** `addDomain` with `type=transfer`."
  [id int?]
  (check-required-params id)
  (call-api "/domains/{id}/transfer" :post
            {:path-params   {"id" id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["sessionIdCookieAuth" "apiKeyAuth" "sessionIdHeaderAuth"]}))

(defn-spec post-domain-transfer success-text-response-spec
  "Re-poll OpenSRS transfer status for a domain order via POST
  Re-polls OpenSRS transfer state. Behaves identically to `getDomainTransfer` (same `go()` handler) — provided so dashboards can refresh via a form-action pattern. **This endpoint does not initiate transfers** — to start a transfer, use `addDomain` with `type=transfer`. Sibling ops: `getDomainTransfer`, `addDomain` (initiate), `getDomainContact` (set `auth_info`).

**Path param:**
- `id` (integer, required) — `domain_id` from `getDomainsList`.

**Body:** None.

**Returns:** Same payload as `getDomainTransfer`.

**Auth:** Session/API key. Ownership enforced.

**Errors:**
- `401` — unauthenticated.
- `404` — `id` not owned by caller.
- `409` — `domain_status != \"active\"`.

**Related calls:**
- **Read:** `getDomainTransfer`.
- **Initiate new transfer:** `addDomain` with `type=transfer`."
  [id int?]
  (let [res (:data (post-domain-transfer-with-http-info id))]
    (if (:decode-models *api-context*)
       (st/decode success-text-response-spec res st/string-transformer)
       res)))


(defn-spec put-domains-with-http-info any?
  "Preview per-TLD field requirements for a domain order — no commit
  Pre-flight that returns the per-TLD field schema required to register or transfer the supplied hostname. The schema varies significantly by TLD: `.us` requires nexus codes, `.ca` requires CIRA legal type, `.eu` has residency rules, `.fr` requires VAT for orgs, etc. Values pre-populate from the account profile when possible. No commit — use `patchDomains` to validate filled values, then `addDomain` to place the order. Sibling ops: `getNewDomain`, `getDomainLookup`, `patchDomains`, `addDomain`.

**Body fields:**
- `hostname` (string, required) — FQDN.
- `type` (string, optional, default `register`) — `register` or `transfer`.
- `coupon` (string, optional) — coupon code.

**Returns:** `{domainFields: {<field_name>: {label, type, options, value, required, ...}}}` — schema for the dynamic order form.

**Auth:** Session/API key.

**Errors:**
- `400 Missing hostname parameter`.
- `400 Unable to determine service type for this domain TLD.` — unknown TLD.
- `401` — unauthenticated.

**Related calls:**
- **Catalog first:** `getNewDomain`.
- **Validate filled values:** `patchDomains`.
- **Place order:** `addDomain`."
  [domain-order-request domain-order-request]
  (check-required-params domain-order-request)
  (call-api "/domains/order" :put
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :body-param    domain-order-request
             :content-types ["application/json"]
             :accepts       ["application/json"]
             :auth-names    ["sessionIdCookieAuth" "apiKeyAuth" "sessionIdHeaderAuth"]}))

(defn-spec put-domains any?
  "Preview per-TLD field requirements for a domain order — no commit
  Pre-flight that returns the per-TLD field schema required to register or transfer the supplied hostname. The schema varies significantly by TLD: `.us` requires nexus codes, `.ca` requires CIRA legal type, `.eu` has residency rules, `.fr` requires VAT for orgs, etc. Values pre-populate from the account profile when possible. No commit — use `patchDomains` to validate filled values, then `addDomain` to place the order. Sibling ops: `getNewDomain`, `getDomainLookup`, `patchDomains`, `addDomain`.

**Body fields:**
- `hostname` (string, required) — FQDN.
- `type` (string, optional, default `register`) — `register` or `transfer`.
- `coupon` (string, optional) — coupon code.

**Returns:** `{domainFields: {<field_name>: {label, type, options, value, required, ...}}}` — schema for the dynamic order form.

**Auth:** Session/API key.

**Errors:**
- `400 Missing hostname parameter`.
- `400 Unable to determine service type for this domain TLD.` — unknown TLD.
- `401` — unauthenticated.

**Related calls:**
- **Catalog first:** `getNewDomain`.
- **Validate filled values:** `patchDomains`.
- **Place order:** `addDomain`."
  [domain-order-request domain-order-request]
  (let [res (:data (put-domains-with-http-info domain-order-request))]
    (if (:decode-models *api-context*)
       (st/decode any? res st/string-transformer)
       res)))


(defn-spec update-domain-contact-with-http-info any?
  "Update registrant/admin contact details and push them to OpenSRS
  Pushes updated contact data to the registrar via OpenSRS `provModify`, applied to admin/tech/billing/owner contact roles via `also_apply_to`. Active services apply changes immediately at the registrar; pending services may trigger `queue_process_payment` when the order is paid. **Domain must not be locked** — locked domains return an error directing the user to unlock first. **Note:** registrant-name changes on some TLDs (e.g. `.com`, `.net`) require a 60-day transfer lock per ICANN rules. Sibling ops: `getDomainContact`, `getDomainInfo`.

**Path param:**
- `id` (integer, required) — `domain_id` from `getDomainsList`.

**Body fields (JSON or multipart, schema `DomainContactDetails`):**
Same fields returned by `getDomainContact`: `firstname`, `lastname`, `email`, `address`/`2`/`3`, `city`, `state`, `zip`, `country`, `phone`, `fax`, `company`, optional `auth_info`, optional `transfer`.

**Returns:** `SuccessTextResponse`.

**Side effects:**
- Calls OpenSRS `provModify` with `also_apply_to=admin,tech,billing,owner`.
- May trigger ICANN 60-day transfer lock for registrant-name changes on legacy TLDs.

**Auth:** Session/API key. Ownership enforced.

**Errors:**
- `401` — unauthenticated.
- `404` — `id` not owned by caller.
- `409` — domain is locked (unlock first).
- Registrar error (e.g. OpenSRS error code 465 / 466) surfaced as 4xx.

**Related calls:**
- **Read first:** `getDomainContact`.
- **Transfer status:** `getDomainTransfer`."
  [id int?, domain-contact-details domain-contact-details]
  (check-required-params id domain-contact-details)
  (call-api "/domains/{id}/contact" :post
            {:path-params   {"id" id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :body-param    domain-contact-details
             :content-types ["application/json" "multipart/form-data"]
             :accepts       ["application/json"]
             :auth-names    ["sessionIdCookieAuth" "apiKeyAuth" "sessionIdHeaderAuth"]}))

(defn-spec update-domain-contact success-text-response-spec
  "Update registrant/admin contact details and push them to OpenSRS
  Pushes updated contact data to the registrar via OpenSRS `provModify`, applied to admin/tech/billing/owner contact roles via `also_apply_to`. Active services apply changes immediately at the registrar; pending services may trigger `queue_process_payment` when the order is paid. **Domain must not be locked** — locked domains return an error directing the user to unlock first. **Note:** registrant-name changes on some TLDs (e.g. `.com`, `.net`) require a 60-day transfer lock per ICANN rules. Sibling ops: `getDomainContact`, `getDomainInfo`.

**Path param:**
- `id` (integer, required) — `domain_id` from `getDomainsList`.

**Body fields (JSON or multipart, schema `DomainContactDetails`):**
Same fields returned by `getDomainContact`: `firstname`, `lastname`, `email`, `address`/`2`/`3`, `city`, `state`, `zip`, `country`, `phone`, `fax`, `company`, optional `auth_info`, optional `transfer`.

**Returns:** `SuccessTextResponse`.

**Side effects:**
- Calls OpenSRS `provModify` with `also_apply_to=admin,tech,billing,owner`.
- May trigger ICANN 60-day transfer lock for registrant-name changes on legacy TLDs.

**Auth:** Session/API key. Ownership enforced.

**Errors:**
- `401` — unauthenticated.
- `404` — `id` not owned by caller.
- `409` — domain is locked (unlock first).
- Registrar error (e.g. OpenSRS error code 465 / 466) surfaced as 4xx.

**Related calls:**
- **Read first:** `getDomainContact`.
- **Transfer status:** `getDomainTransfer`."
  [id int?, domain-contact-details domain-contact-details]
  (let [res (:data (update-domain-contact-with-http-info id domain-contact-details))]
    (if (:decode-models *api-context*)
       (st/decode success-text-response-spec res st/string-transformer)
       res)))


(defn-spec update-domain-info-with-http-info any?
  "POST mutation hook for the domain detail page (use dedicated ops where possible)
  Account-level write-back hook for the domain service record. Runs the same `View::go()` handler as `getDomainInfo` — it does NOT push registrar-side changes by itself. **For specific changes use the dedicated endpoints** — they push to OpenSRS where appropriate. Sibling ops: `getDomainInfo`, `updateDomainContact`, `updateDomainNameservers`, `addDomainDnssec`, `updateDomainWhoisPrivacy`.

**Path param:**
- `id` (integer, required) — `domain_id` from `getDomainsList`.

**Body:** Form fields matching the domain service record.

**Returns:** `SuccessTextResponse`.

**Auth:** Session/API key. Ownership enforced.

**Errors:**
- `401` — unauthenticated.
- `404` — `id` not owned by caller.

**Prefer these dedicated endpoints:**
- **Registrant/admin contact:** `updateDomainContact` (pushes to OpenSRS).
- **Nameservers:** `updateDomainNameservers`, `addDomainNameserver`, `deleteDomainNameserver`.
- **DNSSEC:** `addDomainDnssec`, `deleteDomainDnssec`.
- **Whois privacy:** `updateDomainWhoisPrivacy`.
- **Renew:** `postDomainRenewal`.
- **Cancel:** `CancelDomain`."
  [id int?]
  (check-required-params id)
  (call-api "/domains/{id}" :post
            {:path-params   {"id" id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["sessionIdCookieAuth" "apiKeyAuth" "sessionIdHeaderAuth"]}))

(defn-spec update-domain-info success-text-response-spec
  "POST mutation hook for the domain detail page (use dedicated ops where possible)
  Account-level write-back hook for the domain service record. Runs the same `View::go()` handler as `getDomainInfo` — it does NOT push registrar-side changes by itself. **For specific changes use the dedicated endpoints** — they push to OpenSRS where appropriate. Sibling ops: `getDomainInfo`, `updateDomainContact`, `updateDomainNameservers`, `addDomainDnssec`, `updateDomainWhoisPrivacy`.

**Path param:**
- `id` (integer, required) — `domain_id` from `getDomainsList`.

**Body:** Form fields matching the domain service record.

**Returns:** `SuccessTextResponse`.

**Auth:** Session/API key. Ownership enforced.

**Errors:**
- `401` — unauthenticated.
- `404` — `id` not owned by caller.

**Prefer these dedicated endpoints:**
- **Registrant/admin contact:** `updateDomainContact` (pushes to OpenSRS).
- **Nameservers:** `updateDomainNameservers`, `addDomainNameserver`, `deleteDomainNameserver`.
- **DNSSEC:** `addDomainDnssec`, `deleteDomainDnssec`.
- **Whois privacy:** `updateDomainWhoisPrivacy`.
- **Renew:** `postDomainRenewal`.
- **Cancel:** `CancelDomain`."
  [id int?]
  (let [res (:data (update-domain-info-with-http-info id))]
    (if (:decode-models *api-context*)
       (st/decode success-text-response-spec res st/string-transformer)
       res)))


(defn-spec update-domain-nameservers-with-http-info any?
  "Replace the full authoritative-nameserver delegation list at the registrar
  Atomically replaces the domain's authoritative-nameserver delegation list via OpenSRS `nsAdvancedUpdt` with `op_type=assign`. **Domain must be unlocked.** Use this to switch DNS providers (e.g. point at InterServer `cdns1`/`cdns2`, Cloudflare, AWS Route53, etc.). **Replaces the full set in one call** — partial updates are not supported through this endpoint. To register a new glue record (host + IP) at the registry, use `addDomainNameserver`. Sibling ops: `getDomainNameservers`, `addDomainNameserver`, `deleteDomainNameserver`, `addDnsDomain` (host a zone at InterServer).

**Path param:**
- `id` (integer, required) — `domain_id` from `getDomainsList`.

**Body fields (JSON or multipart, schema `DomainNameserverPutRequest`):**
- `nameserver[]` (array of strings, required) — FQDN strings (e.g. `[\"ns1.example.com\", \"ns2.example.com\"]`). Trimmed; empty entries dropped server-side.

**Returns:** `SuccessTextResponse` on registrar `is_success=1`.

**Auth:** Session/API key. Ownership enforced.

**Errors:**
- `401` — unauthenticated.
- `404` — `id` not owned by caller.
- `409` — `domain_status != \"active\"` or domain locked.
- Registrar errors surfaced as 4xx.

**Related calls:**
- **Read current set:** `getDomainNameservers`.
- **Register a glue record:** `addDomainNameserver`.
- **Host the DNS zone at InterServer:** `addDnsDomain` (DNS tag)."
  [id int?, domain-nameserver-put-request domain-nameserver-put-request]
  (check-required-params id domain-nameserver-put-request)
  (call-api "/domains/{id}/nameservers" :put
            {:path-params   {"id" id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :body-param    domain-nameserver-put-request
             :content-types ["application/json" "multipart/form-data"]
             :accepts       ["application/json"]
             :auth-names    ["sessionIdCookieAuth" "apiKeyAuth" "sessionIdHeaderAuth"]}))

(defn-spec update-domain-nameservers text-response-spec
  "Replace the full authoritative-nameserver delegation list at the registrar
  Atomically replaces the domain's authoritative-nameserver delegation list via OpenSRS `nsAdvancedUpdt` with `op_type=assign`. **Domain must be unlocked.** Use this to switch DNS providers (e.g. point at InterServer `cdns1`/`cdns2`, Cloudflare, AWS Route53, etc.). **Replaces the full set in one call** — partial updates are not supported through this endpoint. To register a new glue record (host + IP) at the registry, use `addDomainNameserver`. Sibling ops: `getDomainNameservers`, `addDomainNameserver`, `deleteDomainNameserver`, `addDnsDomain` (host a zone at InterServer).

**Path param:**
- `id` (integer, required) — `domain_id` from `getDomainsList`.

**Body fields (JSON or multipart, schema `DomainNameserverPutRequest`):**
- `nameserver[]` (array of strings, required) — FQDN strings (e.g. `[\"ns1.example.com\", \"ns2.example.com\"]`). Trimmed; empty entries dropped server-side.

**Returns:** `SuccessTextResponse` on registrar `is_success=1`.

**Auth:** Session/API key. Ownership enforced.

**Errors:**
- `401` — unauthenticated.
- `404` — `id` not owned by caller.
- `409` — `domain_status != \"active\"` or domain locked.
- Registrar errors surfaced as 4xx.

**Related calls:**
- **Read current set:** `getDomainNameservers`.
- **Register a glue record:** `addDomainNameserver`.
- **Host the DNS zone at InterServer:** `addDnsDomain` (DNS tag)."
  [id int?, domain-nameserver-put-request domain-nameserver-put-request]
  (let [res (:data (update-domain-nameservers-with-http-info id domain-nameserver-put-request))]
    (if (:decode-models *api-context*)
       (st/decode text-response-spec res st/string-transformer)
       res)))


(defn-spec update-domain-whois-privacy-with-http-info any?
  "Order, enable, or cancel the Whois privacy add-on for a domain
  Manages the Whois privacy add-on. Behavior branches on `action`:
- **`order`**: creates an add-on `Repeat_Invoice` and emits the first invoice; pass the returned `payUrl` to the customer or use `initiatePayment` with `invoiceId`. **Real money.**
- **`enable`**: activates Whois privacy at OpenSRS — call after the invoice is paid (calls `post_payment_processing_new`).
- **`disableCancel`**: disables Whois privacy at OpenSRS and marks the add-on `Repeat_Invoice` `deleted=1`.
- **(no action)**: returns current state — same shape as `getDomainWhoisPrivacy`.

Sibling ops: `getDomainWhoisPrivacy`, `getDomainInvoices`, `initiatePayment`.

**Path param:**
- `id` (integer, required) — `domain_id` from `getDomainsList`.

**Body fields (JSON or multipart, schema `DomainWhoisPrivacyRequest`):**
- `action` (string, optional) — one of `order` / `enable` / `disableCancel`. Omit for status.

**Returns:** (varies by action)
- `order`: `{text, invoiceId, repeatInvoiceId, payUrl}`.
- `enable` / `disableCancel`: `{text}`.
- No action: `{whoisPrivacy, cost, currency, currencySymbol}`.

**Side effects:**
- `order`: inserts add-on `repeat_invoices` + `invoices` rows.
- `enable`: OpenSRS `provModify` with privacy=on; calls `post_payment_processing_new`.
- `disableCancel`: OpenSRS `provModify` with privacy=off; marks add-on `repeat_invoices.deleted=1`.

**Auth:** Session/API key. Ownership enforced.

**Errors:**
- `401` — unauthenticated.
- `404` — `id` not owned by caller.
- `409` — `domain_status != \"active\"` or TLD doesn't support privacy.
- `4xx` — no add-on found for `enable` / `disableCancel`.

**Related calls:**
- **Read state:** `getDomainWhoisPrivacy`.
- **Pay the order invoice:** `initiatePayment` (`method=cc|paypal|...`).
- **Renew with privacy:** `postDomainRenewal` with `whois_privacy=enable`."
  [id int?, domain-whois-privacy-request domain-whois-privacy-request]
  (check-required-params id domain-whois-privacy-request)
  (call-api "/domains/{id}/whois" :post
            {:path-params   {"id" id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :body-param    domain-whois-privacy-request
             :content-types ["application/json" "multipart/form-data"]
             :accepts       ["application/json"]
             :auth-names    ["sessionIdCookieAuth" "apiKeyAuth" "sessionIdHeaderAuth"]}))

(defn-spec update-domain-whois-privacy success-text-response-spec
  "Order, enable, or cancel the Whois privacy add-on for a domain
  Manages the Whois privacy add-on. Behavior branches on `action`:
- **`order`**: creates an add-on `Repeat_Invoice` and emits the first invoice; pass the returned `payUrl` to the customer or use `initiatePayment` with `invoiceId`. **Real money.**
- **`enable`**: activates Whois privacy at OpenSRS — call after the invoice is paid (calls `post_payment_processing_new`).
- **`disableCancel`**: disables Whois privacy at OpenSRS and marks the add-on `Repeat_Invoice` `deleted=1`.
- **(no action)**: returns current state — same shape as `getDomainWhoisPrivacy`.

Sibling ops: `getDomainWhoisPrivacy`, `getDomainInvoices`, `initiatePayment`.

**Path param:**
- `id` (integer, required) — `domain_id` from `getDomainsList`.

**Body fields (JSON or multipart, schema `DomainWhoisPrivacyRequest`):**
- `action` (string, optional) — one of `order` / `enable` / `disableCancel`. Omit for status.

**Returns:** (varies by action)
- `order`: `{text, invoiceId, repeatInvoiceId, payUrl}`.
- `enable` / `disableCancel`: `{text}`.
- No action: `{whoisPrivacy, cost, currency, currencySymbol}`.

**Side effects:**
- `order`: inserts add-on `repeat_invoices` + `invoices` rows.
- `enable`: OpenSRS `provModify` with privacy=on; calls `post_payment_processing_new`.
- `disableCancel`: OpenSRS `provModify` with privacy=off; marks add-on `repeat_invoices.deleted=1`.

**Auth:** Session/API key. Ownership enforced.

**Errors:**
- `401` — unauthenticated.
- `404` — `id` not owned by caller.
- `409` — `domain_status != \"active\"` or TLD doesn't support privacy.
- `4xx` — no add-on found for `enable` / `disableCancel`.

**Related calls:**
- **Read state:** `getDomainWhoisPrivacy`.
- **Pay the order invoice:** `initiatePayment` (`method=cc|paypal|...`).
- **Renew with privacy:** `postDomainRenewal` with `whois_privacy=enable`."
  [id int?, domain-whois-privacy-request domain-whois-privacy-request]
  (let [res (:data (update-domain-whois-privacy-with-http-info id domain-whois-privacy-request))]
    (if (:decode-models *api-context*)
       (st/decode success-text-response-spec res st/string-transformer)
       res)))


