# coding: utf-8

from __future__ import absolute_import

from flask import json
from six import BytesIO

from myadmin-client-python-flask.models.charge_invoice_rows import ChargeInvoiceRows  # noqa: E501
from myadmin-client-python-flask.models.id_buy_ip_body import IdBuyIpBody  # noqa: E501
from myadmin-client-python-flask.models.id_migration_body import IdMigrationBody  # noqa: E501
from myadmin-client-python-flask.models.inline_response20025 import InlineResponse20025  # noqa: E501
from myadmin-client-python-flask.models.inline_response20026 import InlineResponse20026  # noqa: E501
from myadmin-client-python-flask.models.inline_response20027 import InlineResponse20027  # noqa: E501
from myadmin-client-python-flask.models.inline_response20028 import InlineResponse20028  # noqa: E501
from myadmin-client-python-flask.models.inline_response401 import InlineResponse401  # noqa: E501
from myadmin-client-python-flask.models.reverse_dns_entries import ReverseDnsEntries  # noqa: E501
from myadmin-client-python-flask.models.service_order_post_response import ServiceOrderPostResponse  # noqa: E501
from myadmin-client-python-flask.models.success_text_response import SuccessTextResponse  # noqa: E501
from myadmin-client-python-flask.models.text_response import TextResponse  # noqa: E501
from myadmin-client-python-flask.models.website import Website  # noqa: E501
from myadmin-client-python-flask.models.website_backups import WebsiteBackups  # noqa: E501
from myadmin-client-python-flask.models.website_login_response import WebsiteLoginResponse  # noqa: E501
from myadmin-client-python-flask.models.website_order_post_request import WebsiteOrderPostRequest  # noqa: E501
from myadmin-client-python-flask.models.website_order_put_request import WebsiteOrderPutRequest  # noqa: E501
from myadmin-client-python-flask.models.website_row import WebsiteRow  # noqa: E501
from myadmin-client-python-flask.models.websites_order import WebsitesOrder  # noqa: E501
from myadmin-client-python-flask.test import BaseTestCase


class TestWebhostingController(BaseTestCase):
    """WebhostingController integration test stubs"""

    def test_add_website(self):
        """Test case for add_website

        Place a new webhosting order, create the invoice, and queue provisioning
        """
        body = WebsiteOrderPostRequest()
        response = self.client.open(
            '/apiv2/websites/order',
            method='POST',
            data=json.dumps(body),
            content_type='application/json')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_new_website(self):
        """Test case for get_new_website

        Read the webhosting order catalog — plans, packages, promo offers, pricing
        """
        response = self.client.open(
            '/apiv2/websites/order',
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_website_buy_ip(self):
        """Test case for get_website_buy_ip

        Read website IPs, current reverse DNS, and additional-IP pricing
        """
        response = self.client.open(
            '/apiv2/websites/{id}/buy_ip'.format(id=56),
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_website_info(self):
        """Test case for get_website_info

        Read full configuration and status detail for one webhosting service
        """
        response = self.client.open(
            '/apiv2/websites/{id}'.format(id=56),
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_website_invoices(self):
        """Test case for get_website_invoices

        List all billing invoices and recurring charges scoped to one website
        """
        response = self.client.open(
            '/apiv2/websites/{id}/invoices'.format(id=56),
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_website_list(self):
        """Test case for get_website_list

        List the caller's webhosting (cPanel/DirectAdmin/Plesk/Webuzo) services
        """
        response = self.client.open(
            '/apiv2/websites',
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_websites_backups(self):
        """Test case for get_websites_backups

        List off-site cpmove backups stored in Swift — list or inline-download archive
        """
        response = self.client.open(
            '/apiv2/websites/{id}/backups'.format(id=56),
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_websites_login(self):
        """Test case for get_websites_login

        Get a one-time auto-login URL for the website's control panel
        """
        response = self.client.open(
            '/apiv2/websites/{id}/login'.format(id=56),
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_websites_welcome_email(self):
        """Test case for get_websites_welcome_email

        Resend the webhosting welcome email with control-panel credentials and URL
        """
        response = self.client.open(
            '/apiv2/websites/{id}/welcome_email'.format(id=56),
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_gett_website_reverse_dns(self):
        """Test case for gett_website_reverse_dns

        Read current reverse-DNS (PTR) records for the website's IPs
        """
        response = self.client.open(
            '/apiv2/websites/{id}/reverse_dns'.format(id=56),
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_post_website_buy_ip(self):
        """Test case for post_website_buy_ip

        Buy an additional IP for the website OR update reverse DNS records
        """
        body = IdBuyIpBody()
        data = dict(ips={'key': 'ips_example'})
        response = self.client.open(
            '/apiv2/websites/{id}/buy_ip'.format(id=56),
            method='POST',
            data=json.dumps(body),
            data=data,
            content_type='application/json')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_post_website_migration(self):
        """Test case for post_website_migration

        Submit a request for InterServer staff to migrate a website from another host
        """
        body = IdMigrationBody()
        data = dict(cust_portal='cust_portal_example',
                    reg_email='reg_email_example',
                    password='password_example',
                    ctrl_panel='ctrl_panel_example',
                    ftp_username='ftp_username_example',
                    ftp_password='ftp_password_example',
                    site_busy_mig='site_busy_mig_example',
                    spl_req_mig='spl_req_mig_example',
                    domain_reg='domain_reg_example',
                    data_mig='data_mig_example',
                    domain_reg_portal='domain_reg_portal_example',
                    domain_reg_email='domain_reg_email_example',
                    domain_reg_password='domain_reg_password_example')
        response = self.client.open(
            '/apiv2/websites/{id}/migration'.format(id=56),
            method='POST',
            data=json.dumps(body),
            data=data,
            content_type='application/json')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_post_websites_reverse_dns(self):
        """Test case for post_websites_reverse_dns

        Bulk-update reverse-DNS (PTR) records for one or more website IPs
        """
        body = ReverseDnsEntries()
        data = dict(ips=None)
        response = self.client.open(
            '/apiv2/websites/{id}/reverse_dns'.format(id=56),
            method='POST',
            data=json.dumps(body),
            data=data,
            content_type='application/json')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_put_websites(self):
        """Test case for put_websites

        Validate a webhosting order and preview cost — dry run, no charge
        """
        body = WebsiteOrderPutRequest()
        response = self.client.open(
            '/apiv2/websites/order',
            method='PUT',
            data=json.dumps(body),
            content_type='application/json')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_update_website_info(self):
        """Test case for update_website_info

        POST mutation hook for the website detail page (use dedicated ops where possible)
        """
        response = self.client.open(
            '/apiv2/websites/{id}'.format(id='id_example'),
            method='POST')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_webhosting_cancel(self):
        """Test case for webhosting_cancel

        Schedule termination of a webhosting service — wipes panel account at cycle end
        """
        response = self.client.open(
            '/apiv2/websites/{id}'.format(id='id_example'),
            method='DELETE')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))


if __name__ == '__main__':
    import unittest
    unittest.main()
