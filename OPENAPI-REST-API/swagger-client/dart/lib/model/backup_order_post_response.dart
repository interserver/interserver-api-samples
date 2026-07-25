part of swagger.api;

class BackupOrderPostResponse {
  
  bool continue_ = null;

  List<String> errors = [];

  String totalCost = null;

  String iid = null;

  List<String> iids = [];

  List<String> realIids = [];

  int serviceId = null;

  String invoiceDescription = null;

  BackupOrderPostResponseCjParams cjParams = null;

  BackupOrderPostResponse();

  @override
  String toString() {
    return 'BackupOrderPostResponse[continue_=$continue_, errors=$errors, totalCost=$totalCost, iid=$iid, iids=$iids, realIids=$realIids, serviceId=$serviceId, invoiceDescription=$invoiceDescription, cjParams=$cjParams, ]';
  }

  BackupOrderPostResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    continue_ = json['continue'];
    errors = (json['errors'] as List).map((item) => item as String).toList();
    totalCost = json['total_cost'];
    iid = json['iid'];
    iids = (json['iids'] as List).map((item) => item as String).toList();
    realIids = (json['real_iids'] as List).map((item) => item as String).toList();
    serviceId = json['serviceId'];
    invoiceDescription = json['invoice_description'];
    cjParams = new BackupOrderPostResponseCjParams.fromJson(json['cj_params']);
  }

  Map<String, dynamic> toJson() {
    return {
      'continue': continue_,
      'errors': errors,
      'total_cost': totalCost,
      'iid': iid,
      'iids': iids,
      'real_iids': realIids,
      'serviceId': serviceId,
      'invoice_description': invoiceDescription,
      'cj_params': cjParams
     };
  }

  static List<BackupOrderPostResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<BackupOrderPostResponse>() : json.map((value) => new BackupOrderPostResponse.fromJson(value)).toList();
  }

  static Map<String, BackupOrderPostResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, BackupOrderPostResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new BackupOrderPostResponse.fromJson(value));
    }
    return map;
  }
}
