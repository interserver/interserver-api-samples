# coding: utf-8

from __future__ import absolute_import

from flask import json
from six import BytesIO

from myadmin-client-python-flask.models.charge_invoice_rows import ChargeInvoiceRows  # noqa: E501
from myadmin-client-python-flask.models.hostname_object import HostnameObject  # noqa: E501
from myadmin-client-python-flask.models.id_backups_body2 import IdBackupsBody2  # noqa: E501
from myadmin-client-python-flask.models.inline_response20012 import InlineResponse20012  # noqa: E501
from myadmin-client-python-flask.models.inline_response20024 import InlineResponse20024  # noqa: E501
from myadmin-client-python-flask.models.inline_response401 import InlineResponse401  # noqa: E501
from myadmin-client-python-flask.models.password_request import PasswordRequest  # noqa: E501
from myadmin-client-python-flask.models.queue_response import QueueResponse  # noqa: E501
from myadmin-client-python-flask.models.restore_request import RestoreRequest  # noqa: E501
from myadmin-client-python-flask.models.reverse_dns_entries import ReverseDnsEntries  # noqa: E501
from myadmin-client-python-flask.models.service_order_post_response import ServiceOrderPostResponse  # noqa: E501
from myadmin-client-python-flask.models.success_text_response import SuccessTextResponse  # noqa: E501
from myadmin-client-python-flask.models.template_request import TemplateRequest  # noqa: E501
from myadmin-client-python-flask.models.text_response import TextResponse  # noqa: E501
from myadmin-client-python-flask.models.timezone_update import TimezoneUpdate  # noqa: E501
from myadmin-client-python-flask.models.url_request import UrlRequest  # noqa: E501
from myadmin-client-python-flask.models.vps import Vps  # noqa: E501
from myadmin-client-python-flask.models.vps_backup_rows import VpsBackupRows  # noqa: E501
from myadmin-client-python-flask.models.vps_order import VpsOrder  # noqa: E501
from myadmin-client-python-flask.models.vps_order_post_request import VpsOrderPostRequest  # noqa: E501
from myadmin-client-python-flask.models.vps_order_put_request import VpsOrderPutRequest  # noqa: E501
from myadmin-client-python-flask.models.vps_order_put_response import VpsOrderPutResponse  # noqa: E501
from myadmin-client-python-flask.models.vps_row import VpsRow  # noqa: E501
from myadmin-client-python-flask.models.vps_templates_list import VpsTemplatesList  # noqa: E501
from myadmin-client-python-flask.models.vps_traffic_response import VpsTrafficResponse  # noqa: E501
from myadmin-client-python-flask.test import BaseTestCase


class TestVPSController(BaseTestCase):
    """VPSController integration test stubs"""

    def test_add_vps(self):
        """Test case for add_vps

        Place a new VPS order, create the invoice, and queue provisioning
        """
        body = VpsOrderPostRequest()
        data = dict(os_distro='os_distro_example',
                    slices=32,
                    vps_platform='vps_platform_example',
                    controlpanel='controlpanel_example',
                    period=12,
                    location=3,
                    os_version='os_version_example',
                    hostname='hostname_example',
                    coupon='coupon_example',
                    rootpass='rootpass_example',
                    comment='comment_example')
        response = self.client.open(
            '/apiv2/vps/order',
            method='POST',
            data=json.dumps(body),
            data=data,
            content_type='application/json')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_delete_vps_backup(self):
        """Test case for delete_vps_backup

        Permanently delete a VPS backup file by name (irreversible)
        """
        query_string = [('all', 'all_example'),
                        ('file', 'file_example')]
        response = self.client.open(
            '/apiv2/vps/{id}/backups'.format(id=56),
            method='DELETE',
            query_string=query_string)
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_do_vps_block_smtp(self):
        """Test case for do_vps_block_smtp

        Block outbound SMTP (port 25) on the VPS to prevent spam/abuse
        """
        response = self.client.open(
            '/apiv2/vps/{id}/block_smtp'.format(id=56),
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_do_vps_disable_cd(self):
        """Test case for do_vps_disable_cd

        Remove the virtual CD/DVD device entirely from the VPS configuration
        """
        response = self.client.open(
            '/apiv2/vps/{id}/disable_cd'.format(id=56),
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_do_vps_disable_quota(self):
        """Test case for do_vps_disable_quota

        Disable per-user disk quota enforcement inside the VPS guest OS
        """
        response = self.client.open(
            '/apiv2/vps/{id}/disable_quota'.format(id=56),
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_do_vps_eject_cd(self):
        """Test case for do_vps_eject_cd

        Eject the mounted ISO from the VPS virtual CD drive (keep the drive)
        """
        response = self.client.open(
            '/apiv2/vps/{id}/eject_cd'.format(id=56),
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_do_vps_enable_quota(self):
        """Test case for do_vps_enable_quota

        Enable per-user disk quota enforcement inside the VPS guest OS
        """
        response = self.client.open(
            '/apiv2/vps/{id}/enable_quota'.format(id=56),
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_do_vps_restart(self):
        """Test case for do_vps_restart

        Reboot the VPS — preferred over stop+start for software changes
        """
        response = self.client.open(
            '/apiv2/vps/{id}/restart'.format(id=56),
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_do_vps_start(self):
        """Test case for do_vps_start

        Power on a stopped VPS instance
        """
        response = self.client.open(
            '/apiv2/vps/{id}/start'.format(id=56),
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_do_vps_stop(self):
        """Test case for do_vps_stop

        Power off a running VPS — billing continues until cancellation
        """
        response = self.client.open(
            '/apiv2/vps/{id}/stop'.format(id=56),
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_download_vps_backup(self):
        """Test case for download_vps_backup

        Issue a 24-hour pre-signed URL to download a MinIO-backed VPS backup
        """
        body = IdBackupsBody2()
        query_string = [('all', 'all_example')]
        data = dict(file='file_example')
        response = self.client.open(
            '/apiv2/vps/{id}/backups'.format(id=56),
            method='PATCH',
            data=json.dumps(body),
            data=data,
            content_type='application/json',
            query_string=query_string)
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_new_vps(self):
        """Test case for get_new_vps

        Get the VPS order catalog — platforms, OS templates, locations, pricing
        """
        response = self.client.open(
            '/apiv2/vps/order',
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_vps_backup(self):
        """Test case for get_vps_backup

        Trigger a manual on-demand snapshot/backup of the VPS
        """
        response = self.client.open(
            '/apiv2/vps/{id}/backup'.format(id=56),
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_vps_backups(self):
        """Test case for get_vps_backups

        List existing backups for the VPS across Swift, MinIO, and ZFS
        """
        query_string = [('all', 'all_example')]
        response = self.client.open(
            '/apiv2/vps/{id}/backups'.format(id=56),
            method='GET',
            query_string=query_string)
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_vps_buy_hd_space(self):
        """Test case for get_vps_buy_hd_space

        Get current additional disk size and per-GB monthly cost for the VPS
        """
        response = self.client.open(
            '/apiv2/vps/{id}/buy_hd_space'.format(id=56),
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_vps_buy_ip(self):
        """Test case for get_vps_buy_ip

        Read current additional IPs, cap, and per-IP monthly cost for the VPS
        """
        response = self.client.open(
            '/apiv2/vps/{id}/buy_ip'.format(id=56),
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_vps_change_hostname(self):
        """Test case for get_vps_change_hostname

        Read the VPS's current hostname before changing it
        """
        response = self.client.open(
            '/apiv2/vps/{id}/change_hostname'.format(id=56),
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_vps_change_root_password(self):
        """Test case for get_vps_change_root_password

        Pre-flight check before changing the VPS root password
        """
        response = self.client.open(
            '/apiv2/vps/{id}/change_root_password'.format(id=56),
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_vps_change_timezone(self):
        """Test case for get_vps_change_timezone

        List IANA timezones supported by the VPS guest OS
        """
        response = self.client.open(
            '/apiv2/vps/{id}/change_timezone'.format(id=56),
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_vps_info(self):
        """Test case for get_vps_info

        Get full details for one VPS — IPs, hostname, OS, slices, status, addons
        """
        response = self.client.open(
            '/apiv2/vps/{id}'.format(id=56),
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_vps_insert_cd(self):
        """Test case for get_vps_insert_cd

        List ISO templates that can be mounted in the VPS virtual CD drive
        """
        response = self.client.open(
            '/apiv2/vps/{id}/insert_cd'.format(id=56),
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_vps_invoices(self):
        """Test case for get_vps_invoices

        List all billing invoices associated with this specific VPS
        """
        response = self.client.open(
            '/apiv2/vps/{id}/invoices'.format(id=56),
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_vps_list(self):
        """Test case for get_vps_list

        List all VPS services on the customer's account
        """
        response = self.client.open(
            '/apiv2/vps',
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_vps_reinstall_os(self):
        """Test case for get_vps_reinstall_os

        List OS templates compatible with this VPS's hypervisor for reinstall
        """
        response = self.client.open(
            '/apiv2/vps/{id}/reinstall_os'.format(id=56),
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_vps_reset_password(self):
        """Test case for get_vps_reset_password

        Pre-flight check before resetting the VPS root password to a random value
        """
        response = self.client.open(
            '/apiv2/vps/{id}/reset_password'.format(id=56),
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_vps_reverse_dns(self):
        """Test case for get_vps_reverse_dns

        Read the current PTR (reverse-DNS) records for every IP on the VPS
        """
        response = self.client.open(
            '/apiv2/vps/{id}/reverse_dns'.format(id=56),
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_vps_setup_vnc(self):
        """Test case for get_vps_setup_vnc

        Read current VNC console connection info for the VPS
        """
        response = self.client.open(
            '/apiv2/vps/{id}/setup_vnc'.format(id=56),
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_vps_slices(self):
        """Test case for get_vps_slices

        Read current slice count, min/max range, and prorated per-slice upgrade cost
        """
        response = self.client.open(
            '/apiv2/vps/{id}/slices'.format(id=56),
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_vps_traffic_usage(self):
        """Test case for get_vps_traffic_usage

        Read bandwidth traffic usage data for the VPS
        """
        response = self.client.open(
            '/apiv2/vps/{id}/traffic_usage'.format(id=56),
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_vps_view_desktop(self):
        """Test case for get_vps_view_desktop

        Read remote-desktop (RDP/HTML5) connection info for a Windows/GUI VPS
        """
        response = self.client.open(
            '/apiv2/vps/{id}/view_desktop'.format(id=56),
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_vps_welcome_email(self):
        """Test case for get_vps_welcome_email

        Resend the welcome email containing VPS IP, hostname, and root credentials
        """
        response = self.client.open(
            '/apiv2/vps/{id}/welcome_email'.format(id='id_example'),
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_post_vps_buy_hd_space(self):
        """Test case for post_vps_buy_hd_space

        Buy or resize the VPS additional-disk addon and create a prorated invoice
        """
        response = self.client.open(
            '/apiv2/vps/{id}/buy_hd_space'.format(id=56),
            method='POST')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_post_vps_buy_ip(self):
        """Test case for post_vps_buy_ip

        Purchase one additional IP for the VPS and create the invoice
        """
        response = self.client.open(
            '/apiv2/vps/{id}/buy_ip'.format(id=56),
            method='POST')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_post_vps_change_hostname(self):
        """Test case for post_vps_change_hostname

        Rename the VPS hostname (OpenVZ/Virtuozzo only) and auto-set PTR for the primary IP
        """
        body = HostnameObject()
        data = dict(hostname='hostname_example')
        response = self.client.open(
            '/apiv2/vps/{id}/change_hostname'.format(id=56),
            method='POST',
            data=json.dumps(body),
            data=data,
            content_type='multipart/form-data')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_post_vps_change_root_password(self):
        """Test case for post_vps_change_root_password

        Set a specific new root/Administrator password on the VPS
        """
        body = PasswordRequest()
        data = dict(password='password_example')
        response = self.client.open(
            '/apiv2/vps/{id}/change_root_password'.format(id=56),
            method='POST',
            data=json.dumps(body),
            data=data,
            content_type='multipart/form-data')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_post_vps_change_timezone(self):
        """Test case for post_vps_change_timezone

        Set the system timezone on the VPS guest OS
        """
        body = TimezoneUpdate()
        data = dict(timezone='timezone_example')
        response = self.client.open(
            '/apiv2/vps/{id}/change_timezone'.format(id=56),
            method='POST',
            data=json.dumps(body),
            data=data,
            content_type='multipart/form-data')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_post_vps_change_webuzo_password(self):
        """Test case for post_vps_change_webuzo_password

        Rotate the Webuzo control panel admin password (re-auth required)
        """
        body = PasswordRequest()
        data = dict(password='password_example')
        response = self.client.open(
            '/apiv2/vps/{id}/change_webuzo_password'.format(id=56),
            method='POST',
            data=json.dumps(body),
            data=data,
            content_type='multipart/form-data')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_post_vps_insert_cd(self):
        """Test case for post_vps_insert_cd

        Mount an ISO image in the VPS virtual CD drive from a URL
        """
        body = UrlRequest()
        data = dict(url='url_example')
        response = self.client.open(
            '/apiv2/vps/{id}/insert_cd'.format(id=56),
            method='POST',
            data=json.dumps(body),
            data=data,
            content_type='multipart/form-data')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_post_vps_reinstall_os(self):
        """Test case for post_vps_reinstall_os

        Reinstall the VPS OS (DESTRUCTIVE — wipes disk; requires re-auth)
        """
        body = TemplateRequest()
        data = dict(template='template_example',
                    password='password_example',
                    local_password='local_password_example')
        response = self.client.open(
            '/apiv2/vps/{id}/reinstall_os'.format(id=56),
            method='POST',
            data=json.dumps(body),
            data=data,
            content_type='multipart/form-data')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_post_vps_reset_password(self):
        """Test case for post_vps_reset_password

        Reset the VPS root password to a server-generated random value
        """
        response = self.client.open(
            '/apiv2/vps/{id}/reset_password'.format(id=56),
            method='POST')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_post_vps_restore(self):
        """Test case for post_vps_restore

        Restore the VPS from a backup (DESTRUCTIVE — overwrites disk)
        """
        body = RestoreRequest()
        data = dict(backup='backup_example',
                    password='password_example')
        response = self.client.open(
            '/apiv2/vps/{id}/restore'.format(id=56),
            method='POST',
            data=json.dumps(body),
            data=data,
            content_type='application/json')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_post_vps_reverse_dns(self):
        """Test case for post_vps_reverse_dns

        Bulk-update PTR (reverse-DNS) records for one or more VPS IPs
        """
        body = ReverseDnsEntries()
        data = dict(ips=None)
        response = self.client.open(
            '/apiv2/vps/{id}/reverse_dns'.format(id=56),
            method='POST',
            data=json.dumps(body),
            data=data,
            content_type='application/json')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_post_vps_setup_vnc(self):
        """Test case for post_vps_setup_vnc

        Provision or refresh the VNC console endpoint for the VPS
        """
        response = self.client.open(
            '/apiv2/vps/{id}/setup_vnc'.format(id=56),
            method='POST')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_post_vps_slices(self):
        """Test case for post_vps_slices

        Upgrade or downgrade the VPS slice count (creates prorated invoice on upgrade)
        """
        response = self.client.open(
            '/apiv2/vps/{id}/slices'.format(id=56),
            method='POST')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_post_vps_traffic_usage(self):
        """Test case for post_vps_traffic_usage

        Search/filter VPS bandwidth usage with custom criteria (reserved)
        """
        response = self.client.open(
            '/apiv2/vps/{id}/traffic_usage'.format(id=56),
            method='POST')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_post_vps_view_desktop(self):
        """Test case for post_vps_view_desktop

        Refresh the remote-desktop session connection info after IP/hostname changes
        """
        response = self.client.open(
            '/apiv2/vps/{id}/view_desktop'.format(id=56),
            method='POST')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_put_vps(self):
        """Test case for put_vps

        Validate a VPS order configuration and quote the cost — dry run, no charge
        """
        body = VpsOrderPutRequest()
        data = dict(os_distro='os_distro_example',
                    slices=32,
                    vps_platform='vps_platform_example',
                    controlpanel='controlpanel_example',
                    period=12,
                    location=3,
                    os_version='os_version_example',
                    hostname='hostname_example',
                    coupon='coupon_example',
                    rootpass='rootpass_example',
                    comment='comment_example')
        response = self.client.open(
            '/apiv2/vps/order',
            method='PUT',
            data=json.dumps(body),
            data=data,
            content_type='application/json')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_put_vps_buy_hd_space(self):
        """Test case for put_vps_buy_hd_space

        Preview cost to set additional VPS disk to a target GB size — dry run
        """
        response = self.client.open(
            '/apiv2/vps/{id}/buy_hd_space'.format(id=56),
            method='PUT')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_update_vps_info(self):
        """Test case for update_vps_info

        Update editable settings on a VPS service record
        """
        response = self.client.open(
            '/apiv2/vps/{id}'.format(id='id_example'),
            method='POST')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_vps_cancel(self):
        """Test case for vps_cancel

        Cancel a VPS service at the end of the current billing cycle
        """
        response = self.client.open(
            '/apiv2/vps/{id}'.format(id=56),
            method='DELETE')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))


if __name__ == '__main__':
    import unittest
    unittest.main()
