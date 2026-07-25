part of swagger.api;

class TicketPostDetailsInner {
  
  int postId = null;

  String date = null;

  String contents = null;

  String creator = null;
  //enum creatorEnum {  User,  Staff,  };

  String creatorEmail = null;

  String creatorName = null;

  int hasattachments = null;

  String attachmentDownload = null;

  TicketPostDetailsInner();

  @override
  String toString() {
    return 'TicketPostDetailsInner[postId=$postId, date=$date, contents=$contents, creator=$creator, creatorEmail=$creatorEmail, creatorName=$creatorName, hasattachments=$hasattachments, attachmentDownload=$attachmentDownload, ]';
  }

  TicketPostDetailsInner.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    postId = json['post_id'];
    date = json['date'];
    contents = json['contents'];
    creator = json['creator'];
    creatorEmail = json['creator_email'];
    creatorName = json['creator_name'];
    hasattachments = json['hasattachments'];
    attachmentDownload = json['attachment_download'];
  }

  Map<String, dynamic> toJson() {
    return {
      'post_id': postId,
      'date': date,
      'contents': contents,
      'creator': creator,
      'creator_email': creatorEmail,
      'creator_name': creatorName,
      'hasattachments': hasattachments,
      'attachment_download': attachmentDownload
     };
  }

  static List<TicketPostDetailsInner> listFromJson(List<dynamic> json) {
    return json == null ? new List<TicketPostDetailsInner>() : json.map((value) => new TicketPostDetailsInner.fromJson(value)).toList();
  }

  static Map<String, TicketPostDetailsInner> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, TicketPostDetailsInner>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new TicketPostDetailsInner.fromJson(value));
    }
    return map;
  }
}
