# coding: utf-8

from __future__ import absolute_import

from flask import json
from six import BytesIO

from myadmin-client-python-flask.models.account2fa_body1 import Account2faBody1  # noqa: E501
from myadmin-client-python-flask.models.account_features import AccountFeatures  # noqa: E501
from myadmin-client-python-flask.models.account_info import AccountInfo  # noqa: E501
from myadmin-client-python-flask.models.account_info_post import AccountInfoPost  # noqa: E501
from myadmin-client-python-flask.models.account_ssh_key import AccountSshKey  # noqa: E501
from myadmin-client-python-flask.models.generic_response import GenericResponse  # noqa: E501
from myadmin-client-python-flask.models.home import Home  # noqa: E501
from myadmin-client-python-flask.models.inline_response200 import InlineResponse200  # noqa: E501
from myadmin-client-python-flask.models.inline_response401 import InlineResponse401  # noqa: E501
from myadmin-client-python-flask.models.ip_limit_range import IpLimitRange  # noqa: E501
from myadmin-client-python-flask.models.password_request import PasswordRequest  # noqa: E501
from myadmin-client-python-flask.models.search_autocomplete_response import SearchAutocompleteResponse  # noqa: E501
from myadmin-client-python-flask.models.success_text_response import SuccessTextResponse  # noqa: E501
from myadmin-client-python-flask.models.text_response import TextResponse  # noqa: E501
from myadmin-client-python-flask.test import BaseTestCase


class TestAccountController(BaseTestCase):
    """AccountController integration test stubs"""

    def test_delete_account_oauth_name(self):
        """Test case for delete_account_oauth_name

        Unlink a third-party OAuth/social provider (Google, GitHub, etc.) from the account
        """
        response = self.client.open(
            '/apiv2/account/oauth/{name}'.format(name='name_example'),
            method='DELETE')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_delete_account_tfa(self):
        """Test case for delete_account_tfa

        Disable two-factor authentication and remove the TOTP secret
        """
        response = self.client.open(
            '/apiv2/account/2fa',
            method='DELETE')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_delete_ip_limit(self):
        """Test case for delete_ip_limit

        Remove one IP range from the account allow-list (PATCH on /account/iplimits)
        """
        body = IpLimitRange()
        response = self.client.open(
            '/apiv2/account/iplimits',
            method='PATCH',
            data=json.dumps(body),
            content_type='application/json')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_account_info(self):
        """Test case for get_account_info

        Read full account profile, billing address, and security settings
        """
        response = self.client.open(
            '/apiv2/account',
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_account_tfa_setup(self):
        """Test case for get_account_tfa_setup

        Fetch TOTP secret to enroll a 2FA authenticator app (Google Authenticator etc.)
        """
        response = self.client.open(
            '/apiv2/account/2fa',
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_home(self):
        """Test case for get_home

        Aggregate dashboard payload — service counts, recent activity, alerts
        """
        response = self.client.open(
            '/apiv2/home',
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_search(self):
        """Test case for get_search

        Global autocomplete across the caller's services, domains, and records
        """
        response = self.client.open(
            '/apiv2/search',
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_logout(self):
        """Test case for logout

        Destroy the current API/web session — token becomes unusable
        """
        response = self.client.open(
            '/apiv2/logout',
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_logout_account_oauth(self):
        """Test case for logout_account_oauth

        Sign out of the upstream OAuth provider session (does not unlink the account)
        """
        response = self.client.open(
            '/apiv2/account/oauth/{name}/logout'.format(name='name_example'),
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_update_account_api_key(self):
        """Test case for update_account_api_key

        Rotate the account's REST/MCP API key — old key is invalidated immediately
        """
        response = self.client.open(
            '/apiv2/account/apikey',
            method='POST')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_update_account_features(self):
        """Test case for update_account_features

        Toggle account-wide safety locks for password reset and OS reinstall
        """
        body = AccountFeatures()
        data = dict(disable_reset=56,
                    disable_reinstall=56)
        response = self.client.open(
            '/apiv2/account/features',
            method='POST',
            data=json.dumps(body),
            data=data,
            content_type='multipart/form-data')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_update_account_info(self):
        """Test case for update_account_info

        Update contact and billing-address fields on the customer profile
        """
        body = AccountInfoPost()
        data = dict(name='name_example',
                    company='company_example',
                    address='address_example',
                    address2='address2_example',
                    city='city_example',
                    state='state_example',
                    zip='zip_example',
                    country='country_example',
                    phone='phone_example',
                    locale='locale_example',
                    email_invoices='email_invoices_example',
                    email_abuse='email_abuse_example',
                    disable_reset=true,
                    disable_reinstall=true,
                    disable_server_notifications=true,
                    disable_email_notifications=true,
                    gstin='gstin_example')
        response = self.client.open(
            '/apiv2/account',
            method='POST',
            data=json.dumps(body),
            data=data,
            content_type='multipart/form-data')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_update_account_ip_limits(self):
        """Test case for update_account_ip_limits

        Add an IP CIDR/range to the account's API+web allow-list (lockout-safe)
        """
        body = IpLimitRange()
        data = dict(start='start_example',
                    end='end_example')
        response = self.client.open(
            '/apiv2/account/iplimits',
            method='POST',
            data=json.dumps(body),
            data=data,
            content_type='multipart/form-data')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_update_account_password(self):
        """Test case for update_account_password

        Change the account login password (verifies current, kills other sessions)
        """
        body = PasswordRequest()
        data = dict(password='password_example')
        response = self.client.open(
            '/apiv2/account/password',
            method='POST',
            data=json.dumps(body),
            data=data,
            content_type='multipart/form-data')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_update_account_ssh_key(self):
        """Test case for update_account_ssh_key

        Set the account-level SSH public key auto-installed on new VPS/dedicated orders
        """
        body = AccountSshKey()
        data = dict(ssh_key='ssh_key_example')
        response = self.client.open(
            '/apiv2/account/sshkey',
            method='POST',
            data=json.dumps(body),
            data=data,
            content_type='multipart/form-data')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_update_account_tfa(self):
        """Test case for update_account_tfa

        Verify TOTP code and enable two-factor authentication on the account
        """
        body = Account2faBody1()
        data = dict(_2fa_google_code='_2fa_google_code_example')
        response = self.client.open(
            '/apiv2/account/2fa',
            method='POST',
            data=json.dumps(body),
            data=data,
            content_type='multipart/form-data')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))


if __name__ == '__main__':
    import unittest
    unittest.main()
