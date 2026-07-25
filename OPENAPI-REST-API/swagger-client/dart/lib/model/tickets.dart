part of swagger.api;

class Tickets {
  
  String ima = null;

  String custid = null;

  String view = null;

  int currentPage = null;

  int limit = null;

  int sortcol = null;

  int sortdir = null;

  int rowsOffset = null;

  List<TicketsRow> tickets = [];

  int pages = null;

  int rowsTotal = null;

  int inboxCount = null;

  TicketsCountArray countArray = null;

  String viewText = null;

  Tickets();

  @override
  String toString() {
    return 'Tickets[ima=$ima, custid=$custid, view=$view, currentPage=$currentPage, limit=$limit, sortcol=$sortcol, sortdir=$sortdir, rowsOffset=$rowsOffset, tickets=$tickets, pages=$pages, rowsTotal=$rowsTotal, inboxCount=$inboxCount, countArray=$countArray, viewText=$viewText, ]';
  }

  Tickets.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    ima = json['ima'];
    custid = json['custid'];
    view = json['view'];
    currentPage = json['currentPage'];
    limit = json['limit'];
    sortcol = json['sortcol'];
    sortdir = json['sortdir'];
    rowsOffset = json['rowsOffset'];
    tickets = TicketsRow.listFromJson(json['tickets']);
    pages = json['pages'];
    rowsTotal = json['rowsTotal'];
    inboxCount = json['inboxCount'];
    countArray = new TicketsCountArray.fromJson(json['countArray']);
    viewText = json['viewText'];
  }

  Map<String, dynamic> toJson() {
    return {
      'ima': ima,
      'custid': custid,
      'view': view,
      'currentPage': currentPage,
      'limit': limit,
      'sortcol': sortcol,
      'sortdir': sortdir,
      'rowsOffset': rowsOffset,
      'tickets': tickets,
      'pages': pages,
      'rowsTotal': rowsTotal,
      'inboxCount': inboxCount,
      'countArray': countArray,
      'viewText': viewText
     };
  }

  static List<Tickets> listFromJson(List<dynamic> json) {
    return json == null ? new List<Tickets>() : json.map((value) => new Tickets.fromJson(value)).toList();
  }

  static Map<String, Tickets> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Tickets>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Tickets.fromJson(value));
    }
    return map;
  }
}
