part of swagger.api;

class ServerOrder {
  
  ServerOrderFormValues formValues = null;

  ServerOrderConfigIds configIds = null;
/* Number of CPUs for the server order. */
  int cpu = null;

  ServerOrderFieldLabels fieldLabel = null;

  ServerOrderCpuLi cpuLi = null;

  ServerOrderMemoryLi memoryLi = null;

  ServerOrderBandwidthLi bandwidthLi = null;

  ServerOrderIpsLi ipsLi = null;

  ServerOrderOsLi osLi = null;

  ServerOrderCpLi cpLi = null;
/* RAID options for the server order. */
  List<ServerOrderRAID> raidLi = [];

  ServerOrder();

  @override
  String toString() {
    return 'ServerOrder[formValues=$formValues, configIds=$configIds, cpu=$cpu, fieldLabel=$fieldLabel, cpuLi=$cpuLi, memoryLi=$memoryLi, bandwidthLi=$bandwidthLi, ipsLi=$ipsLi, osLi=$osLi, cpLi=$cpLi, raidLi=$raidLi, ]';
  }

  ServerOrder.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    formValues = new ServerOrderFormValues.fromJson(json['form_values']);
    configIds = new ServerOrderConfigIds.fromJson(json['config_ids']);
    cpu = json['cpu'];
    fieldLabel = new ServerOrderFieldLabels.fromJson(json['field_label']);
    cpuLi = new ServerOrderCpuLi.fromJson(json['cpu_li']);
    memoryLi = new ServerOrderMemoryLi.fromJson(json['memory_li']);
    bandwidthLi = new ServerOrderBandwidthLi.fromJson(json['bandwidth_li']);
    ipsLi = new ServerOrderIpsLi.fromJson(json['ips_li']);
    osLi = new ServerOrderOsLi.fromJson(json['os_li']);
    cpLi = new ServerOrderCpLi.fromJson(json['cp_li']);
    raidLi = ServerOrderRAID.listFromJson(json['raid_li']);
  }

  Map<String, dynamic> toJson() {
    return {
      'form_values': formValues,
      'config_ids': configIds,
      'cpu': cpu,
      'field_label': fieldLabel,
      'cpu_li': cpuLi,
      'memory_li': memoryLi,
      'bandwidth_li': bandwidthLi,
      'ips_li': ipsLi,
      'os_li': osLi,
      'cp_li': cpLi,
      'raid_li': raidLi
     };
  }

  static List<ServerOrder> listFromJson(List<dynamic> json) {
    return json == null ? new List<ServerOrder>() : json.map((value) => new ServerOrder.fromJson(value)).toList();
  }

  static Map<String, ServerOrder> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ServerOrder>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ServerOrder.fromJson(value));
    }
    return map;
  }
}
