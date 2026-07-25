part of swagger.api;

class VpsServiceMaster {
  /* VPS ID */
  String vpsId = null;
/* VPS name */
  String vpsName = null;
/* IP address of the VPS */
  String vpsIp = null;
/* VPS type */
  String vpsType = null;
/* Hard drive size */
  String vpsHdsize = null;
/* Free hard drive space */
  String vpsHdfree = null;
/* Bits */
  String vpsBits = null;
/* CPU load */
  String vpsLoad = null;
/* RAM */
  String vpsRam = null;
/* CPU model */
  String vpsCpuModel = null;
/* CPU frequency in MHz */
  String vpsCpuMhz = null;
/* Location of the VPS */
  String vpsLocation = null;
/* Last update date */
  String vpsLastUpdate = null;
/* RAID building status */
  String vpsRaidBuilding = null;
/* Kernel version */
  String vpsKernel = null;
/* Available */
  String vpsAvailable = null;
/* Number of CPU cores */
  String vpsCores = null;
/* I/O wait */
  String vpsIowait = null;
/* RAID status */
  String vpsRaidStatus = null;
/* Mounts */
  String vpsMounts = null;
/* Maximum number of servers */
  String vpsServerMax = null;
/* Maximum number of server slices */
  String vpsServerMaxSlices = null;
/* Drive type */
  String vpsDriveType = null;
/* Order number */
  String vpsOrder = null;

  VpsServiceMaster();

  @override
  String toString() {
    return 'VpsServiceMaster[vpsId=$vpsId, vpsName=$vpsName, vpsIp=$vpsIp, vpsType=$vpsType, vpsHdsize=$vpsHdsize, vpsHdfree=$vpsHdfree, vpsBits=$vpsBits, vpsLoad=$vpsLoad, vpsRam=$vpsRam, vpsCpuModel=$vpsCpuModel, vpsCpuMhz=$vpsCpuMhz, vpsLocation=$vpsLocation, vpsLastUpdate=$vpsLastUpdate, vpsRaidBuilding=$vpsRaidBuilding, vpsKernel=$vpsKernel, vpsAvailable=$vpsAvailable, vpsCores=$vpsCores, vpsIowait=$vpsIowait, vpsRaidStatus=$vpsRaidStatus, vpsMounts=$vpsMounts, vpsServerMax=$vpsServerMax, vpsServerMaxSlices=$vpsServerMaxSlices, vpsDriveType=$vpsDriveType, vpsOrder=$vpsOrder, ]';
  }

  VpsServiceMaster.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    vpsId = json['vps_id'];
    vpsName = json['vps_name'];
    vpsIp = json['vps_ip'];
    vpsType = json['vps_type'];
    vpsHdsize = json['vps_hdsize'];
    vpsHdfree = json['vps_hdfree'];
    vpsBits = json['vps_bits'];
    vpsLoad = json['vps_load'];
    vpsRam = json['vps_ram'];
    vpsCpuModel = json['vps_cpu_model'];
    vpsCpuMhz = json['vps_cpu_mhz'];
    vpsLocation = json['vps_location'];
    vpsLastUpdate = json['vps_last_update'];
    vpsRaidBuilding = json['vps_raid_building'];
    vpsKernel = json['vps_kernel'];
    vpsAvailable = json['vps_available'];
    vpsCores = json['vps_cores'];
    vpsIowait = json['vps_iowait'];
    vpsRaidStatus = json['vps_raid_status'];
    vpsMounts = json['vps_mounts'];
    vpsServerMax = json['vps_server_max'];
    vpsServerMaxSlices = json['vps_server_max_slices'];
    vpsDriveType = json['vps_drive_type'];
    vpsOrder = json['vps_order'];
  }

  Map<String, dynamic> toJson() {
    return {
      'vps_id': vpsId,
      'vps_name': vpsName,
      'vps_ip': vpsIp,
      'vps_type': vpsType,
      'vps_hdsize': vpsHdsize,
      'vps_hdfree': vpsHdfree,
      'vps_bits': vpsBits,
      'vps_load': vpsLoad,
      'vps_ram': vpsRam,
      'vps_cpu_model': vpsCpuModel,
      'vps_cpu_mhz': vpsCpuMhz,
      'vps_location': vpsLocation,
      'vps_last_update': vpsLastUpdate,
      'vps_raid_building': vpsRaidBuilding,
      'vps_kernel': vpsKernel,
      'vps_available': vpsAvailable,
      'vps_cores': vpsCores,
      'vps_iowait': vpsIowait,
      'vps_raid_status': vpsRaidStatus,
      'vps_mounts': vpsMounts,
      'vps_server_max': vpsServerMax,
      'vps_server_max_slices': vpsServerMaxSlices,
      'vps_drive_type': vpsDriveType,
      'vps_order': vpsOrder
     };
  }

  static List<VpsServiceMaster> listFromJson(List<dynamic> json) {
    return json == null ? new List<VpsServiceMaster>() : json.map((value) => new VpsServiceMaster.fromJson(value)).toList();
  }

  static Map<String, VpsServiceMaster> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, VpsServiceMaster>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new VpsServiceMaster.fromJson(value));
    }
    return map;
  }
}
