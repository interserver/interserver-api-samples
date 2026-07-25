# coding: utf-8

from __future__ import absolute_import

from flask import json
from six import BytesIO

from myadmin-client-python-flask.models.affiliate_banner_row import AffiliateBannerRow  # noqa: E501
from myadmin-client-python-flask.models.affiliate_dock_setup import AffiliateDockSetup  # noqa: E501
from myadmin-client-python-flask.models.affiliate_payment_setup import AffiliatePaymentSetup  # noqa: E501
from myadmin-client-python-flask.models.affiliate_traffic_row import AffiliateTrafficRow  # noqa: E501
from myadmin-client-python-flask.models.billing_add_cc_request import BillingAddCcRequest  # noqa: E501
from myadmin-client-python-flask.models.billing_invoice_detail import BillingInvoiceDetail  # noqa: E501
from myadmin-client-python-flask.models.billing_invoice_list import BillingInvoiceList  # noqa: E501
from myadmin-client-python-flask.models.billing_payment_method_request import BillingPaymentMethodRequest  # noqa: E501
from myadmin-client-python-flask.models.billing_prepay_request import BillingPrepayRequest  # noqa: E501
from myadmin-client-python-flask.models.billing_verify_cc_request import BillingVerifyCcRequest  # noqa: E501
from myadmin-client-python-flask.models.id_verify_body import IdVerifyBody  # noqa: E501
from myadmin-client-python-flask.models.inline_response2001 import InlineResponse2001  # noqa: E501
from myadmin-client-python-flask.models.inline_response20010 import InlineResponse20010  # noqa: E501
from myadmin-client-python-flask.models.inline_response401 import InlineResponse401  # noqa: E501
from myadmin-client-python-flask.models.monthly_counts import MonthlyCounts  # noqa: E501
from myadmin-client-python-flask.models.status_monthly_breakdown import StatusMonthlyBreakdown  # noqa: E501
from myadmin-client-python-flask.models.success_text_response import SuccessTextResponse  # noqa: E501
from myadmin-client-python-flask.models.text_response import TextResponse  # noqa: E501
from myadmin-client-python-flask.test import BaseTestCase


class TestBillingController(BaseTestCase):
    """BillingController integration test stubs"""

    def test_add_billing_credit_card(self):
        """Test case for add_billing_credit_card

        Store a credit card on the account — may return a verification flow
        """
        body = BillingAddCcRequest()
        data = dict(name='name_example',
                    address='address_example',
                    city='city_example',
                    state='state_example',
                    country='country_example',
                    zip='zip_example',
                    cc='cc_example',
                    cc_exp='cc_exp_example',
                    cc_ccv2='cc_ccv2_example')
        response = self.client.open(
            '/apiv2/billing/creditcards',
            method='POST',
            data=json.dumps(body),
            data=data,
            content_type='application/json')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_add_billing_prepay(self):
        """Test case for add_billing_prepay

        Create a prepay deposit and return an invoice id to fund it
        """
        body = BillingPrepayRequest()
        data = dict(module='module_example',
                    amount=1.2,
                    automatic_use='automatic_use_example')
        response = self.client.open(
            '/apiv2/billing/prepays',
            method='POST',
            data=json.dumps(body),
            data=data,
            content_type='application/json')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_delete_billing_credit_card(self):
        """Test case for delete_billing_credit_card

        Remove a stored credit card from the account
        """
        response = self.client.open(
            '/apiv2/billing/creditcards/{id}'.format(id=56),
            method='DELETE')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_delete_billing_invoice(self):
        """Test case for delete_billing_invoice

        Cancel a pending unpaid invoice — and its pending service or repeat invoice
        """
        response = self.client.open(
            '/apiv2/billing/invoices/{id}'.format(id=56),
            method='DELETE')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_delete_billing_prepay(self):
        """Test case for delete_billing_prepay

        Delete an unfunded prepay or strip its unpaid funding invoices
        """
        response = self.client.open(
            '/apiv2/billing/prepays/{id}'.format(id=56),
            method='DELETE')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_affiliate_banners(self):
        """Test case for get_affiliate_banners

        List affiliate banner image assets with filename and dimensions
        """
        response = self.client.open(
            '/apiv2/affiliate/banners',
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_affiliate_download(self):
        """Test case for get_affiliate_download

        Export the affiliate signup report as CSV, XLS, XLSX, or PDF file download
        """
        query_string = [('st', 'st_example'),
                        ('ex', 'ex_example'),
                        ('year', 56)]
        response = self.client.open(
            '/apiv2/affiliate/download',
            method='GET',
            query_string=query_string)
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_affiliate_rich_report(self):
        """Test case for get_affiliate_rich_report

        Read a combined affiliate performance summary (HTML payload)
        """
        response = self.client.open(
            '/apiv2/affiliate/rich_report',
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_affiliate_sales_graph(self):
        """Test case for get_affiliate_sales_graph

        Read aggregated affiliate sales time-series (monthly buckets) for chart rendering
        """
        query_string = [('days', 56)]
        response = self.client.open(
            '/apiv2/affiliate/sales_graph',
            method='GET',
            query_string=query_string)
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_affiliate_signups(self):
        """Test case for get_affiliate_signups

        Read affiliate signup stats and per-customer conversion data
        """
        query_string = [('st', 'st_example')]
        response = self.client.open(
            '/apiv2/affiliate/signups',
            method='GET',
            query_string=query_string)
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_affiliate_traffic_graph(self):
        """Test case for get_affiliate_traffic_graph

        Read aggregated affiliate referral click/visit time-series for chart rendering
        """
        query_string = [('days', 56)]
        response = self.client.open(
            '/apiv2/affiliate/traffic_graph',
            method='GET',
            query_string=query_string)
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_affiliate_web_traffic(self):
        """Test case for get_affiliate_web_traffic

        List the 20 most recent affiliate referral visits with IP, referrer, timestamp
        """
        response = self.client.open(
            '/apiv2/affiliate/web_traffic',
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_billing_cart(self):
        """Test case for get_billing_cart

        Read the current shopping cart contents, totals, and available payment methods
        """
        response = self.client.open(
            '/apiv2/billing/cart',
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_billing_credit_card_verify(self):
        """Test case for get_billing_credit_card_verify

        Probe whether a stored card still needs micro-charge verification
        """
        response = self.client.open(
            '/apiv2/billing/creditcards/{id}/verify'.format(id=56),
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_billing_invoice(self):
        """Test case for get_billing_invoice

        Read full invoice detail — line items, totals, paid status, customer info
        """
        response = self.client.open(
            '/apiv2/billing/invoices/{id}'.format(id=56),
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_billing_invoices(self):
        """Test case for get_billing_invoices

        List every invoice on the account with summary totals and paid/unpaid status
        """
        response = self.client.open(
            '/apiv2/billing/invoices',
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_billing_pre_pays(self):
        """Test case for get_billing_pre_pays

        List prepay deposits on the account — remaining balance and auto-use flags
        """
        response = self.client.open(
            '/apiv2/billing/prepays',
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_initiate_payment(self):
        """Test case for initiate_payment

        Pay invoices through the chosen gateway — returns the next-step action
        """
        response = self.client.open(
            '/apiv2/billing/pay/{method}/{invoices}'.format(method='method_example', invoices='invoices_example'),
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_patch_billing_credit_card_verify(self):
        """Test case for patch_billing_credit_card_verify

        Place two micro-charges on the card to start CVV verification (step 1 of 2)
        """
        body = IdVerifyBody()
        data = dict(cc_ccv2='cc_ccv2_example')
        response = self.client.open(
            '/apiv2/billing/creditcards/{id}/verify'.format(id=56),
            method='PATCH',
            data=json.dumps(body),
            data=data,
            content_type='application/json')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_post_billing_credit_card_verify(self):
        """Test case for post_billing_credit_card_verify

        Submit two micro-charge amounts to finalize card verification (step 2 of 2)
        """
        body = BillingVerifyCcRequest()
        data = dict(idx=56,
                    cc_ccv2='cc_ccv2_example',
                    cc_amount1='cc_amount1_example',
                    cc_amount2='cc_amount2_example',
                    terms=true)
        response = self.client.open(
            '/apiv2/billing/creditcards/{id}/verify'.format(id=56),
            method='POST',
            data=json.dumps(body),
            data=data,
            content_type='application/json')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_update_affiliate_dock_setup(self):
        """Test case for update_affiliate_dock_setup

        Configure the affiliate landing dock title, description, and referrer coupon
        """
        body = AffiliateDockSetup()
        data = dict(affiliate_dock_title='affiliate_dock_title_example',
                    affiliate_dock_description='affiliate_dock_description_example',
                    referrer_coupon='referrer_coupon_example')
        response = self.client.open(
            '/apiv2/affiliate/dock_setup',
            method='POST',
            data=json.dumps(body),
            data=data,
            content_type='multipart/form-data')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_update_affiliate_payment_setup(self):
        """Test case for update_affiliate_payment_setup

        Configure how affiliate commissions get paid out (PayPal or internal prepay)
        """
        body = AffiliatePaymentSetup()
        data = dict(affiliate_paypal='affiliate_paypal_example',
                    affiliate_payment_method='affiliate_payment_method_example')
        response = self.client.open(
            '/apiv2/affiliate/payment_setup',
            method='POST',
            data=json.dumps(body),
            data=data,
            content_type='multipart/form-data')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_update_billing_credit_card(self):
        """Test case for update_billing_credit_card

        Refresh stored card expiration and re-trigger MaxMind fraud scoring
        """
        response = self.client.open(
            '/apiv2/billing/creditcards/{id}'.format(id=56),
            method='POST')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_update_billing_payment_method(self):
        """Test case for update_billing_payment_method

        Set the account's default payment method for recurring/auto charges
        """
        body = BillingPaymentMethodRequest()
        data = dict(payment_method='payment_method_example',
                    cc_auto='cc_auto_example')
        response = self.client.open(
            '/apiv2/billing/payment_method',
            method='POST',
            data=json.dumps(body),
            data=data,
            content_type='application/json')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))


if __name__ == '__main__':
    import unittest
    unittest.main()
