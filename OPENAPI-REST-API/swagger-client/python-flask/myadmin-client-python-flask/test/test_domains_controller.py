# coding: utf-8

from __future__ import absolute_import

from flask import json
from six import BytesIO

from myadmin-client-python-flask.models.charge_invoice_rows import ChargeInvoiceRows  # noqa: E501
from myadmin-client-python-flask.models.domain import Domain  # noqa: E501
from myadmin-client-python-flask.models.domain_contact_details import DomainContactDetails  # noqa: E501
from myadmin-client-python-flask.models.domain_dnssec_records import DomainDnssecRecords  # noqa: E501
from myadmin-client-python-flask.models.domain_dnssec_request import DomainDnssecRequest  # noqa: E501
from myadmin-client-python-flask.models.domain_lookup_response import DomainLookupResponse  # noqa: E501
from myadmin-client-python-flask.models.domain_nameserver_get_response import DomainNameserverGetResponse  # noqa: E501
from myadmin-client-python-flask.models.domain_nameserver_post_request import DomainNameserverPostRequest  # noqa: E501
from myadmin-client-python-flask.models.domain_nameserver_put_request import DomainNameserverPutRequest  # noqa: E501
from myadmin-client-python-flask.models.domain_order import DomainOrder  # noqa: E501
from myadmin-client-python-flask.models.domain_row import DomainRow  # noqa: E501
from myadmin-client-python-flask.models.domain_search_response import DomainSearchResponse  # noqa: E501
from myadmin-client-python-flask.models.domain_whois_privacy_request import DomainWhoisPrivacyRequest  # noqa: E501
from myadmin-client-python-flask.models.inline_response2003 import InlineResponse2003  # noqa: E501
from myadmin-client-python-flask.models.inline_response401 import InlineResponse401  # noqa: E501
from myadmin-client-python-flask.models.service_order_post_response import ServiceOrderPostResponse  # noqa: E501
from myadmin-client-python-flask.models.success_text_response import SuccessTextResponse  # noqa: E501
from myadmin-client-python-flask.models.text_response import TextResponse  # noqa: E501
from myadmin-client-python-flask.test import BaseTestCase


class TestDomainsController(BaseTestCase):
    """DomainsController integration test stubs"""

    def test_add_domain(self):
        """Test case for add_domain

        Place a new domain registration or transfer order, generate billing invoice
        """
        body = None
        response = self.client.open(
            '/apiv2/domains/order',
            method='POST',
            data=json.dumps(body),
            content_type='application/json')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_add_domain_dnssec(self):
        """Test case for add_domain_dnssec

        Register DNSSEC DS records on the domain at OpenSRS
        """
        body = DomainDnssecRequest()
        data = dict(algorithm=56,
                    digest_type=56,
                    digest='digest_example',
                    key_tag=56)
        response = self.client.open(
            '/apiv2/domains/{id}/dnssec'.format(id=56),
            method='POST',
            data=json.dumps(body),
            data=data,
            content_type='application/json')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_add_domain_nameserver(self):
        """Test case for add_domain_nameserver

        Register a new nameserver host with glue IP at the registry (registered nameserver)
        """
        body = DomainNameserverPostRequest()
        data = dict(name='name_example',
                    ip_address='ip_address_example')
        response = self.client.open(
            '/apiv2/domains/{id}/nameservers'.format(id=56),
            method='POST',
            data=json.dumps(body),
            data=data,
            content_type='application/json')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_cancel_domain(self):
        """Test case for cancel_domain

        Cancel a domain order in the billing system to stop auto-renewals
        """
        response = self.client.open(
            '/apiv2/domains/{id}'.format(id=56),
            method='DELETE')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_delete_domain_dnssec(self):
        """Test case for delete_domain_dnssec

        Clear all DNSSEC DS records on the domain (disable DNSSEC at the registrar)
        """
        response = self.client.open(
            '/apiv2/domains/{id}/dnssec'.format(id=56),
            method='DELETE')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_delete_domain_nameserver(self):
        """Test case for delete_domain_nameserver

        Remove one registered nameserver glue record from the domain
        """
        query_string = [('index', 56)]
        response = self.client.open(
            '/apiv2/domains/{id}/nameservers'.format(id=56),
            method='DELETE',
            query_string=query_string)
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_domain_contact(self):
        """Test case for get_domain_contact

        Read the current registrant/admin/tech/billing contact field set for a domain
        """
        response = self.client.open(
            '/apiv2/domains/{id}/contact'.format(id=56),
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_domain_dnssec(self):
        """Test case for get_domain_dnssec

        Read the DNSSEC DS record set currently registered with the registrar
        """
        response = self.client.open(
            '/apiv2/domains/{id}/dnssec'.format(id=56),
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_domain_info(self):
        """Test case for get_domain_info

        Read full billing, registrar, and service detail for one domain
        """
        response = self.client.open(
            '/apiv2/domains/{id}'.format(id=56),
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_domain_invoices(self):
        """Test case for get_domain_invoices

        List all billing invoices scoped to one domain order
        """
        response = self.client.open(
            '/apiv2/domains/{id}/invoices'.format(id=56),
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_domain_lookup(self):
        """Test case for get_domain_lookup

        Check availability, premium status, and pricing for a specific domain
        """
        response = self.client.open(
            '/apiv2/domains/lookup/{name}'.format(name='name_example'),
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_domain_nameservers(self):
        """Test case for get_domain_nameservers

        List registered nameserver hosts and glue IP addresses for a domain
        """
        response = self.client.open(
            '/apiv2/domains/{id}/nameservers'.format(id=56),
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_domain_renewal(self):
        """Test case for get_domain_renewal

        Read renewal pricing, expiry, and whether a renewal invoice already exists
        """
        response = self.client.open(
            '/apiv2/domains/{id}/renew'.format(id=56),
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_domain_search(self):
        """Test case for get_domain_search

        Get registrar-suggested domain alternatives and bulk availability for a search term
        """
        response = self.client.open(
            '/apiv2/domains/search/{name}'.format(name='name_example'),
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_domain_transfer(self):
        """Test case for get_domain_transfer

        Read OpenSRS transfer status for an in-progress domain transfer order
        """
        response = self.client.open(
            '/apiv2/domains/{id}/transfer'.format(id=56),
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_domain_whois_privacy(self):
        """Test case for get_domain_whois_privacy

        Read Whois privacy availability, current state, and add-on pricing for a domain
        """
        response = self.client.open(
            '/apiv2/domains/{id}/whois'.format(id=56),
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_domains_list(self):
        """Test case for get_domains_list

        List every domain registration on the account with billing and registration metadata
        """
        response = self.client.open(
            '/apiv2/domains',
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_domains_welcome_email(self):
        """Test case for get_domains_welcome_email

        Resend the domain welcome email with registration details and management instructions
        """
        response = self.client.open(
            '/apiv2/domains/{id}/welcome_email'.format(id=56),
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_new_domain(self):
        """Test case for get_new_domain

        Read the buyable domain TLD service catalog and Whois privacy pricing
        """
        response = self.client.open(
            '/apiv2/domains/order',
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_patch_domains(self):
        """Test case for patch_domains

        Validate posted domain-order field values before committing — dry run
        """
        body = None
        response = self.client.open(
            '/apiv2/domains/order',
            method='PATCH',
            data=json.dumps(body),
            content_type='application/json')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_post_domain_renewal(self):
        """Test case for post_domain_renewal

        Submit a domain renewal request and generate the renewal invoice
        """
        response = self.client.open(
            '/apiv2/domains/{id}/renew'.format(id=56),
            method='POST')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_post_domain_search(self):
        """Test case for post_domain_search

        Get the full order form data for a hostname in one round-trip (search → order preview)
        """
        response = self.client.open(
            '/apiv2/domains/search/{name}'.format(name='name_example'),
            method='POST')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_post_domain_transfer(self):
        """Test case for post_domain_transfer

        Re-poll OpenSRS transfer status for a domain order via POST
        """
        response = self.client.open(
            '/apiv2/domains/{id}/transfer'.format(id=56),
            method='POST')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_put_domains(self):
        """Test case for put_domains

        Preview per-TLD field requirements for a domain order — no commit
        """
        body = None
        response = self.client.open(
            '/apiv2/domains/order',
            method='PUT',
            data=json.dumps(body),
            content_type='application/json')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_update_domain_contact(self):
        """Test case for update_domain_contact

        Update registrant/admin contact details and push them to OpenSRS
        """
        body = DomainContactDetails()
        data = dict(status='status_example',
                    state='state_example',
                    org_name='org_name_example',
                    country='country_example',
                    postal_code='postal_code_example',
                    email='email_example',
                    fax='fax_example',
                    address2='address2_example',
                    address3='address3_example',
                    address1='address1_example',
                    city='city_example',
                    phone='phone_example',
                    first_name='first_name_example',
                    last_name='last_name_example')
        response = self.client.open(
            '/apiv2/domains/{id}/contact'.format(id=56),
            method='POST',
            data=json.dumps(body),
            data=data,
            content_type='application/json')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_update_domain_info(self):
        """Test case for update_domain_info

        POST mutation hook for the domain detail page (use dedicated ops where possible)
        """
        response = self.client.open(
            '/apiv2/domains/{id}'.format(id=56),
            method='POST')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_update_domain_nameservers(self):
        """Test case for update_domain_nameservers

        Replace the full authoritative-nameserver delegation list at the registrar
        """
        body = DomainNameserverPutRequest()
        data = dict(nameserver='nameserver_example')
        response = self.client.open(
            '/apiv2/domains/{id}/nameservers'.format(id=56),
            method='PUT',
            data=json.dumps(body),
            data=data,
            content_type='application/json')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_update_domain_whois_privacy(self):
        """Test case for update_domain_whois_privacy

        Order, enable, or cancel the Whois privacy add-on for a domain
        """
        body = DomainWhoisPrivacyRequest()
        data = dict(func='func_example',
                    csrf_token='csrf_token_example',
                    domain_firstname='domain_firstname_example',
                    domain_lastname='domain_lastname_example',
                    domain_email='domain_email_example',
                    domain_address='domain_address_example',
                    domain_address2='domain_address2_example',
                    domain_address3='domain_address3_example',
                    domain_city='domain_city_example',
                    domain_state='domain_state_example',
                    domain_zip='domain_zip_example',
                    domain_country='domain_country_example',
                    domain_phone='domain_phone_example',
                    domain_fax='domain_fax_example',
                    domain_company='domain_company_example',
                    domain_extra='domain_extra_example')
        response = self.client.open(
            '/apiv2/domains/{id}/whois'.format(id=56),
            method='POST',
            data=json.dumps(body),
            data=data,
            content_type='application/json')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))


if __name__ == '__main__':
    import unittest
    unittest.main()
