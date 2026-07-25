const samples = require('../samples/ServersApi');
const BuyItNowList = require('../models/BuyItNowList');
const ChargeInvoiceRows = require('../models/ChargeInvoiceRows');
const ReverseDnsEntries = require('../models/ReverseDnsEntries');
const Server = require('../models/Server');
const ServerBulkIpmiPowerResponse = require('../models/ServerBulkIpmiPowerResponse');
const ServerIpmiLiveInfo = require('../models/ServerIpmiLiveInfo');
const ServerOrder = require('../models/ServerOrder');
const ServerOrderPostRequest = require('../models/ServerOrderPostRequest');
const ServerRow = require('../models/ServerRow');
const ServersBuyNowError = require('../models/ServersBuyNowError');
const ServersBuyNowResponse = require('../models/ServersBuyNowResponse');
const SuccessTextResponse = require('../models/SuccessTextResponse');
const TextResponse = require('../models/TextResponse');
const addServer_200_response = require('../models/addServer_200_response');
const buyItNowServerOrder_200_response = require('../models/buyItNowServerOrder_200_response');
const getAccountInfo_401_response = require('../models/getAccountInfo_401_response');
const placeBuyNowServer_request = require('../models/placeBuyNowServer_request');
const serversCancel_200_response = require('../models/serversCancel_200_response');
const utils = require('../utils/utils');
const FormData = require('form-data');
const FormData = require('form-data');

module.exports = {
    addServer: {
        key: 'addServer',
        noun: 'Servers',
        display: {
            label: 'Place a custom dedicated server order, creating a real billable invoice',
            description: 'Submits a fully custom dedicated server order. Creates a &#x60;pending&#x60; &#x60;servers&#x60; row, a &#x60;Repeat_Invoice&#x60;, and the first invoice, then emails customer + admin. Caveat: real billable order — confirm with the user first. Body (form fields): &#x60;cpu&#x60; (id from &#x60;cpu_li&#x60;), &#x60;hd[]&#x60; (array of drive ids), &#x60;memory&#x60;, &#x60;bandwidth&#x60;, &#x60;ips&#x60;, &#x60;os&#x60;, &#x60;cp&#x60;, &#x60;raid&#x60; (ids from &#x60;getNewServer&#x60;), &#x60;region&#x60; (region_id), &#x60;servername&#x60; (valid hostname), &#x60;rootpass&#x60;, &#x60;tos&#x60; (must be true), optional &#x60;comment&#x60;. &#x60;account.server_order_discount&#x60; (if set) applies. Returns: &#x60;{ text:&#39;Order Completed&#39;, invoice, order }&#x60;. Errors: 422 &#39;Missing/Invalid &lt;field&gt;&#39;; 401 unauth. Sibling ops: &#x60;getNewServer&#x60; (options), &#x60;placeBuyNowServer&#x60; (pre-built path), &#x60;getServerInfo&#x60; (view new order), &#x60;getServerInvoices&#x60;.',
            hidden: false,
        },
        operation: {
            inputFields: [
                ...ServerOrderPostRequest.fields(),
            ],
            outputFields: [
                ...addServer_200_response.fields('', false),
            ],
            perform: async (z, bundle) => {
                const options = {
                    url: utils.replacePathParameters('https://my.interserver.net/apiv2/servers/order'),
                    method: 'POST',
                    removeMissingValuesFrom: { params: true, body: true },
                    headers: {
                        'Content-Type': 'application/json',
                        'Accept': 'application/json',
                    },
                    params: {
                    },
                    body: {
                        ...ServerOrderPostRequest.mapping(bundle),
                    },
                }
                return z.request(utils.requestOptionsMiddleware(z, bundle, options)).then((response) => {
                    response.throwForStatus();
                    const results = utils.responseOptionsMiddleware(z, bundle, 'addServer', response.json);
                    return results;
                })
            },
            sample: samples['addServer_200_responseSample']
        }
    },
    buyItNowServerOrder: {
        key: 'buyItNowServerOrder',
        noun: 'Servers',
        display: {
            label: 'Get configurable options for a Rapid Deploy / coupon dedicated server',
            description: 'Step 1 of the Rapid Deploy / coupon dedicated server order flow. Returns options + pricing for either a marketplace asset (&#x60;a&#x3D;&lt;asset_id&gt;&#x60;) or a coupon (&#x60;c&#x3D;&lt;coupon_name&gt;&#x60;) so the order form can be rendered before &#x60;placeBuyNowServer&#x60;. Read-only; no charge. Sibling ops: &#x60;placeBuyNowServer&#x60; (commit), &#x60;getMPServers&#x60; (browse marketplace), &#x60;addServer&#x60; (custom build flow).  **Query (one required):** - &#x60;a&#x60; (integer) — asset_id from &#x60;getMPServers&#x60;. - &#x60;c&#x60; (string) — &#x60;server_coupons.name&#x60;.  **Returns:** &#x60;{ bandwidth[], ips[], os[], cp[], raid[], regions[], a?: {asset + items}, c?: {coupon + region} }&#x60;. Each option row is &#x60;{ id, short_desc, long_desc, monthly_price }&#x60; — feed those ids into &#x60;placeBuyNowServer&#x60;.  **Auth:** Session/API key.  **Errors:** - &#x60;400&#x60; — &#x60;&#39;No Server Coupon or Market-Place Asset Specified&#39;&#x60; when neither &#x60;a&#x60; nor &#x60;c&#x60; is passed. - &#x60;400&#x60; — &#x60;&#39;Invalid Asset ID&#39;&#x60; / &#x60;&#39;No Server Coupon with that name&#39;&#x60;. - &#x60;409&#x60; — &#x60;&#39;Server already sold!&#39;&#x60; (asset already in-cart) or &#x60;&#39;Server Out of stock&#39;&#x60; (coupon). - &#x60;401&#x60; — unauthenticated.  **Related calls:** - **Next:** &#x60;placeBuyNowServer&#x60; (commit the order). - **Browse:** &#x60;getMPServers&#x60;. - **Custom build alternative:** &#x60;addServer&#x60;. ',
            hidden: false,
        },
        operation: {
            inputFields: [
            ],
            outputFields: [
                ...buyItNowServerOrder_200_response.fields('', false),
            ],
            perform: async (z, bundle) => {
                const options = {
                    url: utils.replacePathParameters('https://my.interserver.net/apiv2/servers/order/buy_now_server'),
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
                    const results = utils.responseOptionsMiddleware(z, bundle, 'buyItNowServerOrder', response.json);
                    return results;
                })
            },
            sample: samples['buyItNowServerOrder_200_responseSample']
        }
    },
    getMPServers: {
        key: 'getMPServers',
        noun: 'ServersPublic',
        display: {
            label: 'List Rapid Deploy (Buy-It-Now) marketplace dedicated servers with live pricing',
            description: 'Use to browse pre-built dedicated servers ready for immediate provisioning (Rapid Deploy / marketplace). No params, no body. Pulls live inventory from &#x60;mynew.interserver.net/ajax/server_a.php&#x60;. Returns: array of &#x60;{ server_id, cpu: [model, {img,type,speed,num_cpus,num_cores}], memory, disk, bandwidth, ips, location, price }&#x60;. The &#x60;server_id&#x60; is the marketplace asset id — feed it into &#x60;buyItNowServerOrder&#x60; (GET options for asset &#x60;?a&#x3D;&lt;id&gt;&#x60;) and &#x60;placeBuyNowServer&#x60; (POST to commit). Errors: 401 if session expired. Sibling ops: &#x60;buyItNowServerOrder&#x60; (configure asset), &#x60;placeBuyNowServer&#x60; (purchase), &#x60;getNewServer&#x60;/&#x60;addServer&#x60; (custom-spec build, not pre-built), &#x60;getServerList&#x60; (already-owned servers).',
            hidden: false,
        },
        operation: {
            inputFields: [
            ],
            outputFields: [
                ...BuyItNowList.fields('', false),
            ],
            perform: async (z, bundle) => {
                const options = {
                    url: utils.replacePathParameters('https://my.interserver.net/apiv2/buy_now_servers_list'),
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
                    const results = utils.responseOptionsMiddleware(z, bundle, 'getMPServers', response.json);
                    return results;
                })
            },
            sample: samples['BuyItNowListSample']
        }
    },
    getNewServer: {
        key: 'getNewServer',
        noun: 'Servers',
        display: {
            label: 'Get custom dedicated server ordering options, regions, and pricing',
            description: 'Use before placing a fully custom (non-Rapid-Deploy) dedicated server order to discover available CPUs, drives, memory tiers, OS images, control panels, RAID levels, bandwidth packages, IP blocks, and regions with monthly prices. No params, no body. Returns: object with &#x60;config_li&#x60; keyed by category (&#x60;cpu_li&#x60;, &#x60;hd_li&#x60;, &#x60;memory_li&#x60;, &#x60;bandwidth_li&#x60;, &#x60;ips_li&#x60;, &#x60;os_li&#x60;, &#x60;cp_li&#x60;, &#x60;raid_li&#x60;) plus &#x60;regions&#x60;. Use returned IDs as POST values for &#x60;addServer&#x60;. Note &#x60;hd_li&#x60; and &#x60;memory_li&#x60; are nested by &#x60;cpu&#x60; id — the chosen CPU constrains valid drive/memory options. Errors: 401 if not authenticated. Sibling ops: &#x60;addServer&#x60; (commits the order), &#x60;buyItNowServerOrder&#x60; (pre-built marketplace alternative), &#x60;getMPServers&#x60; (browse marketplace).',
            hidden: false,
        },
        operation: {
            inputFields: [
            ],
            outputFields: [
                ...ServerOrder.fields('', false),
            ],
            perform: async (z, bundle) => {
                const options = {
                    url: utils.replacePathParameters('https://my.interserver.net/apiv2/servers/order'),
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
                    const results = utils.responseOptionsMiddleware(z, bundle, 'getNewServer', response.json);
                    return results;
                })
            },
            sample: samples['ServerOrderSample']
        }
    },
    getServerInfo: {
        key: 'getServerInfo',
        noun: 'Servers',
        display: {
            label: 'Get full hardware, network, and lifecycle details for a dedicated server',
            description: 'Use to fetch complete configuration for one dedicated server — hardware, network/VLAN/IP layout, asset assignments, location, status, billing references, and client action links. Path param: &#x60;id&#x60; (integer server_id, from &#x60;getServerList&#x60;). No body. Returns: &#x60;ViewServer::getDetails()&#x60; shape: &#x60;serviceInfo&#x60;, &#x60;networkInfo&#x60; (vlans + assets, with &#x60;ipmi_admin_username&#x60;/&#x60;ipmi_admin_password&#x60; and admin lease creds REDACTED for client safety), normalized &#x60;client_links&#x60;, &#x60;serviceType&#x60;. &#x60;admin_links&#x60;/raw &#x60;settings&#x60;/&#x60;csrf&#x60; stripped. Errors: 404 not owned; 401 unauth. Sibling ops: &#x60;getServerInvoices&#x60;, &#x60;serverIpmiLiveGet&#x60;, &#x60;serverIpmiPowerGet&#x60; (single — prefer &#x60;serverBulkIpmiPowerGet&#x60; for many), &#x60;getServerReverseDns&#x60;, &#x60;getServersWelcomeEmail&#x60;, &#x60;serversCancel&#x60;.',
            hidden: false,
        },
        operation: {
            inputFields: [
                {
                    key: 'id',
                    label: 'Server ID number.',
                    type: 'integer',
                    required: true,
                },
            ],
            outputFields: [
                ...Server.fields('', false),
            ],
            perform: async (z, bundle) => {
                const options = {
                    url: utils.replacePathParameters('https://my.interserver.net/apiv2/servers/{id}'),
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
                    const results = utils.responseOptionsMiddleware(z, bundle, 'getServerInfo', response.json);
                    return results;
                })
            },
            sample: samples['ServerSample']
        }
    },
    getServerInvoices: {
        key: 'getServerInvoices',
        noun: 'Servers',
        display: {
            label: 'List billing invoices (charges + payments) tied to one dedicated server',
            description: 'Use to retrieve the invoice history for a single dedicated server — e.g. before a cancel, refund, or to show outstanding balances. Path param: &#x60;id&#x60; (integer server_id from &#x60;getServerList&#x60;). No body. Inherits from &#x60;MyAdmin\\Api\\Billing\\InvoicesList&#x60; with module&#x3D;servers. Returns: &#x60;ChargeInvoiceRows&#x60; array — invoice rows with id, date, amount, status, currency, line items. Errors: 404 if &#x60;id&#x60; not owned by the caller; 401 unauth. Sibling ops: &#x60;getServerInfo&#x60; (current service state), &#x60;serversCancel&#x60; (cancel), &#x60;getBillingInvoice&#x60; (single invoice by invoice id), &#x60;getVpsInvoices&#x60;/&#x60;getDomainInvoices&#x60; for other modules, &#x60;getServersWelcomeEmail&#x60; to resend setup info.',
            hidden: false,
        },
        operation: {
            inputFields: [
                {
                    key: 'id',
                    label: 'Server ID number',
                    type: 'integer',
                    required: true,
                },
            ],
            outputFields: [
                ...ChargeInvoiceRows.fields('', false),
            ],
            perform: async (z, bundle) => {
                const options = {
                    url: utils.replacePathParameters('https://my.interserver.net/apiv2/servers/{id}/invoices'),
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
                    const results = utils.responseOptionsMiddleware(z, bundle, 'getServerInvoices', response.json);
                    return results;
                })
            },
            sample: samples['ChargeInvoiceRowsSample']
        }
    },
    getServerList: {
        key: 'getServerList',
        noun: 'Servers',
        display: {
            label: 'List all dedicated servers owned by the authenticated customer',
            description: 'Use to enumerate physical bare-metal dedicated servers on the calling account. No params, no body. Filters &#x60;servers&#x60; by session &#x60;account_id&#x60;. Returns: array of &#x60;{ server_id, account_lid, server_hostname, server_status }&#x60;. Use &#x60;server_id&#x60; with &#x60;getServerInfo&#x60; for full hardware/network/IPMI details, &#x60;getServerInvoices&#x60; for billing, or &#x60;serverIpmiPowerGet&#x60; for chassis power state. Errors: 401 if not authenticated; empty array if account owns no servers. Sibling ops: &#x60;getServerInfo&#x60; (details), &#x60;getVpsList&#x60; (virtual instead of physical hardware), &#x60;getMPServers&#x60; (purchasable inventory, not owned). For IPMI status across many servers in one call, prefer &#x60;serverBulkIpmiPowerGet&#x60;.',
            hidden: false,
        },
        operation: {
            inputFields: [
            ],
            outputFields: [
            ],
            perform: async (z, bundle) => {
                const options = {
                    url: utils.replacePathParameters('https://my.interserver.net/apiv2/servers'),
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
                    const results = utils.responseOptionsMiddleware(z, bundle, 'getServerList', response.json);
                    return results;
                })
            },
            sample: samples['ServerRowSample']
        }
    },
    getServerReverseDns: {
        key: 'getServerReverseDns',
        noun: 'Servers',
        display: {
            label: 'List current reverse-DNS (PTR) records for a dedicated server&#39;s IPs',
            description: 'Use to read the existing PTR/rDNS hostnames assigned to each public IP in the server&#39;s VLANs — typically before calling &#x60;postServerReverseDns&#x60; to update them. Path param: &#x60;id&#x60; (integer server_id). No body. Walks &#x60;networkInfo.vlans&#x60;, expands each network to usable host IPs (handles /31 and /32 edge cases), and resolves each via &#x60;get_hostname()&#x60;. Returns: &#x60;{ ips: { &#39;&lt;ipv4&gt;&#39;: &#39;&lt;ptr_or_empty_string&gt;&#39;, ... } }&#x60;. Empty string indicates no PTR set. Errors: 404 if &#x60;id&#x60; not owned by caller; 401 unauth. Sibling ops: &#x60;postServerReverseDns&#x60; (update PTRs), &#x60;getServerInfo&#x60; (full network), &#x60;getVpsReverseDns&#x60; for VPS, &#x60;getDomainNameservers&#x60; / DNS endpoints for forward records. Note rDNS propagation is delegated to the in-addr.arpa zone — changes are not always instant.',
            hidden: false,
        },
        operation: {
            inputFields: [
                {
                    key: 'id',
                    label: 'Server ID number',
                    type: 'integer',
                    required: true,
                },
            ],
            outputFields: [
                ...ReverseDnsEntries.fields('', false),
            ],
            perform: async (z, bundle) => {
                const options = {
                    url: utils.replacePathParameters('https://my.interserver.net/apiv2/servers/{id}/reverse_dns'),
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
                    const results = utils.responseOptionsMiddleware(z, bundle, 'getServerReverseDns', response.json);
                    return results;
                })
            },
            sample: samples['ReverseDnsEntriesSample']
        }
    },
    getServersWelcomeEmail: {
        key: 'getServersWelcomeEmail',
        noun: 'Servers',
        display: {
            label: 'Resend the dedicated server welcome email with setup credentials',
            description: 'Use when the customer asks for the original setup/login info to be re-sent (root password, IPs, control-panel URL). Path param: &#x60;id&#x60; (integer server_id, must be &#x60;active&#x60;). No body. Invokes &#x60;server_welcome_email($id)&#x60; which re-sends the welcome message to the account&#39;s email. Returns: &#x60;{ text:&#39;Welcome Email has been resent.&#39; }&#x60;. Errors: 404 if &#x60;id&#x60; not owned by caller; 409 if service not active (cancelled/pending/suspended); 401 unauth. Caveat: re-sending is rate-sensitive; do not call repeatedly in a loop. The email may contain root credentials — confirm intent before triggering. Sibling ops: &#x60;getServerInfo&#x60; (status check), &#x60;getServerInvoices&#x60;, &#x60;getVpsWelcomeEmail&#x60; for VPS, &#x60;getDomainsWelcomeEmail&#x60; for domains.',
            hidden: false,
        },
        operation: {
            inputFields: [
                {
                    key: 'id',
                    label: 'Server ID number',
                    type: 'integer',
                    required: true,
                },
            ],
            outputFields: [
                ...SuccessTextResponse.fields('', false),
            ],
            perform: async (z, bundle) => {
                const options = {
                    url: utils.replacePathParameters('https://my.interserver.net/apiv2/servers/{id}/welcome_email'),
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
                    const results = utils.responseOptionsMiddleware(z, bundle, 'getServersWelcomeEmail', response.json);
                    return results;
                })
            },
            sample: samples['SuccessTextResponseSample']
        }
    },
    placeBuyNowServer: {
        key: 'placeBuyNowServer',
        noun: 'Servers',
        display: {
            label: 'Place a Rapid Deploy / coupon dedicated server order; creates real invoice',
            description: 'Step 2 of the Rapid Deploy / coupon order flow. Commits a marketplace asset OR coupon-based dedicated server order. Inserts the &#x60;servers&#x60; row, creates a &#x60;Repeat_Invoice&#x60; plus the first &#x60;invoices&#x60; row, marks the asset &#x60;MarketPlace-Incart&#x60; (or decrements &#x60;server_coupons.in_stock&#x60;), then emails customer + admin. **Real billable order — confirm intent first.** Sibling ops: &#x60;buyItNowServerOrder&#x60; (catalog), &#x60;getServerInfo&#x60; (poll provisioning), &#x60;getServerInvoices&#x60; (billing), &#x60;addServer&#x60; (custom build alternative).  **Query (one required, same as &#x60;buyItNowServerOrder&#x60;):** - &#x60;a&#x60; (integer) — asset_id. - &#x60;c&#x60; (string) — &#x60;server_coupons.name&#x60;.  **Body fields:** - &#x60;hostname&#x60; (string, required) — valid FQDN; validated by &#x60;valid_hostname&#x60;. - &#x60;enablepassword&#x60; (boolean, optional, default &#x60;false&#x60;) — when true the client must supply &#x60;rootPassword&#x60;; otherwise a secure password is generated server-side via &#x60;generate_password()&#x60;. - &#x60;rootPassword&#x60; (string, required when &#x60;enablepassword&#x3D;true&#x60;) — must be ≥8 chars with at least one uppercase, lowercase, digit, and special character (&#x60;valid_password&#x60;). - &#x60;os&#x60;, &#x60;bandwidth&#x60;, &#x60;ips&#x60;, &#x60;cp&#x60;, &#x60;raid&#x60; (integer, optional) — option ids from &#x60;buyItNowServerOrder&#x60;; defaults &#x60;30&#x60; / &#x60;10&#x60; / &#x60;9&#x60; / &#x60;1&#x60; / &#x60;0&#x60; applied when missing. - &#x60;comments&#x60; (string, optional) — appended to the order comment.  **Returns:** &#x60;201 { success: true, text: &#39;Server order is placed.&#39;, service_id, invoice_id }&#x60;.  **Auth:** Session/API key.  **Errors:** - &#x60;400&#x60; — &#x60;&#39;Server Hostname is missing.&#39;&#x60; / &#x60;&#39;Invalid Hostname!&#39;&#x60; / &#x60;&#39;Server Password is missing.&#39;&#x60; / password complexity message. - &#x60;409&#x60; — &#x60;&#39;Server already sold!&#39;&#x60; / &#x60;&#39;Server Out of stock.&#39;&#x60; - &#x60;401&#x60; — unauthenticated.  **Side effects:** inserts &#x60;servers&#x60; row, creates &#x60;repeat_invoices&#x60; + &#x60;invoices&#x60; rows, updates &#x60;assets.status&#x60; or &#x60;server_coupons.in_stock&#x60;, queues admin + customer welcome emails.  **Related calls:** - **Prerequisite:** &#x60;buyItNowServerOrder&#x60;. - **Next:** &#x60;getBillingInvoice&#x60; + &#x60;initiatePayment&#x60; to pay, then poll &#x60;getServerInfo&#x60; for provisioning state. - **Custom build alternative:** &#x60;addServer&#x60;. ',
            hidden: false,
        },
        operation: {
            inputFields: [
                ...placeBuyNowServer_request.fields(),
            ],
            outputFields: [
                ...ServersBuyNowResponse.fields('', false),
            ],
            perform: async (z, bundle) => {
                const options = {
                    url: utils.replacePathParameters('https://my.interserver.net/apiv2/servers/order/buy_now_server'),
                    method: 'POST',
                    removeMissingValuesFrom: { params: true, body: true },
                    headers: {
                        'Content-Type': 'application/json',
                        'Accept': 'application/json',
                    },
                    params: {
                    },
                    body: {
                        ...placeBuyNowServer_request.mapping(bundle),
                    },
                }
                return z.request(utils.requestOptionsMiddleware(z, bundle, options)).then((response) => {
                    response.throwForStatus();
                    const results = utils.responseOptionsMiddleware(z, bundle, 'placeBuyNowServer', response.json);
                    return results;
                })
            },
            sample: samples['ServersBuyNowResponseSample']
        }
    },
    postServerReverseDns: {
        key: 'postServerReverseDns',
        noun: 'Servers',
        display: {
            label: 'Update reverse-DNS (PTR) hostnames on a dedicated server&#39;s IPs',
            description: 'Use to set or remove PTR records for the server&#39;s public IPs. Path param: &#x60;id&#x60; (server_id). Body: &#x60;ips&#x60; (object mapping &#x60;&#39;&lt;ipv4&gt;&#39;&#x60; to desired hostname; empty string removes the PTR). Only IPs that already exist on the server&#39;s VLANs and whose hostname differs from current are updated; each diff calls &#x60;reverse_dns($ip, $host, &#39;set_reverse&#39;|&#39;remove_reverse&#39;)&#x60;. Returns: &#x60;{ message, success:bool }&#x60;. &#x60;success:false&#x60; with &#39;No valid IPs were passed or there were no changes&#39; when nothing to update; otherwise reports update count. Errors: 404 invalid id; 401 unauth. Caveats: caller can only set PTRs for IPs they actually own; rDNS propagation is async — do not assume immediate visibility downstream. Sibling ops: &#x60;getServerReverseDns&#x60; (read first), &#x60;getServerInfo&#x60;, VPS counterpart &#x60;postVpsReverseDns&#x60;.',
            hidden: false,
        },
        operation: {
            inputFields: [
                {
                    key: 'id',
                    label: 'Server ID number',
                    type: 'integer',
                    required: true,
                },
                ...ReverseDnsEntries.fields(),
            ],
            outputFields: [
                ...TextResponse.fields('', false),
            ],
            perform: async (z, bundle) => {
                const options = {
                    url: utils.replacePathParameters('https://my.interserver.net/apiv2/servers/{id}/reverse_dns'),
                    method: 'POST',
                    removeMissingValuesFrom: { params: true, body: true },
                    headers: {
                        'Content-Type': 'application/json, multipart/form-data',
                        'Accept': 'application/json',
                    },
                    params: {
                    },
                    body: {
                        ...ReverseDnsEntries.mapping(bundle),
                    },
                }
                return z.request(utils.requestOptionsMiddleware(z, bundle, options)).then((response) => {
                    response.throwForStatus();
                    const results = utils.responseOptionsMiddleware(z, bundle, 'postServerReverseDns', response.json);
                    return results;
                })
            },
            sample: samples['TextResponseSample']
        }
    },
    serverBulkIpmiPowerGet: {
        key: 'serverBulkIpmiPowerGet',
        noun: 'Servers',
        display: {
            label: 'Read IPMI chassis power status for many dedicated servers in one call',
            description: 'Use when you need power status for several owned servers at once (dashboards, mass health checks). Each server is queried independently; per-server failures (invalid id, inactive service, no asset, BMC error) are reported in the same response without aborting the batch. Read-only — does NOT change power state. Query: &#x60;ids&#x60; (required) — comma-separated string &#x60;?ids&#x3D;2313,2314,2315&#x60; OR repeated &#x60;ids[]&#x60; array. Duplicates de-duped; non-positive ints become per-row errors. Returns: &#x60;{ results: [ { id, asset?, text|error } ] }&#x60;. Errors: 400 &#39;No server IDs provided.&#39; if &#x60;ids&#x60; empty/missing; 401 unauth. Sibling ops: &#x60;serverIpmiPowerGet&#x60; (single-server equivalent), &#x60;serverIpmiPowerPost&#x60; (DESTRUCTIVE — change power; no bulk equivalent — call per server), &#x60;getServerList&#x60; (discover ids).',
            hidden: false,
        },
        operation: {
            inputFields: [
                {
                    key: 'ids',
                    label: 'Comma-separated list of Server IDs to query (e.g. &#x60;2313,2314,2315&#x60;). May also be passed as repeated &#x60;ids[]&#x60; query parameters.',
                    type: 'string',
                    required: true,
                },
            ],
            outputFields: [
                ...ServerBulkIpmiPowerResponse.fields('', false),
            ],
            perform: async (z, bundle) => {
                const options = {
                    url: utils.replacePathParameters('https://my.interserver.net/apiv2/servers/bulk/ipmi_power'),
                    method: 'GET',
                    removeMissingValuesFrom: { params: true, body: true },
                    headers: {
                        'Content-Type': '',
                        'Accept': 'application/json',
                    },
                    params: {
                        'ids': bundle.inputData?.['ids'],
                    },
                    body: {
                    },
                }
                return z.request(utils.requestOptionsMiddleware(z, bundle, options)).then((response) => {
                    response.throwForStatus();
                    const results = utils.responseOptionsMiddleware(z, bundle, 'serverBulkIpmiPowerGet', response.json);
                    return results;
                })
            },
            sample: samples['ServerBulkIpmiPowerResponseSample']
        }
    },
    serverIpmiLiveGet: {
        key: 'serverIpmiLiveGet',
        noun: 'Servers',
        display: {
            label: 'Read current IPMI Live whitelist + KVM gateway URL for a dedicated server',
            description: 'Reads the active IPMI Live session for a dedicated server — the temporary whitelisted public IP, the customer-side IPMI gateway URL, and the IPMI client (read-only) credentials so the customer can open the KVM/console. Looks up the asset&#39;s IPMI IP, the location&#39;s IPMI group, and any active &#x60;ipmi_ips&#x60; lease (3-hour TTL). Sibling ops: &#x60;serverIpmiLivePost&#x60; (allocate whitelist slot), &#x60;serverIpmiPowerGet&#x60; / &#x60;serverIpmiPowerPost&#x60; (chassis power).  **Path:** &#x60;id&#x60; (integer, required) — server_id from &#x60;getServerList&#x60;.  **Body / query:** None. Optionally pass &#x60;asset&#x60; (asset_id) to target a specific asset; default is first asset.  **Returns:** when an active lease exists &#x60;{ text (html), public_ip, allowed_ip, client_username, client_password }&#x60;. When no lease yet: &#x60;{ text: &#39;Setup not yet completed&#39; }&#x60; — then call &#x60;serverIpmiLivePost&#x60; to allocate a slot.  **Auth:** Session/API key. Ownership enforced via &#x60;server_custid&#x60;.  **Errors:** - &#x60;404&#x60; — &#x60;id&#x60; not owned, or &#x60;asset&#x60; not on this server. - &#x60;409&#x60; — service not &#x60;active&#x60;. - &#x60;200&#x60; with error text &#x60;&#39;No IPMI IP Set&#39;&#x60; / &#x60;&#39;Invalid IPMI IP&#39;&#x60; / &#x60;&#39;Live IPMI not Available for this location.&#39;&#x60; when the asset/location is not configured for IPMI Live.  **Caveat:** returns &#x60;client_password&#x60; — never log/echo verbatim.  **Related calls:** - **Allocate:** &#x60;serverIpmiLivePost&#x60;. - **Chassis power:** &#x60;serverIpmiPowerGet&#x60;, &#x60;serverIpmiPowerPost&#x60;. ',
            hidden: false,
        },
        operation: {
            inputFields: [
                {
                    key: 'id',
                    label: 'Server ID number',
                    type: 'integer',
                    required: true,
                },
            ],
            outputFields: [
                ...ServerIpmiLiveInfo.fields('', false),
            ],
            perform: async (z, bundle) => {
                const options = {
                    url: utils.replacePathParameters('https://my.interserver.net/apiv2/servers/{id}/ipmi_live'),
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
                    const results = utils.responseOptionsMiddleware(z, bundle, 'serverIpmiLiveGet', response.json);
                    return results;
                })
            },
            sample: samples['ServerIpmiLiveInfoSample']
        }
    },
    serverIpmiLivePost: {
        key: 'serverIpmiLivePost',
        noun: 'Servers',
        display: {
            label: 'Whitelist an IP for IPMI Live KVM gateway access (3-hour lease)',
            description: 'Allocates / refreshes an IPMI Live whitelist slot so the customer&#39;s specified IP can reach the BMC&#39;s KVM/console for 3 hours. Picks a free &#x60;ipmi_ips&#x60; row for the location&#39;s &#x60;ipmi_group&#x60;, refreshes the lease if the same IP is already allocated, otherwise pushes the new whitelist via &#x60;ipmi_live_setup()&#x60;. Sibling ops: &#x60;serverIpmiLiveGet&#x60; (read current lease), &#x60;serverIpmiPowerPost&#x60; (DESTRUCTIVE — chassis power).  **Path:** &#x60;id&#x60; (integer, required) — server_id.  **Body fields:** - &#x60;ip&#x60; (string, required) — public IPv4 to whitelist. - &#x60;asset&#x60; (integer, optional) — asset_id; defaults to first asset on the server.  **Returns:** &#x60;{ text (html), public_ip, allowed_ip, client_username, client_password }&#x60; for KVM login.  **Auth:** Session/API key. Ownership enforced via &#x60;server_custid&#x60;.  **Errors:** - &#x60;404&#x60; — &#x60;id&#x60; not owned, or &#x60;asset&#x60; not on this server. - &#x60;409&#x60; — service not &#x60;active&#x60;. - &#x60;200&#x60; with error text — &#x60;&#39;An Invalid IP was passed.&#39;&#x60;, &#x60;&#39;No Live IPs are currently free for use with the IPMI Gateway. Please wait &lt;duration&gt; for the next IP to free up.&#39;&#x60;, &#x60;&#39;There was an error communicating with the IPMI Management server&#39;&#x60;, &#x60;&#39;No IPMI IP Set&#39;&#x60; / &#x60;&#39;Invalid IPMI IP&#39;&#x60; / &#x60;&#39;Live IPMI not Available for this location.&#39;&#x60;.  **Caveat:** returns IPMI client password — handle securely; whitelist exposes the BMC briefly.  **Related calls:** - **Read current lease:** &#x60;serverIpmiLiveGet&#x60;. - **Power control:** &#x60;serverIpmiPowerPost&#x60;. ',
            hidden: false,
        },
        operation: {
            inputFields: [
                {
                    key: 'id',
                    label: 'Server ID number',
                    type: 'integer',
                    required: true,
                },
                {
                    key: 'ip',
                    label: 'Your IP Address you wish to connect to the IPMI system from.',
                    type: 'string',
                    required: true,
                },
                {
                    key: 'asset',
                    label: 'Asset ID',
                    type: 'integer',
                },
            ],
            outputFields: [
                ...ServerIpmiLiveInfo.fields('', false),
            ],
            perform: async (z, bundle) => {
                const formData = new FormData()
                formData.append('ip', bundle.inputData?.['ip'])
                formData.append('asset', bundle.inputData?.['asset'])
                const options = {
                    url: utils.replacePathParameters('https://my.interserver.net/apiv2/servers/{id}/ipmi_live'),
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
                    const results = utils.responseOptionsMiddleware(z, bundle, 'serverIpmiLivePost', response.json);
                    return results;
                })
            },
            sample: samples['ServerIpmiLiveInfoSample']
        }
    },
    serverIpmiPowerGet: {
        key: 'serverIpmiPowerGet',
        noun: 'Servers',
        display: {
            label: 'Read IPMI chassis power status for a dedicated server (single)',
            description: 'Use to check whether a server&#39;s chassis is currently &#x60;on&#x60;/&#x60;off&#x60; via IPMI before issuing a power action. Path param: &#x60;id&#x60; (integer server_id). Optional body &#x60;asset&#x60; (asset_id — defaults to first asset). Issues &#x60;ipmitool power status&#x60; against the asset&#39;s &#x60;ipmi_ip&#x60; using its location IPMI group/credentials. Returns: &#x60;{ text:&#39;Chassis Power is on&#39; }&#x60; (or &#39;off&#39;). Errors: 404 if &#x60;id&#x60; not owned by caller; 409 if service not active; &#39;There was an error sending the IPMI command&#39; if BMC unreachable. Caveat: BMCs occasionally rate-limit — back off on repeated errors. Sibling ops: &#x60;serverBulkIpmiPowerGet&#x60; (preferred when polling many servers — single round-trip), &#x60;serverIpmiPowerPost&#x60; (DESTRUCTIVE — change power), &#x60;getServerInfo&#x60; (full state), &#x60;serverIpmiLiveGet&#x60; (IPMI Live KVM).',
            hidden: false,
        },
        operation: {
            inputFields: [
                {
                    key: 'id',
                    label: 'Server ID number',
                    type: 'integer',
                    required: true,
                },
            ],
            outputFields: [
                ...TextResponse.fields('', false),
            ],
            perform: async (z, bundle) => {
                const options = {
                    url: utils.replacePathParameters('https://my.interserver.net/apiv2/servers/{id}/ipmi_power'),
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
                    const results = utils.responseOptionsMiddleware(z, bundle, 'serverIpmiPowerGet', response.json);
                    return results;
                })
            },
            sample: samples['TextResponseSample']
        }
    },
    serverIpmiPowerPost: {
        key: 'serverIpmiPowerPost',
        noun: 'Servers',
        display: {
            label: 'DESTRUCTIVE — change chassis power state on a bare-metal server',
            description: 'Sends an IPMI chassis power command (&#x60;on&#x60;, &#x60;off&#x60;, &#x60;cycle&#x60;, &#x60;reset&#x60;, &#x60;soft&#x60;) to a customer&#39;s physical dedicated server. **DESTRUCTIVE on running hardware:** &#x60;off&#x60; / &#x60;cycle&#x60; / &#x60;reset&#x60; are forced power events that can corrupt filesystems, lose un-flushed data, or break in-flight workloads. &#x60;soft&#x60; requests an ACPI shutdown (safer when the guest OS is responsive). Always confirm intent with the operator. Sibling ops: &#x60;serverIpmiPowerGet&#x60; (read first), &#x60;serverBulkIpmiPowerGet&#x60; (status only), &#x60;serverIpmiLivePost&#x60; (KVM access).  **Path:** &#x60;id&#x60; (integer, required) — server_id.  **Body fields:** - &#x60;action&#x60; (string, required) — one of &#x60;on&#x60; / &#x60;off&#x60; / &#x60;cycle&#x60; / &#x60;reset&#x60; / &#x60;soft&#x60;. - &#x60;asset&#x60; (integer, optional) — asset_id; defaults to first asset on the server.  **Returns:** &#x60;{ text: &#39;Power command sent. Response: &lt;ipmi output&gt;&#39; }&#x60;.  **Auth:** Session/API key. Ownership enforced via &#x60;server_custid&#x60;.  **Errors:** - &#x60;422&#x60; / inline error text — &#x60;Invalid Action&#x60; when &#x60;action&#x60; is not in the allowed set. - &#x60;404&#x60; — &#x60;id&#x60; not owned, or &#x60;asset&#x60; not on this server. - &#x60;409&#x60; — service not &#x60;active&#x60;. - &#x60;200&#x60; with error text — &#x60;&#39;There was an error sending the IPMI command.&#39;&#x60; when BMC is unreachable or rate-limiting.  **Related calls:** - **Status (single / bulk):** &#x60;serverIpmiPowerGet&#x60;, &#x60;serverBulkIpmiPowerGet&#x60;. - **KVM console:** &#x60;serverIpmiLivePost&#x60;. ',
            hidden: false,
        },
        operation: {
            inputFields: [
                {
                    key: 'id',
                    label: 'Server ID number',
                    type: 'integer',
                    required: true,
                },
                {
                    key: 'action',
                    label: 'The power action to send to the ipmi controller.',
                    type: 'string',
                    required: true,
                    choices: [
                        'cycle',
                        'reset',
                        'on',
                        'off',
                        'soft',
                    ],
                },
                {
                    key: 'asset',
                    label: 'The Asset ID',
                    type: 'integer',
                },
            ],
            outputFields: [
                ...TextResponse.fields('', false),
            ],
            perform: async (z, bundle) => {
                const formData = new FormData()
                formData.append('action', bundle.inputData?.['action'])
                formData.append('asset', bundle.inputData?.['asset'])
                const options = {
                    url: utils.replacePathParameters('https://my.interserver.net/apiv2/servers/{id}/ipmi_power'),
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
                    const results = utils.responseOptionsMiddleware(z, bundle, 'serverIpmiPowerPost', response.json);
                    return results;
                })
            },
            sample: samples['TextResponseSample']
        }
    },
    serversCancel: {
        key: 'serversCancel',
        noun: 'Servers',
        display: {
            label: 'Cancel a dedicated server service at the end of the current billing cycle',
            description: 'Submits a cancellation request for a dedicated server. The server is deprovisioned and recurring billing stops at the end of the current billing cycle (not an immediate refund). Path param: &#x60;id&#x60; (integer server_id, from &#x60;getServerList&#x60;). No body. Caveat: billing-affecting action — always confirm with the user. Hardware-attached data may be wiped on deprovisioning. Returns: &#x60;{ success:bool, text:&#39;Servers is canceled.&#39; }&#x60;. Errors: 404 if &#x60;id&#x60; not owned by caller; 409 if already cancelled or non-active; 401 unauth. Sibling ops: &#x60;getServerInfo&#x60; (current status), &#x60;getServerInvoices&#x60; (outstanding charges), VPS counterpart &#x60;VPSCancel&#x60;. To re-order after cancel use &#x60;addServer&#x60; or &#x60;placeBuyNowServer&#x60;.',
            hidden: false,
        },
        operation: {
            inputFields: [
                {
                    key: 'id',
                    label: 'Server ID number',
                    type: 'integer',
                    required: true,
                },
            ],
            outputFields: [
                ...serversCancel_200_response.fields('', false),
            ],
            perform: async (z, bundle) => {
                const options = {
                    url: utils.replacePathParameters('https://my.interserver.net/apiv2/servers/{id}'),
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
                    const results = utils.responseOptionsMiddleware(z, bundle, 'serversCancel', response.json);
                    return results;
                })
            },
            sample: samples['serversCancel_200_responseSample']
        }
    },
    updateServerInfo: {
        key: 'updateServerInfo',
        noun: 'Servers',
        display: {
            label: 'Update settings on a dedicated server order (shares handler with view)',
            description: 'Use to modify metadata on an existing dedicated server order. Path param: &#x60;id&#x60; (integer server_id). Currently this method shares the same handler as &#x60;getServerInfo&#x60; (&#x60;View::go()&#x60;) — no dedicated update fields are processed; treat it as deprecated/no-op pending field-specific endpoints. For hostname, password, or rDNS changes use the dedicated ops below. Returns: same payload shape as &#x60;getServerInfo&#x60;. Errors: 404 if &#x60;id&#x60; not owned by caller; 401 unauth. Sibling ops: prefer &#x60;postServerReverseDns&#x60; (rDNS), &#x60;serverIpmiPowerPost&#x60; (power), &#x60;serverIpmiLivePost&#x60; (IPMI access), &#x60;serversCancel&#x60; (cancel). For new orders use &#x60;addServer&#x60; or &#x60;placeBuyNowServer&#x60;. View-only: &#x60;getServerInfo&#x60;.',
            hidden: false,
        },
        operation: {
            inputFields: [
                {
                    key: 'id',
                    label: 'Server ID number.',
                    type: 'string',
                    required: true,
                },
            ],
            outputFields: [
                ...SuccessTextResponse.fields('', false),
            ],
            perform: async (z, bundle) => {
                const options = {
                    url: utils.replacePathParameters('https://my.interserver.net/apiv2/servers/{id}'),
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
                    const results = utils.responseOptionsMiddleware(z, bundle, 'updateServerInfo', response.json);
                    return results;
                })
            },
            sample: samples['SuccessTextResponseSample']
        }
    },
}
