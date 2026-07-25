
package org.openapitools.client.model


case class ServerOrderPostRequest (
    /* CPU configuration id from config_li.cpu_li. Constrains valid hd/memory options. */
    _cpu: Integer,
    _hd: ServerOrderPostRequestHd,
    /* Memory configuration id from config_li.memory_li[cpu]. */
    _memory: Integer,
    /* Bandwidth configuration id from config_li.bandwidth_li. */
    _bandwidth: Integer,
    /* IP block configuration id from config_li.ips_li. */
    _ips: Integer,
    /* Operating System configuration id from config_li.os_li. */
    _os: Integer,
    /* Control Panel configuration id from config_li.cp_li. */
    _cp: Integer,
    /* RAID configuration id from config_li.raid_li. */
    _raid: Integer,
    /* Region id from the regions list. */
    _region: Integer,
    /* Server hostname. Must pass valid_hostname(). */
    _servername: String,
    /* Root password for the server. */
    _rootpass: String,
    /* Terms-of-service acceptance. Must be true to place the order. */
    _tos: Boolean,
    /* Optional free-form order comment. */
    _comment: Option[String]
)
object ServerOrderPostRequest {
    def toStringBody(var_cpu: Object, var_hd: Object, var_memory: Object, var_bandwidth: Object, var_ips: Object, var_os: Object, var_cp: Object, var_raid: Object, var_region: Object, var_servername: Object, var_rootpass: Object, var_tos: Object, var_comment: Object) =
        s"""
        | {
        | "cpu":$var_cpu,"hd":$var_hd,"memory":$var_memory,"bandwidth":$var_bandwidth,"ips":$var_ips,"os":$var_os,"cp":$var_cp,"raid":$var_raid,"region":$var_region,"servername":$var_servername,"rootpass":$var_rootpass,"tos":$var_tos,"comment":$var_comment
        | }
        """.stripMargin
}
