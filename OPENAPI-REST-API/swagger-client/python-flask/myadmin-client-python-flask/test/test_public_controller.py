# coding: utf-8

from __future__ import absolute_import

from flask import json
from six import BytesIO

from myadmin-client-python-flask.models.buy_it_now_list import BuyItNowList  # noqa: E501
from myadmin-client-python-flask.models.captcha_response import CaptchaResponse  # noqa: E501
from myadmin-client-python-flask.models.inline_response2006 import InlineResponse2006  # noqa: E501
from myadmin-client-python-flask.models.inline_response2007 import InlineResponse2007  # noqa: E501
from myadmin-client-python-flask.models.inline_response2008 import InlineResponse2008  # noqa: E501
from myadmin-client-python-flask.models.inline_response401 import InlineResponse401  # noqa: E501
from myadmin-client-python-flask.models.inline_response_map200 import InlineResponseMap200  # noqa: E501
from myadmin-client-python-flask.models.login_error_response import LoginErrorResponse  # noqa: E501
from myadmin-client-python-flask.models.login_info import LoginInfo  # noqa: E501
from myadmin-client-python-flask.models.login_submission_example import LoginSubmissionExample  # noqa: E501
from myadmin-client-python-flask.models.login_submission_example_grecaptcharesponse import LoginSubmissionExampleGrecaptcharesponse  # noqa: E501
from myadmin-client-python-flask.models.login_success_response import LoginSuccessResponse  # noqa: E501
from myadmin-client-python-flask.models.oauth_body import OauthBody  # noqa: E501
from myadmin-client-python-flask.models.oauth_body2 import OauthBody2  # noqa: E501
from myadmin-client-python-flask.models.services_info import ServicesInfo  # noqa: E501
from myadmin-client-python-flask.test import BaseTestCase


class TestPublicController(BaseTestCase):
    """PublicController integration test stubs"""

    def test_get_account_currencies(self):
        """Test case for get_account_currencies

        List enabled currency codes accepted for billing and preferences
        """
        response = self.client.open(
            '/apiv2/account/currencies',
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_account_locales(self):
        """Test case for get_account_locales

        List supported UI locales with English and native display names
        """
        response = self.client.open(
            '/apiv2/account/locales',
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_captcha(self):
        """Test case for get_captcha

        Fetch a base64 JPEG captcha challenge for human verification
        """
        response = self.client.open(
            '/apiv2/captcha',
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_countries(self):
        """Test case for get_countries

        List enabled countries keyed by ISO-2/ISO-3/numeric code
        """
        query_string = [('fetch_by', 'fetch_by_example')]
        response = self.client.open(
            '/apiv2/account/countries',
            method='GET',
            query_string=query_string)
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_info(self):
        """Test case for get_info

        Discover available modules, service packages, categories, and types
        """
        response = self.client.open(
            '/apiv2/info',
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_login_info(self):
        """Test case for get_login_info

        Fetch logo, captcha, language, and stats for rendering a login page
        """
        response = self.client.open(
            '/apiv2/login',
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

    def test_get_oauth_redirect(self):
        """Test case for get_oauth_redirect

        Begin OAuth login flow — redirect user to provider for authentication
        """
        query_string = [('provider', 'provider_example')]
        response = self.client.open(
            '/apiv2/oauth',
            method='GET',
            query_string=query_string)
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_timezones(self):
        """Test case for get_timezones

        List all PHP timezone identifiers usable on accounts and services
        """
        response = self.client.open(
            '/apiv2/account/timezones',
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_patch_oauth_two_factor(self):
        """Test case for patch_oauth_two_factor

        Submit 2FA code to finish OAuth login when account has 2FA enabled
        """
        body = OauthBody2()
        data = dict(account_id=56,
                    code='code_example')
        response = self.client.open(
            '/apiv2/oauth',
            method='PATCH',
            data=json.dumps(body),
            data=data,
            content_type='application/json')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_ping_server(self):
        """Test case for ping_server

        Liveness check — returns the JSON string \"pong\" to confirm API is up
        """
        response = self.client.open(
            '/apiv2/ping',
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_post_oauth_callback(self):
        """Test case for post_oauth_callback

        Complete OAuth login by linking provider to existing or new account
        """
        body = OauthBody()
        query_string = [('provider', 'provider_example')]
        data = dict(provider='provider_example')
        response = self.client.open(
            '/apiv2/oauth',
            method='POST',
            data=json.dumps(body),
            data=data,
            content_type='application/json',
            query_string=query_string)
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_submit_login(self):
        """Test case for submit_login

        Authenticate with email + password and return a session token
        """
        body = LoginSubmissionExample()
        data = dict(login='login_example',
                    passwd='passwd_example',
                    remember='remember_example',
                    g_recaptcha_response=LoginSubmissionExampleGrecaptcharesponse(),
                    tfa='tfa_example')
        response = self.client.open(
            '/apiv2/login',
            method='POST',
            data=json.dumps(body),
            data=data,
            content_type='multipart/form-data')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_submit_signup(self):
        """Test case for submit_signup

        Create a new customer account (email + password + captcha + ToS)
        """
        body = LoginSubmissionExample()
        response = self.client.open(
            '/apiv2/signup',
            method='POST',
            data=json.dumps(body),
            content_type='application/json')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))


if __name__ == '__main__':
    import unittest
    unittest.main()
