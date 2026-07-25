part of swagger.api;

class DomainRow {
  /* The ID number of the domain in our billing system. */
  String domainId = null;
/* The hostname of the domain. */
  String domainHostname = null;
/* The expiration date of the domain. */
  String domainExpireDate = null;
/* The cost of the domain. */
  String cost = null;
/* The billing / registration status of the domain. */
  String domainStatus = null;

  DomainRow();

  @override
  String toString() {
    return 'DomainRow[domainId=$domainId, domainHostname=$domainHostname, domainExpireDate=$domainExpireDate, cost=$cost, domainStatus=$domainStatus, ]';
  }

  DomainRow.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    domainId = json['domain_id'];
    domainHostname = json['domain_hostname'];
    domainExpireDate = json['domain_expire_date'];
    cost = json['cost'];
    domainStatus = json['domain_status'];
  }

  Map<String, dynamic> toJson() {
    return {
      'domain_id': domainId,
      'domain_hostname': domainHostname,
      'domain_expire_date': domainExpireDate,
      'cost': cost,
      'domain_status': domainStatus
     };
  }

  static List<DomainRow> listFromJson(List<dynamic> json) {
    return json == null ? new List<DomainRow>() : json.map((value) => new DomainRow.fromJson(value)).toList();
  }

  static Map<String, DomainRow> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DomainRow>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new DomainRow.fromJson(value));
    }
    return map;
  }
}
