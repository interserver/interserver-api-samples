part of swagger.api;

class QuickserverOrder {
  /* Quickserver ID. */
  String qsId = null;

  QuickserverOrderServerDetails serverDetails = null;

  QuickserverOrderTemplates templates = null;

  QuickserverOrderVersion version = null;

  QuickserverOrderDistroSel distroSel = null;

  QuickserverOrder();

  @override
  String toString() {
    return 'QuickserverOrder[qsId=$qsId, serverDetails=$serverDetails, templates=$templates, version=$version, distroSel=$distroSel, ]';
  }

  QuickserverOrder.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    qsId = json['qs_id'];
    serverDetails = new QuickserverOrderServerDetails.fromJson(json['server_details']);
    templates = new QuickserverOrderTemplates.fromJson(json['templates']);
    version = new QuickserverOrderVersion.fromJson(json['version']);
    distroSel = new QuickserverOrderDistroSel.fromJson(json['distro_sel']);
  }

  Map<String, dynamic> toJson() {
    return {
      'qs_id': qsId,
      'server_details': serverDetails,
      'templates': templates,
      'version': version,
      'distro_sel': distroSel
     };
  }

  static List<QuickserverOrder> listFromJson(List<dynamic> json) {
    return json == null ? new List<QuickserverOrder>() : json.map((value) => new QuickserverOrder.fromJson(value)).toList();
  }

  static Map<String, QuickserverOrder> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, QuickserverOrder>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new QuickserverOrder.fromJson(value));
    }
    return map;
  }
}
