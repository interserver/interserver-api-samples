# coding: utf-8

from __future__ import absolute_import

from flask import json
from six import BytesIO

from myadmin-client-python-flask.models.buy_it_now_list import BuyItNowList  # noqa: E501
from myadmin-client-python-flask.models.charge_invoice_rows import ChargeInvoiceRows  # noqa: E501
from myadmin-client-python-flask.models.inline_response20021 import InlineResponse20021  # noqa: E501
from myadmin-client-python-flask.models.inline_response20022 import InlineResponse20022  # noqa: E501
from myadmin-client-python-flask.models.inline_response20029 import InlineResponse20029  # noqa: E501
from myadmin-client-python-flask.models.inline_response401 import InlineResponse401  # noqa: E501
from myadmin-client-python-flask.models.order_buy_now_server_body import OrderBuyNowServerBody  # noqa: E501
from myadmin-client-python-flask.models.reverse_dns_entries import ReverseDnsEntries  # noqa: E501
from myadmin-client-python-flask.models.server import Server  # noqa: E501
from myadmin-client-python-flask.models.server_bulk_ipmi_power_response import ServerBulkIpmiPowerResponse  # noqa: E501
from myadmin-client-python-flask.models.server_ipmi_live_info import ServerIpmiLiveInfo  # noqa: E501
from myadmin-client-python-flask.models.server_ipmi_live_request import ServerIpmiLiveRequest  # noqa: E501
from myadmin-client-python-flask.models.server_ipmi_power_request import ServerIpmiPowerRequest  # noqa: E501
from myadmin-client-python-flask.models.server_order import ServerOrder  # noqa: E501
from myadmin-client-python-flask.models.server_order_post_request import ServerOrderPostRequest  # noqa: E501
from myadmin-client-python-flask.models.server_row import ServerRow  # noqa: E501
from myadmin-client-python-flask.models.servers_buy_now_error import ServersBuyNowError  # noqa: E501
from myadmin-client-python-flask.models.servers_buy_now_response import ServersBuyNowResponse  # noqa: E501
from myadmin-client-python-flask.models.success_text_response import SuccessTextResponse  # noqa: E501
from myadmin-client-python-flask.models.text_response import TextResponse  # noqa: E501
from myadmin-client-python-flask.test import BaseTestCase


class TestServersController(BaseTestCase):
    """ServersController integration test stubs"""

    def test_add_server(self):
        """Test case for add_server

        Place a custom dedicated server order, creating a real billable invoice
        """
        body = ServerOrderPostRequest()
        response = self.client.open(
            '/apiv2/servers/order',
            method='POST',
            data=json.dumps(body),
            content_type='application/json')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_buy_it_now_server_order(self):
        """Test case for buy_it_now_server_order

        Get configurable options for a Rapid Deploy / coupon dedicated server
        """
        response = self.client.open(
            '/apiv2/servers/order/buy_now_server',
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_mp_servers(self):
        """Test case for get_mp_servers

        List Rapid Deploy (Buy-It-Now) marketplace dedicated servers with live pricing
        """
        response = self.client.open(
            '/apiv2/buy_now_servers_list',
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_new_server(self):
        """Test case for get_new_server

        Get custom dedicated server ordering options, regions, and pricing
        """
        response = self.client.open(
            '/apiv2/servers/order',
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_server_info(self):
        """Test case for get_server_info

        Get full hardware, network, and lifecycle details for a dedicated server
        """
        response = self.client.open(
            '/apiv2/servers/{id}'.format(id=56),
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_server_invoices(self):
        """Test case for get_server_invoices

        List billing invoices (charges + payments) tied to one dedicated server
        """
        response = self.client.open(
            '/apiv2/servers/{id}/invoices'.format(id=56),
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_server_list(self):
        """Test case for get_server_list

        List all dedicated servers owned by the authenticated customer
        """
        response = self.client.open(
            '/apiv2/servers',
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_server_reverse_dns(self):
        """Test case for get_server_reverse_dns

        List current reverse-DNS (PTR) records for a dedicated server's IPs
        """
        response = self.client.open(
            '/apiv2/servers/{id}/reverse_dns'.format(id=56),
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_servers_welcome_email(self):
        """Test case for get_servers_welcome_email

        Resend the dedicated server welcome email with setup credentials
        """
        response = self.client.open(
            '/apiv2/servers/{id}/welcome_email'.format(id=56),
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_place_buy_now_server(self):
        """Test case for place_buy_now_server

        Place a Rapid Deploy / coupon dedicated server order; creates real invoice
        """
        body = OrderBuyNowServerBody()
        response = self.client.open(
            '/apiv2/servers/order/buy_now_server',
            method='POST',
            data=json.dumps(body),
            content_type='application/json')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_post_server_reverse_dns(self):
        """Test case for post_server_reverse_dns

        Update reverse-DNS (PTR) hostnames on a dedicated server's IPs
        """
        body = ReverseDnsEntries()
        data = dict(ips=None)
        response = self.client.open(
            '/apiv2/servers/{id}/reverse_dns'.format(id=56),
            method='POST',
            data=json.dumps(body),
            data=data,
            content_type='application/json')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_server_bulk_ipmi_power_get(self):
        """Test case for server_bulk_ipmi_power_get

        Read IPMI chassis power status for many dedicated servers in one call
        """
        query_string = [('ids', 'ids_example')]
        response = self.client.open(
            '/apiv2/servers/bulk/ipmi_power',
            method='GET',
            query_string=query_string)
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_server_ipmi_live_get(self):
        """Test case for server_ipmi_live_get

        Read current IPMI Live whitelist + KVM gateway URL for a dedicated server
        """
        response = self.client.open(
            '/apiv2/servers/{id}/ipmi_live'.format(id=56),
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_server_ipmi_live_post(self):
        """Test case for server_ipmi_live_post

        Whitelist an IP for IPMI Live KVM gateway access (3-hour lease)
        """
        body = ServerIpmiLiveRequest()
        data = dict(asset=56,
                    ip='ip_example')
        response = self.client.open(
            '/apiv2/servers/{id}/ipmi_live'.format(id=56),
            method='POST',
            data=json.dumps(body),
            data=data,
            content_type='multipart/form-data')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_server_ipmi_power_get(self):
        """Test case for server_ipmi_power_get

        Read IPMI chassis power status for a dedicated server (single)
        """
        response = self.client.open(
            '/apiv2/servers/{id}/ipmi_power'.format(id=56),
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_server_ipmi_power_post(self):
        """Test case for server_ipmi_power_post

        DESTRUCTIVE — change chassis power state on a bare-metal server
        """
        body = ServerIpmiPowerRequest()
        data = dict(asset=56,
                    action='action_example')
        response = self.client.open(
            '/apiv2/servers/{id}/ipmi_power'.format(id=56),
            method='POST',
            data=json.dumps(body),
            data=data,
            content_type='multipart/form-data')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_servers_cancel(self):
        """Test case for servers_cancel

        Cancel a dedicated server service at the end of the current billing cycle
        """
        response = self.client.open(
            '/apiv2/servers/{id}'.format(id=56),
            method='DELETE')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_update_server_info(self):
        """Test case for update_server_info

        Update settings on a dedicated server order (shares handler with view)
        """
        response = self.client.open(
            '/apiv2/servers/{id}'.format(id='id_example'),
            method='POST')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))


if __name__ == '__main__':
    import unittest
    unittest.main()
