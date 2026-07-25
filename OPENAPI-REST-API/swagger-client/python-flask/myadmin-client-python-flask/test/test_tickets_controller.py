# coding: utf-8

from __future__ import absolute_import

from flask import json
from six import BytesIO

from myadmin-client-python-flask.models.close_ticket_response_schema import CloseTicketResponseSchema  # noqa: E501
from myadmin-client-python-flask.models.inline_response401 import InlineResponse401  # noqa: E501
from myadmin-client-python-flask.models.reply_ticket_request import ReplyTicketRequest  # noqa: E501
from myadmin-client-python-flask.models.reply_ticket_response_schema import ReplyTicketResponseSchema  # noqa: E501
from myadmin-client-python-flask.models.ticket_new import TicketNew  # noqa: E501
from myadmin-client-python-flask.models.ticket_new_response import TicketNewResponse  # noqa: E501
from myadmin-client-python-flask.models.tickets import Tickets  # noqa: E501
from myadmin-client-python-flask.models.update_ticket import UpdateTicket  # noqa: E501
from myadmin-client-python-flask.models.update_ticket_response_schema import UpdateTicketResponseSchema  # noqa: E501
from myadmin-client-python-flask.models.view_ticket_response import ViewTicketResponse  # noqa: E501
from myadmin-client-python-flask.test import BaseTestCase


class TestTicketsController(BaseTestCase):
    """TicketsController integration test stubs"""

    def test_add_new_ticket(self):
        """Test case for add_new_ticket

        Open a new helpdesk ticket, optionally linked to a service and attachments
        """
        body = TicketNew()
        data = dict(subject='subject_example',
                    body='body_example',
                    service_id=56,
                    service_module='service_module_example')
        response = self.client.open(
            '/apiv2/tickets/new',
            method='POST',
            data=json.dumps(body),
            data=data,
            content_type='application/json')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_close_ticket(self):
        """Test case for close_ticket

        Close an open support ticket via simple GET request (no body required)
        """
        response = self.client.open(
            '/apiv2/tickets/{id}/close'.format(id='id_example'),
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_delete_ticket_info(self):
        """Test case for delete_ticket_info

        Close a customer ticket via DELETE verb (closes only, never destroys data)
        """
        response = self.client.open(
            '/apiv2/tickets/{id}'.format(id=1.2),
            method='DELETE')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_new_ticket(self):
        """Test case for get_new_ticket

        Fetch services and product options to populate the new-ticket form
        """
        response = self.client.open(
            '/apiv2/tickets/new',
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_ticket_info(self):
        """Test case for get_ticket_info

        Get full ticket details including subject, status, and the reply thread
        """
        response = self.client.open(
            '/apiv2/tickets/{id}'.format(id=1.2),
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_get_tickets_list(self):
        """Test case for get_tickets_list

        List the authenticated account's support tickets with status and date filters
        """
        query_string = [('page', 1),
                        ('period', '30'),
                        ('view', 'view_example')]
        response = self.client.open(
            '/apiv2/tickets',
            method='GET',
            query_string=query_string)
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_post_ticket_info(self):
        """Test case for post_ticket_info

        Append a reply (and optional attachment, server-access fields) to a ticket
        """
        response = self.client.open(
            '/apiv2/tickets/{id}'.format(id=1.2),
            method='POST')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_post_tickets_list(self):
        """Test case for post_tickets_list

        Search the authenticated account's tickets by subject, email, or mask ID
        """
        response = self.client.open(
            '/apiv2/tickets',
            method='POST')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_put_ticket_info(self):
        """Test case for put_ticket_info

        Update a ticket's properties such as subject or status (stub, not implemented)
        """
        response = self.client.open(
            '/apiv2/tickets/{id}'.format(id=1.2),
            method='PUT')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_reply_ticket(self):
        """Test case for reply_ticket

        Post a simple text reply to an existing ticket thread (no attachments)
        """
        body = ReplyTicketRequest()
        data = dict(content='content_example')
        response = self.client.open(
            '/apiv2/tickets/{id}/reply'.format(id=1.2),
            method='POST',
            data=json.dumps(body),
            data=data,
            content_type='application/json')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))

    def test_update_ticket_info(self):
        """Test case for update_ticket_info

        Update a ticket's custom field values (server-access details, etc.)
        """
        body = UpdateTicket()
        data = dict(ip='ip_example',
                    ip_address='ip_address_example',
                    customer_server_access='customer_server_access_example',
                    root_password='root_password_example',
                    sudo_username='sudo_username_example',
                    sudo_password='sudo_password_example',
                    port=56)
        response = self.client.open(
            '/apiv2/tickets/{id}/update'.format(id=1.2),
            method='POST',
            data=json.dumps(body),
            data=data,
            content_type='application/json')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))


if __name__ == '__main__':
    import unittest
    unittest.main()
