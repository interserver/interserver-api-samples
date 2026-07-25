cmake_minimum_required (VERSION 2.6...3.10.2)
project (CGenerator C)

cmake_policy(SET CMP0063 NEW)

set(CMAKE_C_VISIBILITY_PRESET default)
set(CMAKE_VISIBILITY_INLINES_HIDDEN OFF)
set(CMAKE_WINDOWS_EXPORT_ALL_SYMBOLS ON)
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -Werror=implicit-function-declaration")
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -Werror=missing-declarations")
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -Werror=int-conversion")

option(BUILD_SHARED_LIBS "Build using shared libraries" ON)

find_package(OpenSSL)

if (OPENSSL_FOUND)
    set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -DOPENSSL")
    if(CMAKE_VERSION VERSION_LESS 3.4)
        include_directories(${OPENSSL_INCLUDE_DIR})
        include_directories(${OPENSSL_INCLUDE_DIRS})
        link_directories(${OPENSSL_LIBRARIES})
    endif()
endif()

set(pkgName "interserver_management_api")

# this default version can be overridden in PreTarget.cmake
set(PROJECT_VERSION_MAJOR 0)
set(PROJECT_VERSION_MINOR 0)
set(PROJECT_VERSION_PATCH 1)

if( (DEFINED CURL_INCLUDE_DIR) AND (DEFINED CURL_LIBRARIES))
    include_directories(${CURL_INCLUDE_DIR})
    set(PLATFORM_LIBRARIES ${PLATFORM_LIBRARIES} ${CURL_LIBRARIES} )
else()
    find_package(CURL 7.58.0 REQUIRED)
    if(CURL_FOUND)
        include_directories(${CURL_INCLUDE_DIR})
        set(PLATFORM_LIBRARIES ${PLATFORM_LIBRARIES} ${CURL_LIBRARIES} )
    endif()
endif()

set(SRCS
    src/list.c
    src/apiKey.c
    src/apiClient.c
    src/binary.c
    external/cJSON.c
    model/object.c
    model/account_features.c
    model/account_info.c
    model/account_info_country_currencies.c
    model/account_info_data.c
    model/account_info_data_cc.c
    model/account_info_data_ccs.c
    model/account_info_data_email_settings.c
    model/account_info_data_extra.c
    model/account_info_data_fraudrecord.c
    model/account_info_limits.c
    model/account_info_limits_inner.c
    model/account_info_max_mind_response.c
    model/account_info_max_mind_response_risk_score.c
    model/account_info_oauth_config.c
    model/account_info_oauth_config_providers.c
    model/account_info_oauth_config_providers_value.c
    model/account_info_oauthproviders.c
    model/account_info_post.c
    model/account_ssh_key.c
    model/add_server_200_response.c
    model/affiliate_banner_row.c
    model/affiliate_dock_setup.c
    model/affiliate_payment_setup.c
    model/affiliate_traffic_row.c
    model/backup.c
    model/backup_billing_details.c
    model/backup_client_link.c
    model/backup_extra_info_tables.c
    model/backup_ip_info.c
    model/backup_ip_info_row.c
    model/backup_login_response.c
    model/backup_order_post_response.c
    model/backup_order_post_response_cj_params.c
    model/backup_order_put_request.c
    model/backup_order_put_response.c
    model/backup_row.c
    model/backup_service_info.c
    model/backup_service_master.c
    model/backups_order.c
    model/backups_order_package_costs.c
    model/backups_order_service_types.c
    model/billing_add_cc_request.c
    model/billing_invoice_detail.c
    model/billing_invoice_list.c
    model/billing_payment_method_request.c
    model/billing_prepay_request.c
    model/billing_verify_cc_request.c
    model/buy_it_now_list.c
    model/buy_it_now_row.c
    model/buy_it_now_row_cpu_inner.c
    model/buy_it_now_row_cpu_inner_one_of.c
    model/buy_it_now_server_order_200_response.c
    model/buy_it_now_server_order_200_response_bandwidth_inner.c
    model/buy_it_now_server_order_200_response_cp_inner.c
    model/buy_it_now_server_order_200_response_ips_inner.c
    model/buy_it_now_server_order_200_response_os_inner.c
    model/buy_it_now_server_order_200_response_raid_inner.c
    model/cancel_backup_200_response.c
    model/cancel_domain_200_response.c
    model/cancel_scrub_ip_200_response.c
    model/captcha_response.c
    model/charge_invoice_rows.c
    model/charge_invoice_rows_invoices_value.c
    model/charge_invoice_rows_invoices_value_paid_invoices_value.c
    model/charge_invoice_rows_invoices_value_paid_invoices_value_refund_invoices_value.c
    model/close_ticket_response_schema.c
    model/create_filter.c
    model/create_filter_201_response.c
    model/create_filter_400_response.c
    model/create_filter_500_response.c
    model/create_firewall_rule.c
    model/create_geo_firewall_rule.c
    model/create_geo_rule_400_response.c
    model/create_rule_201_response.c
    model/create_rule_400_response.c
    model/create_rule_500_response.c
    model/delete_filter_200_response.c
    model/delete_filter_400_response.c
    model/delete_filter_500_response.c
    model/delete_firewall_rule.c
    model/delete_geo_firewall_rule.c
    model/delete_mail_alert_request.c
    model/deny_rule_new.c
    model/deny_rule_record.c
    model/disable_scrub_200_response.c
    model/disable_scrub_400_response.c
    model/disable_scrub_500_response.c
    model/dns_list_item.c
    model/dns_new_domain.c
    model/dns_new_record.c
    model/dns_record.c
    model/dns_record_type.c
    model/dns_update_record.c
    model/domain.c
    model/domain_admin_contact.c
    model/domain_all_info.c
    model/domain_all_info_attributes.c
    model/domain_all_info_attributes_contact_set.c
    model/domain_billing_details.c
    model/domain_billing_extra.c
    model/domain_client_link.c
    model/domain_contact_details.c
    model/domain_dnssec_records.c
    model/domain_dnssec_records_inner.c
    model/domain_dnssec_request.c
    model/domain_lookup_response.c
    model/domain_name_server.c
    model/domain_nameserver_get_response.c
    model/domain_nameserver_get_response_inner.c
    model/domain_nameserver_post_request.c
    model/domain_nameserver_put_request.c
    model/domain_order.c
    model/domain_order_request.c
    model/domain_order_response.c
    model/domain_order_response_attributes.c
    model/domain_order_services.c
    model/domain_order_services10001.c
    model/domain_owner_contact.c
    model/domain_prov_process_pending.c
    model/domain_prov_process_pending_attributes.c
    model/domain_row.c
    model/domain_search_response.c
    model/domain_service_info.c
    model/domain_service_type.c
    model/domain_tech_contact.c
    model/domain_whois_privacy_request.c
    model/download_qs_backup_200_response.c
    model/download_qs_backup_request.c
    model/email_address.c
    model/email_address_name.c
    model/enable_scrub_200_response.c
    model/enable_scrub_500_response.c
    model/floating_ip_order_request.c
    model/floating_ips_cancel_200_response.c
    model/generic_response.c
    model/get_account_info_401_response.c
    model/get_account_locales_200_response_value.c
    model/get_account_tfa_setup_200_response.c
    model/get_affiliate_signups_200_response.c
    model/get_oauth_redirect_200_response.c
    model/get_order_detail_200_response.c
    model/get_order_detail_200_response_ips_inner.c
    model/get_order_detail_200_response_package_costs.c
    model/get_order_detail_200_response_service_types_inner.c
    model/get_scrub_ip_details_200_response.c
    model/get_scrub_ip_details_200_response_billing_details.c
    model/get_scrub_ip_details_200_response_client_links_inner.c
    model/get_scrub_ip_details_200_response_extra_info_tables.c
    model/get_scrub_ip_details_200_response_extra_info_tables_scrub_ips.c
    model/get_scrub_ip_details_200_response_extra_info_tables_scrub_ips_rows_inner.c
    model/get_scrub_ip_details_200_response_filter_firewall.c
    model/get_scrub_ip_details_200_response_filter_firewall_filters_inner.c
    model/get_scrub_ip_details_200_response_filter_firewall_rules_inner.c
    model/get_scrub_ip_details_200_response_service_info.c
    model/get_website_buy_ip_200_response.c
    model/home.c
    model/home_details.c
    model/home_details_modules.c
    model/home_details_modules_backups.c
    model/home_details_modules_domains.c
    model/home_details_modules_licenses.c
    model/home_details_modules_quickservers.c
    model/home_details_modules_servers.c
    model/home_details_modules_vps.c
    model/home_details_modules_webhosting.c
    model/home_services.c
    model/home_services_backups.c
    model/home_services_domains.c
    model/home_services_domains_links.c
    model/home_services_licenses.c
    model/home_services_licenses_links.c
    model/home_services_servers.c
    model/home_services_servers_links.c
    model/home_services_vps.c
    model/home_services_vps_links.c
    model/home_services_webhosting.c
    model/home_services_webhosting_links.c
    model/home_ticket_status.c
    model/home_ticket_status_view.c
    model/hostname_object.c
    model/initiate_payment_200_response.c
    model/ip_limit_range.c
    model/ip_object.c
    model/license.c
    model/license_billing_details.c
    model/license_client_link.c
    model/license_extra_info_tables.c
    model/license_ip_info.c
    model/license_ip_info_row.c
    model/license_order_request.c
    model/license_row.c
    model/license_service_info.c
    model/license_service_type.c
    model/licenses_cancel_200_response.c
    model/licenses_order.c
    model/licenses_order_package_costs.c
    model/licenses_order_service_categories.c
    model/licenses_order_service_categories509.c
    model/licenses_order_service_types.c
    model/licenses_order_service_types11482.c
    model/login_error_response.c
    model/login_info.c
    model/login_service_counts.c
    model/login_submission_example.c
    model/login_submission_example_g_recaptcha_response.c
    model/login_submission_example_g_recaptcha_response_dep.c
    model/login_success_response.c
    model/mail_alert_request.c
    model/mail_alert_update_request.c
    model/mail_alerts_response.c
    model/mail_alerts_response_inner.c
    model/mail_attachment.c
    model/mail_billing_details.c
    model/mail_block_click_house.c
    model/mail_block_rspamd.c
    model/mail_blocks.c
    model/mail_cancel_200_response.c
    model/mail_client_link.c
    model/mail_delist_request.c
    model/mail_delist_response.c
    model/mail_deliverability_response.c
    model/mail_extra_info_table.c
    model/mail_extra_info_table_row.c
    model/mail_log.c
    model/mail_log_entry.c
    model/mail_order.c
    model/mail_order_request.c
    model/mail_row.c
    model/mail_schema.c
    model/mail_schema_extra_info_tables.c
    model/mail_service_info.c
    model/mail_service_type.c
    model/mail_stats_type.c
    model/mail_stats_type_volume.c
    model/mail_stats_type_volume_from.c
    model/mail_stats_type_volume_ip.c
    model/mail_stats_type_volume_to.c
    model/mail_tutorials_table.c
    model/mail_tutorials_table_row.c
    model/module_settings.c
    model/modules.c
    model/monthly_counts.c
    model/password_request.c
    model/patch_billing_credit_card_verify_request.c
    model/patch_oauth_two_factor_200_response.c
    model/patch_oauth_two_factor_request.c
    model/place_buy_now_server_request.c
    model/place_scrub_order_201_response.c
    model/place_scrub_order_201_response_order_details.c
    model/place_scrub_order_201_response_order_details_cj_params.c
    model/post_oauth_callback_200_response.c
    model/post_oauth_callback_request.c
    model/post_website_buy_ip_200_response.c
    model/post_website_buy_ip_request.c
    model/post_website_migration_200_response.c
    model/post_website_migration_request.c
    model/put_scrub_ips_200_response.c
    model/qs_order_request.c
    model/queue_response.c
    model/quickserver.c
    model/quickserver_addons.c
    model/quickserver_addons_row.c
    model/quickserver_billing_details.c
    model/quickserver_client_link.c
    model/quickserver_extra_info_tables.c
    model/quickserver_ip_info.c
    model/quickserver_ip_table_row.c
    model/quickserver_order.c
    model/quickserver_order_distro_sel.c
    model/quickserver_order_distro_sel_ubuntu.c
    model/quickserver_order_server_details.c
    model/quickserver_order_server_details381.c
    model/quickserver_order_templates.c
    model/quickserver_order_templates_ubuntu64.c
    model/quickserver_order_version.c
    model/quickserver_order_version_centosstream8.c
    model/quickserver_row.c
    model/quickserver_service_extra.c
    model/quickserver_service_info.c
    model/quickserver_service_master.c
    model/quickservers_cancel_200_response.c
    model/reply_ticket_request.c
    model/reply_ticket_response_schema.c
    model/restore_request.c
    model/reverse_dns_entries.c
    model/scrub_ip_filter_types.c
    model/scrub_ip_filter_types_filters_value.c
    model/scrub_ip_place_order.c
    model/scrub_ips_delete_rule_200_response.c
    model/scrub_ips_delete_rule_400_response.c
    model/scrub_ips_delete_rule_500_response.c
    model/scrub_ips_log_row_schema.c
    model/scrub_ips_row_schema.c
    model/search_autocomplete_response.c
    model/send_mail.c
    model/send_mail_adv.c
    model/server.c
    model/server_asset.c
    model/server_assets.c
    model/server_billing_details.c
    model/server_bulk_ipmi_power_response.c
    model/server_bulk_ipmi_power_response_results_inner.c
    model/server_client_link.c
    model/server_extra_info_tables.c
    model/server_ipmi_live_info.c
    model/server_ipmi_live_request.c
    model/server_ipmi_power_request.c
    model/server_lease.c
    model/server_location1.c
    model/server_locations.c
    model/server_network_info.c
    model/server_network_info_assets.c
    model/server_network_info_switchports.c
    model/server_order.c
    model/server_order_bandwidth.c
    model/server_order_bandwidth_li.c
    model/server_order_config_ids.c
    model/server_order_control_panel.c
    model/server_order_cp_li.c
    model/server_order_cpu.c
    model/server_order_cpu_li.c
    model/server_order_field_label.c
    model/server_order_field_labels.c
    model/server_order_form_values.c
    model/server_order_ip.c
    model/server_order_ips_li.c
    model/server_order_memory.c
    model/server_order_memory_li.c
    model/server_order_memory_li_254.c
    model/server_order_os.c
    model/server_order_os_li.c
    model/server_order_post_request.c
    model/server_order_post_request_hd.c
    model/server_order_raid.c
    model/server_row.c
    model/server_service_info.c
    model/server_switchport.c
    model/servers_buy_now_error.c
    model/servers_buy_now_response.c
    model/servers_buy_now_response_order_details.c
    model/servers_cancel_200_response.c
    model/service.c
    model/service_categories.c
    model/service_category.c
    model/service_order_post_response.c
    model/service_type.c
    model/service_types.c
    model/services.c
    model/services_info.c
    model/ssl_cancel_200_response.c
    model/ssl_order_request.c
    model/status_monthly_breakdown.c
    model/success_text_response.c
    model/template_request.c
    model/text_response.c
    model/ticket_custom_field_details.c
    model/ticket_details.c
    model/ticket_new.c
    model/ticket_new_response.c
    model/ticket_post_details.c
    model/ticket_post_details_inner.c
    model/tickets.c
    model/tickets_count_array.c
    model/tickets_row.c
    model/timezone_update.c
    model/update_account_tfa_request.c
    model/update_ticket.c
    model/update_ticket_response_schema.c
    model/url_request.c
    model/view_mail_log_start_date_parameter.c
    model/view_ticket_response.c
    model/vps.c
    model/vps_backup_row.c
    model/vps_backup_rows.c
    model/vps_billing_details.c
    model/vps_cancel_200_response.c
    model/vps_client_link.c
    model/vps_cp_data.c
    model/vps_da_data.c
    model/vps_da_license.c
    model/vps_extra_info_tables.c
    model/vps_ip_info.c
    model/vps_ip_info_row.c
    model/vps_order.c
    model/vps_order_location_names.c
    model/vps_order_location_stock.c
    model/vps_order_location_stock_1.c
    model/vps_order_os_names.c
    model/vps_order_package_costs.c
    model/vps_order_platform_names.c
    model/vps_order_platform_packages.c
    model/vps_order_post_request.c
    model/vps_order_put_request.c
    model/vps_order_put_response.c
    model/vps_order_service_types.c
    model/vps_order_service_types_32.c
    model/vps_order_templates.c
    model/vps_order_templates_hyperv.c
    model/vps_order_templates_hyperv_windows.c
    model/vps_plesk12_data.c
    model/vps_plesk_license.c
    model/vps_row.c
    model/vps_service_addons.c
    model/vps_service_extra.c
    model/vps_service_info.c
    model/vps_service_master.c
    model/vps_snapshot.c
    model/vps_template_row.c
    model/vps_templates_list.c
    model/vps_traffic_data_data_section_response.c
    model/vps_traffic_data_data_section_response_inner.c
    model/vps_traffic_data_section_response.c
    model/vps_traffic_history_response.c
    model/vps_traffic_history_section_data_response.c
    model/vps_traffic_history_section_response.c
    model/vps_traffic_response.c
    model/vps_traffic_totals_resposne.c
    model/vps_traffic_totals_section_response.c
    model/vps_traffic_usage_average_response.c
    model/vps_traffic_usage_average_section_response.c
    model/vps_traffic_usage_response.c
    model/webhosting_cancel_200_response.c
    model/website.c
    model/website_backups.c
    model/website_backups_inner.c
    model/website_billing_details.c
    model/website_client_link.c
    model/website_extra_info_tables.c
    model/website_login_response.c
    model/website_order_post_request.c
    model/website_order_put_request.c
    model/website_row.c
    model/website_service_info.c
    model/website_service_master.c
    model/website_table.c
    model/website_table_row.c
    model/websites_order.c
    model/websites_order_json_service_offers.c
    model/websites_order_json_service_offers_item.c
    model/websites_order_json_services.c
    model/websites_order_packages.c
    model/websites_order_packages_info.c
    model/websites_order_packges.c
    model/websites_order_service_offer.c
    model/websites_order_service_offers.c
    model/websites_order_service_types.c
    api/AccountAPI.c
    api/BackupsAPI.c
    api/BillingAPI.c
    api/DNSAPI.c
    api/DomainsAPI.c
    api/FloatingIPsAPI.c
    api/LicensesAPI.c
    api/MailAPI.c
    api/PublicAPI.c
    api/QuickServersAPI.c
    api/SSLCertificatesAPI.c
    api/ScrubIpsAPI.c
    api/ServersAPI.c
    api/TicketsAPI.c
    api/VPSAPI.c
    api/WebhostingAPI.c

)

set(HDRS
    include/apiClient.h
    include/list.h
    include/binary.h
    include/keyValuePair.h
    external/cJSON.h
    model/object.h
    model/any_type.h
    model/account_features.h
    model/account_info.h
    model/account_info_country_currencies.h
    model/account_info_data.h
    model/account_info_data_cc.h
    model/account_info_data_ccs.h
    model/account_info_data_email_settings.h
    model/account_info_data_extra.h
    model/account_info_data_fraudrecord.h
    model/account_info_limits.h
    model/account_info_limits_inner.h
    model/account_info_max_mind_response.h
    model/account_info_max_mind_response_risk_score.h
    model/account_info_oauth_config.h
    model/account_info_oauth_config_providers.h
    model/account_info_oauth_config_providers_value.h
    model/account_info_oauthproviders.h
    model/account_info_post.h
    model/account_ssh_key.h
    model/add_server_200_response.h
    model/affiliate_banner_row.h
    model/affiliate_dock_setup.h
    model/affiliate_payment_setup.h
    model/affiliate_traffic_row.h
    model/backup.h
    model/backup_billing_details.h
    model/backup_client_link.h
    model/backup_extra_info_tables.h
    model/backup_ip_info.h
    model/backup_ip_info_row.h
    model/backup_login_response.h
    model/backup_order_post_response.h
    model/backup_order_post_response_cj_params.h
    model/backup_order_put_request.h
    model/backup_order_put_response.h
    model/backup_row.h
    model/backup_service_info.h
    model/backup_service_master.h
    model/backups_order.h
    model/backups_order_package_costs.h
    model/backups_order_service_types.h
    model/billing_add_cc_request.h
    model/billing_invoice_detail.h
    model/billing_invoice_list.h
    model/billing_payment_method_request.h
    model/billing_prepay_request.h
    model/billing_verify_cc_request.h
    model/buy_it_now_list.h
    model/buy_it_now_row.h
    model/buy_it_now_row_cpu_inner.h
    model/buy_it_now_row_cpu_inner_one_of.h
    model/buy_it_now_server_order_200_response.h
    model/buy_it_now_server_order_200_response_bandwidth_inner.h
    model/buy_it_now_server_order_200_response_cp_inner.h
    model/buy_it_now_server_order_200_response_ips_inner.h
    model/buy_it_now_server_order_200_response_os_inner.h
    model/buy_it_now_server_order_200_response_raid_inner.h
    model/cancel_backup_200_response.h
    model/cancel_domain_200_response.h
    model/cancel_scrub_ip_200_response.h
    model/captcha_response.h
    model/charge_invoice_rows.h
    model/charge_invoice_rows_invoices_value.h
    model/charge_invoice_rows_invoices_value_paid_invoices_value.h
    model/charge_invoice_rows_invoices_value_paid_invoices_value_refund_invoices_value.h
    model/close_ticket_response_schema.h
    model/create_filter.h
    model/create_filter_201_response.h
    model/create_filter_400_response.h
    model/create_filter_500_response.h
    model/create_firewall_rule.h
    model/create_geo_firewall_rule.h
    model/create_geo_rule_400_response.h
    model/create_rule_201_response.h
    model/create_rule_400_response.h
    model/create_rule_500_response.h
    model/delete_filter_200_response.h
    model/delete_filter_400_response.h
    model/delete_filter_500_response.h
    model/delete_firewall_rule.h
    model/delete_geo_firewall_rule.h
    model/delete_mail_alert_request.h
    model/deny_rule_new.h
    model/deny_rule_record.h
    model/disable_scrub_200_response.h
    model/disable_scrub_400_response.h
    model/disable_scrub_500_response.h
    model/dns_list_item.h
    model/dns_new_domain.h
    model/dns_new_record.h
    model/dns_record.h
    model/dns_record_type.h
    model/dns_update_record.h
    model/domain.h
    model/domain_admin_contact.h
    model/domain_all_info.h
    model/domain_all_info_attributes.h
    model/domain_all_info_attributes_contact_set.h
    model/domain_billing_details.h
    model/domain_billing_extra.h
    model/domain_client_link.h
    model/domain_contact_details.h
    model/domain_dnssec_records.h
    model/domain_dnssec_records_inner.h
    model/domain_dnssec_request.h
    model/domain_lookup_response.h
    model/domain_name_server.h
    model/domain_nameserver_get_response.h
    model/domain_nameserver_get_response_inner.h
    model/domain_nameserver_post_request.h
    model/domain_nameserver_put_request.h
    model/domain_order.h
    model/domain_order_request.h
    model/domain_order_response.h
    model/domain_order_response_attributes.h
    model/domain_order_services.h
    model/domain_order_services10001.h
    model/domain_owner_contact.h
    model/domain_prov_process_pending.h
    model/domain_prov_process_pending_attributes.h
    model/domain_row.h
    model/domain_search_response.h
    model/domain_service_info.h
    model/domain_service_type.h
    model/domain_tech_contact.h
    model/domain_whois_privacy_request.h
    model/download_qs_backup_200_response.h
    model/download_qs_backup_request.h
    model/email_address.h
    model/email_address_name.h
    model/enable_scrub_200_response.h
    model/enable_scrub_500_response.h
    model/floating_ip_order_request.h
    model/floating_ips_cancel_200_response.h
    model/generic_response.h
    model/get_account_info_401_response.h
    model/get_account_locales_200_response_value.h
    model/get_account_tfa_setup_200_response.h
    model/get_affiliate_signups_200_response.h
    model/get_oauth_redirect_200_response.h
    model/get_order_detail_200_response.h
    model/get_order_detail_200_response_ips_inner.h
    model/get_order_detail_200_response_package_costs.h
    model/get_order_detail_200_response_service_types_inner.h
    model/get_scrub_ip_details_200_response.h
    model/get_scrub_ip_details_200_response_billing_details.h
    model/get_scrub_ip_details_200_response_client_links_inner.h
    model/get_scrub_ip_details_200_response_extra_info_tables.h
    model/get_scrub_ip_details_200_response_extra_info_tables_scrub_ips.h
    model/get_scrub_ip_details_200_response_extra_info_tables_scrub_ips_rows_inner.h
    model/get_scrub_ip_details_200_response_filter_firewall.h
    model/get_scrub_ip_details_200_response_filter_firewall_filters_inner.h
    model/get_scrub_ip_details_200_response_filter_firewall_rules_inner.h
    model/get_scrub_ip_details_200_response_service_info.h
    model/get_website_buy_ip_200_response.h
    model/home.h
    model/home_details.h
    model/home_details_modules.h
    model/home_details_modules_backups.h
    model/home_details_modules_domains.h
    model/home_details_modules_licenses.h
    model/home_details_modules_quickservers.h
    model/home_details_modules_servers.h
    model/home_details_modules_vps.h
    model/home_details_modules_webhosting.h
    model/home_services.h
    model/home_services_backups.h
    model/home_services_domains.h
    model/home_services_domains_links.h
    model/home_services_licenses.h
    model/home_services_licenses_links.h
    model/home_services_servers.h
    model/home_services_servers_links.h
    model/home_services_vps.h
    model/home_services_vps_links.h
    model/home_services_webhosting.h
    model/home_services_webhosting_links.h
    model/home_ticket_status.h
    model/home_ticket_status_view.h
    model/hostname_object.h
    model/initiate_payment_200_response.h
    model/ip_limit_range.h
    model/ip_object.h
    model/license.h
    model/license_billing_details.h
    model/license_client_link.h
    model/license_extra_info_tables.h
    model/license_ip_info.h
    model/license_ip_info_row.h
    model/license_order_request.h
    model/license_row.h
    model/license_service_info.h
    model/license_service_type.h
    model/licenses_cancel_200_response.h
    model/licenses_order.h
    model/licenses_order_package_costs.h
    model/licenses_order_service_categories.h
    model/licenses_order_service_categories509.h
    model/licenses_order_service_types.h
    model/licenses_order_service_types11482.h
    model/login_error_response.h
    model/login_info.h
    model/login_service_counts.h
    model/login_submission_example.h
    model/login_submission_example_g_recaptcha_response.h
    model/login_submission_example_g_recaptcha_response_dep.h
    model/login_success_response.h
    model/mail_alert_request.h
    model/mail_alert_update_request.h
    model/mail_alerts_response.h
    model/mail_alerts_response_inner.h
    model/mail_attachment.h
    model/mail_billing_details.h
    model/mail_block_click_house.h
    model/mail_block_rspamd.h
    model/mail_blocks.h
    model/mail_cancel_200_response.h
    model/mail_client_link.h
    model/mail_delist_request.h
    model/mail_delist_response.h
    model/mail_deliverability_response.h
    model/mail_extra_info_table.h
    model/mail_extra_info_table_row.h
    model/mail_log.h
    model/mail_log_entry.h
    model/mail_order.h
    model/mail_order_request.h
    model/mail_row.h
    model/mail_schema.h
    model/mail_schema_extra_info_tables.h
    model/mail_service_info.h
    model/mail_service_type.h
    model/mail_stats_type.h
    model/mail_stats_type_volume.h
    model/mail_stats_type_volume_from.h
    model/mail_stats_type_volume_ip.h
    model/mail_stats_type_volume_to.h
    model/mail_tutorials_table.h
    model/mail_tutorials_table_row.h
    model/module_settings.h
    model/modules.h
    model/monthly_counts.h
    model/password_request.h
    model/patch_billing_credit_card_verify_request.h
    model/patch_oauth_two_factor_200_response.h
    model/patch_oauth_two_factor_request.h
    model/place_buy_now_server_request.h
    model/place_scrub_order_201_response.h
    model/place_scrub_order_201_response_order_details.h
    model/place_scrub_order_201_response_order_details_cj_params.h
    model/post_oauth_callback_200_response.h
    model/post_oauth_callback_request.h
    model/post_website_buy_ip_200_response.h
    model/post_website_buy_ip_request.h
    model/post_website_migration_200_response.h
    model/post_website_migration_request.h
    model/put_scrub_ips_200_response.h
    model/qs_order_request.h
    model/queue_response.h
    model/quickserver.h
    model/quickserver_addons.h
    model/quickserver_addons_row.h
    model/quickserver_billing_details.h
    model/quickserver_client_link.h
    model/quickserver_extra_info_tables.h
    model/quickserver_ip_info.h
    model/quickserver_ip_table_row.h
    model/quickserver_order.h
    model/quickserver_order_distro_sel.h
    model/quickserver_order_distro_sel_ubuntu.h
    model/quickserver_order_server_details.h
    model/quickserver_order_server_details381.h
    model/quickserver_order_templates.h
    model/quickserver_order_templates_ubuntu64.h
    model/quickserver_order_version.h
    model/quickserver_order_version_centosstream8.h
    model/quickserver_row.h
    model/quickserver_service_extra.h
    model/quickserver_service_info.h
    model/quickserver_service_master.h
    model/quickservers_cancel_200_response.h
    model/reply_ticket_request.h
    model/reply_ticket_response_schema.h
    model/restore_request.h
    model/reverse_dns_entries.h
    model/scrub_ip_filter_types.h
    model/scrub_ip_filter_types_filters_value.h
    model/scrub_ip_place_order.h
    model/scrub_ips_delete_rule_200_response.h
    model/scrub_ips_delete_rule_400_response.h
    model/scrub_ips_delete_rule_500_response.h
    model/scrub_ips_log_row_schema.h
    model/scrub_ips_row_schema.h
    model/search_autocomplete_response.h
    model/send_mail.h
    model/send_mail_adv.h
    model/server.h
    model/server_asset.h
    model/server_assets.h
    model/server_billing_details.h
    model/server_bulk_ipmi_power_response.h
    model/server_bulk_ipmi_power_response_results_inner.h
    model/server_client_link.h
    model/server_extra_info_tables.h
    model/server_ipmi_live_info.h
    model/server_ipmi_live_request.h
    model/server_ipmi_power_request.h
    model/server_lease.h
    model/server_location1.h
    model/server_locations.h
    model/server_network_info.h
    model/server_network_info_assets.h
    model/server_network_info_switchports.h
    model/server_order.h
    model/server_order_bandwidth.h
    model/server_order_bandwidth_li.h
    model/server_order_config_ids.h
    model/server_order_control_panel.h
    model/server_order_cp_li.h
    model/server_order_cpu.h
    model/server_order_cpu_li.h
    model/server_order_field_label.h
    model/server_order_field_labels.h
    model/server_order_form_values.h
    model/server_order_ip.h
    model/server_order_ips_li.h
    model/server_order_memory.h
    model/server_order_memory_li.h
    model/server_order_memory_li_254.h
    model/server_order_os.h
    model/server_order_os_li.h
    model/server_order_post_request.h
    model/server_order_post_request_hd.h
    model/server_order_raid.h
    model/server_row.h
    model/server_service_info.h
    model/server_switchport.h
    model/servers_buy_now_error.h
    model/servers_buy_now_response.h
    model/servers_buy_now_response_order_details.h
    model/servers_cancel_200_response.h
    model/service.h
    model/service_categories.h
    model/service_category.h
    model/service_order_post_response.h
    model/service_type.h
    model/service_types.h
    model/services.h
    model/services_info.h
    model/ssl_cancel_200_response.h
    model/ssl_order_request.h
    model/status_monthly_breakdown.h
    model/success_text_response.h
    model/template_request.h
    model/text_response.h
    model/ticket_custom_field_details.h
    model/ticket_details.h
    model/ticket_new.h
    model/ticket_new_response.h
    model/ticket_post_details.h
    model/ticket_post_details_inner.h
    model/tickets.h
    model/tickets_count_array.h
    model/tickets_row.h
    model/timezone_update.h
    model/update_account_tfa_request.h
    model/update_ticket.h
    model/update_ticket_response_schema.h
    model/url_request.h
    model/view_mail_log_start_date_parameter.h
    model/view_ticket_response.h
    model/vps.h
    model/vps_backup_row.h
    model/vps_backup_rows.h
    model/vps_billing_details.h
    model/vps_cancel_200_response.h
    model/vps_client_link.h
    model/vps_cp_data.h
    model/vps_da_data.h
    model/vps_da_license.h
    model/vps_extra_info_tables.h
    model/vps_ip_info.h
    model/vps_ip_info_row.h
    model/vps_order.h
    model/vps_order_location_names.h
    model/vps_order_location_stock.h
    model/vps_order_location_stock_1.h
    model/vps_order_os_names.h
    model/vps_order_package_costs.h
    model/vps_order_platform_names.h
    model/vps_order_platform_packages.h
    model/vps_order_post_request.h
    model/vps_order_put_request.h
    model/vps_order_put_response.h
    model/vps_order_service_types.h
    model/vps_order_service_types_32.h
    model/vps_order_templates.h
    model/vps_order_templates_hyperv.h
    model/vps_order_templates_hyperv_windows.h
    model/vps_plesk12_data.h
    model/vps_plesk_license.h
    model/vps_row.h
    model/vps_service_addons.h
    model/vps_service_extra.h
    model/vps_service_info.h
    model/vps_service_master.h
    model/vps_snapshot.h
    model/vps_template_row.h
    model/vps_templates_list.h
    model/vps_traffic_data_data_section_response.h
    model/vps_traffic_data_data_section_response_inner.h
    model/vps_traffic_data_section_response.h
    model/vps_traffic_history_response.h
    model/vps_traffic_history_section_data_response.h
    model/vps_traffic_history_section_response.h
    model/vps_traffic_response.h
    model/vps_traffic_totals_resposne.h
    model/vps_traffic_totals_section_response.h
    model/vps_traffic_usage_average_response.h
    model/vps_traffic_usage_average_section_response.h
    model/vps_traffic_usage_response.h
    model/webhosting_cancel_200_response.h
    model/website.h
    model/website_backups.h
    model/website_backups_inner.h
    model/website_billing_details.h
    model/website_client_link.h
    model/website_extra_info_tables.h
    model/website_login_response.h
    model/website_order_post_request.h
    model/website_order_put_request.h
    model/website_row.h
    model/website_service_info.h
    model/website_service_master.h
    model/website_table.h
    model/website_table_row.h
    model/websites_order.h
    model/websites_order_json_service_offers.h
    model/websites_order_json_service_offers_item.h
    model/websites_order_json_services.h
    model/websites_order_packages.h
    model/websites_order_packages_info.h
    model/websites_order_packges.h
    model/websites_order_service_offer.h
    model/websites_order_service_offers.h
    model/websites_order_service_types.h
    api/AccountAPI.h
    api/BackupsAPI.h
    api/BillingAPI.h
    api/DNSAPI.h
    api/DomainsAPI.h
    api/FloatingIPsAPI.h
    api/LicensesAPI.h
    api/MailAPI.h
    api/PublicAPI.h
    api/QuickServersAPI.h
    api/SSLCertificatesAPI.h
    api/ScrubIpsAPI.h
    api/ServersAPI.h
    api/TicketsAPI.h
    api/VPSAPI.h
    api/WebhostingAPI.h

)

include(PreTarget.cmake OPTIONAL)

set(PROJECT_VERSION_STRING "${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}.${PROJECT_VERSION_PATCH}")

# Add library with project file with project name as library name
if(NOT BUILD_STATIC_LIBS)
  add_library(${pkgName} ${SRCS} ${HDRS})
else()
  add_library(${pkgName} STATIC ${SRCS} ${HDRS})
endif()
# Link dependent libraries
if(NOT CMAKE_VERSION VERSION_LESS 3.4)
    target_link_libraries(${pkgName} PRIVATE OpenSSL::SSL OpenSSL::Crypto)
endif()
target_link_libraries(${pkgName} PUBLIC ${CURL_LIBRARIES} )
target_include_directories(
    ${pkgName} PUBLIC $<BUILD_INTERFACE:${PROJECT_SOURCE_DIR}>
    $<INSTALL_INTERFACE:include>
)

include(PostTarget.cmake OPTIONAL)

# installation of libraries, headers, and config files
if (NOT EXISTS ${CMAKE_CURRENT_SOURCE_DIR}/Config.cmake.in)
    install(TARGETS ${pkgName} DESTINATION lib)
else()
    include(GNUInstallDirs)
    install(TARGETS ${pkgName} DESTINATION lib EXPORT ${pkgName}Targets)

    foreach(HDR_FILE ${HDRS})
        get_filename_component(HDR_DIRECTORY ${HDR_FILE} DIRECTORY)
        get_filename_component(ABSOLUTE_HDR_DIRECTORY ${HDR_DIRECTORY} ABSOLUTE)
        file(RELATIVE_PATH RELATIVE_HDR_PATH ${CMAKE_CURRENT_SOURCE_DIR} ${ABSOLUTE_HDR_DIRECTORY})
        install(FILES ${HDR_FILE} DESTINATION include/${pkgName}/${RELATIVE_HDR_PATH})
    endforeach()

    include(CMakePackageConfigHelpers)
    write_basic_package_version_file(
            "${CMAKE_CURRENT_BINARY_DIR}/${pkgName}/${pkgName}ConfigVersion.cmake"
            VERSION "${PROJECT_VERSION_STRING}"
            COMPATIBILITY AnyNewerVersion
    )

    export(EXPORT ${pkgName}Targets
            FILE "${CMAKE_CURRENT_BINARY_DIR}/${pkgName}/${pkgName}Targets.cmake"
            NAMESPACE ${pkgName}::
            )

    configure_file(${CMAKE_CURRENT_SOURCE_DIR}/Config.cmake.in
            "${CMAKE_CURRENT_BINARY_DIR}/${pkgName}/${pkgName}Config.cmake"
            @ONLY
            )

    set(ConfigPackageLocation lib/cmake/${pkgName})
    install(EXPORT ${pkgName}Targets
            FILE
            ${pkgName}Targets.cmake
            NAMESPACE
            ${pkgName}::
            DESTINATION
            ${ConfigPackageLocation}
            )
    install(
            FILES
            "${CMAKE_CURRENT_BINARY_DIR}/${pkgName}/${pkgName}Config.cmake"
            "${CMAKE_CURRENT_BINARY_DIR}/${pkgName}/${pkgName}ConfigVersion.cmake"
            DESTINATION
            ${ConfigPackageLocation}
    )
endif()

# make installation packages
include(Packing.cmake OPTIONAL)

# Setting file variables to null
set(SRCS "")
set(HDRS "")


## This section shows how to use the above compiled library to compile the source files
## set source files
#set(SRCS
#    unit-tests/manual-AccountAPI.c
#    unit-tests/manual-BackupsAPI.c
#    unit-tests/manual-BillingAPI.c
#    unit-tests/manual-DNSAPI.c
#    unit-tests/manual-DomainsAPI.c
#    unit-tests/manual-FloatingIPsAPI.c
#    unit-tests/manual-LicensesAPI.c
#    unit-tests/manual-MailAPI.c
#    unit-tests/manual-PublicAPI.c
#    unit-tests/manual-QuickServersAPI.c
#    unit-tests/manual-SSLCertificatesAPI.c
#    unit-tests/manual-ScrubIpsAPI.c
#    unit-tests/manual-ServersAPI.c
#    unit-tests/manual-TicketsAPI.c
#    unit-tests/manual-VPSAPI.c
#    unit-tests/manual-WebhostingAPI.c
#)

##set header files
#set(HDRS
#)

## loop over all files in SRCS variable
#foreach(SOURCE_FILE ${SRCS})
#    # Get only the file name from the file as add_executable does not support executable with slash("/")
#    get_filename_component(FILE_NAME_ONLY ${SOURCE_FILE} NAME_WE)
#    # Remove .c from the file name and set it as executable name
#    string( REPLACE ".c" "" EXECUTABLE_FILE ${FILE_NAME_ONLY})
#    # Add executable for every source file in  SRCS
#    add_executable(unit-${EXECUTABLE_FILE} ${SOURCE_FILE})
#    # Link above created library to executable and dependent library curl
#    target_link_libraries(unit-${EXECUTABLE_FILE} ${CURL_LIBRARIES} ${pkgName} )
#endforeach(SOURCE_FILE ${SRCS})
