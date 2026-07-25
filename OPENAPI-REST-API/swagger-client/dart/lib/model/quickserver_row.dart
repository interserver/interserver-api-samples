part of swagger.api;

class QuickserverRow {
  /* The id of the qs. */
  String qsId = null;
/* The name of the qs. */
  String qsName = null;
/* The cost of the qs. */
  String cost = null;
/* The hostname of the qs. */
  String qsHostname = null;
/* The status of the qs. */
  String qsStatus = null;
/* The comment of the qs. */
  String qsComment = null;

  QuickserverRow();

  @override
  String toString() {
    return 'QuickserverRow[qsId=$qsId, qsName=$qsName, cost=$cost, qsHostname=$qsHostname, qsStatus=$qsStatus, qsComment=$qsComment, ]';
  }

  QuickserverRow.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    qsId = json['qs_id'];
    qsName = json['qs_name'];
    cost = json['cost'];
    qsHostname = json['qs_hostname'];
    qsStatus = json['qs_status'];
    qsComment = json['qs_comment'];
  }

  Map<String, dynamic> toJson() {
    return {
      'qs_id': qsId,
      'qs_name': qsName,
      'cost': cost,
      'qs_hostname': qsHostname,
      'qs_status': qsStatus,
      'qs_comment': qsComment
     };
  }

  static List<QuickserverRow> listFromJson(List<dynamic> json) {
    return json == null ? new List<QuickserverRow>() : json.map((value) => new QuickserverRow.fromJson(value)).toList();
  }

  static Map<String, QuickserverRow> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, QuickserverRow>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new QuickserverRow.fromJson(value));
    }
    return map;
  }
}
