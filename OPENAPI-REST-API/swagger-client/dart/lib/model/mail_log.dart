part of swagger.api;

class MailLog {
  /* Total number of log entries that match the supplied filters, regardless of `skip` and `limit`.  Reflects the `groupby` mode. */
  int total = null;
/* The `skip` value used for this page (echoed from the request). */
  int skip = null;
/* The `limit` value used for this page (echoed from the request). */
  int limit = null;

  List<MailLogEntry> emails = [];

  MailLog();

  @override
  String toString() {
    return 'MailLog[total=$total, skip=$skip, limit=$limit, emails=$emails, ]';
  }

  MailLog.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    total = json['total'];
    skip = json['skip'];
    limit = json['limit'];
    emails = MailLogEntry.listFromJson(json['emails']);
  }

  Map<String, dynamic> toJson() {
    return {
      'total': total,
      'skip': skip,
      'limit': limit,
      'emails': emails
     };
  }

  static List<MailLog> listFromJson(List<dynamic> json) {
    return json == null ? new List<MailLog>() : json.map((value) => new MailLog.fromJson(value)).toList();
  }

  static Map<String, MailLog> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, MailLog>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new MailLog.fromJson(value));
    }
    return map;
  }
}
