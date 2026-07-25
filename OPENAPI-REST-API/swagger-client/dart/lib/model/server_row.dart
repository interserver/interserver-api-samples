part of swagger.api;

class ServerRow {
  /* The id of the server. */
  String serverId = null;
/* The account lid of the server. */
  String accountLid = null;
/* The hostname of the server. */
  String serverHostname = null;
/* The status of the server. */
  String serverStatus = null;

  ServerRow();

  @override
  String toString() {
    return 'ServerRow[serverId=$serverId, accountLid=$accountLid, serverHostname=$serverHostname, serverStatus=$serverStatus, ]';
  }

  ServerRow.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    serverId = json['server_id'];
    accountLid = json['account_lid'];
    serverHostname = json['server_hostname'];
    serverStatus = json['server_status'];
  }

  Map<String, dynamic> toJson() {
    return {
      'server_id': serverId,
      'account_lid': accountLid,
      'server_hostname': serverHostname,
      'server_status': serverStatus
     };
  }

  static List<ServerRow> listFromJson(List<dynamic> json) {
    return json == null ? new List<ServerRow>() : json.map((value) => new ServerRow.fromJson(value)).toList();
  }

  static Map<String, ServerRow> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ServerRow>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ServerRow.fromJson(value));
    }
    return map;
  }
}
