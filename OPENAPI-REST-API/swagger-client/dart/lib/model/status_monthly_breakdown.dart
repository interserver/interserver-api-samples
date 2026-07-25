part of swagger.api;

class StatusMonthlyBreakdown {
  
  MonthlyCounts default_ = null;

  MonthlyCounts failed = null;

  MonthlyCounts rejected = null;

  MonthlyCounts pending = null;

  MonthlyCounts locked = null;

  MonthlyCounts paid = null;

  StatusMonthlyBreakdown();

  @override
  String toString() {
    return 'StatusMonthlyBreakdown[default_=$default_, failed=$failed, rejected=$rejected, pending=$pending, locked=$locked, paid=$paid, ]';
  }

  StatusMonthlyBreakdown.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    default_ = new MonthlyCounts.fromJson(json['default']);
    failed = new MonthlyCounts.fromJson(json['failed']);
    rejected = new MonthlyCounts.fromJson(json['rejected']);
    pending = new MonthlyCounts.fromJson(json['pending']);
    locked = new MonthlyCounts.fromJson(json['locked']);
    paid = new MonthlyCounts.fromJson(json['paid']);
  }

  Map<String, dynamic> toJson() {
    return {
      'default': default_,
      'failed': failed,
      'rejected': rejected,
      'pending': pending,
      'locked': locked,
      'paid': paid
     };
  }

  static List<StatusMonthlyBreakdown> listFromJson(List<dynamic> json) {
    return json == null ? new List<StatusMonthlyBreakdown>() : json.map((value) => new StatusMonthlyBreakdown.fromJson(value)).toList();
  }

  static Map<String, StatusMonthlyBreakdown> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, StatusMonthlyBreakdown>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new StatusMonthlyBreakdown.fromJson(value));
    }
    return map;
  }
}
