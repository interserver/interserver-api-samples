part of swagger.api;

class ServerBulkIpmiPowerResponseResults {
  /* Server ID this result corresponds to. */
  int id = null;
/* Asset ID that was queried for the server (omitted on errors before asset selection). */
  int asset = null;
/* IPMI power-status output for this server. */
  String text = null;
/* Error message for this server, if processing failed (mutually exclusive with `text`). */
  String error = null;

  ServerBulkIpmiPowerResponseResults();

  @override
  String toString() {
    return 'ServerBulkIpmiPowerResponseResults[id=$id, asset=$asset, text=$text, error=$error, ]';
  }

  ServerBulkIpmiPowerResponseResults.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    asset = json['asset'];
    text = json['text'];
    error = json['error'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'asset': asset,
      'text': text,
      'error': error
     };
  }

  static List<ServerBulkIpmiPowerResponseResults> listFromJson(List<dynamic> json) {
    return json == null ? new List<ServerBulkIpmiPowerResponseResults>() : json.map((value) => new ServerBulkIpmiPowerResponseResults.fromJson(value)).toList();
  }

  static Map<String, ServerBulkIpmiPowerResponseResults> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ServerBulkIpmiPowerResponseResults>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ServerBulkIpmiPowerResponseResults.fromJson(value));
    }
    return map;
  }
}
