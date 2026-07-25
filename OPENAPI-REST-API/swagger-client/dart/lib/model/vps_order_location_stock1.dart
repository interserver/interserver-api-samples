part of swagger.api;

class VpsOrderLocationStock1 {
  
  bool kvm = null;

  bool kvmstorage = null;

  bool hyperv = null;

  VpsOrderLocationStock1();

  @override
  String toString() {
    return 'VpsOrderLocationStock1[kvm=$kvm, kvmstorage=$kvmstorage, hyperv=$hyperv, ]';
  }

  VpsOrderLocationStock1.fromJson(Map<String, dynamic> json) {
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

  static List<VpsOrderLocationStock1> listFromJson(List<dynamic> json) {
    return json == null ? new List<VpsOrderLocationStock1>() : json.map((value) => new VpsOrderLocationStock1.fromJson(value)).toList();
  }

  static Map<String, VpsOrderLocationStock1> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, VpsOrderLocationStock1>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new VpsOrderLocationStock1.fromJson(value));
    }
    return map;
  }
}
