part of swagger.api;

class VpsOrderPlatformNames {
  
  String kvm = null;

  String kvmstorage = null;

  String hyperv = null;

  VpsOrderPlatformNames();

  @override
  String toString() {
    return 'VpsOrderPlatformNames[kvm=$kvm, kvmstorage=$kvmstorage, hyperv=$hyperv, ]';
  }

  VpsOrderPlatformNames.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    kvm = json['kvm'];
    kvmstorage = json['kvmstorage'];
    hyperv = json['hyperv'];
  }

  Map<String, dynamic> toJson() {
    return {
      'kvm': kvm,
      'kvmstorage': kvmstorage,
      'hyperv': hyperv
     };
  }

  static List<VpsOrderPlatformNames> listFromJson(List<dynamic> json) {
    return json == null ? new List<VpsOrderPlatformNames>() : json.map((value) => new VpsOrderPlatformNames.fromJson(value)).toList();
  }

  static Map<String, VpsOrderPlatformNames> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, VpsOrderPlatformNames>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new VpsOrderPlatformNames.fromJson(value));
    }
    return map;
  }
}
