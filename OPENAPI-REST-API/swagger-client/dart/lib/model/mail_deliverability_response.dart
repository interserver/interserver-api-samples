part of swagger.api;

class MailDeliverabilityResponse {
  /* Delivered and bounced counts. */
  Object stat = null;
/* Bounce percentage. */
  double percent = null;
/* Detailed deliverability breakdown by sender or domain. */
  List<List<String>> tableData = [];

  MailDeliverabilityResponse();

  @override
  String toString() {
    return 'MailDeliverabilityResponse[stat=$stat, percent=$percent, tableData=$tableData, ]';
  }

  MailDeliverabilityResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    stat = new Object.fromJson(json['stat']);
    percent = json['percent'];
    tableData = List.listFromJson(json['table_data']);
  }

  Map<String, dynamic> toJson() {
    return {
      'stat': stat,
      'percent': percent,
      'table_data': tableData
     };
  }

  static List<MailDeliverabilityResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<MailDeliverabilityResponse>() : json.map((value) => new MailDeliverabilityResponse.fromJson(value)).toList();
  }

  static Map<String, MailDeliverabilityResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, MailDeliverabilityResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new MailDeliverabilityResponse.fromJson(value));
    }
    return map;
  }
}
