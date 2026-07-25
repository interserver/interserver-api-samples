# coding: utf-8

from __future__ import absolute_import

from flask import json
from six import BytesIO

from myadmin-client-python-flask.models.charge_invoice_rows import ChargeInvoiceRows  # noqa: E501
from myadmin-client-python-flask.models.floating_ip_order_request import FloatingIpOrderRequest  # noqa: E501
from myadmin-client-python-flask.models.inline_response2004 import InlineResponse2004  # noqa: E501
from myadmin-client-python-flask.models.inline_response401 import InlineResponse401  # noqa: E501
from myadmin-client-python-flask.models.ip_object import IpObject  # noqa: E501
from myadmin-client-python-flask.models.service_order_post_response import ServiceOrderPostResponse  # noqa: E501
from myadmin-client-python-flask.models.success_text_response import SuccessTextResponse  # noqa: E501
from myadmin-client-python-flask.test import BaseTestCase


class TestFloatingIPsController(BaseTestCase):
    """FloatingIPsController integration test stubs"""

    def test_add_floating_ip(self):
        """Test case for add_floating_ip

        Place a real Floating IP order, create billing records, and provision the service
        """
        body = FloatingIpOrderRequest()
        response = self.client.open(
            '/apiv2/floating_ips/order',
            method='POST',
            data=json.dumps(body),
            content_type='application/json')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_floating_ips_cancel(self):
        """Test case for floating_ips_cancel

        Cancel a Floating IP service and release the IP — destructive, billing stops
        """
        response = self.client.open(
            '/apiv2/floating_ips/{id}'.format(id=56),
            method='DELETE')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_floating_ip_info(self):
        """Test case for get_floating_ip_info

        Fetch full details for one Floating IP service, including current target IP
        """
        response = self.client.open(
            '/apiv2/floating_ips/{id}'.format(id=56),
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_floating_ip_invoices(self):
        """Test case for get_floating_ip_invoices

        List all billing invoices charged against a specific Floating IP service
        """
        response = self.client.open(
            '/apiv2/floating_ips/{id}/invoices'.format(id=56),
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_floating_ips_list(self):
        """Test case for get_floating_ips_list

        List all Floating IP services on the authenticated customer's account
        """
        response = self.client.open(
            '/apiv2/floating_ips',
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_floating_ips_welcome_email(self):
        """Test case for get_floating_ips_welcome_email

        Resend the Floating IP welcome / setup email to the account contact
        """
        response = self.client.open(
            '/apiv2/floating_ips/{id}/welcome_email'.format(id=56),
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_new_floating_ip(self):
        """Test case for get_new_floating_ip

        Get pricing and service-type options for ordering a new Floating IP
        """
        response = self.client.open(
            '/apiv2/floating_ips/order',
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_post_floating_ips_change_ip(self):
        """Test case for post_floating_ips_change_ip

        Re-point a Floating IP to a different target IP on one of the customer's services
        """
        body = IpObject()
        data = dict(ip='ip_example')
        response = self.client.open(
            '/apiv2/floating_ips/{id}/change_ip'.format(id=56),
            method='POST',
            data=json.dumps(body),
            data=data,
            content_type='multipart/form-data')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_put_floating_ips(self):
        """Test case for put_floating_ips

        Validate a Floating IP order and price it without charging the customer
        """
        body = FloatingIpOrderRequest()
        response = self.client.open(
            '/apiv2/floating_ips/order',
            method='PUT',
            data=json.dumps(body),
            content_type='application/json')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_update_floating_ip_info(self):
        """Test case for update_floating_ip_info

        Update a Floating IP service's editable settings (label / metadata)
        """
        response = self.client.open(
            '/apiv2/floating_ips/{id}'.format(id='id_example'),
            method='POST')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))


if __name__ == '__main__':
    import unittest
    unittest.main()
