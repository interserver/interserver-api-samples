part of swagger.api;

class TicketDetails {
  
  int ticketid = null;

  String ticketmaskid = null;

  String department = null;

  String status = null;

  String priority = null;

  String subject = null;

  String createdOn = null;

  String updatedOn = null;

  TicketDetails();

  @override
  String toString() {
    return 'TicketDetails[ticketid=$ticketid, ticketmaskid=$ticketmaskid, department=$department, status=$status, priority=$priority, subject=$subject, createdOn=$createdOn, updatedOn=$updatedOn, ]';
  }

  TicketDetails.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    ticketid = json['ticketid'];
    ticketmaskid = json['ticketmaskid'];
    department = json['department'];
    status = json['status'];
    priority = json['priority'];
    subject = json['subject'];
    createdOn = json['created_on'];
    updatedOn = json['updated_on'];
  }

  Map<String, dynamic> toJson() {
    return {
      'ticketid': ticketid,
      'ticketmaskid': ticketmaskid,
      'department': department,
      'status': status,
      'priority': priority,
      'subject': subject,
      'created_on': createdOn,
      'updated_on': updatedOn
     };
  }

  static List<TicketDetails> listFromJson(List<dynamic> json) {
    return json == null ? new List<TicketDetails>() : json.map((value) => new TicketDetails.fromJson(value)).toList();
  }

  static Map<String, TicketDetails> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, TicketDetails>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new TicketDetails.fromJson(value));
    }
    return map;
  }
}
