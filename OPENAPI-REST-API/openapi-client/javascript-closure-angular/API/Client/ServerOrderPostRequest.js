goog.provide('API.Client.ServerOrderPostRequest');

/**
 * Request body to place a custom dedicated server order. All ids come from getNewServer's config_li / regions.
 * @record
 */
API.Client.ServerOrderPostRequest = function() {}

/**
 * CPU configuration id from config_li.cpu_li. Constrains valid hd/memory options.
 * @type {!number}
 * @export
 */
API.Client.ServerOrderPostRequest.prototype.cpu;

/**
 * @type {!API.Client.ServerOrderPostRequest_hd}
 * @export
 */
API.Client.ServerOrderPostRequest.prototype.hd;

/**
 * Memory configuration id from config_li.memory_li[cpu].
 * @type {!number}
 * @export
 */
API.Client.ServerOrderPostRequest.prototype.memory;

/**
 * Bandwidth configuration id from config_li.bandwidth_li.
 * @type {!number}
 * @export
 */
API.Client.ServerOrderPostRequest.prototype.bandwidth;

/**
 * IP block configuration id from config_li.ips_li.
 * @type {!number}
 * @export
 */
API.Client.ServerOrderPostRequest.prototype.ips;

/**
 * Operating System configuration id from config_li.os_li.
 * @type {!number}
 * @export
 */
API.Client.ServerOrderPostRequest.prototype.os;

/**
 * Control Panel configuration id from config_li.cp_li.
 * @type {!number}
 * @export
 */
API.Client.ServerOrderPostRequest.prototype.cp;

/**
 * RAID configuration id from config_li.raid_li.
 * @type {!number}
 * @export
 */
API.Client.ServerOrderPostRequest.prototype.raid;

/**
 * Region id from the regions list.
 * @type {!number}
 * @export
 */
API.Client.ServerOrderPostRequest.prototype.region;

/**
 * Server hostname. Must pass valid_hostname().
 * @type {!string}
 * @export
 */
API.Client.ServerOrderPostRequest.prototype.servername;

/**
 * Root password for the server.
 * @type {!string}
 * @export
 */
API.Client.ServerOrderPostRequest.prototype.rootpass;

/**
 * Terms-of-service acceptance. Must be true to place the order.
 * @type {!boolean}
 * @export
 */
API.Client.ServerOrderPostRequest.prototype.tos;

/**
 * Optional free-form order comment.
 * @type {!string}
 * @export
 */
API.Client.ServerOrderPostRequest.prototype.comment;

