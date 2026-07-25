part of swagger.api;

class ServerNetworkInfo {
  /* List of VLANs. */
  List<String> vlans = [];
/* List of IPv6 VLANs. */
  List<String> vlans6 = [];

  ServerNetworkInfoAssets assets = null;

  ServerNetworkInfoSwitchports switchports = null;

  ServerNetworkInfo();

  @override
  String toString() {
    return 'ServerNetworkInfo[vlans=$vlans, vlans6=$vlans6, assets=$assets, switchports=$switchports, ]';
  }

  ServerNetworkInfo.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    vlans = (json['vlans'] as List).map((item) => item as String).toList();
    vlans6 = (json['vlans6'] as List).map((item) => item as String).toList();
    assets = new ServerNetworkInfoAssets.fromJson(json['assets']);
    switchports = new ServerNetworkInfoSwitchports.fromJson(json['switchports']);
  }

  Map<String, dynamic> toJson() {
    return {
      'vlans': vlans,
      'vlans6': vlans6,
      'assets': assets,
      'switchports': switchports
     };
  }

  static List<ServerNetworkInfo> listFromJson(List<dynamic> json) {
    return json == null ? new List<ServerNetworkInfo>() : json.map((value) => new ServerNetworkInfo.fromJson(value)).toList();
  }

  static Map<String, ServerNetworkInfo> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ServerNetworkInfo>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ServerNetworkInfo.fromJson(value));
    }
    return map;
  }
}
