part of swagger.api;

class VpsOrderPlatformPackages {
  
  double kvm = null;

  double kvmstorage = null;

  double hyperv = null;

  VpsOrderPlatformPackages();

  @override
  String toString() {
    return 'VpsOrderPlatformPackages[kvm=$kvm, kvmstorage=$kvmstorage, hyperv=$hyperv, ]';
  }

  VpsOrderPlatformPackages.fromJson(Map<String, dynamic> json) {
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

  static List<VpsOrderPlatformPackages> listFromJson(List<dynamic> json) {
    return json == null ? new List<VpsOrderPlatformPackages>() : json.map((value) => new VpsOrderPlatformPackages.fromJson(value)).toList();
  }

  static Map<String, VpsOrderPlatformPackages> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, VpsOrderPlatformPackages>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new VpsOrderPlatformPackages.fromJson(value));
    }
    return map;
  }
}
