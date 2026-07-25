const samples = require('../samples/TicketsApi');
const CloseTicketResponseSchema = require('../models/CloseTicketResponseSchema');
const ReplyTicketRequest = require('../models/ReplyTicketRequest');
const ReplyTicketResponseSchema = require('../models/ReplyTicketResponseSchema');
const TicketNew = require('../models/TicketNew');
const TicketNewResponse = require('../models/TicketNewResponse');
const Tickets = require('../models/Tickets');
const UpdateTicket = require('../models/UpdateTicket');
const UpdateTicketResponseSchema = require('../models/UpdateTicketResponseSchema');
const ViewTicketResponse = require('../models/ViewTicketResponse');
const getAccountInfo_401_response = require('../models/getAccountInfo_401_response');
const utils = require('../utils/utils');

module.exports = {
    addNewTicket: {
        key: 'addNewTicket',
        noun: 'Tickets',
        display: {
            label: 'Open a new helpdesk ticket, optionally linked to a service and attachments',
            description: 'Use when the customer wants to contact support. Creates the Kayako ticket in the &#39;New Unassigned&#39; department (id 18). Body (form): subject (string, required), body (string, required), product (string, optional, format &#39;{module}-{service_id}&#39; from getNewTicket), service_id+service_module (alternative to product), attachments[] (optional, each {name, type, content base64}), and optional server-access custom fields ip, root_pass, sudo_user, sudo_pass, port_no, server_access (passwords are AES-encrypted with a generated auth_key). Returns: {success: true, text, ticket: ticketmaskid}. Errors: 400 missing subject or body; 401 unauthorized; 422 ticket creation failure. Sibling: getNewTicket for product list, getTicketInfo to view, ReplyTicket to add replies.',
            hidden: false,
        },
        operation: {
            inputFields: [
                ...TicketNew.fields(),
            ],
            outputFields: [
                ...TicketNewResponse.fields('', false),
            ],
            perform: async (z, bundle) => {
                const options = {
                    url: utils.replacePathParameters('https://my.interserver.net/apiv2/tickets/new'),
                    method: 'POST',
                    removeMissingValuesFrom: { params: true, body: true },
                    headers: {
                        'Content-Type': 'application/json, multipart/form-data',
                        'Accept': 'application/json',
                    },
                    params: {
                    },
                    body: {
                        ...TicketNew.mapping(bundle),
                    },
                }
                return z.request(utils.requestOptionsMiddleware(z, bundle, options)).then((response) => {
                    response.throwForStatus();
                    const results = utils.responseOptionsMiddleware(z, bundle, 'addNewTicket', response.json);
                    return results;
                })
            },
            sample: samples['TicketNewResponseSample']
        }
    },
    closeTicket: {
        key: 'closeTicket',
        noun: 'Tickets',
        display: {
            label: 'Close an open support ticket via simple GET request (no body required)',
            description: 'Use to close a ticket from a link or one-click action — closure-only equivalent of deleteTicketInfo with friendlier semantics. Calls Ticket::closeTicket on the resolved ticket and leaves the record fully readable; closed tickets disappear from the active inbox but remain in getTicketsList when view&#x3D;Closed. Path: id (int ticket ID, e.g. 1511222). Body: none. Returns: {success: true, text: &#39;Ticket is closed!&#39;} or {success: false, text: &#39;Unable to close ticket&#39;}. Errors: 401 unauthorized; 404 implied via &#39;Unable to close ticket&#39; when id is unknown or cross-account. Idempotent on already-closed tickets. Siblings: deleteTicketInfo (DELETE /tickets/{id} — same effect), getTicketInfo to confirm new status.',
            hidden: false,
        },
        operation: {
            inputFields: [
                {
                    key: 'id',
                    label: 'Ticket ID',
                    type: 'string',
                    required: true,
                },
            ],
            outputFields: [
                ...CloseTicketResponseSchema.fields('', false),
            ],
            perform: async (z, bundle) => {
                const options = {
                    url: utils.replacePathParameters('https://my.interserver.net/apiv2/tickets/{id}/close'),
                    method: 'GET',
                    removeMissingValuesFrom: { params: true, body: true },
                    headers: {
                        'Content-Type': '',
                        'Accept': 'application/json',
                    },
                    params: {
                    },
                    body: {
                    },
                }
                return z.request(utils.requestOptionsMiddleware(z, bundle, options)).then((response) => {
                    response.throwForStatus();
                    const results = utils.responseOptionsMiddleware(z, bundle, 'closeTicket', response.json);
                    return results;
                })
            },
            sample: samples['CloseTicketResponseSchemaSample']
        }
    },
    deleteTicketInfo: {
        key: 'deleteTicketInfo',
        noun: 'Tickets',
        display: {
            label: 'Close a customer ticket via DELETE verb (closes only, never destroys data)',
            description: 'Use when the customer marks a ticket resolved. IMPORTANT: despite the DELETE verb this only CLOSES the ticket via Ticket::closeTicket — no data is destroyed. Closed tickets remain readable through getTicketInfo and appear in getTicketsList when view&#x3D;Closed. Path: id (int ticket ID). Body: none. Returns: &#39;Ticket is closed!&#39; string on success. Errors: 401 unauthorized; 404/422 &#39;Invalid ticket!&#39; when id is unknown or owned by another account. Idempotent on already-closed tickets. Siblings: CloseTicket (GET /tickets/{id}/close — same effect, simpler URL), ReplyTicket to add a final reply before closing, getTicketInfo to verify state.',
            hidden: false,
        },
        operation: {
            inputFields: [
                {
                    key: 'id',
                    label: 'Ticket ID number.',
                    type: 'number',
                    required: true,
                },
            ],
            outputFields: [
                ...ViewTicketResponse.fields('', false),
            ],
            perform: async (z, bundle) => {
                const options = {
                    url: utils.replacePathParameters('https://my.interserver.net/apiv2/tickets/{id}'),
                    method: 'DELETE',
                    removeMissingValuesFrom: { params: true, body: true },
                    headers: {
                        'Content-Type': '',
                        'Accept': 'application/json',
                    },
                    params: {
                    },
                    body: {
                    },
                }
                return z.request(utils.requestOptionsMiddleware(z, bundle, options)).then((response) => {
                    response.throwForStatus();
                    const results = utils.responseOptionsMiddleware(z, bundle, 'deleteTicketInfo', response.json);
                    return results;
                })
            },
            sample: samples['ViewTicketResponseSample']
        }
    },
    getNewTicket: {
        key: 'getNewTicket',
        noun: 'Tickets',
        display: {
            label: 'Fetch services and product options to populate the new-ticket form',
            description: 'Use to populate dropdowns before calling addNewTicket. Returns the customer&#39;s services grouped by product type so the user can attach a ticket to a specific resource. Iterates all enabled modules (vps, webhosting, domains, mail, etc.; mailbaby instances see only mail) and filters out services with status canceled, deleted, or fraud. Params: none. Body: none. Returns: object keyed by product TITLE (e.g. &#39;Vps&#39;, &#39;Webhosting&#39;), each value a map of &#39;{module}-{service_id}&#39; to a description string including title, type/plan, VPS hypervisor name where applicable, and uppercase status tag. Errors: 401 unauthorized. Use the returned product key as the &#39;product&#39; field on addNewTicket.  Sibling ops: &#x60;addNewTicket&#x60; (consumes the product key), &#x60;getTicketsList&#x60;.',
            hidden: false,
        },
        operation: {
            inputFields: [
            ],
            outputFields: [
            ],
            perform: async (z, bundle) => {
                const options = {
                    url: utils.replacePathParameters('https://my.interserver.net/apiv2/tickets/new'),
                    method: 'GET',
                    removeMissingValuesFrom: { params: true, body: true },
                    headers: {
                        'Content-Type': '',
                        'Accept': 'application/json',
                    },
                    params: {
                    },
                    body: {
                    },
                }
                return z.request(utils.requestOptionsMiddleware(z, bundle, options)).then((response) => {
                    response.throwForStatus();
                    const results = utils.responseOptionsMiddleware(z, bundle, 'getNewTicket', response.json);
                    return results;
                })
            },
            sample: { data: {} }
        }
    },
    getTicketInfo: {
        key: 'getTicketInfo',
        noun: 'Tickets',
        display: {
            label: 'Get full ticket details including subject, status, and the reply thread',
            description: 'Use to render a ticket page or feed full context to an LLM. Path: id (int, ticket ID, e.g. 1511222). Returns ticket header (subject, status, department, dates), the ordered post/reply history, attachments, and any custom-field values. Resolved via Ticket::getTicket(id, account_lid) so cross-account access returns Invalid ticket. Body: none. Errors: 401 unauthorized; 404/422 &#39;Invalid ticket!&#39; when the id is unknown or owned by another account. Caveats: the same path with POST appends a reply (postTicketInfo) and DELETE closes the ticket (deleteTicketInfo) — it does not destroy data. Siblings: ReplyTicket, updateTicketInfo, CloseTicket, getTicketsList.',
            hidden: false,
        },
        operation: {
            inputFields: [
                {
                    key: 'id',
                    label: 'Ticket ID number.',
                    type: 'number',
                    required: true,
                },
            ],
            outputFields: [
                ...ViewTicketResponse.fields('', false),
            ],
            perform: async (z, bundle) => {
                const options = {
                    url: utils.replacePathParameters('https://my.interserver.net/apiv2/tickets/{id}'),
                    method: 'GET',
                    removeMissingValuesFrom: { params: true, body: true },
                    headers: {
                        'Content-Type': '',
                        'Accept': 'application/json',
                    },
                    params: {
                    },
                    body: {
                    },
                }
                return z.request(utils.requestOptionsMiddleware(z, bundle, options)).then((response) => {
                    response.throwForStatus();
                    const results = utils.responseOptionsMiddleware(z, bundle, 'getTicketInfo', response.json);
                    return results;
                })
            },
            sample: samples['ViewTicketResponseSample']
        }
    },
    getTicketsList: {
        key: 'getTicketsList',
        noun: 'Tickets',
        display: {
            label: 'List the authenticated account&#39;s support tickets with status and date filters',
            description: 'Use to browse the customer&#39;s helpdesk tickets, paginated, with optional status and recency filters. Returns tickets where email matches the session account_lid. Query params: page (int, default 1, 50 per page), period (string: &#39;30&#39;, &#39;90&#39;, &#39;365&#39;, &#39;1825&#39;, or &#39;all&#39; days back; default &#39;30&#39;), view (string: &#39;Open&#39;, &#39;Closed&#39;, &#39;On Hold&#39;, &#39;In Progress&#39;; omit for all). Body: none. Returns: object with tickets[], total, pages, currentPage, st_count[] (counts grouped by status: Open/On Hold/Closed), selected_period, view. Errors: 401 unauthorized session. Note ticketstatusid mapping (Open&#x3D;4, On Hold&#x3D;5, Closed&#x3D;6, In Progress&#x3D;7). To search by subject/email/mask use postTicketsList. To open a ticket detail use getTicketInfo with the returned id. To create a new ticket see addNewTicket.  Sibling ops: &#x60;getTicketInfo&#x60; (detail), &#x60;postTicketsList&#x60; (search), &#x60;addNewTicket&#x60; (open new).',
            hidden: false,
        },
        operation: {
            inputFields: [
                {
                    key: 'page',
                    label: 'Page number for paginated results.',
                    type: 'integer',
                },
                {
                    key: 'period',
                    label: 'How far back to show tickets from. Value is in days.',
                    type: 'string',
                    choices: [
                        '30',
                        '90',
                        '365',
                        '1825',
                        'all',
                    ],
                },
                {
                    key: 'view',
                    label: 'The status of tickets to view. Possible values are Open, Closed, On Hold, and In Progress.  If not specified it will show all types.',
                    type: 'string',
                    choices: [
                        'Open',
                        'Closed',
                        'On Hold',
                        'In Progress',
                    ],
                },
            ],
            outputFields: [
                ...Tickets.fields('', false),
            ],
            perform: async (z, bundle) => {
                const options = {
                    url: utils.replacePathParameters('https://my.interserver.net/apiv2/tickets'),
                    method: 'GET',
                    removeMissingValuesFrom: { params: true, body: true },
                    headers: {
                        'Content-Type': '',
                        'Accept': 'application/json',
                    },
                    params: {
                        'page': bundle.inputData?.['page'],
                        'period': bundle.inputData?.['period'],
                        'view': bundle.inputData?.['view'],
                    },
                    body: {
                    },
                }
                return z.request(utils.requestOptionsMiddleware(z, bundle, options)).then((response) => {
                    response.throwForStatus();
                    const results = utils.responseOptionsMiddleware(z, bundle, 'getTicketsList', response.json);
                    return results;
                })
            },
            sample: samples['TicketsSample']
        }
    },
    postTicketInfo: {
        key: 'postTicketInfo',
        noun: 'Tickets',
        display: {
            label: 'Append a reply (and optional attachment, server-access fields) to a ticket',
            description: 'Use to post a customer reply on an existing ticket. Path: id (int ticket ID). Body: body (string reply text; trimmed to first 500 words), file_attachment (multipart upload, optional), and the server-access custom fields ip/root_pass/sudo_user/sudo_pass/port_no/server_access (passwords AES-encrypted with auth_key&#x3D;7). Either body OR an attachment is required. Notifies any swticketwatchers staff via templated email after posting. Returns: {status: &#39;success&#39;, message: &#39;Reply posted successfully&#39;}. Errors: 400 &#39;Please enter a message or attach a file&#39;; 401 unauthorized; 404/422 &#39;Invalid ticket!&#39; when id missing or cross-account. Sibling: ReplyTicket (cleaner JSON-only reply at /tickets/{id}/reply), updateTicketInfo, getTicketInfo, deleteTicketInfo.',
            hidden: false,
        },
        operation: {
            inputFields: [
                {
                    key: 'id',
                    label: 'Ticket ID number.',
                    type: 'number',
                    required: true,
                },
            ],
            outputFields: [
                ...ViewTicketResponse.fields('', false),
            ],
            perform: async (z, bundle) => {
                const options = {
                    url: utils.replacePathParameters('https://my.interserver.net/apiv2/tickets/{id}'),
                    method: 'POST',
                    removeMissingValuesFrom: { params: true, body: true },
                    headers: {
                        'Content-Type': '',
                        'Accept': 'application/json',
                    },
                    params: {
                    },
                    body: {
                    },
                }
                return z.request(utils.requestOptionsMiddleware(z, bundle, options)).then((response) => {
                    response.throwForStatus();
                    const results = utils.responseOptionsMiddleware(z, bundle, 'postTicketInfo', response.json);
                    return results;
                })
            },
            sample: samples['ViewTicketResponseSample']
        }
    },
    postTicketsList: {
        key: 'postTicketsList',
        noun: 'Tickets',
        display: {
            label: 'Search the authenticated account&#39;s tickets by subject, email, or mask ID',
            description: 'Use when the user supplies a search term (subject keyword, email substring, or full ticket mask ID like &#39;ABC-123-456&#39;). Scoped to tickets owned by the session account_lid. Body (form): search (string, required). If the term contains exactly two hyphens it is treated as an exact ticketmaskid match; otherwise a LIKE search runs across subject, email, and ticketmaskid. Returns: array of up to 25 matching ticket rows ordered by lastactivity DESC, each enriched with lastactivity_time (human-relative). Errors: 400 if search is empty or missing; 401 unauthorized. Caveat: this is a POST that reads, not a creator. To create see addNewTicket. To paginate full inbox use getTicketsList. To open one use getTicketInfo.  Sibling ops: &#x60;getTicketsList&#x60; (full inbox), &#x60;getTicketInfo&#x60; (detail), &#x60;addNewTicket&#x60; (open new).',
            hidden: false,
        },
        operation: {
            inputFields: [
            ],
            outputFields: [
                ...Tickets.fields('', false),
            ],
            perform: async (z, bundle) => {
                const options = {
                    url: utils.replacePathParameters('https://my.interserver.net/apiv2/tickets'),
                    method: 'POST',
                    removeMissingValuesFrom: { params: true, body: true },
                    headers: {
                        'Content-Type': '',
                        'Accept': 'application/json',
                    },
                    params: {
                    },
                    body: {
                    },
                }
                return z.request(utils.requestOptionsMiddleware(z, bundle, options)).then((response) => {
                    response.throwForStatus();
                    const results = utils.responseOptionsMiddleware(z, bundle, 'postTicketsList', response.json);
                    return results;
                })
            },
            sample: samples['TicketsSample']
        }
    },
    putTicketInfo: {
        key: 'putTicketInfo',
        noun: 'Tickets',
        display: {
            label: 'Update a ticket&#39;s properties such as subject or status (stub, not implemented)',
            description: 'Reserved for future use to update ticket subject/status. The PHP handler is currently an empty stub that returns no body, so callers should not rely on it in production. Path: id (int). Body: would carry subject/status fields when implemented. Returns: undefined behavior today. Errors: 401 unauthorized; expect 404/422 when implemented if id is invalid or not owned. Caveats: prefer updateTicketInfo (POST /tickets/{id}/update) for editing custom-field values today, postTicketInfo to add a reply, CloseTicket or deleteTicketInfo to close. Avoid scripting against this endpoint until the handler ships. Siblings: getTicketInfo, ReplyTicket.',
            hidden: false,
        },
        operation: {
            inputFields: [
                {
                    key: 'id',
                    label: 'Ticket ID number.',
                    type: 'number',
                    required: true,
                },
            ],
            outputFields: [
                ...ViewTicketResponse.fields('', false),
            ],
            perform: async (z, bundle) => {
                const options = {
                    url: utils.replacePathParameters('https://my.interserver.net/apiv2/tickets/{id}'),
                    method: 'PUT',
                    removeMissingValuesFrom: { params: true, body: true },
                    headers: {
                        'Content-Type': '',
                        'Accept': 'application/json',
                    },
                    params: {
                    },
                    body: {
                    },
                }
                return z.request(utils.requestOptionsMiddleware(z, bundle, options)).then((response) => {
                    response.throwForStatus();
                    const results = utils.responseOptionsMiddleware(z, bundle, 'putTicketInfo', response.json);
                    return results;
                })
            },
            sample: samples['ViewTicketResponseSample']
        }
    },
    replyTicket: {
        key: 'replyTicket',
        noun: 'Tickets',
        display: {
            label: 'Post a simple text reply to an existing ticket thread (no attachments)',
            description: 'Use this lightweight endpoint to add a reply to an existing ticket without attachments or server-access fields. Cleaner alternative to postTicketInfo when only text is being submitted. Path: id (int ticket ID). Body (form): content (string, required reply body). Returns: {success: true, post_id: int} on success or {success: false, text: &#39;Reply content cannot be empty!&#39; | &#39;Unable to reply ticket&#39;}. Errors: 401 unauthorized; 404 implied via &#39;Unable to reply ticket&#39; when id is invalid or owned by another account. Siblings: postTicketInfo (POST /tickets/{id}, supports attachments + custom fields), updateTicketInfo (custom fields only), CloseTicket, getTicketInfo to verify the new post_id appears in the thread.',
            hidden: false,
        },
        operation: {
            inputFields: [
                {
                    key: 'id',
                    label: 'The ticket ID number.',
                    type: 'number',
                    required: true,
                },
                ...ReplyTicketRequest.fields(),
            ],
            outputFields: [
                ...ReplyTicketResponseSchema.fields('', false),
            ],
            perform: async (z, bundle) => {
                const options = {
                    url: utils.replacePathParameters('https://my.interserver.net/apiv2/tickets/{id}/reply'),
                    method: 'POST',
                    removeMissingValuesFrom: { params: true, body: true },
                    headers: {
                        'Content-Type': 'application/json, multipart/form-data',
                        'Accept': 'application/json',
                    },
                    params: {
                    },
                    body: {
                        ...ReplyTicketRequest.mapping(bundle),
                    },
                }
                return z.request(utils.requestOptionsMiddleware(z, bundle, options)).then((response) => {
                    response.throwForStatus();
                    const results = utils.responseOptionsMiddleware(z, bundle, 'replyTicket', response.json);
                    return results;
                })
            },
            sample: samples['ReplyTicketResponseSchemaSample']
        }
    },
    updateTicketInfo: {
        key: 'updateTicketInfo',
        noun: 'Tickets',
        display: {
            label: 'Update a ticket&#39;s custom field values (server-access details, etc.)',
            description: 'Use to save or change the structured custom-field values attached to a ticket — typically server-access details supplied by the customer. Path: id (int ticket ID). Body (form): one field per custom-field title, lowercased with spaces replaced by underscores (e.g. ip, root_pass, sudo_user, sudo_pass, port_no, server_access). Field id 7 (auth_key) is skipped — never set it directly. Returns: {success: true, text: &#39;Ticket is updated!&#39;} or {success: false, text: &#39;Unable to update ticket&#39;}. Errors: 401 unauthorized; 404 invalid or non-owned ticket. Caveats: this updates metadata only — to add a reply use ReplyTicket, to close use CloseTicket, to read current state use getTicketInfo.  Sibling ops: &#x60;getTicketInfo&#x60; (read), &#x60;ReplyTicket&#x60; (reply), &#x60;CloseTicket&#x60; (close).',
            hidden: false,
        },
        operation: {
            inputFields: [
                {
                    key: 'id',
                    label: 'The ticket ID number.',
                    type: 'number',
                    required: true,
                },
                ...UpdateTicket.fields(),
            ],
            outputFields: [
                ...UpdateTicketResponseSchema.fields('', false),
            ],
            perform: async (z, bundle) => {
                const options = {
                    url: utils.replacePathParameters('https://my.interserver.net/apiv2/tickets/{id}/update'),
                    method: 'POST',
                    removeMissingValuesFrom: { params: true, body: true },
                    headers: {
                        'Content-Type': 'application/json, multipart/form-data',
                        'Accept': 'application/json',
                    },
                    params: {
                    },
                    body: {
                        ...UpdateTicket.mapping(bundle),
                    },
                }
                return z.request(utils.requestOptionsMiddleware(z, bundle, options)).then((response) => {
                    response.throwForStatus();
                    const results = utils.responseOptionsMiddleware(z, bundle, 'updateTicketInfo', response.json);
                    return results;
                })
            },
            sample: samples['UpdateTicketResponseSchemaSample']
        }
    },
}
