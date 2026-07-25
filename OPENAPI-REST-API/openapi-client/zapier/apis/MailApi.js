const samples = require('../samples/MailApi');
const ChargeInvoiceRows = require('../models/ChargeInvoiceRows');
const DenyRuleNew = require('../models/DenyRuleNew');
const DenyRuleRecord = require('../models/DenyRuleRecord');
const GenericResponse = require('../models/GenericResponse');
const MailAlertRequest = require('../models/MailAlertRequest');
const MailAlertUpdateRequest = require('../models/MailAlertUpdateRequest');
const MailAlertsResponse = require('../models/MailAlertsResponse');
const MailBlocks = require('../models/MailBlocks');
const MailDelistRequest = require('../models/MailDelistRequest');
const MailDelistResponse = require('../models/MailDelistResponse');
const MailDeliverabilityResponse = require('../models/MailDeliverabilityResponse');
const MailLog = require('../models/MailLog');
const MailOrder = require('../models/MailOrder');
const MailOrderRequest = require('../models/MailOrderRequest');
const MailRow = require('../models/MailRow');
const MailSchema = require('../models/MailSchema');
const MailStatsType = require('../models/MailStatsType');
const SendMail = require('../models/SendMail');
const SendMailAdv = require('../models/SendMailAdv');
const ServiceOrderPostResponse = require('../models/ServiceOrderPostResponse');
const SuccessTextResponse = require('../models/SuccessTextResponse');
const deleteMailAlert_request = require('../models/deleteMailAlert_request');
const getAccountInfo_401_response = require('../models/getAccountInfo_401_response');
const mailCancel_200_response = require('../models/mailCancel_200_response');
const viewMailLog_startDate_parameter = require('../models/viewMailLog_startDate_parameter');
const utils = require('../utils/utils');
const FormData = require('form-data');

module.exports = {
    addMail: {
        key: 'addMail',
        noun: 'Mail',
        display: {
            label: 'Place a new Mail Baby order, generate invoice, and queue provisioning',
            description: 'Step 3 of the Mail Baby order flow. Revalidates via &#x60;validate_buy_mail()&#x60;, then calls &#x60;place_buy_mail()&#x60; to create a &#x60;Repeat_Invoice&#x60; recurring billing row, an initial &#x60;invoices&#x60; row, and a &#x60;mail&#x60; service record in pending status. SMTP credentials become active once the activation worker runs the welcome email (after the invoice is paid). **Real money** — call &#x60;putMail&#x60; first. Sibling ops: &#x60;getNewMail&#x60;, &#x60;putMail&#x60;, &#x60;getMailInfo&#x60;, &#x60;initiatePayment&#x60;.  **Body fields:** - &#x60;serviceType&#x60; (integer, required) — plan id from &#x60;getNewMail&#x60;. - &#x60;coupon&#x60; (string, optional). - &#x60;comment&#x60; (string, optional) — saved on the order row.  **Returns** (on success): &#x60;{continue: true, total_cost, iid, iids, real_iids, serviceId (new mail_id), invoice_description, cj_params}&#x60; — pass &#x60;real_iids&#x60; to &#x60;initiatePayment&#x60;. On validation failure: &#x60;{continue: false, errors: [...]}&#x60; with HTTP 200.  **Side effects:** - Inserts &#x60;mail&#x60; service row in &#x60;pending&#x60; status. - Inserts &#x60;repeat_invoices&#x60; + &#x60;invoices&#x60; rows.  **Auth:** Session/API key.  **Errors:** - &#x60;401&#x60; — unauthenticated.  **Related calls:** - **Pay:** &#x60;initiatePayment&#x60; with &#x60;real_iids&#x60;. - **Confirm activation:** &#x60;getMailInfo&#x60; (poll until &#x60;mail_status&#x3D;&#x3D;&#39;active&#39;&#x60;). - **Resend credentials:** &#x60;getMailWelcomeEmail&#x60;.  **Full ordering happy path:** &#x60;&#x60;&#x60;text GET /mail/order                                    -&gt; catalog (getNewMail) PUT /mail/order { serviceType, coupon? }           -&gt; quote (putMail) POST /mail/order { serviceType, coupon?, comment? } -&gt; { serviceId, real_iids } GET /billing/pay/cc/{real_iids[0]}                 -&gt; pay (initiatePayment) GET /mail/{serviceId}                              -&gt; poll until mail_status&#x3D;&#x3D;&#39;active&#39; &#x60;&#x60;&#x60; ',
            hidden: false,
        },
        operation: {
            inputFields: [
                ...MailOrderRequest.fields(),
            ],
            outputFields: [
                ...ServiceOrderPostResponse.fields('', false),
            ],
            perform: async (z, bundle) => {
                const options = {
                    url: utils.replacePathParameters('https://my.interserver.net/apiv2/mail/order'),
                    method: 'POST',
                    removeMissingValuesFrom: { params: true, body: true },
                    headers: {
                        'Content-Type': 'application/json',
                        'Accept': 'application/json',
                    },
                    params: {
                    },
                    body: {
                        ...MailOrderRequest.mapping(bundle),
                    },
                }
                return z.request(utils.requestOptionsMiddleware(z, bundle, options)).then((response) => {
                    response.throwForStatus();
                    const results = utils.responseOptionsMiddleware(z, bundle, 'addMail', response.json);
                    return results;
                })
            },
            sample: samples['ServiceOrderPostResponseSample']
        }
    },
    addRule: {
        key: 'addRule',
        noun: 'Mail',
        display: {
            label: 'Create a new deny rule to auto-block matching submissions',
            description: 'Inserts a new &#x60;mail_spam&#x60; row scoped to this service&#39;s &#x60;mail_username&#x60; so the relay drops matching submissions. Sibling ops: &#x60;getRules&#x60;, &#x60;updateRule&#x60;, &#x60;deleteRule&#x60;.  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;mail_id&#x60; from &#x60;getMailList&#x60;.  **Body fields (schema &#x60;DenyRuleNew&#x60;):** - &#x60;type&#x60; (string, required) — &#x60;domain&#x60; / &#x60;email&#x60; / &#x60;startswith&#x60; / &#x60;destination&#x60;. - &#x60;data&#x60; (string, required) — literal value matched; validation: no quotes, valid domain for &#x60;type&#x3D;domain&#x60;, valid email for &#x60;type&#x3D;email&#x60;, &#x60;[A-Z0-9+_.-]+&#x60; for &#x60;startswith&#x60;.  **Returns:** &#x60;\&quot;Spam Block Added\&quot;&#x60;.  **Auth:** Session/API key. Ownership enforced.  **Errors:** field-level errors on validation failure, &#x60;401&#x60;, &#x60;404&#x60;, &#x60;409 not active&#x60;. ',
            hidden: false,
        },
        operation: {
            inputFields: [
                {
                    key: 'id',
                    label: 'The mail service ID. Use &#x60;mail_id&#x60; from &#x60;GET /mail&#x60;.',
                    type: 'integer',
                    required: true,
                },
                ...DenyRuleNew.fields(),
            ],
            outputFields: [
                ...GenericResponse.fields('', false),
            ],
            perform: async (z, bundle) => {
                const options = {
                    url: utils.replacePathParameters('https://my.interserver.net/apiv2/mail/{id}/rules'),
                    method: 'POST',
                    removeMissingValuesFrom: { params: true, body: true },
                    headers: {
                        'Content-Type': 'application/json, application/x-www-form-urlencoded',
                        'Accept': 'application/json',
                    },
                    params: {
                    },
                    body: {
                        ...DenyRuleNew.mapping(bundle),
                    },
                }
                return z.request(utils.requestOptionsMiddleware(z, bundle, options)).then((response) => {
                    response.throwForStatus();
                    const results = utils.responseOptionsMiddleware(z, bundle, 'addRule', response.json);
                    return results;
                })
            },
            sample: samples['GenericResponseSample']
        }
    },
    createMailAlert: {
        key: 'createMailAlert',
        noun: 'Mail',
        display: {
            label: 'Create a new Mail Baby alert for delivery, bounce, or quota events',
            description: 'Inserts a new alert row via the &#x60;Alert&#x60; ORM. The new &#x60;alert_id&#x60; is retrievable via &#x60;getMailAlerts&#x60;. Sibling ops: &#x60;getMailAlerts&#x60;, &#x60;updateMailAlert&#x60;, &#x60;deleteMailAlert&#x60;.  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;mail_id&#x60; from &#x60;getMailList&#x60;.  **Body fields (schema &#x60;MailAlertRequest&#x60;):** - &#x60;type&#x60; (string, required). - &#x60;value&#x60; (string/numeric, required) — threshold. - &#x60;to&#x60; (string, required) — notification email; validated via &#x60;FILTER_VALIDATE_EMAIL&#x60;. - &#x60;enabled&#x60; (bool, optional).  **Returns:** &#x60;SuccessTextResponse&#x60;.  **Auth:** Session/API key. Ownership enforced.  **Errors:** field-level errors for missing/invalid body, &#x60;401&#x60;, &#x60;404&#x60;, &#x60;409 not active&#x60;. ',
            hidden: false,
        },
        operation: {
            inputFields: [
                {
                    key: 'id',
                    label: 'The mail service ID. Use &#x60;mail_id&#x60; from &#x60;GET /mail&#x60;.',
                    type: 'integer',
                    required: true,
                },
                ...MailAlertRequest.fields(),
            ],
            outputFields: [
                ...SuccessTextResponse.fields('', false),
            ],
            perform: async (z, bundle) => {
                const options = {
                    url: utils.replacePathParameters('https://my.interserver.net/apiv2/mail/{id}/alerts'),
                    method: 'POST',
                    removeMissingValuesFrom: { params: true, body: true },
                    headers: {
                        'Content-Type': 'application/json, multipart/form-data',
                        'Accept': 'application/json',
                    },
                    params: {
                    },
                    body: {
                        ...MailAlertRequest.mapping(bundle),
                    },
                }
                return z.request(utils.requestOptionsMiddleware(z, bundle, options)).then((response) => {
                    response.throwForStatus();
                    const results = utils.responseOptionsMiddleware(z, bundle, 'createMailAlert', response.json);
                    return results;
                })
            },
            sample: samples['SuccessTextResponseSample']
        }
    },
    deleteMailAlert: {
        key: 'deleteMailAlert',
        noun: 'Mail',
        display: {
            label: 'Delete a Mail Baby alert by alert_id (hard delete — no recovery)',
            description: 'Hard-deletes a single alert row. Handler verifies the alert belongs to this service+module before deleting. **Irreversible** — no history is preserved; recreate via &#x60;createMailAlert&#x60; if needed. Sibling ops: &#x60;getMailAlerts&#x60;, &#x60;createMailAlert&#x60;, &#x60;updateMailAlert&#x60;.  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;mail_id&#x60; from &#x60;getMailList&#x60;.  **Body fields:** - &#x60;alert_id&#x60; (integer, required) — from &#x60;getMailAlerts&#x60;.  **Returns:** &#x60;SuccessTextResponse&#x60;.  **Auth:** Session/API key. Ownership enforced.  **Errors:** &#x60;Invalid alert!&#x60; (alert not owned), &#x60;401&#x60;, &#x60;404&#x60;, &#x60;409 not active&#x60;. ',
            hidden: false,
        },
        operation: {
            inputFields: [
                {
                    key: 'id',
                    label: 'The mail service ID. Use &#x60;mail_id&#x60; from &#x60;GET /mail&#x60;.',
                    type: 'integer',
                    required: true,
                },
                ...deleteMailAlert_request.fields(),
            ],
            outputFields: [
                ...SuccessTextResponse.fields('', false),
            ],
            perform: async (z, bundle) => {
                const options = {
                    url: utils.replacePathParameters('https://my.interserver.net/apiv2/mail/{id}/alerts'),
                    method: 'DELETE',
                    removeMissingValuesFrom: { params: true, body: true },
                    headers: {
                        'Content-Type': 'application/json, multipart/form-data',
                        'Accept': 'application/json',
                    },
                    params: {
                    },
                    body: {
                        ...deleteMailAlert_request.mapping(bundle),
                    },
                }
                return z.request(utils.requestOptionsMiddleware(z, bundle, options)).then((response) => {
                    response.throwForStatus();
                    const results = utils.responseOptionsMiddleware(z, bundle, 'deleteMailAlert', response.json);
                    return results;
                })
            },
            sample: samples['SuccessTextResponseSample']
        }
    },
    deleteRule: {
        key: 'deleteRule',
        noun: 'Mail',
        display: {
            label: 'Delete a Mail Baby deny rule by rule ID (hard delete — no recovery)',
            description: 'Hard-deletes a single &#x60;mail_spam&#x60; row scoped to this service&#39;s &#x60;mail_username&#x60;. **Irreversible** — no audit copy preserved. Query filter &#x60;id&#x3D;{rule} AND user&#x3D;&#39;{mail_username}&#39;&#x60; prevents cross-tenant deletes; passing a &#x60;rule&#x60; belonging to a different mail order is silently a no-op (still returns success). Sibling ops: &#x60;getRules&#x60;, &#x60;addRule&#x60;, &#x60;updateRule&#x60;.  **Path params:** - &#x60;id&#x60; (integer, required) — &#x60;mail_id&#x60; from &#x60;getMailList&#x60;. - &#x60;rule&#x60; (string, required) — rule id from &#x60;getRules&#x60;.  **Returns:** &#x60;\&quot;Block deleted successfully.\&quot;&#x60;.  **Auth:** Session/API key. Ownership enforced.  **Errors:** &#x60;401&#x60;, &#x60;404&#x60;, &#x60;409 not active&#x60;. ',
            hidden: false,
        },
        operation: {
            inputFields: [
                {
                    key: 'id',
                    label: 'The mail service ID. Use &#x60;mail_id&#x60; from &#x60;GET /mail&#x60;.',
                    type: 'integer',
                    required: true,
                },
                {
                    key: 'rule',
                    label: 'The ID of the Rules entry.',
                    type: 'string',
                    required: true,
                },
            ],
            outputFields: [
                ...GenericResponse.fields('', false),
            ],
            perform: async (z, bundle) => {
                const options = {
                    url: utils.replacePathParameters('https://my.interserver.net/apiv2/mail/{id}/rules/{rule}'),
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
                    const results = utils.responseOptionsMiddleware(z, bundle, 'deleteRule', response.json);
                    return results;
                })
            },
            sample: samples['GenericResponseSample']
        }
    },
    delistBlock: {
        key: 'delistBlock',
        noun: 'Mail',
        display: {
            label: 'Delist a sender email from rspamd / mailchannels / mailbaby block lists',
            description: 'Removes block rows for the supplied email across the three reputation stores: &#x60;rspamd&#x60; (by &#x60;fromemail&#x60;), &#x60;mailchannels&#x60; (by &#x60;email&#x60;), &#x60;mailbaby&#x60; (by &#x60;emailfrom&#x60;). Functionally equivalent to &#x60;postMailDelist&#x60; but uses &#x60;email&#x60; parameter naming and returns 400 (not error JSON) for an invalid address. Sibling ops: &#x60;getMailBlocks&#x60;, &#x60;getMailDelist&#x60;, &#x60;postMailDelist&#x60;.  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;mail_id&#x60; from &#x60;getMailList&#x60;.  **Body fields (schema &#x60;EmailAddress&#x60;):** - &#x60;email&#x60; (string, required) — sender address; validated via &#x60;FILTER_VALIDATE_EMAIL&#x60;.  **Returns:** &#x60;{status: \&quot;ok\&quot;, text: \&quot;Email &#39;...&#39; removed from block list\&quot;}&#x60;.  **Auth:** Session/API key. Ownership enforced.  **Errors:** &#x60;400&#x60; invalid email, &#x60;401&#x60;, &#x60;404&#x60;, &#x60;409 not active&#x60;. ',
            hidden: false,
        },
        operation: {
            inputFields: [
                {
                    key: 'id',
                    label: 'The mail service ID. Use &#x60;mail_id&#x60; from &#x60;GET /mail&#x60;.',
                    type: 'integer',
                    required: true,
                },
                {
                    key: 'email',
                    label: 'an email address',
                    type: 'string',
                },
            ],
            outputFields: [
                ...GenericResponse.fields('', false),
            ],
            perform: async (z, bundle) => {
                const formData = new FormData()
                formData.append('email', bundle.inputData?.['email'])
                const options = {
                    url: utils.replacePathParameters('https://my.interserver.net/apiv2/mail/{id}/blocks/delete'),
                    method: 'POST',
                    removeMissingValuesFrom: { params: true, body: true },
                    headers: {
                        
                        'Accept': 'application/json',
                    },
                    params: {
                    },
                    body: formData,
                }
                return z.request(utils.requestOptionsMiddleware(z, bundle, options)).then((response) => {
                    response.throwForStatus();
                    const results = utils.responseOptionsMiddleware(z, bundle, 'delistBlock', response.json);
                    return results;
                })
            },
            sample: samples['GenericResponseSample']
        }
    },
    getMailAlerts: {
        key: 'getMailAlerts',
        noun: 'Mail',
        display: {
            label: 'List configured delivery/bounce/quota alerts for one Mail Baby service',
            description: 'Returns every alert row from &#x60;alerts&#x60; matching this service. Each row carries &#x60;alert_id&#x60; (use with PUT/DELETE), &#x60;alert_type&#x60;, &#x60;alert_value&#x60; (threshold), &#x60;alert_to&#x60; (notification email), &#x60;alert_enabled&#x60;, and timestamps. Sibling ops: &#x60;createMailAlert&#x60;, &#x60;updateMailAlert&#x60;, &#x60;deleteMailAlert&#x60;.  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;mail_id&#x60; from &#x60;getMailList&#x60;.  **Returns** (schema &#x60;MailAlertsResponse&#x60;): array of alert rows.  **Auth:** Session/API key. Ownership enforced.  **Errors:** &#x60;401&#x60;, &#x60;404&#x60;, &#x60;409 not active&#x60;. ',
            hidden: false,
        },
        operation: {
            inputFields: [
                {
                    key: 'id',
                    label: 'The mail service ID. Use &#x60;mail_id&#x60; from &#x60;GET /mail&#x60;.',
                    type: 'integer',
                    required: true,
                },
            ],
            outputFields: [
                ...MailAlertsResponse.fields('', false),
            ],
            perform: async (z, bundle) => {
                const options = {
                    url: utils.replacePathParameters('https://my.interserver.net/apiv2/mail/{id}/alerts'),
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
                    const results = utils.responseOptionsMiddleware(z, bundle, 'getMailAlerts', response.json);
                    return results;
                })
            },
            sample: samples['MailAlertsResponseSample']
        }
    },
    getMailBlocks: {
        key: 'getMailBlocks',
        noun: 'Mail',
        display: {
            label: 'List recent local-blocklist hits and spam-trap captures for the mail user',
            description: 'Returns relay-side block events for the SMTP user behind &#x60;mail_id&#x60; — the last 24 hours of &#x60;LOCAL_BL_RCPT&#x60; and &#x60;MBTRAP&#x60; rspamd hits, plus a 3-day window of suspicious-subject hits (credential-leak heuristic firing on subjects containing &#x60;@&#x60; / &#x60;smtp&#x60; / &#x60;socks5&#x60; / &#x60;socks4&#x60; more than 4 times). Use the &#x60;from&#x60; value with &#x60;delistBlock&#x60; or &#x60;postMailDelist&#x60; to clear a block. Sibling ops: &#x60;delistBlock&#x60;, &#x60;getMailDelist&#x60;.  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;mail_id&#x60; from &#x60;getMailList&#x60;.  **Returns** (schema &#x60;MailBlocks&#x60;): - &#x60;local&#x60; (array) — rspamd &#x60;LOCAL_BL_RCPT&#x60; hits: &#x60;{date, from, messageId, subject, to}&#x60;. - &#x60;mbtrap&#x60; (array) — spam-trap captures (&#x60;MBTRAP&#x60; symbol): same shape. - &#x60;subject&#x60; (array) — senders flagged by subject-line heuristic: &#x60;{from, subject}&#x60;.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - &#x60;401&#x60; — unauthenticated. - &#x60;404&#x60; — &#x60;id&#x60; not owned by caller. - &#x60;409&#x60; — &#x60;mail_status !&#x3D; \&quot;active\&quot;&#x60;.  **Related calls:** - **Clear a block:** &#x60;delistBlock&#x60; (POST &#x60;/mail/{id}/blocks/delete&#x60;). - **Broader delist UI:** &#x60;getMailDelist&#x60;, &#x60;postMailDelist&#x60;. ',
            hidden: false,
        },
        operation: {
            inputFields: [
                {
                    key: 'id',
                    label: 'The mail service ID. Use &#x60;mail_id&#x60; from &#x60;GET /mail&#x60;.',
                    type: 'integer',
                    required: true,
                },
            ],
            outputFields: [
                ...MailBlocks.fields('', false),
            ],
            perform: async (z, bundle) => {
                const options = {
                    url: utils.replacePathParameters('https://my.interserver.net/apiv2/mail/{id}/blocks'),
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
                    const results = utils.responseOptionsMiddleware(z, bundle, 'getMailBlocks', response.json);
                    return results;
                })
            },
            sample: samples['MailBlocksSample']
        }
    },
    getMailDelist: {
        key: 'getMailDelist',
        noun: 'Mail',
        display: {
            label: 'Read blocklist diagnostics and find senders eligible for delisting',
            description: 'Returns a richer diagnostic snapshot than &#x60;getMailBlocks&#x60; — intended for the delist UI. Use any &#x60;SMTPFrom&#x60;/&#x60;from&#x60; value as the &#x60;unblock&#x60; field for &#x60;postMailDelist&#x60;. Sibling ops: &#x60;postMailDelist&#x60;, &#x60;getMailBlocks&#x60;, &#x60;delistBlock&#x60;.  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;mail_id&#x60; from &#x60;getMailList&#x60;.  **Returns** (schema &#x60;MailDelistResponse&#x60;): - &#x60;id&#x60; (integer) — &#x60;mail_id&#x60; echo. - &#x60;local&#x60;, &#x60;mbtrap&#x60; (array) — last 24h rspamd hits with capitalized keys (&#x60;Date&#x60;, &#x60;SMTPFrom&#x60;, &#x60;MessageId&#x60;, &#x60;Subject&#x60;, &#x60;MimeRecipients&#x60;). - &#x60;subject&#x60; (array) — credential-leak-heuristic firings (3-day window). - &#x60;manual&#x60; (array) — manually added blocks.  **Auth:** Session/API key. Ownership enforced.  **Errors:** &#x60;401&#x60;, &#x60;404&#x60;, &#x60;409 not active&#x60;. ',
            hidden: false,
        },
        operation: {
            inputFields: [
                {
                    key: 'id',
                    label: 'The mail service ID. Use &#x60;mail_id&#x60; from &#x60;GET /mail&#x60;.',
                    type: 'integer',
                    required: true,
                },
            ],
            outputFields: [
                ...MailDelistResponse.fields('', false),
            ],
            perform: async (z, bundle) => {
                const options = {
                    url: utils.replacePathParameters('https://my.interserver.net/apiv2/mail/{id}/delist'),
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
                    const results = utils.responseOptionsMiddleware(z, bundle, 'getMailDelist', response.json);
                    return results;
                })
            },
            sample: samples['MailDelistResponseSample']
        }
    },
    getMailDeliverability: {
        key: 'getMailDeliverability',
        noun: 'Mail',
        display: {
            label: 'Read delivered vs bounced totals broken down by sender (or by recipient domain)',
            description: 'Returns deliverability analytics from &#x60;MailDeliveryStats&#x60; (Dragonfly cache) for the SMTP user behind &#x60;mail_id&#x60;. Default pivot is by sender; pass &#x60;?filter_domain&#x3D;1&#x60; to pivot by recipient domain for the current year instead. Use to drive analytics dashboards. Sibling ops: &#x60;getStats&#x60;, &#x60;viewMailLog&#x60;, &#x60;getMailBlocks&#x60;, &#x60;getMailDelist&#x60;.  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;mail_id&#x60; from &#x60;getMailList&#x60;.  **Query params:** - &#x60;filter_domain&#x60; (string &#x60;1&#x60;, optional) — pivot by recipient domain instead of sender.  **Returns** (schema &#x60;MailDeliverabilityResponse&#x60;): - &#x60;stat&#x60;: &#x60;{delivered, bounced, percent}&#x60; — totals and bounce ratio. - &#x60;header&#x60; (string), &#x60;col1&#x60; (string) — table headers. - &#x60;table_data&#x60; (array) — rows of &#x60;[&lt;sender-or-domain&gt;, bounced, delivered, bouncePercent]&#x60;.  **Auth:** Session/API key. Ownership enforced.  **Errors:** &#x60;401&#x60;, &#x60;404&#x60;, &#x60;409 not active&#x60;. ',
            hidden: false,
        },
        operation: {
            inputFields: [
                {
                    key: 'id',
                    label: 'The mail service ID. Use &#x60;mail_id&#x60; from &#x60;GET /mail&#x60;.',
                    type: 'integer',
                    required: true,
                },
            ],
            outputFields: [
                ...MailDeliverabilityResponse.fields('', false),
            ],
            perform: async (z, bundle) => {
                const options = {
                    url: utils.replacePathParameters('https://my.interserver.net/apiv2/mail/{id}/deliverability'),
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
                    const results = utils.responseOptionsMiddleware(z, bundle, 'getMailDeliverability', response.json);
                    return results;
                })
            },
            sample: samples['MailDeliverabilityResponseSample']
        }
    },
    getMailInfo: {
        key: 'getMailInfo',
        noun: 'Mail',
        display: {
            label: 'Read full detail for one Mail Baby service including SMTP credentials',
            description: 'Returns the full &#x60;ViewMail&#x60; payload for one Mail Baby service — &#x60;serviceInfo&#x60;, &#x60;serviceType&#x60;, and &#x60;client_links&#x60; (URLs rewritten to API paths, e.g. &#x60;view_mail_log&#x60; → &#x60;log&#x60;). Admin fields (&#x60;admin_links&#x60;, &#x60;settings&#x60;, &#x60;csrf&#x60;) stripped. Use to render a service dashboard or retrieve SMTP host/username for MTA configuration. Sibling ops: &#x60;getMailList&#x60;, &#x60;updateMailInfo&#x60;, &#x60;mailCancel&#x60;, &#x60;resetMailPassword&#x60;, &#x60;getMailWelcomeEmail&#x60;.  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;mail_id&#x60; from &#x60;getMailList&#x60;.  **Returns** (schema &#x60;MailSchema&#x60;): - &#x60;serviceInfo&#x60; — &#x60;mail_id&#x60;, &#x60;mail_username&#x60; (e.g. &#x60;mb1234&#x60;), &#x60;mail_status&#x60;, &#x60;mail_invoice&#x60;, &#x60;mail_custid&#x60;, dates, currency. - &#x60;serviceType&#x60; — plan row (&#x60;services_ourcost&#x60; stripped). - &#x60;client_links&#x60; (array) — action URLs (log, alerts, blocks, etc.).  **Auth:** Session/API key. Ownership enforced.  **Errors:** - &#x60;401&#x60; — unauthenticated. - &#x60;404&#x60; — &#x60;id&#x60; not owned by caller.  **Related calls:** - **Send:** &#x60;sendMail&#x60; / &#x60;sendAdvMail&#x60;. - **Rotate password:** &#x60;resetMailPassword&#x60;. - **Reset credentials:** &#x60;getMailWelcomeEmail&#x60;. - **Cancel:** &#x60;mailCancel&#x60;. ',
            hidden: false,
        },
        operation: {
            inputFields: [
                {
                    key: 'id',
                    label: 'The mail service ID. Use &#x60;mail_id&#x60; from &#x60;GET /mail&#x60;.',
                    type: 'integer',
                    required: true,
                },
            ],
            outputFields: [
                ...MailSchema.fields('', false),
            ],
            perform: async (z, bundle) => {
                const options = {
                    url: utils.replacePathParameters('https://my.interserver.net/apiv2/mail/{id}'),
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
                    const results = utils.responseOptionsMiddleware(z, bundle, 'getMailInfo', response.json);
                    return results;
                })
            },
            sample: samples['MailSchemaSample']
        }
    },
    getMailInvoices: {
        key: 'getMailInvoices',
        noun: 'Mail',
        display: {
            label: 'List billing invoices linked to this Mail Baby service',
            description: 'Returns every invoice associated with this &#x60;mail_id&#x60; via the shared &#x60;InvoicesList&#x60; workflow. Use to render per-service billing history or find unpaid invoices to pay via &#x60;initiatePayment&#x60;. Sibling ops: &#x60;getBillingInvoice&#x60;, &#x60;initiatePayment&#x60;, &#x60;addMail&#x60;, &#x60;mailCancel&#x60;.  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;mail_id&#x60; from &#x60;getMailList&#x60;.  **Returns:** &#x60;ChargeInvoiceRows&#x60; — array of &#x60;{id, amount, currency, paid, date, due_date, description, module: \&quot;mail\&quot;, service}&#x60;.  **Auth:** Session/API key. Ownership enforced.  **Errors:** &#x60;401&#x60;, &#x60;404 Invalid Service&#x60;. ',
            hidden: false,
        },
        operation: {
            inputFields: [
                {
                    key: 'id',
                    label: 'The mail service ID. Use &#x60;mail_id&#x60; from &#x60;GET /mail&#x60;.',
                    type: 'integer',
                    required: true,
                },
            ],
            outputFields: [
                ...ChargeInvoiceRows.fields('', false),
            ],
            perform: async (z, bundle) => {
                const options = {
                    url: utils.replacePathParameters('https://my.interserver.net/apiv2/mail/{id}/invoices'),
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
                    const results = utils.responseOptionsMiddleware(z, bundle, 'getMailInvoices', response.json);
                    return results;
                })
            },
            sample: samples['ChargeInvoiceRowsSample']
        }
    },
    getMailList: {
        key: 'getMailList',
        noun: 'Mail',
        display: {
            label: 'List every Mail Baby SMTP relay service on the account',
            description: 'Enumerates every Mail Baby SMTP relay service owned by the authenticated customer. Canonical entry point for finding a &#x60;mail_id&#x60; to pass to other Mail endpoints. Filtered server-side by &#x60;mail_custid&#x60;. Sibling ops: &#x60;getMailInfo&#x60;, &#x60;getStats&#x60;, &#x60;viewMailLog&#x60;, &#x60;getMailDeliverability&#x60;, &#x60;getMailBlocks&#x60;, &#x60;getMailInvoices&#x60;, &#x60;addMail&#x60;.  **Path/Query/Body:** None.  **Returns:** Array of &#x60;MailRow&#x60;: - &#x60;mail_id&#x60; (integer) — canonical id. - &#x60;mail_username&#x60; (string) — SMTP username (e.g. &#x60;mb1234&#x60;). - &#x60;mail_status&#x60; (string enum) — &#x60;active&#x60; / &#x60;pending&#x60; / &#x60;canceled&#x60; / &#x60;suspended&#x60;. - &#x60;services_name&#x60; (string) — plan label. - &#x60;repeat_invoices_cost&#x60; (decimal string) — recurring cost.  **Auth:** Session/API key.  **Errors:** - &#x60;401&#x60; — unauthenticated.  **Related calls:** - **Per-service detail:** &#x60;getMailInfo&#x60;. - **Send mail:** &#x60;sendMail&#x60; / &#x60;sendAdvMail&#x60;. - **Reputation:** &#x60;getMailDeliverability&#x60; / &#x60;getMailBlocks&#x60; / &#x60;getMailDelist&#x60;. - **Order a new service:** &#x60;getNewMail&#x60; → &#x60;putMail&#x60; → &#x60;addMail&#x60;. ',
            hidden: false,
        },
        operation: {
            inputFields: [
            ],
            outputFields: [
            ],
            perform: async (z, bundle) => {
                const options = {
                    url: utils.replacePathParameters('https://my.interserver.net/apiv2/mail'),
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
                    const results = utils.responseOptionsMiddleware(z, bundle, 'getMailList', response.json);
                    return results;
                })
            },
            sample: samples['MailRowSample']
        }
    },
    getMailWelcomeEmail: {
        key: 'getMailWelcomeEmail',
        noun: 'Mail',
        display: {
            label: 'Resend the Mail Baby welcome email with SMTP credentials and setup info',
            description: 'Re-runs the &#x60;mail_welcome_email&#x60; plugin function — composes and sends the standard welcome email (SMTP host &#x60;relay.mailbaby.net&#x60;, port, username &#x60;mb{mail_id}&#x60;, current password, configuration tips) to the account-on-file. Use after &#x60;resetMailPassword&#x60; to redeliver the rotated credential, or when a customer reports losing the original setup email. Idempotent. Sibling ops: &#x60;resetMailPassword&#x60;, &#x60;getMailInfo&#x60;. Cross-module welcome-email endpoints: &#x60;getVpsWelcomeEmail&#x60;, &#x60;getWebsitesWelcomeEmail&#x60;, &#x60;getDomainsWelcomeEmail&#x60;.  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;mail_id&#x60; from &#x60;getMailList&#x60;.  **Returns:** &#x60;{text: \&quot;Welcome Email has been resent.\&quot;}&#x60;.  **Auth:** Session/API key. Ownership enforced.  **Errors:** &#x60;401&#x60;, &#x60;404&#x60;, &#x60;409 not active&#x60;. ',
            hidden: false,
        },
        operation: {
            inputFields: [
                {
                    key: 'id',
                    label: 'The mail service ID. Use &#x60;mail_id&#x60; from &#x60;GET /mail&#x60;.',
                    type: 'integer',
                    required: true,
                },
            ],
            outputFields: [
                ...SuccessTextResponse.fields('', false),
            ],
            perform: async (z, bundle) => {
                const options = {
                    url: utils.replacePathParameters('https://my.interserver.net/apiv2/mail/{id}/welcome_email'),
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
                    const results = utils.responseOptionsMiddleware(z, bundle, 'getMailWelcomeEmail', response.json);
                    return results;
                })
            },
            sample: samples['SuccessTextResponseSample']
        }
    },
    getNewMail: {
        key: 'getNewMail',
        noun: 'Mail',
        display: {
            label: 'Read the Mail Baby order catalog — plans, package costs, service-type metadata',
            description: 'Step 1 of the Mail Baby order flow. Returns the catalog used to bootstrap an order form: &#x60;packageCosts&#x60; keyed by &#x60;services_id&#x60; (only buyable services where &#x60;services_buyable&#x3D;1&#x60;) and the full &#x60;serviceTypes&#x60; map. Read-only. Pricing is normalized to the customer&#39;s currency via &#x60;getCurrency()&#x60;. Sibling ops: &#x60;putMail&#x60;, &#x60;addMail&#x60;, &#x60;getMailList&#x60;.  **Path/Query/Body:** None.  **Returns** (schema &#x60;MailOrder&#x60;): - &#x60;packageCosts&#x60; (object) — &#x60;{&lt;services_id&gt;: &lt;cost&gt;}&#x60; per buyable plan. - &#x60;serviceTypes&#x60; (object) — full service-types registry (plan metadata).  **Auth:** Session/API key.  **Errors:** - &#x60;401&#x60; — unauthenticated.  **Related calls:** - **Next:** &#x60;putMail&#x60; (validate + quote — no charge), &#x60;addMail&#x60; (place order). ',
            hidden: false,
        },
        operation: {
            inputFields: [
            ],
            outputFields: [
                ...MailOrder.fields('', false),
            ],
            perform: async (z, bundle) => {
                const options = {
                    url: utils.replacePathParameters('https://my.interserver.net/apiv2/mail/order'),
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
                    const results = utils.responseOptionsMiddleware(z, bundle, 'getNewMail', response.json);
                    return results;
                })
            },
            sample: samples['MailOrderSample']
        }
    },
    getRules: {
        key: 'getRules',
        noun: 'Mail',
        display: {
            label: 'List configured deny rules (sender/recipient blocks) for a Mail Baby service',
            description: 'Returns every &#x60;mail_spam&#x60; row scoped to this service&#39;s &#x60;mail_username&#x60; — local sender/recipient block rules the customer has configured. Sibling ops: &#x60;addRule&#x60;, &#x60;updateRule&#x60;, &#x60;deleteRule&#x60;.  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;mail_id&#x60; from &#x60;getMailList&#x60;.  **Returns:** Array of &#x60;DenyRuleRecord&#x60; — &#x60;{id, user, type, data, created}&#x60;. &#x60;type&#x60; values: - &#x60;domain&#x60; — block by sender domain. - &#x60;email&#x60; — block by exact sender email. - &#x60;startswith&#x60; — block when sender local-part starts with a string. - &#x60;destination&#x60; — block by recipient email.  **Auth:** Session/API key. Ownership enforced.  **Errors:** &#x60;401&#x60;, &#x60;404&#x60;, &#x60;409 not active&#x60;. ',
            hidden: false,
        },
        operation: {
            inputFields: [
                {
                    key: 'id',
                    label: 'The mail service ID. Use &#x60;mail_id&#x60; from &#x60;GET /mail&#x60;.',
                    type: 'integer',
                    required: true,
                },
            ],
            outputFields: [
            ],
            perform: async (z, bundle) => {
                const options = {
                    url: utils.replacePathParameters('https://my.interserver.net/apiv2/mail/{id}/rules'),
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
                    const results = utils.responseOptionsMiddleware(z, bundle, 'getRules', response.json);
                    return results;
                })
            },
            sample: samples['DenyRuleRecordSample']
        }
    },
    getStats: {
        key: 'getStats',
        noun: 'Mail',
        display: {
            label: 'Read Mail Baby usage counts, send volume totals, top destinations, and projected cost',
            description: 'Returns aggregate usage and cost metrics for the SMTP user behind &#x60;mail_id&#x60; from the ZoneMTA &#x60;mail_messagestore&#x60; / &#x60;mail_senderdelivered&#x60; tables. Use to drive an analytics dashboard or to project end-of-cycle cost. Sibling ops: &#x60;viewMailLog&#x60;, &#x60;getMailDeliverability&#x60;.  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;mail_id&#x60; from &#x60;getMailList&#x60;.  **Query params:** - &#x60;time&#x60; (string enum, optional, default &#x60;1h&#x60;) — window: &#x60;all&#x60; / &#x60;billing&#x60; (current invoice cycle) / &#x60;month&#x60; / &#x60;7d&#x60; / &#x60;24h&#x60; / &#x60;1d&#x60; / &#x60;1h&#x60;.  **Returns** (schema &#x60;MailStatsType&#x60;): - &#x60;time&#x60; (string) — echo of selected window. - &#x60;usage&#x60; (integer) — full-billing-cycle send count. - &#x60;currency&#x60;, &#x60;currencySymbol&#x60; (string). - &#x60;cost&#x60; (decimal) — projected &#x3D; base + &#x60;$0.20 / 1000 emails&#x60;. - &#x60;received&#x60;, &#x60;sent&#x60; (integer). - &#x60;volume.to&#x60;, &#x60;volume.from&#x60;, &#x60;volume.ip&#x60; (object) — top-500 destinations / senders / origin IPs by count.  **Auth:** Session/API key. Ownership enforced.  **Errors:** &#x60;Invalid or missing mail order id&#x60;, &#x60;401&#x60;. ',
            hidden: false,
        },
        operation: {
            inputFields: [
                {
                    key: 'id',
                    label: 'The mail service ID. Use &#x60;mail_id&#x60; from &#x60;GET /mail&#x60;.',
                    type: 'integer',
                    required: true,
                },
                {
                    key: 'time',
                    label: 'The timeframe for the statistics.',
                    type: 'string',
                    choices: [
                        'all',
                        'billing',
                        'month',
                        '7d',
                        '24h',
                        '1d',
                        '1h',
                    ],
                },
            ],
            outputFields: [
                ...MailStatsType.fields('', false),
            ],
            perform: async (z, bundle) => {
                const options = {
                    url: utils.replacePathParameters('https://my.interserver.net/apiv2/mail/{id}/stats'),
                    method: 'GET',
                    removeMissingValuesFrom: { params: true, body: true },
                    headers: {
                        'Content-Type': '',
                        'Accept': 'application/json',
                    },
                    params: {
                        'time': bundle.inputData?.['time'],
                    },
                    body: {
                    },
                }
                return z.request(utils.requestOptionsMiddleware(z, bundle, options)).then((response) => {
                    response.throwForStatus();
                    const results = utils.responseOptionsMiddleware(z, bundle, 'getStats', response.json);
                    return results;
                })
            },
            sample: samples['MailStatsTypeSample']
        }
    },
    mailCancel: {
        key: 'mailCancel',
        noun: 'Mail',
        display: {
            label: 'Cancel a Mail Baby service and stop the recurring invoice',
            description: 'Cancels the Mail Baby service through the shared &#x60;Billing\\CancelService::go($id)&#x60; flow with &#x60;module&#x3D;&#39;mail&#39;&#x60;. SMTP credentials are deactivated, the service transitions to canceled, the &#x60;repeat_invoice&#x60; is stopped, and queued submissions stop being accepted. **Irreversible via API** — re-activation requires placing a new order via &#x60;addMail&#x60;. Sibling ops: &#x60;getMailInfo&#x60;, &#x60;getMailInvoices&#x60;, &#x60;addMail&#x60;.  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;mail_id&#x60; from &#x60;getMailList&#x60;.  **Returns:** &#x60;MailCancelResponse&#x60;.  **Side effects:** - Sets &#x60;mail_status&#x3D;&#39;canceled&#39;&#x60;. - Marks &#x60;repeat_invoices&#x60; non-renewing. - ZoneMTA-side: stops accepting new submissions for &#x60;mb{mail_id}&#x60;.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - &#x60;401&#x60; — unauthenticated. - &#x60;404&#x60; — &#x60;id&#x60; not owned by caller.  **Related calls:** - **Sibling cancels:** &#x60;VPSCancel&#x60;, &#x60;CancelDomain&#x60;, &#x60;webhostingCancel&#x60;, etc. - **Re-provision:** &#x60;addMail&#x60;. ',
            hidden: false,
        },
        operation: {
            inputFields: [
                {
                    key: 'id',
                    label: 'The mail service ID. Use &#x60;mail_id&#x60; from &#x60;GET /mail&#x60;.',
                    type: 'integer',
                    required: true,
                },
            ],
            outputFields: [
                ...mailCancel_200_response.fields('', false),
            ],
            perform: async (z, bundle) => {
                const options = {
                    url: utils.replacePathParameters('https://my.interserver.net/apiv2/mail/{id}'),
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
                    const results = utils.responseOptionsMiddleware(z, bundle, 'mailCancel', response.json);
                    return results;
                })
            },
            sample: samples['mailCancel_200_responseSample']
        }
    },
    postMailDelist: {
        key: 'postMailDelist',
        noun: 'Mail',
        display: {
            label: 'Delist a sender from rspamd / mailchannels / mailbaby block lists',
            description: 'Removes all block rows for one sender email across three reputation stores: &#x60;rspamd&#x60; (by &#x60;fromemail&#x60;), &#x60;mailchannels&#x60; (by &#x60;email&#x60;), &#x60;mailbaby&#x60; (by &#x60;emailfrom&#x60;). Effect is global per-address across all three tables; takes effect immediately for new submissions. Sibling ops: &#x60;getMailDelist&#x60;, &#x60;delistBlock&#x60; (alias at &#x60;/mail/{id}/blocks/delete&#x60;), &#x60;getMailBlocks&#x60;.  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;mail_id&#x60; from &#x60;getMailList&#x60;.  **Body fields (schema &#x60;MailDelistRequest&#x60;):** - &#x60;unblock&#x60; (string, required) — sender email from &#x60;getMailDelist&#x60;/&#x60;getMailBlocks&#x60;.  **Returns:** &#x60;SuccessTextResponse&#x60;.  **Auth:** Session/API key. Ownership enforced.  **Errors:** &#x60;Missing parameter unblock&#x60;, &#x60;401&#x60;, &#x60;404&#x60;, &#x60;409 not active&#x60;. ',
            hidden: false,
        },
        operation: {
            inputFields: [
                {
                    key: 'id',
                    label: 'The mail service ID. Use &#x60;mail_id&#x60; from &#x60;GET /mail&#x60;.',
                    type: 'integer',
                    required: true,
                },
                ...MailDelistRequest.fields(),
            ],
            outputFields: [
                ...SuccessTextResponse.fields('', false),
            ],
            perform: async (z, bundle) => {
                const options = {
                    url: utils.replacePathParameters('https://my.interserver.net/apiv2/mail/{id}/delist'),
                    method: 'POST',
                    removeMissingValuesFrom: { params: true, body: true },
                    headers: {
                        'Content-Type': 'application/json, multipart/form-data',
                        'Accept': 'application/json',
                    },
                    params: {
                    },
                    body: {
                        ...MailDelistRequest.mapping(bundle),
                    },
                }
                return z.request(utils.requestOptionsMiddleware(z, bundle, options)).then((response) => {
                    response.throwForStatus();
                    const results = utils.responseOptionsMiddleware(z, bundle, 'postMailDelist', response.json);
                    return results;
                })
            },
            sample: samples['SuccessTextResponseSample']
        }
    },
    putMail: {
        key: 'putMail',
        noun: 'Mail',
        display: {
            label: 'Validate Mail Baby order, quote pricing, and verify coupon — no charge',
            description: 'Step 2 of the Mail Baby order flow. Dry-runs the order through &#x60;validate_buy_mail()&#x60; without creating invoices. Returns the cost preview, coupon resolution, and validation errors. The endpoint also auto-generates an SMTP password preview the order will use. Use to surface live pricing in the UI before &#x60;addMail&#x60;. Sibling ops: &#x60;getNewMail&#x60;, &#x60;addMail&#x60;.  **Body fields:** - &#x60;serviceType&#x60; (integer, required) — plan id from &#x60;getNewMail.packageCosts&#x60; keys. - &#x60;coupon&#x60; (string, optional) — coupon code.  **Returns:** - &#x60;continue&#x60; (bool) — &#x60;true&#x60; if order can safely be POSTed. - &#x60;errors&#x60; (array) — validation messages. - &#x60;serviceType&#x60;, &#x60;serviceCost&#x60;, &#x60;originalCost&#x60;, &#x60;repeatServiceCost&#x60; (numeric). - &#x60;password&#x60; (string) — auto-generated SMTP password preview. - &#x60;introFrequency&#x60; (integer). - &#x60;coupon&#x60;, &#x60;couponCode&#x60; (string/integer) — resolved coupon.  **Auth:** Session/API key.  **Errors:** - &#x60;200&#x60; with &#x60;continue&#x3D;false&#x60; and &#x60;errors[]&#x60; — validation problems. - &#x60;401&#x60; — unauthenticated.  **Related calls:** - **Prerequisite:** &#x60;getNewMail&#x60; (catalog). - **Place order:** &#x60;addMail&#x60;. ',
            hidden: false,
        },
        operation: {
            inputFields: [
                ...MailOrderRequest.fields(),
            ],
            outputFields: [
            ],
            perform: async (z, bundle) => {
                const options = {
                    url: utils.replacePathParameters('https://my.interserver.net/apiv2/mail/order'),
                    method: 'PUT',
                    removeMissingValuesFrom: { params: true, body: true },
                    headers: {
                        'Content-Type': 'application/json',
                        'Accept': 'application/json',
                    },
                    params: {
                    },
                    body: {
                        ...MailOrderRequest.mapping(bundle),
                    },
                }
                return z.request(utils.requestOptionsMiddleware(z, bundle, options)).then((response) => {
                    response.throwForStatus();
                    const results = utils.responseOptionsMiddleware(z, bundle, 'putMail', response.json);
                    return results;
                })
            },
            sample: { data: {} }
        }
    },
    resetMailPassword: {
        key: 'resetMailPassword',
        noun: 'Mail',
        display: {
            label: 'Rotate the SMTP password and email the new credential to the account owner',
            description: 'Generates a new 20-char SMTP password (lower/upper/digits via &#x60;generate_password&#x60;), writes it to the ZoneMTA Mongo &#x60;users&#x60; collection for username &#x60;mb{mail_id}&#x60;, logs the change to &#x60;App::history()&#x60;, and emails the result to the account-on-file via &#x60;client_email.tpl&#x60;. **Any MTA, app, or saved client still using the old password will start failing auth immediately.** The new password is **not** returned in the response — fetch via &#x60;getMailWelcomeEmail&#x60; or &#x60;getMailInfo&#x60;. Sibling ops: &#x60;getMailWelcomeEmail&#x60;, &#x60;getMailInfo&#x60;.  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;mail_id&#x60; from &#x60;getMailList&#x60;.  **Returns:** &#x60;SuccessTextResponse&#x60;.  **Side effects:** - Mongo update on ZoneMTA &#x60;users&#x60; for &#x60;mb{mail_id}&#x60;. - &#x60;App::history()&#x60; audit entry. - Email sent to account owner.  **Auth:** Session/API key. Ownership enforced.  **Errors:** Mongo update modified 0 rows → error text; &#x60;401&#x60;, &#x60;404&#x60;, &#x60;409 not active&#x60;. ',
            hidden: false,
        },
        operation: {
            inputFields: [
                {
                    key: 'id',
                    label: 'The mail service ID. Use &#x60;mail_id&#x60; from &#x60;GET /mail&#x60;.',
                    type: 'integer',
                    required: true,
                },
            ],
            outputFields: [
                ...SuccessTextResponse.fields('', false),
            ],
            perform: async (z, bundle) => {
                const options = {
                    url: utils.replacePathParameters('https://my.interserver.net/apiv2/mail/{id}/reset_password'),
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
                    const results = utils.responseOptionsMiddleware(z, bundle, 'resetMailPassword', response.json);
                    return results;
                })
            },
            sample: samples['SuccessTextResponseSample']
        }
    },
    sendAdvMail: {
        key: 'sendAdvMail',
        noun: 'Mail',
        display: {
            label: 'Send email via Mail Baby SMTP relay with attachments, CC/BCC, and multi-recipient',
            description: 'Submits an outbound message through &#x60;relay.mailbaby.net:25&#x60; using the service&#39;s SMTP credentials (fetched via &#x60;mail_get_password&#x60;). Use for multi-recipient sends, named addresses, CC/BCC, ReplyTo, or attachments. For single-recipient plain sends, &#x60;sendMail&#x60; is the lighter option. Sibling ops: &#x60;sendMail&#x60;, &#x60;viewMailLog&#x60; (find queued message), &#x60;getMailDeliverability&#x60; (analyze bounces).  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;mail_id&#x60; from &#x60;getMailList&#x60;.  **Body fields (JSON or form-urlencoded, schema &#x60;SendMailAdv&#x60;):** - &#x60;from&#x60; (string or &#x60;{email, name}&#x60;, required). - &#x60;to&#x60; (array of strings or &#x60;{email, name}&#x60; objects, required). - &#x60;subject&#x60; (string, required). - &#x60;body&#x60; (string, required) — HTML auto-detected when tags are present. - &#x60;replyto&#x60; (array, optional) — same shape as &#x60;to&#x60;. - &#x60;cc&#x60;, &#x60;bcc&#x60; (array, optional) — same shape as &#x60;to&#x60;. - &#x60;attachments&#x60; (array, optional) — each &#x60;{filename, data}&#x60; where &#x60;data&#x60; is base64-encoded; added via &#x60;addStringAttachment&#x60;.  **Returns:** &#x60;{status: \&quot;ok\&quot;, text: \&quot;Email queued successfully\&quot;}&#x60;.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - &#x60;400&#x60; with PHPMailer &#x60;ErrorInfo&#x60; on send failure or missing required field. - &#x60;401&#x60; — unauthenticated. - &#x60;404 Invalid Service Passed&#x60;. - &#x60;409 Service is not active&#x60;. ',
            hidden: false,
        },
        operation: {
            inputFields: [
                {
                    key: 'id',
                    label: 'The mail service ID. Use &#x60;mail_id&#x60; from &#x60;GET /mail&#x60;.',
                    type: 'integer',
                    required: true,
                },
                ...SendMailAdv.fields(),
            ],
            outputFields: [
                ...GenericResponse.fields('', false),
            ],
            perform: async (z, bundle) => {
                const options = {
                    url: utils.replacePathParameters('https://my.interserver.net/apiv2/mail/{id}/advsend'),
                    method: 'POST',
                    removeMissingValuesFrom: { params: true, body: true },
                    headers: {
                        'Content-Type': 'application/json, application/x-www-form-urlencoded',
                        'Accept': 'application/json',
                    },
                    params: {
                    },
                    body: {
                        ...SendMailAdv.mapping(bundle),
                    },
                }
                return z.request(utils.requestOptionsMiddleware(z, bundle, options)).then((response) => {
                    response.throwForStatus();
                    const results = utils.responseOptionsMiddleware(z, bundle, 'sendAdvMail', response.json);
                    return results;
                })
            },
            sample: samples['GenericResponseSample']
        }
    },
    sendMail: {
        key: 'sendMail',
        noun: 'Mail',
        display: {
            label: 'Send a simple single-recipient email through the Mail Baby SMTP relay',
            description: 'Sends a single-recipient transactional email through &#x60;relay.mailbaby.net:25&#x60; authenticated as this &#x60;mail_id&#x60;. Body fields are the minimum needed for a plain send; Reply-To is auto-set to &#x60;from&#x60;. For multi-recipient sends, CC/BCC, named addresses, or attachments use &#x60;sendAdvMail&#x60; instead. Sibling ops: &#x60;sendAdvMail&#x60;, &#x60;viewMailLog&#x60;.  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;mail_id&#x60; from &#x60;getMailList&#x60;.  **Body fields (JSON or form-urlencoded, schema &#x60;SendMail&#x60;):** - &#x60;to&#x60; (string, required) — recipient email. - &#x60;from&#x60; (string, required) — sender email. - &#x60;subject&#x60; (string, required). - &#x60;body&#x60; (string, required) — HTML auto-detected when tags are present.  **Returns:** &#x60;{status: \&quot;ok\&quot;, text: \&quot;Email queued successfully\&quot;}&#x60;.  **Auth:** Session/API key. Ownership enforced.  **Errors:** &#x60;400&#x60; with PHPMailer &#x60;ErrorInfo&#x60; on send failure or missing required field, &#x60;401&#x60;, &#x60;404&#x60;, &#x60;409 not active&#x60;. ',
            hidden: false,
        },
        operation: {
            inputFields: [
                {
                    key: 'id',
                    label: 'The mail service ID. Use &#x60;mail_id&#x60; from &#x60;GET /mail&#x60;.',
                    type: 'integer',
                    required: true,
                },
                ...SendMail.fields(),
            ],
            outputFields: [
                ...GenericResponse.fields('', false),
            ],
            perform: async (z, bundle) => {
                const options = {
                    url: utils.replacePathParameters('https://my.interserver.net/apiv2/mail/{id}/send'),
                    method: 'POST',
                    removeMissingValuesFrom: { params: true, body: true },
                    headers: {
                        'Content-Type': 'application/json, application/x-www-form-urlencoded',
                        'Accept': 'application/json',
                    },
                    params: {
                    },
                    body: {
                        ...SendMail.mapping(bundle),
                    },
                }
                return z.request(utils.requestOptionsMiddleware(z, bundle, options)).then((response) => {
                    response.throwForStatus();
                    const results = utils.responseOptionsMiddleware(z, bundle, 'sendMail', response.json);
                    return results;
                })
            },
            sample: samples['GenericResponseSample']
        }
    },
    updateMailAlert: {
        key: 'updateMailAlert',
        noun: 'Mail',
        display: {
            label: 'Update an existing Mail Baby alert by alert_id',
            description: 'Updates a single alert row by &#x60;alert_id&#x60;. Handler verifies the alert belongs to this service+module before writing. Sibling ops: &#x60;getMailAlerts&#x60;, &#x60;createMailAlert&#x60;, &#x60;deleteMailAlert&#x60;.  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;mail_id&#x60; from &#x60;getMailList&#x60;.  **Body fields (schema &#x60;MailAlertUpdateRequest&#x60;):** - &#x60;alert_id&#x60; (integer, required) — from &#x60;getMailAlerts&#x60;. - &#x60;type&#x60; (string, required). - &#x60;value&#x60; (string/numeric, required) — threshold. - &#x60;to&#x60; (string, required) — notification email; validated via &#x60;FILTER_VALIDATE_EMAIL&#x60;. - &#x60;enabled&#x60; (bool, optional).  **Returns:** &#x60;SuccessTextResponse&#x60;.  **Auth:** Session/API key. Ownership enforced.  **Errors:** &#x60;Invalid alert!&#x60; (alert not owned), field-level errors for missing/invalid body, &#x60;401&#x60;, &#x60;404&#x60;, &#x60;409 not active&#x60;. ',
            hidden: false,
        },
        operation: {
            inputFields: [
                {
                    key: 'id',
                    label: 'The mail service ID. Use &#x60;mail_id&#x60; from &#x60;GET /mail&#x60;.',
                    type: 'integer',
                    required: true,
                },
                ...MailAlertUpdateRequest.fields(),
            ],
            outputFields: [
                ...SuccessTextResponse.fields('', false),
            ],
            perform: async (z, bundle) => {
                const options = {
                    url: utils.replacePathParameters('https://my.interserver.net/apiv2/mail/{id}/alerts'),
                    method: 'PUT',
                    removeMissingValuesFrom: { params: true, body: true },
                    headers: {
                        'Content-Type': 'application/json, multipart/form-data',
                        'Accept': 'application/json',
                    },
                    params: {
                    },
                    body: {
                        ...MailAlertUpdateRequest.mapping(bundle),
                    },
                }
                return z.request(utils.requestOptionsMiddleware(z, bundle, options)).then((response) => {
                    response.throwForStatus();
                    const results = utils.responseOptionsMiddleware(z, bundle, 'updateMailAlert', response.json);
                    return results;
                })
            },
            sample: samples['SuccessTextResponseSample']
        }
    },
    updateMailInfo: {
        key: 'updateMailInfo',
        noun: 'Mail',
        display: {
            label: 'POST mutation hook for the Mail Baby service detail page',
            description: 'POST mutation hook for the Mail Baby service detail page. Currently delegates to the same &#x60;View::go()&#x60; handler as &#x60;getMailInfo&#x60; — placeholder for future field updates. Does NOT rotate credentials (use &#x60;resetMailPassword&#x60;) and does NOT change billing (use &#x60;/billing&#x60; endpoints). Sibling ops: &#x60;getMailInfo&#x60;, &#x60;mailCancel&#x60;, &#x60;resetMailPassword&#x60;.  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;mail_id&#x60; from &#x60;getMailList&#x60;.  **Body:** Form fields.  **Returns:** &#x60;SuccessTextResponse&#x60;.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - &#x60;401&#x60; — unauthenticated. - &#x60;404&#x60; — &#x60;id&#x60; not owned by caller. - &#x60;409&#x60; — &#x60;mail_status !&#x3D; \&quot;active\&quot;&#x60;.  **Related calls:** - **Read:** &#x60;getMailInfo&#x60;. - **Rotate password:** &#x60;resetMailPassword&#x60;. ',
            hidden: false,
        },
        operation: {
            inputFields: [
                {
                    key: 'id',
                    label: 'The mail service ID. Use &#x60;mail_id&#x60; from &#x60;GET /mail&#x60;.',
                    type: 'string',
                    required: true,
                },
            ],
            outputFields: [
                ...SuccessTextResponse.fields('', false),
            ],
            perform: async (z, bundle) => {
                const options = {
                    url: utils.replacePathParameters('https://my.interserver.net/apiv2/mail/{id}'),
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
                    const results = utils.responseOptionsMiddleware(z, bundle, 'updateMailInfo', response.json);
                    return results;
                })
            },
            sample: samples['SuccessTextResponseSample']
        }
    },
    updateRule: {
        key: 'updateRule',
        noun: 'Mail',
        display: {
            label: 'Update an existing Mail Baby deny rule&#39;s type and match data',
            description: 'Updates &#x60;type&#x60; and &#x60;data&#x60; on a single &#x60;mail_spam&#x60; row. Query is bounded by &#x60;id&#x3D;{rule} AND user&#x3D;&#39;{mail_username}&#39;&#x60; so cross-tenant updates are impossible. Same validation rules as &#x60;addRule&#x60;. Sibling ops: &#x60;getRules&#x60;, &#x60;addRule&#x60;, &#x60;deleteRule&#x60;.  **Path params:** - &#x60;id&#x60; (integer, required) — &#x60;mail_id&#x60; from &#x60;getMailList&#x60;. - &#x60;rule&#x60; (string, required) — rule id from &#x60;getRules&#x60;.  **Body fields (schema &#x60;DenyRuleNew&#x60;):** - &#x60;type&#x60; (string, required) — &#x60;domain&#x60; / &#x60;email&#x60; / &#x60;startswith&#x60; / &#x60;destination&#x60;. - &#x60;data&#x60; (string, required) — see &#x60;addRule&#x60; for type-specific validation.  **Returns:** &#x60;\&quot;Record updated successfully.\&quot;&#x60;.  **Auth:** Session/API key. Ownership enforced.  **Errors:** field-level errors on validation failure, &#x60;401&#x60;, &#x60;404&#x60;, &#x60;409 not active&#x60;. ',
            hidden: false,
        },
        operation: {
            inputFields: [
                {
                    key: 'id',
                    label: 'The mail service ID. Use &#x60;mail_id&#x60; from &#x60;GET /mail&#x60;.',
                    type: 'integer',
                    required: true,
                },
                {
                    key: 'rule',
                    label: 'The ID of the deny rule to update.',
                    type: 'string',
                    required: true,
                },
                ...DenyRuleNew.fields(),
            ],
            outputFields: [
                ...GenericResponse.fields('', false),
            ],
            perform: async (z, bundle) => {
                const options = {
                    url: utils.replacePathParameters('https://my.interserver.net/apiv2/mail/{id}/rules/{rule}'),
                    method: 'PUT',
                    removeMissingValuesFrom: { params: true, body: true },
                    headers: {
                        'Content-Type': 'application/json, multipart/form-data',
                        'Accept': 'application/json',
                    },
                    params: {
                    },
                    body: {
                        ...DenyRuleNew.mapping(bundle),
                    },
                }
                return z.request(utils.requestOptionsMiddleware(z, bundle, options)).then((response) => {
                    response.throwForStatus();
                    const results = utils.responseOptionsMiddleware(z, bundle, 'updateRule', response.json);
                    return results;
                })
            },
            sample: samples['GenericResponseSample']
        }
    },
    viewMailLog: {
        key: 'viewMailLog',
        noun: 'Mail',
        display: {
            label: 'Search and paginate per-message Mail Baby delivery log entries',
            description: 'Paginated search over ZoneMTA&#39;s &#x60;mail_messagestore&#x60; joined with &#x60;mail_senderdelivered&#x60; and &#x60;mail_queuerelease&#x60;. Supports envelope, header, and metadata filters; sortable; choose recipient-level or message-level grouping. Use to investigate delivery issues, find specific messages by Message-ID, audit bounce rates, or feed an analytics dashboard. Sibling ops: &#x60;getStats&#x60;, &#x60;getMailDeliverability&#x60;, &#x60;delistBlock&#x60; (clear a block surfaced by a bounce).  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;mail_id&#x60; from &#x60;getMailList&#x60; (omit to span all owned mail users — admin-only).  **Query params:** - &#x60;from&#x60;, &#x60;to&#x60; (string) — envelope address, exact match. - &#x60;headerfrom&#x60;, &#x60;replyto&#x60; (string) — header address, exact match; validated as email. - &#x60;subject&#x60; (string) — LIKE match on subject. - &#x60;mailid&#x60; (string, 18–19 chars) — relay id, exact. - &#x60;messageId&#x60; (string) — Message-ID header, substring match. - &#x60;origin&#x60; (string) — submitter IP, exact. - &#x60;mx&#x60; (string) — destination MX hostname, LIKE. - &#x60;delivered&#x60; (integer 0/1). - &#x60;startDate&#x60;, &#x60;endDate&#x60; (Unix timestamp or &#x60;strtotime&#x60;-parseable string). - &#x60;skip&#x60; (integer, default 0), &#x60;limit&#x60; (integer 1–10000, default 100). - &#x60;sort&#x60; (&#x60;time&#x60;), &#x60;dir&#x60; (&#x60;asc&#x60;/&#x60;desc&#x60;, default &#x60;desc&#x60;). - &#x60;groupby&#x60; (&#x60;recipient&#x60; default — one row per delivery attempt; &#x60;message&#x60; — one row per &#x60;_id&#x60;).  **Returns** (schema &#x60;MailLog&#x60;): &#x60;{total, skip, limit, emails: [{id, _id, from, to, subject, messageId, time, mxHostname, delivered, code, response, recipient, ...}]}&#x60;.  **Auth:** Session/API key. Ownership enforced.  **Errors:** &#x60;400&#x60; bad input, &#x60;401&#x60;. ',
            hidden: false,
        },
        operation: {
            inputFields: [
                {
                    key: 'id',
                    label: 'The mail service ID. Use &#x60;mail_id&#x60; from &#x60;GET /mail&#x60;.',
                    type: 'integer',
                    required: true,
                },
                {
                    key: 'id',
                    label: 'The numeric ID of the mail order to filter by.  When omitted, logs from the first active mail order are returned.  Obtain valid IDs from &#x60;GET /mail&#x60; or &#x60;GET /mail/{id}&#x60;.',
                    type: 'number',
                },
                {
                    key: 'origin',
                    label: 'Filter by the originating IP address from which the message was submitted to the relay.  Must be a valid IPv4 or IPv6 address.',
                    type: 'string',
                },
                {
                    key: 'mx',
                    label: 'Filter by the MX hostname the relay attempted delivery to.  For example &#x60;mx.google.com&#x60; would return messages destined for Gmail recipients. Maps to &#x60;mxHostname&#x60; in the &#x60;MailLogEntry&#x60; response.',
                    type: 'string',
                },
                {
                    key: 'from',
                    label: 'Filter by SMTP envelope &#x60;MAIL FROM&#x60; address (exact match).  This is the address the relay used for bounce handling and may differ from the &#x60;From:&#x60; message header.  For header-level filtering use &#x60;headerfrom&#x60;.',
                    type: 'string',
                },
                {
                    key: 'to',
                    label: 'Filter by SMTP envelope &#x60;RCPT TO&#x60; address (exact match).  This is the delivery address used by the relay and may differ from the &#x60;To:&#x60; header when BCC recipients are involved.',
                    type: 'string',
                },
                {
                    key: 'subject',
                    label: 'Filter by email &#x60;Subject&#x60; header (exact match).  MIME-encoded subjects are decoded automatically in the response.',
                    type: 'string',
                },
                {
                    key: 'mailid',
                    label: 'Filter by the relay-assigned mail ID string (exact match).  This corresponds to the &#x60;id&#x60; field in &#x60;MailLogEntry&#x60; and to the &#x60;text&#x60; value returned by the sending endpoints on success.  Format is an 18-19 character hexadecimal string such as &#x60;185997065c60008840&#x60;.',
                    type: 'string',
                },
                {
                    key: 'messageId',
                    label: 'Filter by the &#x60;Message-ID&#x60; email header using a substring (case-insensitive) match. The &#x60;Message-ID&#x60; is assigned by the sending mail client and is visible in the &#x60;messageId&#x60; field of &#x60;MailLogEntry&#x60;.',
                    type: 'string',
                },
                {
                    key: 'replyto',
                    label: 'Filter by the &#x60;Reply-To&#x60; message header address (exact match).  Only returns messages where this header was explicitly set.',
                    type: 'string',
                },
                {
                    key: 'headerfrom',
                    label: 'Filter by the &#x60;From&#x60; message header address (exact match).  This is the human-visible sender address and may differ from the SMTP envelope &#x60;from&#x60; parameter when sending on behalf of another address.',
                    type: 'string',
                },
                {
                    key: 'delivered',
                    label: 'Filter by delivery status.  &#x60;1&#x60; returns only messages that were successfully delivered to the destination MX.  &#x60;0&#x60; returns messages that are still queued, deferred, or failed.  Omit to return all messages regardless of delivery status.',
                    type: 'integer',
                    choices: [
                        '0',
                        '1',
                    ],
                },
                {
                    key: 'skip',
                    label: 'Number of records to skip for pagination.  Use in combination with &#x60;limit&#x60; to page through large result sets.  Defaults to &#x60;0&#x60; (no skip).',
                    type: 'integer',
                },
                {
                    key: 'limit',
                    label: 'Maximum number of records to return per page.  Defaults to &#x60;100&#x60;. Maximum allowed value is &#x60;10000&#x60;.  The response also includes a &#x60;total&#x60; field with the full matched count so you can calculate the number of pages.',
                    type: 'integer',
                },
                ....fields(),
                ....fields(),
                {
                    key: 'sort',
                    label: 'Field to sort results by.  Currently only &#x60;time&#x60; is supported (sorts by internal row ID which corresponds to chronological order).',
                    type: 'string',
                    choices: [
                        'time',
                    ],
                },
                {
                    key: 'dir',
                    label: 'Sort direction.  &#x60;desc&#x60; returns newest first (default), &#x60;asc&#x60; returns oldest first.',
                    type: 'string',
                    choices: [
                        'asc',
                        'desc',
                    ],
                },
                {
                    key: 'groupby',
                    label: 'Controls how results are grouped.  &#x60;recipient&#x60; (default) returns one row per delivery attempt — a message sent to 4 recipients produces 4 rows, each with its own &#x60;recipient&#x60;, &#x60;delivered&#x60;, &#x60;response&#x60;, and delivery metadata.  &#x60;message&#x60; collapses to one row per unique message ID; delivery-level fields will reflect one arbitrary recipient per message.  The &#x60;total&#x60; count in the response matches the grouping mode.',
                    type: 'string',
                    choices: [
                        'message',
                        'recipient',
                    ],
                },
            ],
            outputFields: [
                ...MailLog.fields('', false),
            ],
            perform: async (z, bundle) => {
                const options = {
                    url: utils.replacePathParameters('https://my.interserver.net/apiv2/mail/{id}/log'),
                    method: 'GET',
                    removeMissingValuesFrom: { params: true, body: true },
                    headers: {
                        'Content-Type': '',
                        'Accept': 'application/json',
                    },
                    params: {
                        'id': bundle.inputData?.['id'],
                        'origin': bundle.inputData?.['origin'],
                        'mx': bundle.inputData?.['mx'],
                        'from': bundle.inputData?.['from'],
                        'to': bundle.inputData?.['to'],
                        'subject': bundle.inputData?.['subject'],
                        'mailid': bundle.inputData?.['mailid'],
                        'messageId': bundle.inputData?.['messageId'],
                        'replyto': bundle.inputData?.['replyto'],
                        'headerfrom': bundle.inputData?.['headerfrom'],
                        'delivered': bundle.inputData?.['delivered'],
                        'skip': bundle.inputData?.['skip'],
                        'limit': bundle.inputData?.['limit'],
                        'startDate': bundle.inputData?.['startDate'],
                        'endDate': bundle.inputData?.['endDate'],
                        'sort': bundle.inputData?.['sort'],
                        'dir': bundle.inputData?.['dir'],
                        'groupby': bundle.inputData?.['groupby'],
                    },
                    body: {
                    },
                }
                return z.request(utils.requestOptionsMiddleware(z, bundle, options)).then((response) => {
                    response.throwForStatus();
                    const results = utils.responseOptionsMiddleware(z, bundle, 'viewMailLog', response.json);
                    return results;
                })
            },
            sample: samples['MailLogSample']
        }
    },
}
