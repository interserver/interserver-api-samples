# coding: utf-8

from __future__ import absolute_import

from flask import json
from six import BytesIO

from myadmin-client-python-flask.models.charge_invoice_rows import ChargeInvoiceRows  # noqa: E501
from myadmin-client-python-flask.models.id_backups_body import IdBackupsBody  # noqa: E501
from myadmin-client-python-flask.models.inline_response20011 import InlineResponse20011  # noqa: E501
from myadmin-client-python-flask.models.inline_response20012 import InlineResponse20012  # noqa: E501
from myadmin-client-python-flask.models.inline_response401 import InlineResponse401  # noqa: E501
from myadmin-client-python-flask.models.qs_order_request import QsOrderRequest  # noqa: E501
from myadmin-client-python-flask.models.queue_response import QueueResponse  # noqa: E501
from myadmin-client-python-flask.models.quickserver import Quickserver  # noqa: E501
from myadmin-client-python-flask.models.quickserver_order import QuickserverOrder  # noqa: E501
from myadmin-client-python-flask.models.quickserver_row import QuickserverRow  # noqa: E501
from myadmin-client-python-flask.models.restore_request import RestoreRequest  # noqa: E501
from myadmin-client-python-flask.models.reverse_dns_entries import ReverseDnsEntries  # noqa: E501
from myadmin-client-python-flask.models.service_order_post_response import ServiceOrderPostResponse  # noqa: E501
from myadmin-client-python-flask.models.success_text_response import SuccessTextResponse  # noqa: E501
from myadmin-client-python-flask.models.text_response import TextResponse  # noqa: E501
from myadmin-client-python-flask.models.timezone_update import TimezoneUpdate  # noqa: E501
from myadmin-client-python-flask.models.vps_backup_rows import VpsBackupRows  # noqa: E501
from myadmin-client-python-flask.models.vps_templates_list import VpsTemplatesList  # noqa: E501
from myadmin-client-python-flask.test import BaseTestCase


class TestQuickServersController(BaseTestCase):
    """QuickServersController integration test stubs"""

    def test_add_qs(self):
        """Test case for add_qs

        Place a QuickServer order, generating a real invoice and queuing provisioning
        """
        body = QsOrderRequest()
        response = self.client.open(
            '/apiv2/qs/order',
            method='POST',
            data=json.dumps(body),
            content_type='application/json')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_delete_qs_backup(self):
        """Test case for delete_qs_backup

        Permanently delete a QuickServer backup file from object storage
        """
        query_string = [('all', 'all_example'),
                        ('file', 'file_example')]
        response = self.client.open(
            '/apiv2/qs/{id}/backups'.format(id=56),
            method='DELETE',
            query_string=query_string)
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_do_qs_block_smtp(self):
        """Test case for do_qs_block_smtp

        Block outbound SMTP traffic on a QuickServer to halt mail abuse
        """
        response = self.client.open(
            '/apiv2/qs/{id}/block_smtp'.format(id=56),
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_do_qs_disable_cd(self):
        """Test case for do_qs_disable_cd

        Disable the virtual CD/DVD drive device on a QuickServer
        """
        response = self.client.open(
            '/apiv2/qs/{id}/disable_cd'.format(id=56),
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_do_qs_disable_quota(self):
        """Test case for do_qs_disable_quota

        Disable disk-quota enforcement at OS level on a QuickServer
        """
        response = self.client.open(
            '/apiv2/qs/{id}/disable_quota'.format(id=56),
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_do_qs_eject_cd(self):
        """Test case for do_qs_eject_cd

        Eject the currently mounted ISO from a QuickServer's virtual CD drive
        """
        response = self.client.open(
            '/apiv2/qs/{id}/eject_cd'.format(id=56),
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_do_qs_enable_quota(self):
        """Test case for do_qs_enable_quota

        Enable disk-quota enforcement at OS level on a QuickServer
        """
        response = self.client.open(
            '/apiv2/qs/{id}/enable_quota'.format(id=56),
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_do_qs_restart(self):
        """Test case for do_qs_restart

        Reboot a QuickServer with a graceful OS-level restart
        """
        response = self.client.open(
            '/apiv2/qs/{id}/restart'.format(id=56),
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_do_qs_start(self):
        """Test case for do_qs_start

        Power on a QuickServer that is currently stopped or pending boot
        """
        response = self.client.open(
            '/apiv2/qs/{id}/start'.format(id=56),
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_do_qs_stop(self):
        """Test case for do_qs_stop

        Power off a QuickServer with a graceful shutdown command
        """
        response = self.client.open(
            '/apiv2/qs/{id}/stop'.format(id=56),
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_download_qs_backup(self):
        """Test case for download_qs_backup

        Generate a 24-hour pre-signed download URL for a QuickServer backup
        """
        body = IdBackupsBody()
        query_string = [('all', 'all_example')]
        data = dict(file='file_example')
        response = self.client.open(
            '/apiv2/qs/{id}/backups'.format(id=56),
            method='PATCH',
            data=json.dumps(body),
            data=data,
            content_type='application/json',
            query_string=query_string)
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_new_qs(self):
        """Test case for get_new_qs

        Get QuickServer order form metadata and available plans/templates
        """
        response = self.client.open(
            '/apiv2/qs/order',
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_qs_backup(self):
        """Test case for get_qs_backup

        Queue creation of a new QuickServer backup snapshot (note: GET triggers job)
        """
        response = self.client.open(
            '/apiv2/qs/{id}/backup'.format(id=56),
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_qs_backups(self):
        """Test case for get_qs_backups

        List available QuickServer backups across Swift, MinIO, and ZFS storage
        """
        query_string = [('all', 'all_example')]
        response = self.client.open(
            '/apiv2/qs/{id}/backups'.format(id=56),
            method='GET',
            query_string=query_string)
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_qs_change_hostname(self):
        """Test case for get_qs_change_hostname

        Get current QuickServer hostname plus change rules and platform support
        """
        response = self.client.open(
            '/apiv2/qs/{id}/change_hostname'.format(id=56),
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_qs_change_root_password(self):
        """Test case for get_qs_change_root_password

        Get metadata for QuickServer root/OS password change requirements
        """
        response = self.client.open(
            '/apiv2/qs/{id}/change_root_password'.format(id=56),
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_qs_change_timezone(self):
        """Test case for get_qs_change_timezone

        List timezones the QuickServer can be set to via change_timezone
        """
        response = self.client.open(
            '/apiv2/qs/{id}/change_timezone'.format(id=56),
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_qs_change_webuzo_password(self):
        """Test case for get_qs_change_webuzo_password

        Get metadata for changing the Webuzo control panel admin password
        """
        response = self.client.open(
            '/apiv2/qs/{id}/change_webuzo_password'.format(id=56),
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_qs_info(self):
        """Test case for get_qs_info

        Get full details for one QuickServer including credentials and links
        """
        response = self.client.open(
            '/apiv2/qs/{id}'.format(id=56),
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_qs_insert_cd(self):
        """Test case for get_qs_insert_cd

        List ISO images available to mount on a QuickServer's virtual CD
        """
        response = self.client.open(
            '/apiv2/qs/{id}/insert_cd'.format(id=56),
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_qs_invoices(self):
        """Test case for get_qs_invoices

        List billing invoices charged for one QuickServer service
        """
        response = self.client.open(
            '/apiv2/qs/{id}/invoices'.format(id=56),
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_qs_list(self):
        """Test case for get_qs_list

        List QuickServer rapid-deploy dedicated servers on the account
        """
        response = self.client.open(
            '/apiv2/qs',
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_qs_reinstall_os(self):
        """Test case for get_qs_reinstall_os

        List OS templates available for a QuickServer reinstall
        """
        response = self.client.open(
            '/apiv2/qs/{id}/reinstall_os'.format(id=56),
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_qs_reset_password(self):
        """Test case for get_qs_reset_password

        Get options for QuickServer randomized root password reset
        """
        response = self.client.open(
            '/apiv2/qs/{id}/reset_password'.format(id=56),
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_qs_reverse_dns(self):
        """Test case for get_qs_reverse_dns

        Get reverse DNS (PTR) records for all of a QuickServer's IPs
        """
        response = self.client.open(
            '/apiv2/qs/{id}/reverse_dns'.format(id=56),
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_qs_setup_vnc(self):
        """Test case for get_qs_setup_vnc

        Get current VNC console connection details for a QuickServer
        """
        response = self.client.open(
            '/apiv2/qs/{id}/setup_vnc'.format(id=56),
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_qs_traffic_usage(self):
        """Test case for get_qs_traffic_usage

        Get bandwidth usage for the QuickServer's current billing period
        """
        response = self.client.open(
            '/apiv2/qs/{id}/traffic_usage'.format(id=56),
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_qs_view_desktop(self):
        """Test case for get_qs_view_desktop

        Get the full QuickServer dashboard view payload (rich format)
        """
        response = self.client.open(
            '/apiv2/qs/{id}/view_desktop'.format(id=56),
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_qs_welcome_email(self):
        """Test case for get_qs_welcome_email

        Resend the QuickServer welcome email with login credentials
        """
        response = self.client.open(
            '/apiv2/qs/{id}/welcome_email'.format(id='id_example'),
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_post_qs_change_hostname(self):
        """Test case for post_qs_change_hostname

        Change a QuickServer's system hostname (OpenVZ/Virtuozzo only)
        """
        response = self.client.open(
            '/apiv2/qs/{id}/change_hostname'.format(id=56),
            method='POST')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_post_qs_change_root_password(self):
        """Test case for post_qs_change_root_password

        Change QuickServer root/administrator password to a chosen value
        """
        response = self.client.open(
            '/apiv2/qs/{id}/change_root_password'.format(id=56),
            method='POST')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_post_qs_change_timezone(self):
        """Test case for post_qs_change_timezone

        Change the system timezone on a QuickServer to a catalog entry
        """
        body = TimezoneUpdate()
        data = dict(timezone='timezone_example')
        response = self.client.open(
            '/apiv2/qs/{id}/change_timezone'.format(id=56),
            method='POST',
            data=json.dumps(body),
            data=data,
            content_type='multipart/form-data')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_post_qs_change_webuzo_password(self):
        """Test case for post_qs_change_webuzo_password

        Change Webuzo control panel admin password live (synchronous, not queued)
        """
        response = self.client.open(
            '/apiv2/qs/{id}/change_webuzo_password'.format(id=56),
            method='POST')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_post_qs_insert_cd(self):
        """Test case for post_qs_insert_cd

        Mount an ISO image as the QuickServer's virtual CD via URL
        """
        response = self.client.open(
            '/apiv2/qs/{id}/insert_cd'.format(id=56),
            method='POST')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_post_qs_reinstall_os(self):
        """Test case for post_qs_reinstall_os

        Reinstall the operating system on a QuickServer (DESTRUCTIVE — wipes disk)
        """
        response = self.client.open(
            '/apiv2/qs/{id}/reinstall_os'.format(id=56),
            method='POST')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_post_qs_reset_password(self):
        """Test case for post_qs_reset_password

        Reset QuickServer root password to a server-generated random value
        """
        response = self.client.open(
            '/apiv2/qs/{id}/reset_password'.format(id=56),
            method='POST')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_post_qs_reverse_dns(self):
        """Test case for post_qs_reverse_dns

        Update reverse DNS (PTR) records for a QuickServer's IPs
        """
        body = ReverseDnsEntries()
        data = dict(ips=None)
        response = self.client.open(
            '/apiv2/qs/{id}/reverse_dns'.format(id=56),
            method='POST',
            data=json.dumps(body),
            data=data,
            content_type='application/json')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_post_qs_setup_vnc(self):
        """Test case for post_qs_setup_vnc

        Configure the source IP allowed to reach a QuickServer's VNC console
        """
        response = self.client.open(
            '/apiv2/qs/{id}/setup_vnc'.format(id=56),
            method='POST')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_post_qs_traffic_usage(self):
        """Test case for post_qs_traffic_usage

        Query QuickServer bandwidth usage via POST (filtered variant)
        """
        response = self.client.open(
            '/apiv2/qs/{id}/traffic_usage'.format(id=56),
            method='POST')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_post_qs_view_desktop(self):
        """Test case for post_qs_view_desktop

        Submit changes and re-fetch the QuickServer dashboard view payload
        """
        response = self.client.open(
            '/apiv2/qs/{id}/view_desktop'.format(id=56),
            method='POST')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_post_quick_server_restore(self):
        """Test case for post_quick_server_restore

        Restore a QuickServer from a backup (DESTRUCTIVE — overwrites disk)
        """
        body = RestoreRequest()
        data = dict(backup='backup_example',
                    password='password_example')
        response = self.client.open(
            '/apiv2/qs/{id}/restore'.format(id=56),
            method='POST',
            data=json.dumps(body),
            data=data,
            content_type='application/json')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_put_qs(self):
        """Test case for put_qs

        Validate a QuickServer order without charging or provisioning
        """
        body = QsOrderRequest()
        response = self.client.open(
            '/apiv2/qs/order',
            method='PUT',
            data=json.dumps(body),
            content_type='application/json')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_quickservers_cancel(self):
        """Test case for quickservers_cancel

        Cancel a QuickServer service at the end of the current billing cycle
        """
        response = self.client.open(
            '/apiv2/qs/{id}'.format(id=56),
            method='DELETE')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_update_qs_info(self):
        """Test case for update_qs_info

        Update QuickServer order metadata or stored settings without OS impact
        """
        response = self.client.open(
            '/apiv2/qs/{id}'.format(id='id_example'),
            method='POST')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))


if __name__ == '__main__':
    import unittest
    unittest.main()
