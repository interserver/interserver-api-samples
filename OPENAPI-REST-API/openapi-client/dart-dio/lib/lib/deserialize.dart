import 'package:interserver_api/lib/model/account_features.dart';
import 'package:interserver_api/lib/model/account_info.dart';
import 'package:interserver_api/lib/model/account_info_country_currencies.dart';
import 'package:interserver_api/lib/model/account_info_data.dart';
import 'package:interserver_api/lib/model/account_info_data_cc.dart';
import 'package:interserver_api/lib/model/account_info_data_ccs.dart';
import 'package:interserver_api/lib/model/account_info_data_email_settings.dart';
import 'package:interserver_api/lib/model/account_info_data_extra.dart';
import 'package:interserver_api/lib/model/account_info_data_fraudrecord.dart';
import 'package:interserver_api/lib/model/account_info_limits.dart';
import 'package:interserver_api/lib/model/account_info_limits_inner.dart';
import 'package:interserver_api/lib/model/account_info_max_mind_response.dart';
import 'package:interserver_api/lib/model/account_info_max_mind_response_risk_score.dart';
import 'package:interserver_api/lib/model/account_info_oauth_config.dart';
import 'package:interserver_api/lib/model/account_info_oauth_config_providers.dart';
import 'package:interserver_api/lib/model/account_info_oauth_config_providers_value.dart';
import 'package:interserver_api/lib/model/account_info_oauthproviders.dart';
import 'package:interserver_api/lib/model/account_info_post.dart';
import 'package:interserver_api/lib/model/account_ssh_key.dart';
import 'package:interserver_api/lib/model/add_server200_response.dart';
import 'package:interserver_api/lib/model/affiliate_banner_row.dart';
import 'package:interserver_api/lib/model/affiliate_dock_setup.dart';
import 'package:interserver_api/lib/model/affiliate_payment_setup.dart';
import 'package:interserver_api/lib/model/affiliate_traffic_row.dart';
import 'package:interserver_api/lib/model/backup.dart';
import 'package:interserver_api/lib/model/backup_billing_details.dart';
import 'package:interserver_api/lib/model/backup_client_link.dart';
import 'package:interserver_api/lib/model/backup_extra_info_tables.dart';
import 'package:interserver_api/lib/model/backup_ip_info.dart';
import 'package:interserver_api/lib/model/backup_ip_info_row.dart';
import 'package:interserver_api/lib/model/backup_login_response.dart';
import 'package:interserver_api/lib/model/backup_order_post_response.dart';
import 'package:interserver_api/lib/model/backup_order_post_response_cj_params.dart';
import 'package:interserver_api/lib/model/backup_order_put_request.dart';
import 'package:interserver_api/lib/model/backup_order_put_response.dart';
import 'package:interserver_api/lib/model/backup_row.dart';
import 'package:interserver_api/lib/model/backup_service_info.dart';
import 'package:interserver_api/lib/model/backup_service_master.dart';
import 'package:interserver_api/lib/model/backups_order.dart';
import 'package:interserver_api/lib/model/backups_order_package_costs.dart';
import 'package:interserver_api/lib/model/backups_order_service_types.dart';
import 'package:interserver_api/lib/model/billing_add_cc_request.dart';
import 'package:interserver_api/lib/model/billing_invoice_detail.dart';
import 'package:interserver_api/lib/model/billing_invoice_list.dart';
import 'package:interserver_api/lib/model/billing_payment_method_request.dart';
import 'package:interserver_api/lib/model/billing_prepay_request.dart';
import 'package:interserver_api/lib/model/billing_verify_cc_request.dart';
import 'package:interserver_api/lib/model/buy_it_now_list.dart';
import 'package:interserver_api/lib/model/buy_it_now_row.dart';
import 'package:interserver_api/lib/model/buy_it_now_row_cpu_inner.dart';
import 'package:interserver_api/lib/model/buy_it_now_row_cpu_inner_one_of.dart';
import 'package:interserver_api/lib/model/buy_it_now_server_order200_response.dart';
import 'package:interserver_api/lib/model/buy_it_now_server_order200_response_bandwidth_inner.dart';
import 'package:interserver_api/lib/model/buy_it_now_server_order200_response_cp_inner.dart';
import 'package:interserver_api/lib/model/buy_it_now_server_order200_response_ips_inner.dart';
import 'package:interserver_api/lib/model/buy_it_now_server_order200_response_os_inner.dart';
import 'package:interserver_api/lib/model/buy_it_now_server_order200_response_raid_inner.dart';
import 'package:interserver_api/lib/model/cancel_backup200_response.dart';
import 'package:interserver_api/lib/model/cancel_domain200_response.dart';
import 'package:interserver_api/lib/model/cancel_scrub_ip200_response.dart';
import 'package:interserver_api/lib/model/captcha_response.dart';
import 'package:interserver_api/lib/model/charge_invoice_rows.dart';
import 'package:interserver_api/lib/model/charge_invoice_rows_invoices_value.dart';
import 'package:interserver_api/lib/model/charge_invoice_rows_invoices_value_paid_invoices_value.dart';
import 'package:interserver_api/lib/model/charge_invoice_rows_invoices_value_paid_invoices_value_refund_invoices_value.dart';
import 'package:interserver_api/lib/model/close_ticket_response_schema.dart';
import 'package:interserver_api/lib/model/create_filter.dart';
import 'package:interserver_api/lib/model/create_filter201_response.dart';
import 'package:interserver_api/lib/model/create_filter400_response.dart';
import 'package:interserver_api/lib/model/create_filter500_response.dart';
import 'package:interserver_api/lib/model/create_firewall_rule.dart';
import 'package:interserver_api/lib/model/create_geo_firewall_rule.dart';
import 'package:interserver_api/lib/model/create_geo_rule400_response.dart';
import 'package:interserver_api/lib/model/create_rule201_response.dart';
import 'package:interserver_api/lib/model/create_rule400_response.dart';
import 'package:interserver_api/lib/model/create_rule500_response.dart';
import 'package:interserver_api/lib/model/delete_filter200_response.dart';
import 'package:interserver_api/lib/model/delete_filter400_response.dart';
import 'package:interserver_api/lib/model/delete_filter500_response.dart';
import 'package:interserver_api/lib/model/delete_firewall_rule.dart';
import 'package:interserver_api/lib/model/delete_geo_firewall_rule.dart';
import 'package:interserver_api/lib/model/delete_mail_alert_request.dart';
import 'package:interserver_api/lib/model/deny_rule_new.dart';
import 'package:interserver_api/lib/model/deny_rule_record.dart';
import 'package:interserver_api/lib/model/disable_scrub200_response.dart';
import 'package:interserver_api/lib/model/disable_scrub400_response.dart';
import 'package:interserver_api/lib/model/disable_scrub500_response.dart';
import 'package:interserver_api/lib/model/dns_list_item.dart';
import 'package:interserver_api/lib/model/dns_new_domain.dart';
import 'package:interserver_api/lib/model/dns_new_record.dart';
import 'package:interserver_api/lib/model/dns_record.dart';
import 'package:interserver_api/lib/model/dns_update_record.dart';
import 'package:interserver_api/lib/model/domain.dart';
import 'package:interserver_api/lib/model/domain_admin_contact.dart';
import 'package:interserver_api/lib/model/domain_all_info.dart';
import 'package:interserver_api/lib/model/domain_all_info_attributes.dart';
import 'package:interserver_api/lib/model/domain_all_info_attributes_contact_set.dart';
import 'package:interserver_api/lib/model/domain_billing_details.dart';
import 'package:interserver_api/lib/model/domain_billing_extra.dart';
import 'package:interserver_api/lib/model/domain_client_link.dart';
import 'package:interserver_api/lib/model/domain_contact_details.dart';
import 'package:interserver_api/lib/model/domain_dnssec_records.dart';
import 'package:interserver_api/lib/model/domain_dnssec_records_inner.dart';
import 'package:interserver_api/lib/model/domain_dnssec_request.dart';
import 'package:interserver_api/lib/model/domain_lookup_response.dart';
import 'package:interserver_api/lib/model/domain_name_server.dart';
import 'package:interserver_api/lib/model/domain_nameserver_get_response.dart';
import 'package:interserver_api/lib/model/domain_nameserver_get_response_inner.dart';
import 'package:interserver_api/lib/model/domain_nameserver_post_request.dart';
import 'package:interserver_api/lib/model/domain_nameserver_put_request.dart';
import 'package:interserver_api/lib/model/domain_order.dart';
import 'package:interserver_api/lib/model/domain_order_request.dart';
import 'package:interserver_api/lib/model/domain_order_response.dart';
import 'package:interserver_api/lib/model/domain_order_response_attributes.dart';
import 'package:interserver_api/lib/model/domain_order_services.dart';
import 'package:interserver_api/lib/model/domain_order_services10001.dart';
import 'package:interserver_api/lib/model/domain_owner_contact.dart';
import 'package:interserver_api/lib/model/domain_prov_process_pending.dart';
import 'package:interserver_api/lib/model/domain_prov_process_pending_attributes.dart';
import 'package:interserver_api/lib/model/domain_row.dart';
import 'package:interserver_api/lib/model/domain_search_response.dart';
import 'package:interserver_api/lib/model/domain_service_info.dart';
import 'package:interserver_api/lib/model/domain_service_type.dart';
import 'package:interserver_api/lib/model/domain_tech_contact.dart';
import 'package:interserver_api/lib/model/domain_whois_privacy_request.dart';
import 'package:interserver_api/lib/model/download_qs_backup200_response.dart';
import 'package:interserver_api/lib/model/download_qs_backup_request.dart';
import 'package:interserver_api/lib/model/email_address.dart';
import 'package:interserver_api/lib/model/email_address_name.dart';
import 'package:interserver_api/lib/model/enable_scrub200_response.dart';
import 'package:interserver_api/lib/model/enable_scrub500_response.dart';
import 'package:interserver_api/lib/model/floating_ip_order_request.dart';
import 'package:interserver_api/lib/model/floating_ips_cancel200_response.dart';
import 'package:interserver_api/lib/model/generic_response.dart';
import 'package:interserver_api/lib/model/get_account_info401_response.dart';
import 'package:interserver_api/lib/model/get_account_locales200_response_value.dart';
import 'package:interserver_api/lib/model/get_account_tfa_setup200_response.dart';
import 'package:interserver_api/lib/model/get_affiliate_signups200_response.dart';
import 'package:interserver_api/lib/model/get_oauth_redirect200_response.dart';
import 'package:interserver_api/lib/model/get_order_detail200_response.dart';
import 'package:interserver_api/lib/model/get_order_detail200_response_ips_inner.dart';
import 'package:interserver_api/lib/model/get_order_detail200_response_package_costs.dart';
import 'package:interserver_api/lib/model/get_order_detail200_response_service_types_inner.dart';
import 'package:interserver_api/lib/model/get_scrub_ip_details200_response.dart';
import 'package:interserver_api/lib/model/get_scrub_ip_details200_response_billing_details.dart';
import 'package:interserver_api/lib/model/get_scrub_ip_details200_response_client_links_inner.dart';
import 'package:interserver_api/lib/model/get_scrub_ip_details200_response_extra_info_tables.dart';
import 'package:interserver_api/lib/model/get_scrub_ip_details200_response_extra_info_tables_scrub_ips.dart';
import 'package:interserver_api/lib/model/get_scrub_ip_details200_response_extra_info_tables_scrub_ips_rows_inner.dart';
import 'package:interserver_api/lib/model/get_scrub_ip_details200_response_filter_firewall.dart';
import 'package:interserver_api/lib/model/get_scrub_ip_details200_response_filter_firewall_filters_inner.dart';
import 'package:interserver_api/lib/model/get_scrub_ip_details200_response_filter_firewall_rules_inner.dart';
import 'package:interserver_api/lib/model/get_scrub_ip_details200_response_service_info.dart';
import 'package:interserver_api/lib/model/get_website_buy_ip200_response.dart';
import 'package:interserver_api/lib/model/home.dart';
import 'package:interserver_api/lib/model/home_details.dart';
import 'package:interserver_api/lib/model/home_details_modules.dart';
import 'package:interserver_api/lib/model/home_details_modules_backups.dart';
import 'package:interserver_api/lib/model/home_details_modules_domains.dart';
import 'package:interserver_api/lib/model/home_details_modules_licenses.dart';
import 'package:interserver_api/lib/model/home_details_modules_quickservers.dart';
import 'package:interserver_api/lib/model/home_details_modules_servers.dart';
import 'package:interserver_api/lib/model/home_details_modules_vps.dart';
import 'package:interserver_api/lib/model/home_details_modules_webhosting.dart';
import 'package:interserver_api/lib/model/home_services.dart';
import 'package:interserver_api/lib/model/home_services_backups.dart';
import 'package:interserver_api/lib/model/home_services_domains.dart';
import 'package:interserver_api/lib/model/home_services_domains_links.dart';
import 'package:interserver_api/lib/model/home_services_licenses.dart';
import 'package:interserver_api/lib/model/home_services_licenses_links.dart';
import 'package:interserver_api/lib/model/home_services_servers.dart';
import 'package:interserver_api/lib/model/home_services_servers_links.dart';
import 'package:interserver_api/lib/model/home_services_vps.dart';
import 'package:interserver_api/lib/model/home_services_vps_links.dart';
import 'package:interserver_api/lib/model/home_services_webhosting.dart';
import 'package:interserver_api/lib/model/home_services_webhosting_links.dart';
import 'package:interserver_api/lib/model/home_ticket_status.dart';
import 'package:interserver_api/lib/model/home_ticket_status_view.dart';
import 'package:interserver_api/lib/model/hostname_object.dart';
import 'package:interserver_api/lib/model/initiate_payment200_response.dart';
import 'package:interserver_api/lib/model/ip_limit_range.dart';
import 'package:interserver_api/lib/model/ip_object.dart';
import 'package:interserver_api/lib/model/license.dart';
import 'package:interserver_api/lib/model/license_billing_details.dart';
import 'package:interserver_api/lib/model/license_client_link.dart';
import 'package:interserver_api/lib/model/license_extra_info_tables.dart';
import 'package:interserver_api/lib/model/license_ip_info.dart';
import 'package:interserver_api/lib/model/license_ip_info_row.dart';
import 'package:interserver_api/lib/model/license_order_request.dart';
import 'package:interserver_api/lib/model/license_row.dart';
import 'package:interserver_api/lib/model/license_service_info.dart';
import 'package:interserver_api/lib/model/license_service_type.dart';
import 'package:interserver_api/lib/model/licenses_cancel200_response.dart';
import 'package:interserver_api/lib/model/licenses_order.dart';
import 'package:interserver_api/lib/model/licenses_order_package_costs.dart';
import 'package:interserver_api/lib/model/licenses_order_service_categories.dart';
import 'package:interserver_api/lib/model/licenses_order_service_categories509.dart';
import 'package:interserver_api/lib/model/licenses_order_service_types.dart';
import 'package:interserver_api/lib/model/licenses_order_service_types11482.dart';
import 'package:interserver_api/lib/model/login_error_response.dart';
import 'package:interserver_api/lib/model/login_info.dart';
import 'package:interserver_api/lib/model/login_service_counts.dart';
import 'package:interserver_api/lib/model/login_submission_example.dart';
import 'package:interserver_api/lib/model/login_submission_example_g_recaptcha_response.dart';
import 'package:interserver_api/lib/model/login_submission_example_g_recaptcha_response_dep.dart';
import 'package:interserver_api/lib/model/login_success_response.dart';
import 'package:interserver_api/lib/model/mail_alert_request.dart';
import 'package:interserver_api/lib/model/mail_alert_update_request.dart';
import 'package:interserver_api/lib/model/mail_alerts_response.dart';
import 'package:interserver_api/lib/model/mail_alerts_response_inner.dart';
import 'package:interserver_api/lib/model/mail_attachment.dart';
import 'package:interserver_api/lib/model/mail_billing_details.dart';
import 'package:interserver_api/lib/model/mail_block_click_house.dart';
import 'package:interserver_api/lib/model/mail_block_rspamd.dart';
import 'package:interserver_api/lib/model/mail_blocks.dart';
import 'package:interserver_api/lib/model/mail_cancel200_response.dart';
import 'package:interserver_api/lib/model/mail_client_link.dart';
import 'package:interserver_api/lib/model/mail_delist_request.dart';
import 'package:interserver_api/lib/model/mail_delist_response.dart';
import 'package:interserver_api/lib/model/mail_deliverability_response.dart';
import 'package:interserver_api/lib/model/mail_extra_info_table.dart';
import 'package:interserver_api/lib/model/mail_extra_info_table_row.dart';
import 'package:interserver_api/lib/model/mail_log.dart';
import 'package:interserver_api/lib/model/mail_log_entry.dart';
import 'package:interserver_api/lib/model/mail_order.dart';
import 'package:interserver_api/lib/model/mail_order_request.dart';
import 'package:interserver_api/lib/model/mail_row.dart';
import 'package:interserver_api/lib/model/mail_schema.dart';
import 'package:interserver_api/lib/model/mail_schema_extra_info_tables.dart';
import 'package:interserver_api/lib/model/mail_service_info.dart';
import 'package:interserver_api/lib/model/mail_service_type.dart';
import 'package:interserver_api/lib/model/mail_stats_type.dart';
import 'package:interserver_api/lib/model/mail_stats_type_volume.dart';
import 'package:interserver_api/lib/model/mail_stats_type_volume_from.dart';
import 'package:interserver_api/lib/model/mail_stats_type_volume_ip.dart';
import 'package:interserver_api/lib/model/mail_stats_type_volume_to.dart';
import 'package:interserver_api/lib/model/mail_tutorials_table.dart';
import 'package:interserver_api/lib/model/mail_tutorials_table_row.dart';
import 'package:interserver_api/lib/model/module_settings.dart';
import 'package:interserver_api/lib/model/modules.dart';
import 'package:interserver_api/lib/model/monthly_counts.dart';
import 'package:interserver_api/lib/model/password_request.dart';
import 'package:interserver_api/lib/model/patch_billing_credit_card_verify_request.dart';
import 'package:interserver_api/lib/model/patch_oauth_two_factor200_response.dart';
import 'package:interserver_api/lib/model/patch_oauth_two_factor_request.dart';
import 'package:interserver_api/lib/model/place_buy_now_server_request.dart';
import 'package:interserver_api/lib/model/place_scrub_order201_response.dart';
import 'package:interserver_api/lib/model/place_scrub_order201_response_order_details.dart';
import 'package:interserver_api/lib/model/place_scrub_order201_response_order_details_cj_params.dart';
import 'package:interserver_api/lib/model/post_oauth_callback200_response.dart';
import 'package:interserver_api/lib/model/post_oauth_callback_request.dart';
import 'package:interserver_api/lib/model/post_website_buy_ip200_response.dart';
import 'package:interserver_api/lib/model/post_website_buy_ip_request.dart';
import 'package:interserver_api/lib/model/post_website_migration200_response.dart';
import 'package:interserver_api/lib/model/post_website_migration_request.dart';
import 'package:interserver_api/lib/model/put_scrub_ips200_response.dart';
import 'package:interserver_api/lib/model/qs_order_request.dart';
import 'package:interserver_api/lib/model/queue_response.dart';
import 'package:interserver_api/lib/model/quickserver.dart';
import 'package:interserver_api/lib/model/quickserver_addons.dart';
import 'package:interserver_api/lib/model/quickserver_addons_row.dart';
import 'package:interserver_api/lib/model/quickserver_billing_details.dart';
import 'package:interserver_api/lib/model/quickserver_client_link.dart';
import 'package:interserver_api/lib/model/quickserver_extra_info_tables.dart';
import 'package:interserver_api/lib/model/quickserver_ip_info.dart';
import 'package:interserver_api/lib/model/quickserver_ip_table_row.dart';
import 'package:interserver_api/lib/model/quickserver_order.dart';
import 'package:interserver_api/lib/model/quickserver_order_distro_sel.dart';
import 'package:interserver_api/lib/model/quickserver_order_distro_sel_ubuntu.dart';
import 'package:interserver_api/lib/model/quickserver_order_server_details.dart';
import 'package:interserver_api/lib/model/quickserver_order_server_details381.dart';
import 'package:interserver_api/lib/model/quickserver_order_templates.dart';
import 'package:interserver_api/lib/model/quickserver_order_templates_ubuntu64.dart';
import 'package:interserver_api/lib/model/quickserver_order_version.dart';
import 'package:interserver_api/lib/model/quickserver_order_version_centosstream8.dart';
import 'package:interserver_api/lib/model/quickserver_row.dart';
import 'package:interserver_api/lib/model/quickserver_service_extra.dart';
import 'package:interserver_api/lib/model/quickserver_service_info.dart';
import 'package:interserver_api/lib/model/quickserver_service_master.dart';
import 'package:interserver_api/lib/model/quickservers_cancel200_response.dart';
import 'package:interserver_api/lib/model/reply_ticket_request.dart';
import 'package:interserver_api/lib/model/reply_ticket_response_schema.dart';
import 'package:interserver_api/lib/model/restore_request.dart';
import 'package:interserver_api/lib/model/reverse_dns_entries.dart';
import 'package:interserver_api/lib/model/scrub_ip_filter_types.dart';
import 'package:interserver_api/lib/model/scrub_ip_filter_types_filters_value.dart';
import 'package:interserver_api/lib/model/scrub_ip_place_order.dart';
import 'package:interserver_api/lib/model/scrub_ips_delete_rule200_response.dart';
import 'package:interserver_api/lib/model/scrub_ips_delete_rule400_response.dart';
import 'package:interserver_api/lib/model/scrub_ips_delete_rule500_response.dart';
import 'package:interserver_api/lib/model/scrub_ips_log_row_schema.dart';
import 'package:interserver_api/lib/model/scrub_ips_row_schema.dart';
import 'package:interserver_api/lib/model/search_autocomplete_response.dart';
import 'package:interserver_api/lib/model/send_mail.dart';
import 'package:interserver_api/lib/model/send_mail_adv.dart';
import 'package:interserver_api/lib/model/server.dart';
import 'package:interserver_api/lib/model/server_asset.dart';
import 'package:interserver_api/lib/model/server_assets.dart';
import 'package:interserver_api/lib/model/server_billing_details.dart';
import 'package:interserver_api/lib/model/server_bulk_ipmi_power_response.dart';
import 'package:interserver_api/lib/model/server_bulk_ipmi_power_response_results_inner.dart';
import 'package:interserver_api/lib/model/server_client_link.dart';
import 'package:interserver_api/lib/model/server_extra_info_tables.dart';
import 'package:interserver_api/lib/model/server_ipmi_live_info.dart';
import 'package:interserver_api/lib/model/server_ipmi_live_request.dart';
import 'package:interserver_api/lib/model/server_ipmi_power_request.dart';
import 'package:interserver_api/lib/model/server_lease.dart';
import 'package:interserver_api/lib/model/server_location1.dart';
import 'package:interserver_api/lib/model/server_locations.dart';
import 'package:interserver_api/lib/model/server_network_info.dart';
import 'package:interserver_api/lib/model/server_network_info_assets.dart';
import 'package:interserver_api/lib/model/server_network_info_switchports.dart';
import 'package:interserver_api/lib/model/server_order.dart';
import 'package:interserver_api/lib/model/server_order_bandwidth.dart';
import 'package:interserver_api/lib/model/server_order_bandwidth_li.dart';
import 'package:interserver_api/lib/model/server_order_cpu.dart';
import 'package:interserver_api/lib/model/server_order_config_ids.dart';
import 'package:interserver_api/lib/model/server_order_control_panel.dart';
import 'package:interserver_api/lib/model/server_order_cp_li.dart';
import 'package:interserver_api/lib/model/server_order_cpu_li.dart';
import 'package:interserver_api/lib/model/server_order_field_label.dart';
import 'package:interserver_api/lib/model/server_order_field_labels.dart';
import 'package:interserver_api/lib/model/server_order_form_values.dart';
import 'package:interserver_api/lib/model/server_order_ip.dart';
import 'package:interserver_api/lib/model/server_order_ips_li.dart';
import 'package:interserver_api/lib/model/server_order_memory.dart';
import 'package:interserver_api/lib/model/server_order_memory_li.dart';
import 'package:interserver_api/lib/model/server_order_memory_li254.dart';
import 'package:interserver_api/lib/model/server_order_os.dart';
import 'package:interserver_api/lib/model/server_order_os_li.dart';
import 'package:interserver_api/lib/model/server_order_post_request.dart';
import 'package:interserver_api/lib/model/server_order_post_request_hd.dart';
import 'package:interserver_api/lib/model/server_order_raid.dart';
import 'package:interserver_api/lib/model/server_row.dart';
import 'package:interserver_api/lib/model/server_service_info.dart';
import 'package:interserver_api/lib/model/server_switchport.dart';
import 'package:interserver_api/lib/model/servers_buy_now_error.dart';
import 'package:interserver_api/lib/model/servers_buy_now_response.dart';
import 'package:interserver_api/lib/model/servers_buy_now_response_order_details.dart';
import 'package:interserver_api/lib/model/servers_cancel200_response.dart';
import 'package:interserver_api/lib/model/service.dart';
import 'package:interserver_api/lib/model/service_categories.dart';
import 'package:interserver_api/lib/model/service_category.dart';
import 'package:interserver_api/lib/model/service_order_post_response.dart';
import 'package:interserver_api/lib/model/service_type.dart';
import 'package:interserver_api/lib/model/service_types.dart';
import 'package:interserver_api/lib/model/services.dart';
import 'package:interserver_api/lib/model/services_info.dart';
import 'package:interserver_api/lib/model/ssl_cancel200_response.dart';
import 'package:interserver_api/lib/model/ssl_order_request.dart';
import 'package:interserver_api/lib/model/status_monthly_breakdown.dart';
import 'package:interserver_api/lib/model/success_text_response.dart';
import 'package:interserver_api/lib/model/template_request.dart';
import 'package:interserver_api/lib/model/text_response.dart';
import 'package:interserver_api/lib/model/ticket_custom_field_details.dart';
import 'package:interserver_api/lib/model/ticket_details.dart';
import 'package:interserver_api/lib/model/ticket_new.dart';
import 'package:interserver_api/lib/model/ticket_new_response.dart';
import 'package:interserver_api/lib/model/ticket_post_details.dart';
import 'package:interserver_api/lib/model/ticket_post_details_inner.dart';
import 'package:interserver_api/lib/model/tickets.dart';
import 'package:interserver_api/lib/model/tickets_count_array.dart';
import 'package:interserver_api/lib/model/tickets_row.dart';
import 'package:interserver_api/lib/model/timezone_update.dart';
import 'package:interserver_api/lib/model/update_account_tfa_request.dart';
import 'package:interserver_api/lib/model/update_ticket.dart';
import 'package:interserver_api/lib/model/update_ticket_response_schema.dart';
import 'package:interserver_api/lib/model/url_request.dart';
import 'package:interserver_api/lib/model/vps_cancel200_response.dart';
import 'package:interserver_api/lib/model/vps_traffic_data_data_section_response.dart';
import 'package:interserver_api/lib/model/vps_traffic_data_data_section_response_inner.dart';
import 'package:interserver_api/lib/model/view_mail_log_start_date_parameter.dart';
import 'package:interserver_api/lib/model/view_ticket_response.dart';
import 'package:interserver_api/lib/model/vps.dart';
import 'package:interserver_api/lib/model/vps_backup_row.dart';
import 'package:interserver_api/lib/model/vps_backup_rows.dart';
import 'package:interserver_api/lib/model/vps_billing_details.dart';
import 'package:interserver_api/lib/model/vps_cp_data.dart';
import 'package:interserver_api/lib/model/vps_client_link.dart';
import 'package:interserver_api/lib/model/vps_da_data.dart';
import 'package:interserver_api/lib/model/vps_da_license.dart';
import 'package:interserver_api/lib/model/vps_extra_info_tables.dart';
import 'package:interserver_api/lib/model/vps_ip_info.dart';
import 'package:interserver_api/lib/model/vps_ip_info_row.dart';
import 'package:interserver_api/lib/model/vps_order.dart';
import 'package:interserver_api/lib/model/vps_order_location_names.dart';
import 'package:interserver_api/lib/model/vps_order_location_stock.dart';
import 'package:interserver_api/lib/model/vps_order_location_stock1.dart';
import 'package:interserver_api/lib/model/vps_order_os_names.dart';
import 'package:interserver_api/lib/model/vps_order_package_costs.dart';
import 'package:interserver_api/lib/model/vps_order_platform_names.dart';
import 'package:interserver_api/lib/model/vps_order_platform_packages.dart';
import 'package:interserver_api/lib/model/vps_order_post_request.dart';
import 'package:interserver_api/lib/model/vps_order_put_request.dart';
import 'package:interserver_api/lib/model/vps_order_put_response.dart';
import 'package:interserver_api/lib/model/vps_order_service_types.dart';
import 'package:interserver_api/lib/model/vps_order_service_types32.dart';
import 'package:interserver_api/lib/model/vps_order_templates.dart';
import 'package:interserver_api/lib/model/vps_order_templates_hyperv.dart';
import 'package:interserver_api/lib/model/vps_order_templates_hyperv_windows.dart';
import 'package:interserver_api/lib/model/vps_plesk12_data.dart';
import 'package:interserver_api/lib/model/vps_plesk_license.dart';
import 'package:interserver_api/lib/model/vps_row.dart';
import 'package:interserver_api/lib/model/vps_service_addons.dart';
import 'package:interserver_api/lib/model/vps_service_extra.dart';
import 'package:interserver_api/lib/model/vps_service_info.dart';
import 'package:interserver_api/lib/model/vps_service_master.dart';
import 'package:interserver_api/lib/model/vps_snapshot.dart';
import 'package:interserver_api/lib/model/vps_template_row.dart';
import 'package:interserver_api/lib/model/vps_templates_list.dart';
import 'package:interserver_api/lib/model/vps_traffic_data_section_response.dart';
import 'package:interserver_api/lib/model/vps_traffic_history_response.dart';
import 'package:interserver_api/lib/model/vps_traffic_history_section_data_response.dart';
import 'package:interserver_api/lib/model/vps_traffic_history_section_response.dart';
import 'package:interserver_api/lib/model/vps_traffic_response.dart';
import 'package:interserver_api/lib/model/vps_traffic_totals_resposne.dart';
import 'package:interserver_api/lib/model/vps_traffic_totals_section_response.dart';
import 'package:interserver_api/lib/model/vps_traffic_usage_average_response.dart';
import 'package:interserver_api/lib/model/vps_traffic_usage_average_section_response.dart';
import 'package:interserver_api/lib/model/vps_traffic_usage_response.dart';
import 'package:interserver_api/lib/model/webhosting_cancel200_response.dart';
import 'package:interserver_api/lib/model/website.dart';
import 'package:interserver_api/lib/model/website_backups.dart';
import 'package:interserver_api/lib/model/website_backups_inner.dart';
import 'package:interserver_api/lib/model/website_billing_details.dart';
import 'package:interserver_api/lib/model/website_client_link.dart';
import 'package:interserver_api/lib/model/website_extra_info_tables.dart';
import 'package:interserver_api/lib/model/website_login_response.dart';
import 'package:interserver_api/lib/model/website_order_post_request.dart';
import 'package:interserver_api/lib/model/website_order_put_request.dart';
import 'package:interserver_api/lib/model/website_row.dart';
import 'package:interserver_api/lib/model/website_service_info.dart';
import 'package:interserver_api/lib/model/website_service_master.dart';
import 'package:interserver_api/lib/model/website_table.dart';
import 'package:interserver_api/lib/model/website_table_row.dart';
import 'package:interserver_api/lib/model/websites_order.dart';
import 'package:interserver_api/lib/model/websites_order_json_service_offers.dart';
import 'package:interserver_api/lib/model/websites_order_json_service_offers_item.dart';
import 'package:interserver_api/lib/model/websites_order_json_services.dart';
import 'package:interserver_api/lib/model/websites_order_packages.dart';
import 'package:interserver_api/lib/model/websites_order_packages_info.dart';
import 'package:interserver_api/lib/model/websites_order_packges.dart';
import 'package:interserver_api/lib/model/websites_order_service_offer.dart';
import 'package:interserver_api/lib/model/websites_order_service_offers.dart';
import 'package:interserver_api/lib/model/websites_order_service_types.dart';

final _regList = RegExp(r'^List<(.*)>$');
final _regSet = RegExp(r'^Set<(.*)>$');
final _regMap = RegExp(r'^Map<String,(.*)>$');

  ReturnType deserialize<ReturnType, BaseType>(dynamic value, String targetType, {bool growable= true}) {
      switch (targetType) {
        case 'String':
          return '$value' as ReturnType;
        case 'int':
          return (value is int ? value : int.parse('$value')) as ReturnType;
        case 'bool':
          if (value is bool) {
            return value as ReturnType;
          }
          final valueString = '$value'.toLowerCase();
          return (valueString == 'true' || valueString == '1') as ReturnType;
        case 'double':
          return (value is double ? value : double.parse('$value')) as ReturnType;
        case 'AccountFeatures':
          return AccountFeatures.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'AccountInfo':
          return AccountInfo.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'AccountInfoCountryCurrencies':
          return AccountInfoCountryCurrencies.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'AccountInfoData':
          return AccountInfoData.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'AccountInfoDataCc':
          return AccountInfoDataCc.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'AccountInfoDataCcs':
          return AccountInfoDataCcs.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'AccountInfoDataEmailSettings':
          return AccountInfoDataEmailSettings.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'AccountInfoDataExtra':
          return AccountInfoDataExtra.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'AccountInfoDataFraudrecord':
          return AccountInfoDataFraudrecord.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'AccountInfoLimits':
          return AccountInfoLimits.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'AccountInfoLimitsInner':
          return AccountInfoLimitsInner.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'AccountInfoMaxMindResponse':
          return AccountInfoMaxMindResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'AccountInfoMaxMindResponseRiskScore':
          return AccountInfoMaxMindResponseRiskScore.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'AccountInfoOauthConfig':
          return AccountInfoOauthConfig.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'AccountInfoOauthConfigProviders':
          return AccountInfoOauthConfigProviders.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'AccountInfoOauthConfigProvidersValue':
          return AccountInfoOauthConfigProvidersValue.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'AccountInfoOauthproviders':
          return AccountInfoOauthproviders.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'AccountInfoPost':
          return AccountInfoPost.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'AccountSshKey':
          return AccountSshKey.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'AddServer200Response':
          return AddServer200Response.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'AffiliateBannerRow':
          return AffiliateBannerRow.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'AffiliateDockSetup':
          return AffiliateDockSetup.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'AffiliatePaymentSetup':
          return AffiliatePaymentSetup.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'AffiliateTrafficRow':
          return AffiliateTrafficRow.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'Backup':
          return Backup.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'BackupBillingDetails':
          return BackupBillingDetails.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'BackupClientLink':
          return BackupClientLink.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'BackupExtraInfoTables':
          return BackupExtraInfoTables.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'BackupIPInfo':
          return BackupIPInfo.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'BackupIPInfoRow':
          return BackupIPInfoRow.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'BackupLoginResponse':
          return BackupLoginResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'BackupOrderPostResponse':
          return BackupOrderPostResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'BackupOrderPostResponseCjParams':
          return BackupOrderPostResponseCjParams.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'BackupOrderPutRequest':
          return BackupOrderPutRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'BackupOrderPutResponse':
          return BackupOrderPutResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'BackupRow':
          return BackupRow.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'BackupServiceInfo':
          return BackupServiceInfo.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'BackupServiceMaster':
          return BackupServiceMaster.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'BackupsOrder':
          return BackupsOrder.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'BackupsOrderPackageCosts':
          return BackupsOrderPackageCosts.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'BackupsOrderServiceTypes':
          return BackupsOrderServiceTypes.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'BillingAddCcRequest':
          return BillingAddCcRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'BillingInvoiceDetail':
          return BillingInvoiceDetail.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'BillingInvoiceList':
          return BillingInvoiceList.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'BillingPaymentMethodRequest':
          return BillingPaymentMethodRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'BillingPrepayRequest':
          return BillingPrepayRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'BillingVerifyCcRequest':
          return BillingVerifyCcRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'BuyItNowList':
          return BuyItNowList.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'BuyItNowRow':
          return BuyItNowRow.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'BuyItNowRowCpuInner':
          return BuyItNowRowCpuInner.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'BuyItNowRowCpuInnerOneOf':
          return BuyItNowRowCpuInnerOneOf.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'BuyItNowServerOrder200Response':
          return BuyItNowServerOrder200Response.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'BuyItNowServerOrder200ResponseBandwidthInner':
          return BuyItNowServerOrder200ResponseBandwidthInner.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'BuyItNowServerOrder200ResponseCpInner':
          return BuyItNowServerOrder200ResponseCpInner.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'BuyItNowServerOrder200ResponseIpsInner':
          return BuyItNowServerOrder200ResponseIpsInner.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'BuyItNowServerOrder200ResponseOsInner':
          return BuyItNowServerOrder200ResponseOsInner.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'BuyItNowServerOrder200ResponseRaidInner':
          return BuyItNowServerOrder200ResponseRaidInner.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'CancelBackup200Response':
          return CancelBackup200Response.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'CancelDomain200Response':
          return CancelDomain200Response.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'CancelScrubIp200Response':
          return CancelScrubIp200Response.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'CaptchaResponse':
          return CaptchaResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ChargeInvoiceRows':
          return ChargeInvoiceRows.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ChargeInvoiceRowsInvoicesValue':
          return ChargeInvoiceRowsInvoicesValue.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ChargeInvoiceRowsInvoicesValuePaidInvoicesValue':
          return ChargeInvoiceRowsInvoicesValuePaidInvoicesValue.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ChargeInvoiceRowsInvoicesValuePaidInvoicesValueRefundInvoicesValue':
          return ChargeInvoiceRowsInvoicesValuePaidInvoicesValueRefundInvoicesValue.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'CloseTicketResponseSchema':
          return CloseTicketResponseSchema.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'CreateFilter':
          return CreateFilter.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'CreateFilter201Response':
          return CreateFilter201Response.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'CreateFilter400Response':
          return CreateFilter400Response.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'CreateFilter500Response':
          return CreateFilter500Response.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'CreateFirewallRule':
          return CreateFirewallRule.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'CreateGeoFirewallRule':
          return CreateGeoFirewallRule.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'CreateGeoRule400Response':
          return CreateGeoRule400Response.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'CreateRule201Response':
          return CreateRule201Response.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'CreateRule400Response':
          return CreateRule400Response.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'CreateRule500Response':
          return CreateRule500Response.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'DeleteFilter200Response':
          return DeleteFilter200Response.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'DeleteFilter400Response':
          return DeleteFilter400Response.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'DeleteFilter500Response':
          return DeleteFilter500Response.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'DeleteFirewallRule':
          return DeleteFirewallRule.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'DeleteGeoFirewallRule':
          return DeleteGeoFirewallRule.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'DeleteMailAlertRequest':
          return DeleteMailAlertRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'DenyRuleNew':
          return DenyRuleNew.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'DenyRuleRecord':
          return DenyRuleRecord.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'DisableScrub200Response':
          return DisableScrub200Response.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'DisableScrub400Response':
          return DisableScrub400Response.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'DisableScrub500Response':
          return DisableScrub500Response.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'DnsListItem':
          return DnsListItem.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'DnsNewDomain':
          return DnsNewDomain.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'DnsNewRecord':
          return DnsNewRecord.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'DnsRecord':
          return DnsRecord.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'DnsRecordType':
          
          
        case 'DnsUpdateRecord':
          return DnsUpdateRecord.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'Domain':
          return Domain.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'DomainAdminContact':
          return DomainAdminContact.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'DomainAllInfo':
          return DomainAllInfo.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'DomainAllInfoAttributes':
          return DomainAllInfoAttributes.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'DomainAllInfoAttributesContactSet':
          return DomainAllInfoAttributesContactSet.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'DomainBillingDetails':
          return DomainBillingDetails.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'DomainBillingExtra':
          return DomainBillingExtra.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'DomainClientLink':
          return DomainClientLink.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'DomainContactDetails':
          return DomainContactDetails.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'DomainDnssecRecords':
          return DomainDnssecRecords.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'DomainDnssecRecordsInner':
          return DomainDnssecRecordsInner.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'DomainDnssecRequest':
          return DomainDnssecRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'DomainLookupResponse':
          return DomainLookupResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'DomainNameServer':
          return DomainNameServer.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'DomainNameserverGetResponse':
          return DomainNameserverGetResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'DomainNameserverGetResponseInner':
          return DomainNameserverGetResponseInner.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'DomainNameserverPostRequest':
          return DomainNameserverPostRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'DomainNameserverPutRequest':
          return DomainNameserverPutRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'DomainOrder':
          return DomainOrder.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'DomainOrderRequest':
          return DomainOrderRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'DomainOrderResponse':
          return DomainOrderResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'DomainOrderResponseAttributes':
          return DomainOrderResponseAttributes.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'DomainOrderServices':
          return DomainOrderServices.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'DomainOrderServices10001':
          return DomainOrderServices10001.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'DomainOwnerContact':
          return DomainOwnerContact.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'DomainProvProcessPending':
          return DomainProvProcessPending.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'DomainProvProcessPendingAttributes':
          return DomainProvProcessPendingAttributes.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'DomainRow':
          return DomainRow.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'DomainSearchResponse':
          return DomainSearchResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'DomainServiceInfo':
          return DomainServiceInfo.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'DomainServiceType':
          return DomainServiceType.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'DomainTechContact':
          return DomainTechContact.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'DomainWhoisPrivacyRequest':
          return DomainWhoisPrivacyRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'DownloadQsBackup200Response':
          return DownloadQsBackup200Response.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'DownloadQsBackupRequest':
          return DownloadQsBackupRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'EmailAddress':
          return EmailAddress.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'EmailAddressName':
          return EmailAddressName.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'EnableScrub200Response':
          return EnableScrub200Response.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'EnableScrub500Response':
          return EnableScrub500Response.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'FloatingIpOrderRequest':
          return FloatingIpOrderRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'FloatingIpsCancel200Response':
          return FloatingIpsCancel200Response.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'GenericResponse':
          return GenericResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'GetAccountInfo401Response':
          return GetAccountInfo401Response.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'GetAccountLocales200ResponseValue':
          return GetAccountLocales200ResponseValue.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'GetAccountTfaSetup200Response':
          return GetAccountTfaSetup200Response.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'GetAffiliateSignups200Response':
          return GetAffiliateSignups200Response.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'GetOauthRedirect200Response':
          return GetOauthRedirect200Response.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'GetOrderDetail200Response':
          return GetOrderDetail200Response.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'GetOrderDetail200ResponseIpsInner':
          return GetOrderDetail200ResponseIpsInner.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'GetOrderDetail200ResponsePackageCosts':
          return GetOrderDetail200ResponsePackageCosts.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'GetOrderDetail200ResponseServiceTypesInner':
          return GetOrderDetail200ResponseServiceTypesInner.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'GetScrubIpDetails200Response':
          return GetScrubIpDetails200Response.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'GetScrubIpDetails200ResponseBillingDetails':
          return GetScrubIpDetails200ResponseBillingDetails.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'GetScrubIpDetails200ResponseClientLinksInner':
          return GetScrubIpDetails200ResponseClientLinksInner.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'GetScrubIpDetails200ResponseExtraInfoTables':
          return GetScrubIpDetails200ResponseExtraInfoTables.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'GetScrubIpDetails200ResponseExtraInfoTablesScrubIps':
          return GetScrubIpDetails200ResponseExtraInfoTablesScrubIps.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'GetScrubIpDetails200ResponseExtraInfoTablesScrubIpsRowsInner':
          return GetScrubIpDetails200ResponseExtraInfoTablesScrubIpsRowsInner.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'GetScrubIpDetails200ResponseFilterFirewall':
          return GetScrubIpDetails200ResponseFilterFirewall.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'GetScrubIpDetails200ResponseFilterFirewallFiltersInner':
          return GetScrubIpDetails200ResponseFilterFirewallFiltersInner.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'GetScrubIpDetails200ResponseFilterFirewallRulesInner':
          return GetScrubIpDetails200ResponseFilterFirewallRulesInner.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'GetScrubIpDetails200ResponseServiceInfo':
          return GetScrubIpDetails200ResponseServiceInfo.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'GetWebsiteBuyIp200Response':
          return GetWebsiteBuyIp200Response.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'Home':
          return Home.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'HomeDetails':
          return HomeDetails.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'HomeDetailsModules':
          return HomeDetailsModules.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'HomeDetailsModulesBackups':
          return HomeDetailsModulesBackups.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'HomeDetailsModulesDomains':
          return HomeDetailsModulesDomains.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'HomeDetailsModulesLicenses':
          return HomeDetailsModulesLicenses.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'HomeDetailsModulesQuickservers':
          return HomeDetailsModulesQuickservers.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'HomeDetailsModulesServers':
          return HomeDetailsModulesServers.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'HomeDetailsModulesVps':
          return HomeDetailsModulesVps.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'HomeDetailsModulesWebhosting':
          return HomeDetailsModulesWebhosting.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'HomeServices':
          return HomeServices.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'HomeServicesBackups':
          return HomeServicesBackups.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'HomeServicesDomains':
          return HomeServicesDomains.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'HomeServicesDomainsLinks':
          return HomeServicesDomainsLinks.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'HomeServicesLicenses':
          return HomeServicesLicenses.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'HomeServicesLicensesLinks':
          return HomeServicesLicensesLinks.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'HomeServicesServers':
          return HomeServicesServers.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'HomeServicesServersLinks':
          return HomeServicesServersLinks.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'HomeServicesVps':
          return HomeServicesVps.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'HomeServicesVpsLinks':
          return HomeServicesVpsLinks.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'HomeServicesWebhosting':
          return HomeServicesWebhosting.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'HomeServicesWebhostingLinks':
          return HomeServicesWebhostingLinks.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'HomeTicketStatus':
          return HomeTicketStatus.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'HomeTicketStatusView':
          return HomeTicketStatusView.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'HostnameObject':
          return HostnameObject.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'InitiatePayment200Response':
          return InitiatePayment200Response.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'IpLimitRange':
          return IpLimitRange.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'IpObject':
          return IpObject.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'License':
          return License.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'LicenseBillingDetails':
          return LicenseBillingDetails.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'LicenseClientLink':
          return LicenseClientLink.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'LicenseExtraInfoTables':
          return LicenseExtraInfoTables.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'LicenseIpInfo':
          return LicenseIpInfo.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'LicenseIpInfoRow':
          return LicenseIpInfoRow.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'LicenseOrderRequest':
          return LicenseOrderRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'LicenseRow':
          return LicenseRow.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'LicenseServiceInfo':
          return LicenseServiceInfo.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'LicenseServiceType':
          return LicenseServiceType.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'LicensesCancel200Response':
          return LicensesCancel200Response.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'LicensesOrder':
          return LicensesOrder.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'LicensesOrderPackageCosts':
          return LicensesOrderPackageCosts.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'LicensesOrderServiceCategories':
          return LicensesOrderServiceCategories.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'LicensesOrderServiceCategories509':
          return LicensesOrderServiceCategories509.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'LicensesOrderServiceTypes':
          return LicensesOrderServiceTypes.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'LicensesOrderServiceTypes11482':
          return LicensesOrderServiceTypes11482.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'LoginErrorResponse':
          return LoginErrorResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'LoginInfo':
          return LoginInfo.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'LoginServiceCounts':
          return LoginServiceCounts.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'LoginSubmissionExample':
          return LoginSubmissionExample.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'LoginSubmissionExampleGRecaptchaResponse':
          return LoginSubmissionExampleGRecaptchaResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'LoginSubmissionExampleGRecaptchaResponseDep':
          return LoginSubmissionExampleGRecaptchaResponseDep.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'LoginSuccessResponse':
          return LoginSuccessResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'MailAlertRequest':
          return MailAlertRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'MailAlertUpdateRequest':
          return MailAlertUpdateRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'MailAlertsResponse':
          return MailAlertsResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'MailAlertsResponseInner':
          return MailAlertsResponseInner.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'MailAttachment':
          return MailAttachment.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'MailBillingDetails':
          return MailBillingDetails.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'MailBlockClickHouse':
          return MailBlockClickHouse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'MailBlockRspamd':
          return MailBlockRspamd.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'MailBlocks':
          return MailBlocks.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'MailCancel200Response':
          return MailCancel200Response.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'MailClientLink':
          return MailClientLink.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'MailDelistRequest':
          return MailDelistRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'MailDelistResponse':
          return MailDelistResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'MailDeliverabilityResponse':
          return MailDeliverabilityResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'MailExtraInfoTable':
          return MailExtraInfoTable.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'MailExtraInfoTableRow':
          return MailExtraInfoTableRow.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'MailLog':
          return MailLog.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'MailLogEntry':
          return MailLogEntry.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'MailOrder':
          return MailOrder.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'MailOrderRequest':
          return MailOrderRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'MailRow':
          return MailRow.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'MailSchema':
          return MailSchema.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'MailSchemaExtraInfoTables':
          return MailSchemaExtraInfoTables.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'MailServiceInfo':
          return MailServiceInfo.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'MailServiceType':
          return MailServiceType.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'MailStatsType':
          return MailStatsType.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'MailStatsTypeVolume':
          return MailStatsTypeVolume.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'MailStatsTypeVolumeFrom':
          return MailStatsTypeVolumeFrom.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'MailStatsTypeVolumeIp':
          return MailStatsTypeVolumeIp.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'MailStatsTypeVolumeTo':
          return MailStatsTypeVolumeTo.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'MailTutorialsTable':
          return MailTutorialsTable.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'MailTutorialsTableRow':
          return MailTutorialsTableRow.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ModuleSettings':
          return ModuleSettings.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'Modules':
          return Modules.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'MonthlyCounts':
          return MonthlyCounts.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PasswordRequest':
          return PasswordRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PatchBillingCreditCardVerifyRequest':
          return PatchBillingCreditCardVerifyRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PatchOauthTwoFactor200Response':
          return PatchOauthTwoFactor200Response.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PatchOauthTwoFactorRequest':
          return PatchOauthTwoFactorRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PlaceBuyNowServerRequest':
          return PlaceBuyNowServerRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PlaceScrubOrder201Response':
          return PlaceScrubOrder201Response.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PlaceScrubOrder201ResponseOrderDetails':
          return PlaceScrubOrder201ResponseOrderDetails.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PlaceScrubOrder201ResponseOrderDetailsCjParams':
          return PlaceScrubOrder201ResponseOrderDetailsCjParams.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PostOauthCallback200Response':
          return PostOauthCallback200Response.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PostOauthCallbackRequest':
          return PostOauthCallbackRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PostWebsiteBuyIp200Response':
          return PostWebsiteBuyIp200Response.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PostWebsiteBuyIpRequest':
          return PostWebsiteBuyIpRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PostWebsiteMigration200Response':
          return PostWebsiteMigration200Response.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PostWebsiteMigrationRequest':
          return PostWebsiteMigrationRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PutScrubIps200Response':
          return PutScrubIps200Response.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'QsOrderRequest':
          return QsOrderRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'QueueResponse':
          return QueueResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'Quickserver':
          return Quickserver.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'QuickserverAddons':
          return QuickserverAddons.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'QuickserverAddonsRow':
          return QuickserverAddonsRow.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'QuickserverBillingDetails':
          return QuickserverBillingDetails.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'QuickserverClientLink':
          return QuickserverClientLink.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'QuickserverExtraInfoTables':
          return QuickserverExtraInfoTables.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'QuickserverIpInfo':
          return QuickserverIpInfo.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'QuickserverIpTableRow':
          return QuickserverIpTableRow.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'QuickserverOrder':
          return QuickserverOrder.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'QuickserverOrderDistroSel':
          return QuickserverOrderDistroSel.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'QuickserverOrderDistroSelUbuntu':
          return QuickserverOrderDistroSelUbuntu.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'QuickserverOrderServerDetails':
          return QuickserverOrderServerDetails.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'QuickserverOrderServerDetails381':
          return QuickserverOrderServerDetails381.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'QuickserverOrderTemplates':
          return QuickserverOrderTemplates.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'QuickserverOrderTemplatesUbuntu64':
          return QuickserverOrderTemplatesUbuntu64.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'QuickserverOrderVersion':
          return QuickserverOrderVersion.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'QuickserverOrderVersionCentosstream8':
          return QuickserverOrderVersionCentosstream8.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'QuickserverRow':
          return QuickserverRow.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'QuickserverServiceExtra':
          return QuickserverServiceExtra.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'QuickserverServiceInfo':
          return QuickserverServiceInfo.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'QuickserverServiceMaster':
          return QuickserverServiceMaster.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'QuickserversCancel200Response':
          return QuickserversCancel200Response.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ReplyTicketRequest':
          return ReplyTicketRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ReplyTicketResponseSchema':
          return ReplyTicketResponseSchema.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'RestoreRequest':
          return RestoreRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ReverseDnsEntries':
          return ReverseDnsEntries.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ScrubIpFilterTypes':
          return ScrubIpFilterTypes.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ScrubIpFilterTypesFiltersValue':
          return ScrubIpFilterTypesFiltersValue.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ScrubIpPlaceOrder':
          return ScrubIpPlaceOrder.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ScrubIpsDeleteRule200Response':
          return ScrubIpsDeleteRule200Response.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ScrubIpsDeleteRule400Response':
          return ScrubIpsDeleteRule400Response.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ScrubIpsDeleteRule500Response':
          return ScrubIpsDeleteRule500Response.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ScrubIpsLogRowSchema':
          return ScrubIpsLogRowSchema.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ScrubIpsRowSchema':
          return ScrubIpsRowSchema.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'SearchAutocompleteResponse':
          return SearchAutocompleteResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'SendMail':
          return SendMail.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'SendMailAdv':
          return SendMailAdv.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'Server':
          return Server.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ServerAsset':
          return ServerAsset.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ServerAssets':
          return ServerAssets.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ServerBillingDetails':
          return ServerBillingDetails.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ServerBulkIpmiPowerResponse':
          return ServerBulkIpmiPowerResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ServerBulkIpmiPowerResponseResultsInner':
          return ServerBulkIpmiPowerResponseResultsInner.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ServerClientLink':
          return ServerClientLink.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ServerExtraInfoTables':
          return ServerExtraInfoTables.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ServerIpmiLiveInfo':
          return ServerIpmiLiveInfo.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ServerIpmiLiveRequest':
          return ServerIpmiLiveRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ServerIpmiPowerRequest':
          return ServerIpmiPowerRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ServerLease':
          return ServerLease.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ServerLocation1':
          return ServerLocation1.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ServerLocations':
          return ServerLocations.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ServerNetworkInfo':
          return ServerNetworkInfo.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ServerNetworkInfoAssets':
          return ServerNetworkInfoAssets.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ServerNetworkInfoSwitchports':
          return ServerNetworkInfoSwitchports.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ServerOrder':
          return ServerOrder.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ServerOrderBandwidth':
          return ServerOrderBandwidth.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ServerOrderBandwidthLi':
          return ServerOrderBandwidthLi.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ServerOrderCPU':
          return ServerOrderCPU.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ServerOrderConfigIds':
          return ServerOrderConfigIds.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ServerOrderControlPanel':
          return ServerOrderControlPanel.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ServerOrderCpLi':
          return ServerOrderCpLi.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ServerOrderCpuLi':
          return ServerOrderCpuLi.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ServerOrderFieldLabel':
          return ServerOrderFieldLabel.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ServerOrderFieldLabels':
          return ServerOrderFieldLabels.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ServerOrderFormValues':
          return ServerOrderFormValues.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ServerOrderIP':
          return ServerOrderIP.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ServerOrderIpsLi':
          return ServerOrderIpsLi.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ServerOrderMemory':
          return ServerOrderMemory.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ServerOrderMemoryLi':
          return ServerOrderMemoryLi.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ServerOrderMemoryLi254':
          return ServerOrderMemoryLi254.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ServerOrderOS':
          return ServerOrderOS.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ServerOrderOsLi':
          return ServerOrderOsLi.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ServerOrderPostRequest':
          return ServerOrderPostRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ServerOrderPostRequestHd':
          return ServerOrderPostRequestHd.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ServerOrderRAID':
          return ServerOrderRAID.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ServerRow':
          return ServerRow.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ServerServiceInfo':
          return ServerServiceInfo.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ServerSwitchport':
          return ServerSwitchport.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ServersBuyNowError':
          return ServersBuyNowError.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ServersBuyNowResponse':
          return ServersBuyNowResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ServersBuyNowResponseOrderDetails':
          return ServersBuyNowResponseOrderDetails.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ServersCancel200Response':
          return ServersCancel200Response.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'Service':
          return Service.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ServiceCategories':
          return ServiceCategories.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ServiceCategory':
          return ServiceCategory.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ServiceOrderPostResponse':
          return ServiceOrderPostResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ServiceType':
          return ServiceType.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ServiceTypes':
          return ServiceTypes.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'Services':
          return Services.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ServicesInfo':
          return ServicesInfo.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'SslCancel200Response':
          return SslCancel200Response.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'SslOrderRequest':
          return SslOrderRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'StatusMonthlyBreakdown':
          return StatusMonthlyBreakdown.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'SuccessTextResponse':
          return SuccessTextResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'TemplateRequest':
          return TemplateRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'TextResponse':
          return TextResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'TicketCustomFieldDetails':
          return TicketCustomFieldDetails.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'TicketDetails':
          return TicketDetails.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'TicketNew':
          return TicketNew.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'TicketNewResponse':
          return TicketNewResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'TicketPostDetails':
          return TicketPostDetails.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'TicketPostDetailsInner':
          return TicketPostDetailsInner.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'Tickets':
          return Tickets.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'TicketsCountArray':
          return TicketsCountArray.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'TicketsRow':
          return TicketsRow.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'TimezoneUpdate':
          return TimezoneUpdate.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'UpdateAccountTfaRequest':
          return UpdateAccountTfaRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'UpdateTicket':
          return UpdateTicket.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'UpdateTicketResponseSchema':
          return UpdateTicketResponseSchema.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'UrlRequest':
          return UrlRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'VPSCancel200Response':
          return VPSCancel200Response.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'VPSTrafficDataDataSectionResponse':
          return VPSTrafficDataDataSectionResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'VPSTrafficDataDataSectionResponseInner':
          return VPSTrafficDataDataSectionResponseInner.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ViewMailLogStartDateParameter':
          return ViewMailLogStartDateParameter.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ViewTicketResponse':
          return ViewTicketResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'Vps':
          return Vps.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'VpsBackupRow':
          return VpsBackupRow.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'VpsBackupRows':
          return VpsBackupRows.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'VpsBillingDetails':
          return VpsBillingDetails.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'VpsCPData':
          return VpsCPData.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'VpsClientLink':
          return VpsClientLink.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'VpsDAData':
          return VpsDAData.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'VpsDALicense':
          return VpsDALicense.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'VpsExtraInfoTables':
          return VpsExtraInfoTables.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'VpsIPInfo':
          return VpsIPInfo.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'VpsIPInfoRow':
          return VpsIPInfoRow.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'VpsOrder':
          return VpsOrder.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'VpsOrderLocationNames':
          return VpsOrderLocationNames.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'VpsOrderLocationStock':
          return VpsOrderLocationStock.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'VpsOrderLocationStock1':
          return VpsOrderLocationStock1.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'VpsOrderOsNames':
          return VpsOrderOsNames.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'VpsOrderPackageCosts':
          return VpsOrderPackageCosts.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'VpsOrderPlatformNames':
          return VpsOrderPlatformNames.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'VpsOrderPlatformPackages':
          return VpsOrderPlatformPackages.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'VpsOrderPostRequest':
          return VpsOrderPostRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'VpsOrderPutRequest':
          return VpsOrderPutRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'VpsOrderPutResponse':
          return VpsOrderPutResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'VpsOrderServiceTypes':
          return VpsOrderServiceTypes.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'VpsOrderServiceTypes32':
          return VpsOrderServiceTypes32.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'VpsOrderTemplates':
          return VpsOrderTemplates.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'VpsOrderTemplatesHyperv':
          return VpsOrderTemplatesHyperv.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'VpsOrderTemplatesHypervWindows':
          return VpsOrderTemplatesHypervWindows.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'VpsPlesk12Data':
          return VpsPlesk12Data.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'VpsPleskLicense':
          return VpsPleskLicense.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'VpsRow':
          return VpsRow.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'VpsServiceAddons':
          return VpsServiceAddons.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'VpsServiceExtra':
          return VpsServiceExtra.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'VpsServiceInfo':
          return VpsServiceInfo.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'VpsServiceMaster':
          return VpsServiceMaster.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'VpsSnapshot':
          return VpsSnapshot.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'VpsTemplateRow':
          return VpsTemplateRow.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'VpsTemplatesList':
          return VpsTemplatesList.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'VpsTrafficDataSectionResponse':
          return VpsTrafficDataSectionResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'VpsTrafficHistoryResponse':
          return VpsTrafficHistoryResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'VpsTrafficHistorySectionDataResponse':
          return VpsTrafficHistorySectionDataResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'VpsTrafficHistorySectionResponse':
          return VpsTrafficHistorySectionResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'VpsTrafficResponse':
          return VpsTrafficResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'VpsTrafficTotalsResposne':
          return VpsTrafficTotalsResposne.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'VpsTrafficTotalsSectionResponse':
          return VpsTrafficTotalsSectionResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'VpsTrafficUsageAverageResponse':
          return VpsTrafficUsageAverageResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'VpsTrafficUsageAverageSectionResponse':
          return VpsTrafficUsageAverageSectionResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'VpsTrafficUsageResponse':
          return VpsTrafficUsageResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'WebhostingCancel200Response':
          return WebhostingCancel200Response.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'Website':
          return Website.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'WebsiteBackups':
          return WebsiteBackups.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'WebsiteBackupsInner':
          return WebsiteBackupsInner.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'WebsiteBillingDetails':
          return WebsiteBillingDetails.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'WebsiteClientLink':
          return WebsiteClientLink.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'WebsiteExtraInfoTables':
          return WebsiteExtraInfoTables.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'WebsiteLoginResponse':
          return WebsiteLoginResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'WebsiteOrderPostRequest':
          return WebsiteOrderPostRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'WebsiteOrderPutRequest':
          return WebsiteOrderPutRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'WebsiteRow':
          return WebsiteRow.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'WebsiteServiceInfo':
          return WebsiteServiceInfo.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'WebsiteServiceMaster':
          return WebsiteServiceMaster.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'WebsiteTable':
          return WebsiteTable.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'WebsiteTableRow':
          return WebsiteTableRow.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'WebsitesOrder':
          return WebsitesOrder.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'WebsitesOrderJsonServiceOffers':
          return WebsitesOrderJsonServiceOffers.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'WebsitesOrderJsonServiceOffersItem':
          return WebsitesOrderJsonServiceOffersItem.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'WebsitesOrderJsonServices':
          return WebsitesOrderJsonServices.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'WebsitesOrderPackages':
          return WebsitesOrderPackages.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'WebsitesOrderPackagesInfo':
          return WebsitesOrderPackagesInfo.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'WebsitesOrderPackges':
          return WebsitesOrderPackges.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'WebsitesOrderServiceOffer':
          return WebsitesOrderServiceOffer.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'WebsitesOrderServiceOffers':
          return WebsitesOrderServiceOffers.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'WebsitesOrderServiceTypes':
          return WebsitesOrderServiceTypes.fromJson(value as Map<String, dynamic>) as ReturnType;
        default:
          RegExpMatch? match;

          if (value is List && (match = _regList.firstMatch(targetType)) != null) {
            targetType = match![1]!; // ignore: parameter_assignments
            return value
              .map<BaseType>((dynamic v) => deserialize<BaseType, BaseType>(v, targetType, growable: growable))
              .toList(growable: growable) as ReturnType;
          }
          if (value is Set && (match = _regSet.firstMatch(targetType)) != null) {
            targetType = match![1]!; // ignore: parameter_assignments
            return value
              .map<BaseType>((dynamic v) => deserialize<BaseType, BaseType>(v, targetType, growable: growable))
              .toSet() as ReturnType;
          }
          if (value is Map && (match = _regMap.firstMatch(targetType)) != null) {
            targetType = match![1]!.trim(); // ignore: parameter_assignments
            return Map<String, BaseType>.fromIterables(
              value.keys as Iterable<String>,
              value.values.map((dynamic v) => deserialize<BaseType, BaseType>(v, targetType, growable: growable)),
            ) as ReturnType;
          }
          break;
    }
    throw Exception('Cannot deserialize');
  }