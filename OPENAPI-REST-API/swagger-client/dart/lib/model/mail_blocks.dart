part of swagger.api;

class MailBlocks {
  
  List<MailBlockClickHouse> local = [];

  List<MailBlockClickHouse> mbtrap = [];

  List<MailBlockRspamd> subject = [];

  MailBlocks();

  @override
  String toString() {
    return 'MailBlocks[local=$local, mbtrap=$mbtrap, subject=$subject, ]';
  }

  MailBlocks.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    local = MailBlockClickHouse.listFromJson(json['local']);
    mbtrap = MailBlockClickHouse.listFromJson(json['mbtrap']);
    subject = MailBlockRspamd.listFromJson(json['subject']);
  }

  Map<String, dynamic> toJson() {
    return {
      'local': local,
      'mbtrap': mbtrap,
      'subject': subject
     };
  }

  static List<MailBlocks> listFromJson(List<dynamic> json) {
    return json == null ? new List<MailBlocks>() : json.map((value) => new MailBlocks.fromJson(value)).toList();
  }

  static Map<String, MailBlocks> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, MailBlocks>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new MailBlocks.fromJson(value));
    }
    return map;
  }
}
