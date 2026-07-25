part of swagger.api;

class ScrubIpsLogRowSchema {
  
  String date = null;

  String filter = null;

  String blockedIp = null;

  String targetIp = null;

  double targetPort = null;

  String protocol = null;

  double byteCount = null;

  String xdpAction = null;

  ScrubIpsLogRowSchema();

  @override
  String toString() {
    return 'ScrubIpsLogRowSchema[date=$date, filter=$filter, blockedIp=$blockedIp, targetIp=$targetIp, targetPort=$targetPort, protocol=$protocol, byteCount=$byteCount, xdpAction=$xdpAction, ]';
  }

  ScrubIpsLogRowSchema.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    date = json['date'];
    filter = json['filter'];
    blockedIp = json['blocked_ip'];
    targetIp = json['target_ip'];
    targetPort = json['target_port'];
    protocol = json['protocol'];
    byteCount = json['byte_count'];
    xdpAction = json['xdp_action'];
  }

  Map<String, dynamic> toJson() {
    return {
      'date': date,
      'filter': filter,
      'blocked_ip': blockedIp,
      'target_ip': targetIp,
      'target_port': targetPort,
      'protocol': protocol,
      'byte_count': byteCount,
      'xdp_action': xdpAction
     };
  }

  static List<ScrubIpsLogRowSchema> listFromJson(List<dynamic> json) {
    return json == null ? new List<ScrubIpsLogRowSchema>() : json.map((value) => new ScrubIpsLogRowSchema.fromJson(value)).toList();
  }

  static Map<String, ScrubIpsLogRowSchema> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ScrubIpsLogRowSchema>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ScrubIpsLogRowSchema.fromJson(value));
    }
    return map;
  }
}
