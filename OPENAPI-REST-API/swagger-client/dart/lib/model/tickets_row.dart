part of swagger.api;

class TicketsRow {
  
  String title = null;

  String ticketmaskid = null;

  String lastreplier = null;

  String status = null;

  String priority = null;

  int totalReplies = null;

  String lastactivity = null;

  String departmenttitle = null;

  int ticketid = null;

  String canClose = null;

  Object attachments = null;

  String statusText = null;

  bool checked = null;

  TicketsRow();

  @override
  String toString() {
    return 'TicketsRow[title=$title, ticketmaskid=$ticketmaskid, lastreplier=$lastreplier, status=$status, priority=$priority, totalReplies=$totalReplies, lastactivity=$lastactivity, departmenttitle=$departmenttitle, ticketid=$ticketid, canClose=$canClose, attachments=$attachments, statusText=$statusText, checked=$checked, ]';
  }

  TicketsRow.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    title = json['title'];
    ticketmaskid = json['ticketmaskid'];
    lastreplier = json['lastreplier'];
    status = json['status'];
    priority = json['priority'];
    totalReplies = json['total_replies'];
    lastactivity = json['lastactivity'];
    departmenttitle = json['departmenttitle'];
    ticketid = json['ticketid'];
    canClose = json['can_close'];
    attachments = new Object.fromJson(json['attachments']);
    statusText = json['status_text'];
    checked = json['checked'];
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'ticketmaskid': ticketmaskid,
      'lastreplier': lastreplier,
      'status': status,
      'priority': priority,
      'total_replies': totalReplies,
      'lastactivity': lastactivity,
      'departmenttitle': departmenttitle,
      'ticketid': ticketid,
      'can_close': canClose,
      'attachments': attachments,
      'status_text': statusText,
      'checked': checked
     };
  }

  static List<TicketsRow> listFromJson(List<dynamic> json) {
    return json == null ? new List<TicketsRow>() : json.map((value) => new TicketsRow.fromJson(value)).toList();
  }

  static Map<String, TicketsRow> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, TicketsRow>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new TicketsRow.fromJson(value));
    }
    return map;
  }
}
