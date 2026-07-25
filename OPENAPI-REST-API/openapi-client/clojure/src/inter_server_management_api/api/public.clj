(ns inter-server-management-api.api.public
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


(defn-spec get-account-currencies-with-http-info any?
  "List enabled currency codes accepted for billing and preferences
  Populates a currency selector on signup, billing-preferences, or invoice-display forms. Public — no auth required. The list changes only when an admin enables/disables a currency — cache client-side. Sibling ops: `getCountries`, `getTimezones`, `getAccountLocales`, plus the billing-preference endpoints under `/account/*` and `/billing/*`.

**Path/Query/Body:** None.

**Returns:** flat JSON array of ISO-4217 currency codes — e.g. `[\"USD\", \"EUR\", \"GBP\", \"INR\"]`. Sourced from rows in the `currencies` table where `currency_enabled=1`, in the natural row order. The endpoint returns codes only — for symbols, decimals, or exchange rates use a separate currency-detail endpoint or a static client-side map.

**Auth:** None.

**Errors:** No documented error path.

**Related calls:**
- **Apply to account profile:** `updateAccountInfo`.
- **Other preference catalogs:** `getCountries`, `getTimezones`, `getAccountLocales`."
  []
  (call-api "/account/currencies" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["sessionIdCookieAuth" "apiKeyAuth" "sessionIdHeaderAuth"]}))

(defn-spec get-account-currencies (s/coll-of string?)
  "List enabled currency codes accepted for billing and preferences
  Populates a currency selector on signup, billing-preferences, or invoice-display forms. Public — no auth required. The list changes only when an admin enables/disables a currency — cache client-side. Sibling ops: `getCountries`, `getTimezones`, `getAccountLocales`, plus the billing-preference endpoints under `/account/*` and `/billing/*`.

**Path/Query/Body:** None.

**Returns:** flat JSON array of ISO-4217 currency codes — e.g. `[\"USD\", \"EUR\", \"GBP\", \"INR\"]`. Sourced from rows in the `currencies` table where `currency_enabled=1`, in the natural row order. The endpoint returns codes only — for symbols, decimals, or exchange rates use a separate currency-detail endpoint or a static client-side map.

**Auth:** None.

**Errors:** No documented error path.

**Related calls:**
- **Apply to account profile:** `updateAccountInfo`.
- **Other preference catalogs:** `getCountries`, `getTimezones`, `getAccountLocales`."
  []
  (let [res (:data (get-account-currencies-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of string?) res st/string-transformer)
       res)))


(defn-spec get-account-locales-with-http-info any?
  "List supported UI locales with English and native display names
  Renders the language-picker for account preferences or login pages. Public — no auth required. Cross-references PHP's Punic locale data with `locale/google_langs.php` so only locales with Google Translate support are returned. Result is essentially static — cache client-side. Sibling ops: `getCountries`, `getTimezones`, `getAccountCurrencies`, `updateAccountInfo` (consumes the chosen locale).

**Path/Query/Body:** None.

**Returns:** JSON object keyed by BCP-47-style locale code, with `{ name, local_name }` per entry — e.g.

    {
      \"en\": { \"name\": \"English\", \"local_name\": \"English\" },
      \"es\": { \"name\": \"Spanish\", \"local_name\": \"español\" },
      \"fr\": { \"name\": \"French\", \"local_name\": \"français\" }
    }

`name` is the English label; `local_name` is the locale's name in its own language (good for accessibility and avoiding the wrong-script problem).

**Auth:** None.

**Errors:** No documented error path.

**Related calls:**
- **Apply to account profile:** `updateAccountInfo` (sets `locale`).
- **Other preference catalogs:** `getCountries`, `getTimezones`, `getAccountCurrencies`."
  []
  (call-api "/account/locales" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["sessionIdCookieAuth" "apiKeyAuth" "sessionIdHeaderAuth"]}))

(defn-spec get-account-locales (s/map-of string? get-account-locales-200-response-value-spec)
  "List supported UI locales with English and native display names
  Renders the language-picker for account preferences or login pages. Public — no auth required. Cross-references PHP's Punic locale data with `locale/google_langs.php` so only locales with Google Translate support are returned. Result is essentially static — cache client-side. Sibling ops: `getCountries`, `getTimezones`, `getAccountCurrencies`, `updateAccountInfo` (consumes the chosen locale).

**Path/Query/Body:** None.

**Returns:** JSON object keyed by BCP-47-style locale code, with `{ name, local_name }` per entry — e.g.

    {
      \"en\": { \"name\": \"English\", \"local_name\": \"English\" },
      \"es\": { \"name\": \"Spanish\", \"local_name\": \"español\" },
      \"fr\": { \"name\": \"French\", \"local_name\": \"français\" }
    }

`name` is the English label; `local_name` is the locale's name in its own language (good for accessibility and avoiding the wrong-script problem).

**Auth:** None.

**Errors:** No documented error path.

**Related calls:**
- **Apply to account profile:** `updateAccountInfo` (sets `locale`).
- **Other preference catalogs:** `getCountries`, `getTimezones`, `getAccountCurrencies`."
  []
  (let [res (:data (get-account-locales-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/map-of string? get-account-locales-200-response-value-spec) res st/string-transformer)
       res)))


(defn-spec get-captcha-with-http-info any?
  "Fetch a base64 JPEG captcha challenge for human verification
  Fetches a fresh captcha challenge image to display before submitting `submitSignup` (or any unauthenticated form that needs human verification). Public endpoint — no authentication required. Sibling ops: `getLoginInfo` (returns a captcha alongside other login-page data), `submitSignup` (consumes the answer), `submitLogin`.

**Path/Query/Body:** None.

**Returns:** `{ captcha: string }` — `captcha` is a `data:image/jpeg;base64,...` URL ready to drop into an `<img src>`.

**Side effects:** the phrase is stored server-side in `$_SESSION['captcha']` (also aliased to the signup-flow key `$_SESSION['captchaSignup']` and forgot-password key `$_SESSION['captchaFP']`). The browser must send the same `PHPSESSID` cookie back when posting the answer.

**Charset:** 8 chars from `3456789ABCDEFGHJKLMNPQRSTWXY` — no ambiguous `0`/`1`/`I`/`O`/`2`/`Z`.

**Related calls:**
- **Consumers:** `submitSignup`, `submitLogin`.
- **One-shot login bootstrap:** `getLoginInfo`.
answer in `captcha` field)."
  []
  (call-api "/captcha" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["sessionIdCookieAuth" "apiKeyAuth" "sessionIdHeaderAuth"]}))

(defn-spec get-captcha captcha-response-spec
  "Fetch a base64 JPEG captcha challenge for human verification
  Fetches a fresh captcha challenge image to display before submitting `submitSignup` (or any unauthenticated form that needs human verification). Public endpoint — no authentication required. Sibling ops: `getLoginInfo` (returns a captcha alongside other login-page data), `submitSignup` (consumes the answer), `submitLogin`.

**Path/Query/Body:** None.

**Returns:** `{ captcha: string }` — `captcha` is a `data:image/jpeg;base64,...` URL ready to drop into an `<img src>`.

**Side effects:** the phrase is stored server-side in `$_SESSION['captcha']` (also aliased to the signup-flow key `$_SESSION['captchaSignup']` and forgot-password key `$_SESSION['captchaFP']`). The browser must send the same `PHPSESSID` cookie back when posting the answer.

**Charset:** 8 chars from `3456789ABCDEFGHJKLMNPQRSTWXY` — no ambiguous `0`/`1`/`I`/`O`/`2`/`Z`.

**Related calls:**
- **Consumers:** `submitSignup`, `submitLogin`.
- **One-shot login bootstrap:** `getLoginInfo`.
answer in `captcha` field)."
  []
  (let [res (:data (get-captcha-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode captcha-response-spec res st/string-transformer)
       res)))


(defn-spec get-countries-with-http-info any?
  "List enabled countries keyed by ISO-2/ISO-3/numeric code
  Populates country dropdowns in account registration, billing-address forms, and domain/whois contact forms. Public — no auth required. Disabled countries (e.g. embargoed jurisdictions) are excluded — admins toggle this in `country_t.enabled`. Sibling ops: `getTimezones`, `getAccountLocales`, `getAccountCurrencies`, `updateAccountInfo` (consumes the chosen country).

**Query parameters:**
- `fetch_by` (string, optional) — one of `iso2` (default; two-letter codes like `US`, `GB`), `iso3` (three-letter like `USA`, `GBR`), or `numcode` (UN M49 numeric like `840`). Any other value silently falls back to `iso2`.

**Body:** None.

**Returns:** JSON object mapping the chosen key format to the country's short name — e.g. `{ \"AF\": \"Afghanistan\", \"US\": \"United States\", \"ZW\": \"Zimbabwe\" }`. Sourced from the `country_t` table, filtered to `enabled=1`, ordered alphabetically by `short_name`.

**Auth:** None.

**Errors:** No documented error path.

**Related calls:**
- **Apply to account profile:** `updateAccountInfo`.
- **Other preference catalogs:** `getTimezones`, `getAccountLocales`, `getAccountCurrencies`."
  ([] (get-countries-with-http-info nil))
  ([{:keys [fetch_by]} (s/map-of keyword? any?)]
   (call-api "/account/countries" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"fetch_by" fetch_by }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    ["sessionIdCookieAuth" "apiKeyAuth" "sessionIdHeaderAuth"]})))

(defn-spec get-countries any?
  "List enabled countries keyed by ISO-2/ISO-3/numeric code
  Populates country dropdowns in account registration, billing-address forms, and domain/whois contact forms. Public — no auth required. Disabled countries (e.g. embargoed jurisdictions) are excluded — admins toggle this in `country_t.enabled`. Sibling ops: `getTimezones`, `getAccountLocales`, `getAccountCurrencies`, `updateAccountInfo` (consumes the chosen country).

**Query parameters:**
- `fetch_by` (string, optional) — one of `iso2` (default; two-letter codes like `US`, `GB`), `iso3` (three-letter like `USA`, `GBR`), or `numcode` (UN M49 numeric like `840`). Any other value silently falls back to `iso2`.

**Body:** None.

**Returns:** JSON object mapping the chosen key format to the country's short name — e.g. `{ \"AF\": \"Afghanistan\", \"US\": \"United States\", \"ZW\": \"Zimbabwe\" }`. Sourced from the `country_t` table, filtered to `enabled=1`, ordered alphabetically by `short_name`.

**Auth:** None.

**Errors:** No documented error path.

**Related calls:**
- **Apply to account profile:** `updateAccountInfo`.
- **Other preference catalogs:** `getTimezones`, `getAccountLocales`, `getAccountCurrencies`."
  ([] (get-countries nil))
  ([optional-params any?]
   (let [res (:data (get-countries-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec get-info-with-http-info any?
  "Discover available modules, service packages, categories, and types
  Enumerates what services this MyAdmin install sells before placing orders or building a signup UI. Public — no auth required. Sibling ops: `getNewVps`, `getNewWebsite`, `getNewMail`, `getNewSsl`, `getNewLicense`, `getNewBackup`, `getNewQs`, `getNewServer` — each module's catalog op for buyable-package details.

**Path/Query/Body:** None.

**Returns:** `{ modules, services, serviceTypes, serviceCategories }`.
- `modules` (array) — enabled plugin modules (`vps`, `webhosting`, `domains`, `ssl`, etc.).
- `services` (object) — map of `services_id` → row from the `services` table, filtered to `services_buyable=1 AND services_hidden=0`, with `services_ourcost` / `services_hidden` stripped, and `services_id` / `services_category` / `services_type` cast to int and `services_cost` cast to float.
- `serviceTypes` (object) — joins service rows to human-readable type names.
- `serviceCategories` (object) — joins service rows to category names.

**Auth:** None.

**Errors:** No documented error path; 401 only if a stricter auth layer is added upstream.

**Related calls:**
- **Module-specific order catalog:** `getNewVps`, `getNewWebsite`, `getNewMail`, `getNewSsl`, `getNewLicense`, `getNewBackup`, `getNewQs`, `getNewServer`.
- **Deeper health probe:** `pingServer`."
  []
  (call-api "/info" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["sessionIdCookieAuth" "apiKeyAuth" "sessionIdHeaderAuth"]}))

(defn-spec get-info services-info-spec
  "Discover available modules, service packages, categories, and types
  Enumerates what services this MyAdmin install sells before placing orders or building a signup UI. Public — no auth required. Sibling ops: `getNewVps`, `getNewWebsite`, `getNewMail`, `getNewSsl`, `getNewLicense`, `getNewBackup`, `getNewQs`, `getNewServer` — each module's catalog op for buyable-package details.

**Path/Query/Body:** None.

**Returns:** `{ modules, services, serviceTypes, serviceCategories }`.
- `modules` (array) — enabled plugin modules (`vps`, `webhosting`, `domains`, `ssl`, etc.).
- `services` (object) — map of `services_id` → row from the `services` table, filtered to `services_buyable=1 AND services_hidden=0`, with `services_ourcost` / `services_hidden` stripped, and `services_id` / `services_category` / `services_type` cast to int and `services_cost` cast to float.
- `serviceTypes` (object) — joins service rows to human-readable type names.
- `serviceCategories` (object) — joins service rows to category names.

**Auth:** None.

**Errors:** No documented error path; 401 only if a stricter auth layer is added upstream.

**Related calls:**
- **Module-specific order catalog:** `getNewVps`, `getNewWebsite`, `getNewMail`, `getNewSsl`, `getNewLicense`, `getNewBackup`, `getNewQs`, `getNewServer`.
- **Deeper health probe:** `pingServer`."
  []
  (let [res (:data (get-info-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode services-info-spec res st/string-transformer)
       res)))


(defn-spec get-login-info-with-http-info any?
  "Fetch logo, captcha, language, and stats for rendering a login page
  Bootstraps an unauthenticated login page in one round-trip — branding logo, fresh captcha challenge, auto-detected user language, and live counts of VPS / websites / servers managed by the system (often used as marketing stats). Public — no auth required. Sibling ops: `submitLogin` (consume the captcha), `getCaptcha` (refresh captcha only), `getAccountLocales`, `submitSignup`.

**Path/Query/Body:** None.

**Returns** `{ logo, captcha, language, counts }`:
- `logo` (string) — URL; uses the `LOGO` constant or a default.
- `captcha` (string) — `data:image/jpeg;base64,...` image; phrase is stored server-side under `$_SESSION['captcha']` (also aliased to `$_SESSION['captchaSignup']` and `$_SESSION['captchaFP']`) — the browser's `PHPSESSID` cookie carries the phrase to `submitLogin` / `submitSignup`.
- `language` (string) — BCP-47 locale (e.g. `en-US`).
- `counts` (object) — `{ vps: int, websites: int, servers: int }` from live `SELECT COUNT(*)` on the underlying tables.

**Auth:** None.

**Errors:** `403` per `LoginResponseError` if a stricter login gate is configured upstream.

**Related calls:**
- **Next:** `submitLogin` (login form post) or `submitSignup` (new account).
- **Captcha refresh only:** `getCaptcha`.
- **OAuth alternative:** `getOauthRedirect`."
  []
  (call-api "/login" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["sessionIdCookieAuth" "apiKeyAuth" "sessionIdHeaderAuth"]}))

(defn-spec get-login-info login-info-spec
  "Fetch logo, captcha, language, and stats for rendering a login page
  Bootstraps an unauthenticated login page in one round-trip — branding logo, fresh captcha challenge, auto-detected user language, and live counts of VPS / websites / servers managed by the system (often used as marketing stats). Public — no auth required. Sibling ops: `submitLogin` (consume the captcha), `getCaptcha` (refresh captcha only), `getAccountLocales`, `submitSignup`.

**Path/Query/Body:** None.

**Returns** `{ logo, captcha, language, counts }`:
- `logo` (string) — URL; uses the `LOGO` constant or a default.
- `captcha` (string) — `data:image/jpeg;base64,...` image; phrase is stored server-side under `$_SESSION['captcha']` (also aliased to `$_SESSION['captchaSignup']` and `$_SESSION['captchaFP']`) — the browser's `PHPSESSID` cookie carries the phrase to `submitLogin` / `submitSignup`.
- `language` (string) — BCP-47 locale (e.g. `en-US`).
- `counts` (object) — `{ vps: int, websites: int, servers: int }` from live `SELECT COUNT(*)` on the underlying tables.

**Auth:** None.

**Errors:** `403` per `LoginResponseError` if a stricter login gate is configured upstream.

**Related calls:**
- **Next:** `submitLogin` (login form post) or `submitSignup` (new account).
- **Captcha refresh only:** `getCaptcha`.
- **OAuth alternative:** `getOauthRedirect`."
  []
  (let [res (:data (get-login-info-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode login-info-spec res st/string-transformer)
       res)))


(defn-spec get-mp-servers-with-http-info any?
  "List Rapid Deploy (Buy-It-Now) marketplace dedicated servers with live pricing
  Use to browse pre-built dedicated servers ready for immediate provisioning (Rapid Deploy / marketplace). No params, no body. Pulls live inventory from `mynew.interserver.net/ajax/server_a.php`.
Returns: array of `{ server_id, cpu: [model, {img,type,speed,num_cpus,num_cores}], memory, disk, bandwidth, ips, location, price }`. The `server_id` is the marketplace asset id — feed it into `buyItNowServerOrder` (GET options for asset `?a=<id>`) and `placeBuyNowServer` (POST to commit). Errors: 401 if session expired.
Sibling ops: `buyItNowServerOrder` (configure asset), `placeBuyNowServer` (purchase), `getNewServer`/`addServer` (custom-spec build, not pre-built), `getServerList` (already-owned servers)."
  []
  (call-api "/buy_now_servers_list" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["sessionIdCookieAuth" "apiKeyAuth" "sessionIdHeaderAuth"]}))

(defn-spec get-mp-servers buy-it-now-list-spec
  "List Rapid Deploy (Buy-It-Now) marketplace dedicated servers with live pricing
  Use to browse pre-built dedicated servers ready for immediate provisioning (Rapid Deploy / marketplace). No params, no body. Pulls live inventory from `mynew.interserver.net/ajax/server_a.php`.
Returns: array of `{ server_id, cpu: [model, {img,type,speed,num_cpus,num_cores}], memory, disk, bandwidth, ips, location, price }`. The `server_id` is the marketplace asset id — feed it into `buyItNowServerOrder` (GET options for asset `?a=<id>`) and `placeBuyNowServer` (POST to commit). Errors: 401 if session expired.
Sibling ops: `buyItNowServerOrder` (configure asset), `placeBuyNowServer` (purchase), `getNewServer`/`addServer` (custom-spec build, not pre-built), `getServerList` (already-owned servers)."
  []
  (let [res (:data (get-mp-servers-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode buy-it-now-list-spec res st/string-transformer)
       res)))


(defn-spec get-oauth-redirect-with-http-info any?
  "Begin OAuth login flow — redirect user to provider for authentication
  Use as step 1 of social login. Navigate the browser (typically a popup) to `/apiv2/oauth?provider=X` so the provider authenticates the user, then handle the postMessage from the popup. Public — no auth required.
Query params: `provider` (required, case-sensitive: `Google`/`GitHub`/`Facebook`/`Twitter`), `origin` (optional, opener window origin used to target postMessage instead of `*`).
The endpoint redirects directly to the provider rather than returning JSON. After the provider callback, the popup posts one of: `oauth_success` (logged in), `oauth_2fa_required` (call `patchOauthTwoFactor` with the `oauth_token`), `oauth_link_required` (call `postOauthCallback` to link or create), or `oauth_error`.
Siblings: `postOauthCallback`, `patchOauthTwoFactor`, `submitLogin` (password flow)."
  [provider string?]
  (check-required-params provider)
  (call-api "/oauth" :get
            {:path-params   {}
             :header-params {}
             :query-params  {"provider" provider }
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["sessionIdCookieAuth" "apiKeyAuth" "sessionIdHeaderAuth"]}))

(defn-spec get-oauth-redirect get-oauth-redirect-200-response-spec
  "Begin OAuth login flow — redirect user to provider for authentication
  Use as step 1 of social login. Navigate the browser (typically a popup) to `/apiv2/oauth?provider=X` so the provider authenticates the user, then handle the postMessage from the popup. Public — no auth required.
Query params: `provider` (required, case-sensitive: `Google`/`GitHub`/`Facebook`/`Twitter`), `origin` (optional, opener window origin used to target postMessage instead of `*`).
The endpoint redirects directly to the provider rather than returning JSON. After the provider callback, the popup posts one of: `oauth_success` (logged in), `oauth_2fa_required` (call `patchOauthTwoFactor` with the `oauth_token`), `oauth_link_required` (call `postOauthCallback` to link or create), or `oauth_error`.
Siblings: `postOauthCallback`, `patchOauthTwoFactor`, `submitLogin` (password flow)."
  [provider string?]
  (let [res (:data (get-oauth-redirect-with-http-info provider))]
    (if (:decode-models *api-context*)
       (st/decode get-oauth-redirect-200-response-spec res st/string-transformer)
       res)))


(defn-spec get-timezones-with-http-info any?
  "List all PHP timezone identifiers usable on accounts and services
  Populates a timezone picker for account preferences or for VPS / QuickServer timezone changes. Public — no auth required. Backed by PHP's `DateTimeZone::listIdentifiers()` so the catalog is large (~400+ zones, including deprecated aliases like `US/Eastern`). Result is fixed for a given PHP build — cache aggressively client-side. Sibling ops: `postVpsChangeTimezone`, `postQsChangeTimezone`, `getCountries`, `getAccountLocales`, `getAccountCurrencies`.

**Path/Query/Body:** None.

**Returns:** flat JSON array of stable IANA tz strings, e.g. `[\"Africa/Abidjan\", \"America/New_York\", \"Asia/Tokyo\", \"Europe/London\", \"UTC\"]`. Values are usable verbatim on the timezone-change endpoints; no translation or country-grouping is performed here.

**Auth:** None.

**Errors:** No documented error path under normal operation.

**Related calls:**
- **Apply selection to a service:** `postVpsChangeTimezone` (`/vps/{id}/change_timezone`), `postQsChangeTimezone` (`/qs/{id}/change_timezone`).
- **Apply to account profile:** `updateAccountInfo` (sets `timezone`).
- **Other preference catalogs:** `getCountries`, `getAccountLocales`, `getAccountCurrencies`."
  []
  (call-api "/account/timezones" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["sessionIdCookieAuth" "apiKeyAuth" "sessionIdHeaderAuth"]}))

(defn-spec get-timezones (s/coll-of string?)
  "List all PHP timezone identifiers usable on accounts and services
  Populates a timezone picker for account preferences or for VPS / QuickServer timezone changes. Public — no auth required. Backed by PHP's `DateTimeZone::listIdentifiers()` so the catalog is large (~400+ zones, including deprecated aliases like `US/Eastern`). Result is fixed for a given PHP build — cache aggressively client-side. Sibling ops: `postVpsChangeTimezone`, `postQsChangeTimezone`, `getCountries`, `getAccountLocales`, `getAccountCurrencies`.

**Path/Query/Body:** None.

**Returns:** flat JSON array of stable IANA tz strings, e.g. `[\"Africa/Abidjan\", \"America/New_York\", \"Asia/Tokyo\", \"Europe/London\", \"UTC\"]`. Values are usable verbatim on the timezone-change endpoints; no translation or country-grouping is performed here.

**Auth:** None.

**Errors:** No documented error path under normal operation.

**Related calls:**
- **Apply selection to a service:** `postVpsChangeTimezone` (`/vps/{id}/change_timezone`), `postQsChangeTimezone` (`/qs/{id}/change_timezone`).
- **Apply to account profile:** `updateAccountInfo` (sets `timezone`).
- **Other preference catalogs:** `getCountries`, `getAccountLocales`, `getAccountCurrencies`."
  []
  (let [res (:data (get-timezones-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of string?) res st/string-transformer)
       res)))


(defn-spec patch-oauth-two-factor-with-http-info any?
  "Submit 2FA code to finish OAuth login when account has 2FA enabled
  Final step of the OAuth login flow when the account has 2FA enabled. Called after `postOauthCallback` (or the popup's `window.postMessage()` handshake) returned `2fa_required`. Verifies the TOTP against the account's stored Google Authenticator secret and creates the session. Public — no auth required. Sibling ops: `postOauthCallback` (prior step), `getOauthRedirect` (entry point), `getAccountTfaSetup` (enroll 2FA), `submitLogin`.

**Body fields** (JSON or form):
- `code` (string, required) — 6-digit TOTP from the authenticator app.
- `account_id` (integer, required) — returned by the prior `postOauthCallback`.
- `oauth_token` (string, optional) — signed token from the original `postMessage` payload, type `2fa`, 10-minute expiry. When present, its embedded OAuth profile data is merged into the account (name / picture / phone / address) for any fields still empty.

**Returns:** `{ login: true, sessionId, account_id, account_lid, ima, name, gravatar }`.

**Errors:**
- `400` — invalid / expired `oauth_token` or no pending verification.
- `401` — invalid 2FA code.
- `409` — 2FA not enabled on the account.
- `422` — missing `code`.

**Related calls:**
- **Prerequisite:** `postOauthCallback`.
- **Enroll 2FA on the account first:** `getAccountTfaSetup` → `updateAccountTfa`.
- **Alternate login:** `submitLogin`."
  [patch-oauth-two-factor-request patch-oauth-two-factor-request]
  (check-required-params patch-oauth-two-factor-request)
  (call-api "/oauth" :patch
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :body-param    patch-oauth-two-factor-request
             :content-types ["application/json" "multipart/form-data"]
             :accepts       ["application/json"]
             :auth-names    ["sessionIdCookieAuth" "apiKeyAuth" "sessionIdHeaderAuth"]}))

(defn-spec patch-oauth-two-factor patch-oauth-two-factor-200-response-spec
  "Submit 2FA code to finish OAuth login when account has 2FA enabled
  Final step of the OAuth login flow when the account has 2FA enabled. Called after `postOauthCallback` (or the popup's `window.postMessage()` handshake) returned `2fa_required`. Verifies the TOTP against the account's stored Google Authenticator secret and creates the session. Public — no auth required. Sibling ops: `postOauthCallback` (prior step), `getOauthRedirect` (entry point), `getAccountTfaSetup` (enroll 2FA), `submitLogin`.

**Body fields** (JSON or form):
- `code` (string, required) — 6-digit TOTP from the authenticator app.
- `account_id` (integer, required) — returned by the prior `postOauthCallback`.
- `oauth_token` (string, optional) — signed token from the original `postMessage` payload, type `2fa`, 10-minute expiry. When present, its embedded OAuth profile data is merged into the account (name / picture / phone / address) for any fields still empty.

**Returns:** `{ login: true, sessionId, account_id, account_lid, ima, name, gravatar }`.

**Errors:**
- `400` — invalid / expired `oauth_token` or no pending verification.
- `401` — invalid 2FA code.
- `409` — 2FA not enabled on the account.
- `422` — missing `code`.

**Related calls:**
- **Prerequisite:** `postOauthCallback`.
- **Enroll 2FA on the account first:** `getAccountTfaSetup` → `updateAccountTfa`.
- **Alternate login:** `submitLogin`."
  [patch-oauth-two-factor-request patch-oauth-two-factor-request]
  (let [res (:data (patch-oauth-two-factor-with-http-info patch-oauth-two-factor-request))]
    (if (:decode-models *api-context*)
       (st/decode patch-oauth-two-factor-200-response-spec res st/string-transformer)
       res)))


(defn-spec ping-server-with-http-info any?
  "Liveness check — returns the JSON string \"pong\" to confirm API is up
  Trivial GET that returns the JSON string `\"pong\"` so AI agents and monitors can verify the API endpoint is reachable. Public — no auth required, no params, no body. Does not exercise the database, queue, or any plugin modules. Sibling ops: `getInfo` (richer probe that touches MySQL).

**Path/Query/Body:** None.

**Returns:** JSON-encoded string `\"pong\"` with HTTP 200.

**Auth:** None (public endpoint).

**Errors:** No documented error path under normal operation — a non-200 or absent response indicates the API is down, the host is unreachable, or upstream routing is broken.

**Use when:**
- Bootstrapping a new client and want to confirm the API is reachable.
- Smoke-testing in CI/health-check pipelines.
- Diagnosing connectivity issues before higher-cost calls.

**Related calls:**
- **Deeper health probe:** `getInfo` (exercises the DB layer)."
  []
  (call-api "/ping" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["sessionIdCookieAuth" "apiKeyAuth" "sessionIdHeaderAuth"]}))

(defn-spec ping-server string?
  "Liveness check — returns the JSON string \"pong\" to confirm API is up
  Trivial GET that returns the JSON string `\"pong\"` so AI agents and monitors can verify the API endpoint is reachable. Public — no auth required, no params, no body. Does not exercise the database, queue, or any plugin modules. Sibling ops: `getInfo` (richer probe that touches MySQL).

**Path/Query/Body:** None.

**Returns:** JSON-encoded string `\"pong\"` with HTTP 200.

**Auth:** None (public endpoint).

**Errors:** No documented error path under normal operation — a non-200 or absent response indicates the API is down, the host is unreachable, or upstream routing is broken.

**Use when:**
- Bootstrapping a new client and want to confirm the API is reachable.
- Smoke-testing in CI/health-check pipelines.
- Diagnosing connectivity issues before higher-cost calls.

**Related calls:**
- **Deeper health probe:** `getInfo` (exercises the DB layer)."
  []
  (let [res (:data (ping-server-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode string? res st/string-transformer)
       res)))


(defn-spec post-oauth-callback-with-http-info any?
  "Complete OAuth login by linking provider to existing or new account
  Step 3 of the OAuth login flow. Called after `getOauthRedirect` returned `oauth_link_required` via the popup's `window.postMessage()`. Either links the OAuth identity to an existing account (verifying password) or creates a new account. Public — no auth required. Sibling ops: `patchOauthTwoFactor` (2FA follow-up), `getOauthRedirect` (start the flow), `submitSignup`, `submitLogin`.

**Body fields** (JSON or form):
- `oauth_token` (string, required) — signed token from the popup's `window.postMessage()` payload; 10-minute expiry.
- `login` (string, required) — email.
- `password` (string, required).
- `create` (boolean, optional) — set `true` to create a new account instead of linking.
- `email_confirmation` (string, conditional) — 8-char code emailed on the first `create=true` attempt; server returns 422 `email_verification_required` until provided.
- `tfa` (string, conditional) — 6-digit TOTP when the existing account has 2FA enabled (after the first attempt returns 422 `2fa_required`).

**Returns:** `{ login|signup|linked: true, sessionId, account_id, account_lid, ima, name, gravatar }`.

**Errors:**
- `400` — invalid / expired `oauth_token`.
- `401` — bad password or wrong 2FA code.
- `409` — account already exists (when `create: true`).
- `422` — missing field; `email_verification_required`; `2fa_required`.

**Related calls:**
- **Prerequisite:** `getOauthRedirect` to initiate the popup flow.
- **Follow-up when 2FA required:** `patchOauthTwoFactor`.
- **Alternate entry points:** `submitLogin`, `submitSignup`."
  ([provider string?, ] (post-oauth-callback-with-http-info provider nil))
  ([provider string?, {:keys [post-oauth-callback-request]} (s/map-of keyword? any?)]
   (check-required-params provider)
   (call-api "/oauth" :post
             {:path-params   {}
              :header-params {}
              :query-params  {"provider" provider }
              :form-params   {}
              :body-param    post-oauth-callback-request
              :content-types ["application/json" "multipart/form-data"]
              :accepts       ["application/json"]
              :auth-names    ["sessionIdCookieAuth" "apiKeyAuth" "sessionIdHeaderAuth"]})))

(defn-spec post-oauth-callback post-oauth-callback-200-response-spec
  "Complete OAuth login by linking provider to existing or new account
  Step 3 of the OAuth login flow. Called after `getOauthRedirect` returned `oauth_link_required` via the popup's `window.postMessage()`. Either links the OAuth identity to an existing account (verifying password) or creates a new account. Public — no auth required. Sibling ops: `patchOauthTwoFactor` (2FA follow-up), `getOauthRedirect` (start the flow), `submitSignup`, `submitLogin`.

**Body fields** (JSON or form):
- `oauth_token` (string, required) — signed token from the popup's `window.postMessage()` payload; 10-minute expiry.
- `login` (string, required) — email.
- `password` (string, required).
- `create` (boolean, optional) — set `true` to create a new account instead of linking.
- `email_confirmation` (string, conditional) — 8-char code emailed on the first `create=true` attempt; server returns 422 `email_verification_required` until provided.
- `tfa` (string, conditional) — 6-digit TOTP when the existing account has 2FA enabled (after the first attempt returns 422 `2fa_required`).

**Returns:** `{ login|signup|linked: true, sessionId, account_id, account_lid, ima, name, gravatar }`.

**Errors:**
- `400` — invalid / expired `oauth_token`.
- `401` — bad password or wrong 2FA code.
- `409` — account already exists (when `create: true`).
- `422` — missing field; `email_verification_required`; `2fa_required`.

**Related calls:**
- **Prerequisite:** `getOauthRedirect` to initiate the popup flow.
- **Follow-up when 2FA required:** `patchOauthTwoFactor`.
- **Alternate entry points:** `submitLogin`, `submitSignup`."
  ([provider string?, ] (post-oauth-callback provider nil))
  ([provider string?, optional-params any?]
   (let [res (:data (post-oauth-callback-with-http-info provider optional-params))]
     (if (:decode-models *api-context*)
        (st/decode post-oauth-callback-200-response-spec res st/string-transformer)
        res))))


(defn-spec submit-login-with-http-info any?
  "Authenticate with email + password and return a session token
  Primary password→session-token exchange. Pass the returned session id back as the `sessionid` HTTP header on subsequent calls. Public — no auth required. Sibling ops: `getLoginInfo` (captcha + branding), `getOauthRedirect` (social login), `submitSignup`, `updateAccountApiKey` (rotate API key once logged in).

**Body fields** (JSON or form):
- `login` (string, required) — email.
- `passwd` (string, required) — password.
- `tfa` (string, conditional) — 6-digit TOTP when the account has 2FA enabled.
- `verify` (string, conditional) — 8-char email-confirmation code returned via email when logging in from a new IP. Triggered automatically when the IP has no `acquittal` trial record yet (see `Trial` ORM, type `verify_email`).
- `remember` (boolean / `'true'` / `'yes'` / `'1'`, optional) — extends cookie lifetime.

**Returns:** `{ sessionId, account_id, account_lid, ima, name, gravatar }`. The `sessionId` value is the credential to send on every subsequent authenticated request.

**Errors:**
- `401` — bad credentials or wrong 2FA / verify code.
- `422` — missing `login` / `passwd` / `tfa` / `verify`; response body's `field` indicates which input is required next.
- `429` — too many failed attempts (login-log rate-limit) or max code retries reached.

**Related calls:**
- **Prerequisite:** `getLoginInfo` to fetch the captcha challenge and counts.
- **Alternate:** `getOauthRedirect` → `postOauthCallback` for social login.
- **After login:** `updateAccountApiKey`."
  ([login string?, passwd string?, ] (submit-login-with-http-info login passwd nil))
  ([login string?, passwd string?, {:keys [remember g-recaptcha-response tfa]} (s/map-of keyword? any?)]
   (check-required-params login passwd)
   (call-api "/login" :post
             {:path-params   {}
              :header-params {}
              :query-params  {}
              :form-params   {"login" login "passwd" passwd "remember" remember "g-recaptcha-response" g-recaptcha-response "tfa" tfa }
              :content-types ["multipart/form-data" "application/json"]
              :accepts       ["application/json"]
              :auth-names    ["sessionIdCookieAuth" "apiKeyAuth" "sessionIdHeaderAuth"]})))

(defn-spec submit-login login-success-response-spec
  "Authenticate with email + password and return a session token
  Primary password→session-token exchange. Pass the returned session id back as the `sessionid` HTTP header on subsequent calls. Public — no auth required. Sibling ops: `getLoginInfo` (captcha + branding), `getOauthRedirect` (social login), `submitSignup`, `updateAccountApiKey` (rotate API key once logged in).

**Body fields** (JSON or form):
- `login` (string, required) — email.
- `passwd` (string, required) — password.
- `tfa` (string, conditional) — 6-digit TOTP when the account has 2FA enabled.
- `verify` (string, conditional) — 8-char email-confirmation code returned via email when logging in from a new IP. Triggered automatically when the IP has no `acquittal` trial record yet (see `Trial` ORM, type `verify_email`).
- `remember` (boolean / `'true'` / `'yes'` / `'1'`, optional) — extends cookie lifetime.

**Returns:** `{ sessionId, account_id, account_lid, ima, name, gravatar }`. The `sessionId` value is the credential to send on every subsequent authenticated request.

**Errors:**
- `401` — bad credentials or wrong 2FA / verify code.
- `422` — missing `login` / `passwd` / `tfa` / `verify`; response body's `field` indicates which input is required next.
- `429` — too many failed attempts (login-log rate-limit) or max code retries reached.

**Related calls:**
- **Prerequisite:** `getLoginInfo` to fetch the captcha challenge and counts.
- **Alternate:** `getOauthRedirect` → `postOauthCallback` for social login.
- **After login:** `updateAccountApiKey`."
  ([login string?, passwd string?, ] (submit-login login passwd nil))
  ([login string?, passwd string?, optional-params any?]
   (let [res (:data (submit-login-with-http-info login passwd optional-params))]
     (if (:decode-models *api-context*)
        (st/decode login-success-response-spec res st/string-transformer)
        res))))


(defn-spec submit-signup-with-http-info any?
  "Create a new customer account (email + password + captcha + ToS)
  First step of the signup flow before adding payment or services. Public — no auth required. The account is created in `pending` state and moved to `active` once the email-confirmation code is verified; an `account.activated` event then fires (welcome email + admin notification). MaxMind GeoIP populates `country` from the client IP. Sibling ops: `submitLogin`, `getCaptcha`, `getLoginInfo`, `addBillingPrepay`, plus the `add*` service ops to follow up after signup.

**Body fields** (JSON or form):
- `login` (string, required) — email; must be valid and not an alias like `+tag` or dotted gmail.
- `passwd` (string, required) — 4–64 chars.
- `tos` (truthy, required) — `yes` / `true` / `1`.
- `captcha` (string, required) — answer to the phrase from `getCaptcha` or `getLoginInfo` (server reads the phrase from `$_SESSION['captchaSignup']`).
- `email_confirmation` (string, conditional) — 8-char code emailed on the first attempt; server returns `400 { field: 'email_confirmation' }` until provided.
- `remember` (boolean / `'true'` / `'yes'` / `'1'`, optional) — 256-day cookie.

**Returns:** `{ sessionId, account_id, account_lid, ima }`.

**Errors:**
- `400` — missing or invalid `login` / `passwd` / `tos` / `captcha` / `email_confirmation`; blocked-domain or aliased-email; account already exists.
- `402` per `LoginResponseError` — signup gate misconfigured upstream.

**Related calls:**
- **Prerequisite:** `getCaptcha` or `getLoginInfo`.
- **After signup:** `submitLogin`, `addBillingPrepay`, plus any `add*` order op."
  ([] (submit-signup-with-http-info nil))
  ([{:keys [login-submission-example]} (s/map-of keyword? any?)]
   (call-api "/signup" :post
             {:path-params   {}
              :header-params {}
              :query-params  {}
              :form-params   {}
              :body-param    login-submission-example
              :content-types ["application/json"]
              :accepts       ["application/json"]
              :auth-names    ["sessionIdCookieAuth" "apiKeyAuth" "sessionIdHeaderAuth"]})))

(defn-spec submit-signup any?
  "Create a new customer account (email + password + captcha + ToS)
  First step of the signup flow before adding payment or services. Public — no auth required. The account is created in `pending` state and moved to `active` once the email-confirmation code is verified; an `account.activated` event then fires (welcome email + admin notification). MaxMind GeoIP populates `country` from the client IP. Sibling ops: `submitLogin`, `getCaptcha`, `getLoginInfo`, `addBillingPrepay`, plus the `add*` service ops to follow up after signup.

**Body fields** (JSON or form):
- `login` (string, required) — email; must be valid and not an alias like `+tag` or dotted gmail.
- `passwd` (string, required) — 4–64 chars.
- `tos` (truthy, required) — `yes` / `true` / `1`.
- `captcha` (string, required) — answer to the phrase from `getCaptcha` or `getLoginInfo` (server reads the phrase from `$_SESSION['captchaSignup']`).
- `email_confirmation` (string, conditional) — 8-char code emailed on the first attempt; server returns `400 { field: 'email_confirmation' }` until provided.
- `remember` (boolean / `'true'` / `'yes'` / `'1'`, optional) — 256-day cookie.

**Returns:** `{ sessionId, account_id, account_lid, ima }`.

**Errors:**
- `400` — missing or invalid `login` / `passwd` / `tos` / `captcha` / `email_confirmation`; blocked-domain or aliased-email; account already exists.
- `402` per `LoginResponseError` — signup gate misconfigured upstream.

**Related calls:**
- **Prerequisite:** `getCaptcha` or `getLoginInfo`.
- **After signup:** `submitLogin`, `addBillingPrepay`, plus any `add*` order op."
  ([] (submit-signup nil))
  ([optional-params any?]
   (let [res (:data (submit-signup-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


