# coding: utf-8

from __future__ import absolute_import

from flask import json
from six import BytesIO

from myadmin-client-python-flask.models.charge_invoice_rows import ChargeInvoiceRows  # noqa: E501
from myadmin-client-python-flask.models.deny_rule_new import DenyRuleNew  # noqa: E501
from myadmin-client-python-flask.models.deny_rule_record import DenyRuleRecord  # noqa: E501
from myadmin-client-python-flask.models.email_address import EmailAddress  # noqa: E501
from myadmin-client-python-flask.models.email_address_name import EmailAddressName  # noqa: E501
from myadmin-client-python-flask.models.end_date import EndDate  # noqa: E501
from myadmin-client-python-flask.models.generic_response import GenericResponse  # noqa: E501
from myadmin-client-python-flask.models.id_alerts_body import IdAlertsBody  # noqa: E501
from myadmin-client-python-flask.models.inline_response2009 import InlineResponse2009  # noqa: E501
from myadmin-client-python-flask.models.inline_response401 import InlineResponse401  # noqa: E501
from myadmin-client-python-flask.models.mail_alert_request import MailAlertRequest  # noqa: E501
from myadmin-client-python-flask.models.mail_alert_update_request import MailAlertUpdateRequest  # noqa: E501
from myadmin-client-python-flask.models.mail_alerts_response import MailAlertsResponse  # noqa: E501
from myadmin-client-python-flask.models.mail_attachment import MailAttachment  # noqa: E501
from myadmin-client-python-flask.models.mail_blocks import MailBlocks  # noqa: E501
from myadmin-client-python-flask.models.mail_delist_request import MailDelistRequest  # noqa: E501
from myadmin-client-python-flask.models.mail_delist_response import MailDelistResponse  # noqa: E501
from myadmin-client-python-flask.models.mail_deliverability_response import MailDeliverabilityResponse  # noqa: E501
from myadmin-client-python-flask.models.mail_log import MailLog  # noqa: E501
from myadmin-client-python-flask.models.mail_order import MailOrder  # noqa: E501
from myadmin-client-python-flask.models.mail_order_request import MailOrderRequest  # noqa: E501
from myadmin-client-python-flask.models.mail_row import MailRow  # noqa: E501
from myadmin-client-python-flask.models.mail_schema import MailSchema  # noqa: E501
from myadmin-client-python-flask.models.mail_stats_type import MailStatsType  # noqa: E501
from myadmin-client-python-flask.models.send_mail import SendMail  # noqa: E501
from myadmin-client-python-flask.models.send_mail_adv import SendMailAdv  # noqa: E501
from myadmin-client-python-flask.models.service_order_post_response import ServiceOrderPostResponse  # noqa: E501
from myadmin-client-python-flask.models.start_date import StartDate  # noqa: E501
from myadmin-client-python-flask.models.success_text_response import SuccessTextResponse  # noqa: E501
from myadmin-client-python-flask.test import BaseTestCase


class TestMailController(BaseTestCase):
    """MailController integration test stubs"""

    def test_add_mail(self):
        """Test case for add_mail

        Place a new Mail Baby order, generate invoice, and queue provisioning
        """
        body = MailOrderRequest()
        response = self.client.open(
            '/apiv2/mail/order',
            method='POST',
            data=json.dumps(body),
            content_type='application/json')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_add_rule(self):
        """Test case for add_rule

        Create a new deny rule to auto-block matching submissions
        """
        body = DenyRuleNew()
        data = dict(user='user_example',
                    type='type_example',
                    data='data_example')
        response = self.client.open(
            '/apiv2/mail/{id}/rules'.format(id=56),
            method='POST',
            data=json.dumps(body),
            data=data,
            content_type='application/json')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_create_mail_alert(self):
        """Test case for create_mail_alert

        Create a new Mail Baby alert for delivery, bounce, or quota events
        """
        body = MailAlertRequest()
        data = dict(type='type_example',
                    value='value_example',
                    to='to_example',
                    enabled='enabled_example')
        response = self.client.open(
            '/apiv2/mail/{id}/alerts'.format(id=56),
            method='POST',
            data=json.dumps(body),
            data=data,
            content_type='application/json')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_delete_mail_alert(self):
        """Test case for delete_mail_alert

        Delete a Mail Baby alert by alert_id (hard delete — no recovery)
        """
        body = IdAlertsBody()
        data = dict(alert_id=56)
        response = self.client.open(
            '/apiv2/mail/{id}/alerts'.format(id=56),
            method='DELETE',
            data=json.dumps(body),
            data=data,
            content_type='application/json')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_delete_rule(self):
        """Test case for delete_rule

        Delete a Mail Baby deny rule by rule ID (hard delete — no recovery)
        """
        response = self.client.open(
            '/apiv2/mail/{id}/rules/{rule}'.format(id=56, rule='rule_example'),
            method='DELETE')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_delist_block(self):
        """Test case for delist_block

        Delist a sender email from rspamd / mailchannels / mailbaby block lists
        """
        body = EmailAddress()
        data = dict(email='email_example')
        response = self.client.open(
            '/apiv2/mail/{id}/blocks/delete'.format(id=56),
            method='POST',
            data=json.dumps(body),
            data=data,
            content_type='multipart/form-data')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_mail_alerts(self):
        """Test case for get_mail_alerts

        List configured delivery/bounce/quota alerts for one Mail Baby service
        """
        response = self.client.open(
            '/apiv2/mail/{id}/alerts'.format(id=56),
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_mail_blocks(self):
        """Test case for get_mail_blocks

        List recent local-blocklist hits and spam-trap captures for the mail user
        """
        response = self.client.open(
            '/apiv2/mail/{id}/blocks'.format(id=56),
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_mail_delist(self):
        """Test case for get_mail_delist

        Read blocklist diagnostics and find senders eligible for delisting
        """
        response = self.client.open(
            '/apiv2/mail/{id}/delist'.format(id=56),
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_mail_deliverability(self):
        """Test case for get_mail_deliverability

        Read delivered vs bounced totals broken down by sender (or by recipient domain)
        """
        response = self.client.open(
            '/apiv2/mail/{id}/deliverability'.format(id=56),
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_mail_info(self):
        """Test case for get_mail_info

        Read full detail for one Mail Baby service including SMTP credentials
        """
        response = self.client.open(
            '/apiv2/mail/{id}'.format(id=56),
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_mail_invoices(self):
        """Test case for get_mail_invoices

        List billing invoices linked to this Mail Baby service
        """
        response = self.client.open(
            '/apiv2/mail/{id}/invoices'.format(id=56),
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_mail_list(self):
        """Test case for get_mail_list

        List every Mail Baby SMTP relay service on the account
        """
        response = self.client.open(
            '/apiv2/mail',
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_mail_welcome_email(self):
        """Test case for get_mail_welcome_email

        Resend the Mail Baby welcome email with SMTP credentials and setup info
        """
        response = self.client.open(
            '/apiv2/mail/{id}/welcome_email'.format(id=56),
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_new_mail(self):
        """Test case for get_new_mail

        Read the Mail Baby order catalog — plans, package costs, service-type metadata
        """
        response = self.client.open(
            '/apiv2/mail/order',
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_rules(self):
        """Test case for get_rules

        List configured deny rules (sender/recipient blocks) for a Mail Baby service
        """
        response = self.client.open(
            '/apiv2/mail/{id}/rules'.format(id=56),
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_stats(self):
        """Test case for get_stats

        Read Mail Baby usage counts, send volume totals, top destinations, and projected cost
        """
        query_string = [('time', 'time_example')]
        response = self.client.open(
            '/apiv2/mail/{id}/stats'.format(id=56),
            method='GET',
            query_string=query_string)
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_mail_cancel(self):
        """Test case for mail_cancel

        Cancel a Mail Baby service and stop the recurring invoice
        """
        response = self.client.open(
            '/apiv2/mail/{id}'.format(id=56),
            method='DELETE')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_post_mail_delist(self):
        """Test case for post_mail_delist

        Delist a sender from rspamd / mailchannels / mailbaby block lists
        """
        body = MailDelistRequest()
        data = dict(unblock='unblock_example')
        response = self.client.open(
            '/apiv2/mail/{id}/delist'.format(id=56),
            method='POST',
            data=json.dumps(body),
            data=data,
            content_type='application/json')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_put_mail(self):
        """Test case for put_mail

        Validate Mail Baby order, quote pricing, and verify coupon — no charge
        """
        body = MailOrderRequest()
        response = self.client.open(
            '/apiv2/mail/order',
            method='PUT',
            data=json.dumps(body),
            content_type='application/json')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_reset_mail_password(self):
        """Test case for reset_mail_password

        Rotate the SMTP password and email the new credential to the account owner
        """
        response = self.client.open(
            '/apiv2/mail/{id}/reset_password'.format(id=56),
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_send_adv_mail(self):
        """Test case for send_adv_mail

        Send email via Mail Baby SMTP relay with attachments, CC/BCC, and multi-recipient
        """
        body = SendMailAdv()
        data = dict(subject='subject_example',
                    body='body_example',
                    _from=EmailAddressName(),
                    to=EmailAddressName(),
                    replyto=EmailAddressName(),
                    cc=EmailAddressName(),
                    bcc=EmailAddressName(),
                    attachments=MailAttachment(),
                    id=789)
        response = self.client.open(
            '/apiv2/mail/{id}/advsend'.format(id=56),
            method='POST',
            data=json.dumps(body),
            data=data,
            content_type='application/json')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_send_mail(self):
        """Test case for send_mail

        Send a simple single-recipient email through the Mail Baby SMTP relay
        """
        body = SendMail()
        data = dict(to='to_example',
                    _from='_from_example',
                    subject='subject_example',
                    body='body_example')
        response = self.client.open(
            '/apiv2/mail/{id}/send'.format(id=56),
            method='POST',
            data=json.dumps(body),
            data=data,
            content_type='application/json')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_update_mail_alert(self):
        """Test case for update_mail_alert

        Update an existing Mail Baby alert by alert_id
        """
        body = MailAlertUpdateRequest()
        data = dict(alert_id=56,
                    type='type_example',
                    value='value_example',
                    to='to_example',
                    enabled='enabled_example')
        response = self.client.open(
            '/apiv2/mail/{id}/alerts'.format(id=56),
            method='PUT',
            data=json.dumps(body),
            data=data,
            content_type='application/json')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_update_mail_info(self):
        """Test case for update_mail_info

        POST mutation hook for the Mail Baby service detail page
        """
        response = self.client.open(
            '/apiv2/mail/{id}'.format(id='id_example'),
            method='POST')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_update_rule(self):
        """Test case for update_rule

        Update an existing Mail Baby deny rule's type and match data
        """
        body = DenyRuleNew()
        data = dict(user='user_example',
                    type='type_example',
                    data='data_example')
        response = self.client.open(
            '/apiv2/mail/{id}/rules/{rule}'.format(id=56, rule='rule_example'),
            method='PUT',
            data=json.dumps(body),
            data=data,
            content_type='application/json')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_view_mail_log(self):
        """Test case for view_mail_log

        Search and paginate per-message Mail Baby delivery log entries
        """
        query_string = [('id', 789),
                        ('origin', 'origin_example'),
                        ('mx', 'mx_example'),
                        ('_from', '_from_example'),
                        ('to', 'to_example'),
                        ('subject', 'subject_example'),
                        ('mailid', 'mailid_example'),
                        ('message_id', 'message_id_example'),
                        ('replyto', 'replyto_example'),
                        ('headerfrom', 'headerfrom_example'),
                        ('delivered', 56),
                        ('skip', 1),
                        ('limit', 10000),
                        ('start_date', StartDate()),
                        ('end_date', EndDate()),
                        ('sort', 'time'),
                        ('dir', 'desc'),
                        ('groupby', 'recipient')]
        response = self.client.open(
            '/apiv2/mail/{id}/log'.format(id=56),
            method='GET',
            query_string=query_string)
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))


if __name__ == '__main__':
    import unittest
    unittest.main()
