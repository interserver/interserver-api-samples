part of swagger.api;

class VpsServiceExtra {
  /* Spice */
  int spice = null;

  List<VpsSnapshot> snapshots = [];

  VpsServiceExtra();

  @override
  String toString() {
    return 'VpsServiceExtra[spice=$spice, snapshots=$snapshots, ]';
  }

  VpsServiceExtra.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    spice = json['spice'];
    snapshots = VpsSnapshot.listFromJson(json['snapshots']);
  }

  Map<String, dynamic> toJson() {
    return {
      'spice': spice,
      'snapshots': snapshots
     };
  }

  static List<VpsServiceExtra> listFromJson(List<dynamic> json) {
    return json == null ? new List<VpsServiceExtra>() : json.map((value) => new VpsServiceExtra.fromJson(value)).toList();
  }

  static Map<String, VpsServiceExtra> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, VpsServiceExtra>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new VpsServiceExtra.fromJson(value));
    }
    return map;
  }
}
