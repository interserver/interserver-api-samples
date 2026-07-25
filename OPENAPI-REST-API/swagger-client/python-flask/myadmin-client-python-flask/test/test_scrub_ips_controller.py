# coding: utf-8

from __future__ import absolute_import

from flask import json
from six import BytesIO

from myadmin-client-python-flask.models.charge_invoice_rows import ChargeInvoiceRows  # noqa: E501
from myadmin-client-python-flask.models.create_filter import CreateFilter  # noqa: E501
from myadmin-client-python-flask.models.create_firewall_rule import CreateFirewallRule  # noqa: E501
from myadmin-client-python-flask.models.create_geo_firewall_rule import CreateGeoFirewallRule  # noqa: E501
from myadmin-client-python-flask.models.delete_firewall_rule import DeleteFirewallRule  # noqa: E501
from myadmin-client-python-flask.models.delete_geo_firewall_rule import DeleteGeoFirewallRule  # noqa: E501
from myadmin-client-python-flask.models.inline_response20013 import InlineResponse20013  # noqa: E501
from myadmin-client-python-flask.models.inline_response20014 import InlineResponse20014  # noqa: E501
from myadmin-client-python-flask.models.inline_response20015 import InlineResponse20015  # noqa: E501
from myadmin-client-python-flask.models.inline_response20016 import InlineResponse20016  # noqa: E501
from myadmin-client-python-flask.models.inline_response20017 import InlineResponse20017  # noqa: E501
from myadmin-client-python-flask.models.inline_response20018 import InlineResponse20018  # noqa: E501
from myadmin-client-python-flask.models.inline_response20019 import InlineResponse20019  # noqa: E501
from myadmin-client-python-flask.models.inline_response20020 import InlineResponse20020  # noqa: E501
from myadmin-client-python-flask.models.inline_response201 import InlineResponse201  # noqa: E501
from myadmin-client-python-flask.models.inline_response2011 import InlineResponse2011  # noqa: E501
from myadmin-client-python-flask.models.inline_response2012 import InlineResponse2012  # noqa: E501
from myadmin-client-python-flask.models.inline_response400 import InlineResponse400  # noqa: E501
from myadmin-client-python-flask.models.inline_response4001 import InlineResponse4001  # noqa: E501
from myadmin-client-python-flask.models.inline_response4002 import InlineResponse4002  # noqa: E501
from myadmin-client-python-flask.models.inline_response4003 import InlineResponse4003  # noqa: E501
from myadmin-client-python-flask.models.inline_response4004 import InlineResponse4004  # noqa: E501
from myadmin-client-python-flask.models.inline_response4005 import InlineResponse4005  # noqa: E501
from myadmin-client-python-flask.models.inline_response401 import InlineResponse401  # noqa: E501
from myadmin-client-python-flask.models.inline_response500 import InlineResponse500  # noqa: E501
from myadmin-client-python-flask.models.inline_response5001 import InlineResponse5001  # noqa: E501
from myadmin-client-python-flask.models.inline_response5002 import InlineResponse5002  # noqa: E501
from myadmin-client-python-flask.models.inline_response5003 import InlineResponse5003  # noqa: E501
from myadmin-client-python-flask.models.inline_response5004 import InlineResponse5004  # noqa: E501
from myadmin-client-python-flask.models.inline_response5005 import InlineResponse5005  # noqa: E501
from myadmin-client-python-flask.models.scrub_ip_filter_types import ScrubIpFilterTypes  # noqa: E501
from myadmin-client-python-flask.models.scrub_ip_place_order import ScrubIpPlaceOrder  # noqa: E501
from myadmin-client-python-flask.models.scrub_ips_log_row_schema import ScrubIpsLogRowSchema  # noqa: E501
from myadmin-client-python-flask.models.scrub_ips_row_schema import ScrubIpsRowSchema  # noqa: E501
from myadmin-client-python-flask.test import BaseTestCase


class TestScrubIpsController(BaseTestCase):
    """ScrubIpsController integration test stubs"""

    def test_cancel_scrub_ip(self):
        """Test case for cancel_scrub_ip

        Cancel a Scrub IP service and stop its recurring DDoS billing
        """
        response = self.client.open(
            '/apiv2/scrub_ips/{id}'.format(id=56),
            method='DELETE')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_create_filter(self):
        """Test case for create_filter

        Apply a predefined scrubbing filter (DNS/HTTP/synproxy) to a port
        """
        body = CreateFilter()
        response = self.client.open(
            '/apiv2/scrub_ips/{id}/create_filter'.format(id=56),
            method='POST',
            data=json.dumps(body),
            content_type='application/json')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_create_geo_rule(self):
        """Test case for create_geo_rule

        Add a geographic firewall rule (block/allow by country code or ASN)
        """
        body = CreateGeoFirewallRule()
        response = self.client.open(
            '/apiv2/scrub_ips/{id}/create_geo_rule'.format(id=56),
            method='POST',
            data=json.dumps(body),
            content_type='application/json')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_create_rule(self):
        """Test case for create_rule

        Add an L3/L4 firewall rule (allow/drop by IP, port, and protocol)
        """
        body = CreateFirewallRule()
        response = self.client.open(
            '/apiv2/scrub_ips/{id}/create_rule'.format(id=56),
            method='POST',
            data=json.dumps(body),
            content_type='application/json')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_delete_filter(self):
        """Test case for delete_filter

        Remove a scrubbing filter by matching filter_type and port
        """
        body = CreateFilter()
        response = self.client.open(
            '/apiv2/scrub_ips/{id}/delete_filter'.format(id=56),
            method='POST',
            data=json.dumps(body),
            content_type='application/json')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_disable_scrub(self):
        """Test case for disable_scrub

        Disable DDoS scrubbing and remove the BGP announcement on the IP
        """
        response = self.client.open(
            '/apiv2/scrub_ips/{id}/disable'.format(id=56),
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_enable_scrub(self):
        """Test case for enable_scrub

        Enable DDoS scrubbing (BGP announcement) on the service's protected IP
        """
        response = self.client.open(
            '/apiv2/scrub_ips/{id}/enable'.format(id=56),
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_order_detail(self):
        """Test case for get_order_detail

        Get plans, pricing, and eligible IPs for a new Scrub IP order
        """
        response = self.client.open(
            '/apiv2/scrub_ips/order',
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_scrub_ip_details(self):
        """Test case for get_scrub_ip_details

        Get full Scrub IP service detail (rules + geo + filters)
        """
        response = self.client.open(
            '/apiv2/scrub_ips/{id}'.format(id=56),
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_scrub_ip_filter_types(self):
        """Test case for get_scrub_ip_filter_types

        List enabled traffic filter profiles available for createFilter
        """
        response = self.client.open(
            '/apiv2/scrub_ips/filter_types',
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_scrub_ip_invoices(self):
        """Test case for get_scrub_ip_invoices

        List recurring and one-time invoices billed for this Scrub IP service
        """
        response = self.client.open(
            '/apiv2/scrub_ips/{id}/invoices'.format(id=56),
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_scrub_ip_logs(self):
        """Test case for get_scrub_ip_logs

        Get last 50000 packet/event log entries for the protected IP
        """
        response = self.client.open(
            '/apiv2/scrub_ips/{id}/logs'.format(id='id_example'),
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_scrub_ips_list(self):
        """Test case for get_scrub_ips_list

        List all Scrub IP DDoS protection services on the authenticated account
        """
        response = self.client.open(
            '/apiv2/scrub_ips',
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_place_scrub_order(self):
        """Test case for place_scrub_order

        Place a new Scrub IP DDoS protection order and generate an invoice
        """
        body = ScrubIpPlaceOrder()
        response = self.client.open(
            '/apiv2/scrub_ips/order',
            method='POST',
            data=json.dumps(body),
            content_type='application/json')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_put_scrub_ips(self):
        """Test case for put_scrub_ips

        Validate a Scrub IP order and return effective pricing without billing
        """
        body = ScrubIpPlaceOrder()
        response = self.client.open(
            '/apiv2/scrub_ips/order',
            method='PUT',
            data=json.dumps(body),
            content_type='application/json')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_scrub_ips_delete_geo_rule(self):
        """Test case for scrub_ips_delete_geo_rule

        Delete a geo firewall rule by rule_id from getScrubIpDetails
        """
        body = DeleteGeoFirewallRule()
        response = self.client.open(
            '/apiv2/scrub_ips/{id}/delete_geo_rule'.format(id=56),
            method='POST',
            data=json.dumps(body),
            content_type='application/json')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_scrub_ips_delete_rule(self):
        """Test case for scrub_ips_delete_rule

        Delete an L3/L4 firewall rule by rule_id from getScrubIpDetails
        """
        body = DeleteFirewallRule()
        response = self.client.open(
            '/apiv2/scrub_ips/{id}/delete_rule'.format(id=56),
            method='POST',
            data=json.dumps(body),
            content_type='application/json')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))


if __name__ == '__main__':
    import unittest
    unittest.main()
