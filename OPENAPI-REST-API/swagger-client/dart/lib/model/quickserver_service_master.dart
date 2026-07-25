part of swagger.api;

class QuickserverServiceMaster {
  /* Quickserver ID */
  String qsId = null;
/* Quickserver name */
  String qsName = null;
/* IP address */
  String qsIp = null;
/* Type */
  String qsType = null;
/* HDD size */
  String qsHdsize = null;
/* Free HDD space */
  String qsHdfree = null;
/* Bits */
  String qsBits = null;
/* Load */
  String qsLoad = null;
/* RAM information */
  String qsRam = null;
/* CPU model */
  String qsCpuModel = null;
/* CPU frequency */
  String qsCpuMhz = null;
/* Location */
  String qsLocation = null;
/* Available information */
  String qsAvailable = null;
/* Cost */
  String qsCost = null;
/* Last update date */
  String qsLastUpdate = null;
/* Number of cores */
  String qsCores = null;
/* I/O wait */
  String qsIowait = null;
/* RAID status */
  String qsRaidStatus = null;
/* Drive type */
  String qsDriveType = null;
/* Order number */
  String qsOrder = null;
/* RAID building information */
  String qsRaidBuilding = null;
/* Kernel version */
  String qsKernel = null;
/* IOPing information */
  String qsIoping = null;
/* Speed information */
  String qsSpeed = null;
/* Distribution name */
  String qsDistro = null;
/* Distribution version */
  String qsDistroVersion = null;
/* Bytes/sec in */
  String qsBytesSecIn = null;
/* Bytes/sec out */
  String qsBytesSecOut = null;
/* Packets/sec in */
  String qsPacketsSecIn = null;
/* Packets/sec out */
  String qsPacketsSecOut = null;
/* Last install time (null) */
  String qsLastInstallTime = null;
/* Partitions information (null) */
  String qsPartitions = null;
/* CPU flags */
  String qsCpuFlags = null;

  QuickserverServiceMaster();

  @override
  String toString() {
    return 'QuickserverServiceMaster[qsId=$qsId, qsName=$qsName, qsIp=$qsIp, qsType=$qsType, qsHdsize=$qsHdsize, qsHdfree=$qsHdfree, qsBits=$qsBits, qsLoad=$qsLoad, qsRam=$qsRam, qsCpuModel=$qsCpuModel, qsCpuMhz=$qsCpuMhz, qsLocation=$qsLocation, qsAvailable=$qsAvailable, qsCost=$qsCost, qsLastUpdate=$qsLastUpdate, qsCores=$qsCores, qsIowait=$qsIowait, qsRaidStatus=$qsRaidStatus, qsDriveType=$qsDriveType, qsOrder=$qsOrder, qsRaidBuilding=$qsRaidBuilding, qsKernel=$qsKernel, qsIoping=$qsIoping, qsSpeed=$qsSpeed, qsDistro=$qsDistro, qsDistroVersion=$qsDistroVersion, qsBytesSecIn=$qsBytesSecIn, qsBytesSecOut=$qsBytesSecOut, qsPacketsSecIn=$qsPacketsSecIn, qsPacketsSecOut=$qsPacketsSecOut, qsLastInstallTime=$qsLastInstallTime, qsPartitions=$qsPartitions, qsCpuFlags=$qsCpuFlags, ]';
  }

  QuickserverServiceMaster.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    qsId = json['qs_id'];
    qsName = json['qs_name'];
    qsIp = json['qs_ip'];
    qsType = json['qs_type'];
    qsHdsize = json['qs_hdsize'];
    qsHdfree = json['qs_hdfree'];
    qsBits = json['qs_bits'];
    qsLoad = json['qs_load'];
    qsRam = json['qs_ram'];
    qsCpuModel = json['qs_cpu_model'];
    qsCpuMhz = json['qs_cpu_mhz'];
    qsLocation = json['qs_location'];
    qsAvailable = json['qs_available'];
    qsCost = json['qs_cost'];
    qsLastUpdate = json['qs_last_update'];
    qsCores = json['qs_cores'];
    qsIowait = json['qs_iowait'];
    qsRaidStatus = json['qs_raid_status'];
    qsDriveType = json['qs_drive_type'];
    qsOrder = json['qs_order'];
    qsRaidBuilding = json['qs_raid_building'];
    qsKernel = json['qs_kernel'];
    qsIoping = json['qs_ioping'];
    qsSpeed = json['qs_speed'];
    qsDistro = json['qs_distro'];
    qsDistroVersion = json['qs_distro_version'];
    qsBytesSecIn = json['qs_bytes_sec_in'];
    qsBytesSecOut = json['qs_bytes_sec_out'];
    qsPacketsSecIn = json['qs_packets_sec_in'];
    qsPacketsSecOut = json['qs_packets_sec_out'];
    qsLastInstallTime = json['qs_last_install_time'];
    qsPartitions = json['qs_partitions'];
    qsCpuFlags = json['qs_cpu_flags'];
  }

  Map<String, dynamic> toJson() {
    return {
      'qs_id': qsId,
      'qs_name': qsName,
      'qs_ip': qsIp,
      'qs_type': qsType,
      'qs_hdsize': qsHdsize,
      'qs_hdfree': qsHdfree,
      'qs_bits': qsBits,
      'qs_load': qsLoad,
      'qs_ram': qsRam,
      'qs_cpu_model': qsCpuModel,
      'qs_cpu_mhz': qsCpuMhz,
      'qs_location': qsLocation,
      'qs_available': qsAvailable,
      'qs_cost': qsCost,
      'qs_last_update': qsLastUpdate,
      'qs_cores': qsCores,
      'qs_iowait': qsIowait,
      'qs_raid_status': qsRaidStatus,
      'qs_drive_type': qsDriveType,
      'qs_order': qsOrder,
      'qs_raid_building': qsRaidBuilding,
      'qs_kernel': qsKernel,
      'qs_ioping': qsIoping,
      'qs_speed': qsSpeed,
      'qs_distro': qsDistro,
      'qs_distro_version': qsDistroVersion,
      'qs_bytes_sec_in': qsBytesSecIn,
      'qs_bytes_sec_out': qsBytesSecOut,
      'qs_packets_sec_in': qsPacketsSecIn,
      'qs_packets_sec_out': qsPacketsSecOut,
      'qs_last_install_time': qsLastInstallTime,
      'qs_partitions': qsPartitions,
      'qs_cpu_flags': qsCpuFlags
     };
  }

  static List<QuickserverServiceMaster> listFromJson(List<dynamic> json) {
    return json == null ? new List<QuickserverServiceMaster>() : json.map((value) => new QuickserverServiceMaster.fromJson(value)).toList();
  }

  static Map<String, QuickserverServiceMaster> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, QuickserverServiceMaster>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new QuickserverServiceMaster.fromJson(value));
    }
    return map;
  }
}
