# coding: utf-8

from __future__ import absolute_import

from flask import json
from six import BytesIO

from myadmin-client-python-flask.models.backup import Backup  # noqa: E501
from myadmin-client-python-flask.models.backup_login_response import BackupLoginResponse  # noqa: E501
from myadmin-client-python-flask.models.backup_order_post_response import BackupOrderPostResponse  # noqa: E501
from myadmin-client-python-flask.models.backup_order_put_request import BackupOrderPutRequest  # noqa: E501
from myadmin-client-python-flask.models.backup_order_put_response import BackupOrderPutResponse  # noqa: E501
from myadmin-client-python-flask.models.backup_row import BackupRow  # noqa: E501
from myadmin-client-python-flask.models.backups_order import BackupsOrder  # noqa: E501
from myadmin-client-python-flask.models.charge_invoice_rows import ChargeInvoiceRows  # noqa: E501
from myadmin-client-python-flask.models.inline_response2002 import InlineResponse2002  # noqa: E501
from myadmin-client-python-flask.models.inline_response401 import InlineResponse401  # noqa: E501
from myadmin-client-python-flask.models.success_text_response import SuccessTextResponse  # noqa: E501
from myadmin-client-python-flask.test import BaseTestCase


class TestBackupsController(BaseTestCase):
    """BackupsController integration test stubs"""

    def test_add_backup(self):
        """Test case for add_backup

        Place a new off-site backup storage order and generate the invoice
        """
        body = BackupOrderPutRequest()
        data = dict(validate_only=true,
                    service_type=56,
                    coupon='coupon_example')
        response = self.client.open(
            '/apiv2/backups/order',
            method='POST',
            data=json.dumps(body),
            data=data,
            content_type='multipart/form-data')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_cancel_backup(self):
        """Test case for cancel_backup

        Cancel an off-site backup storage subscription
        """
        response = self.client.open(
            '/apiv2/backups/{id}'.format(id=56),
            method='DELETE')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_backup_info(self):
        """Test case for get_backup_info

        Get details of a specific off-site backup storage service
        """
        response = self.client.open(
            '/apiv2/backups/{id}'.format(id=56),
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_backup_invoices(self):
        """Test case for get_backup_invoices

        List invoices for a single backup-storage subscription
        """
        response = self.client.open(
            '/apiv2/backups/{id}/invoices'.format(id=56),
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_backup_login(self):
        """Test case for get_backup_login

        Open a single sign-on session URL for the backup storage panel
        """
        response = self.client.open(
            '/apiv2/backups/{id}/login'.format(id=56),
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_backups_list(self):
        """Test case for get_backups_list

        List off-site backup storage subscriptions on the authenticated account
        """
        response = self.client.open(
            '/apiv2/backups',
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_backups_welcome_email(self):
        """Test case for get_backups_welcome_email

        Resend the welcome email for an off-site backup storage service
        """
        response = self.client.open(
            '/apiv2/backups/{id}/welcome_email'.format(id=56),
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_new_backup(self):
        """Test case for get_new_backup

        Get backup-storage order form metadata and pricing tiers
        """
        response = self.client.open(
            '/apiv2/backups/order',
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_update_backup_info(self):
        """Test case for update_backup_info

        Update stored metadata for a backup-storage subscription
        """
        response = self.client.open(
            '/apiv2/backups/{id}'.format(id=56),
            method='POST')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_validate_backup_order(self):
        """Test case for validate_backup_order

        Validate a backup-storage order and preview pricing without charging
        """
        body = BackupOrderPutRequest()
        data = dict(validate_only=true,
                    service_type=56,
                    coupon='coupon_example')
        response = self.client.open(
            '/apiv2/backups/order',
            method='PUT',
            data=json.dumps(body),
            data=data,
            content_type='multipart/form-data')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))


if __name__ == '__main__':
    import unittest
    unittest.main()
