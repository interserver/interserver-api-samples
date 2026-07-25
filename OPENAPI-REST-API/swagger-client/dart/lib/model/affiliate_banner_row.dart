part of swagger.api;

class AffiliateBannerRow {
  
  String image = null;

  String width = null;

  String height = null;

  AffiliateBannerRow();

  @override
  String toString() {
    return 'AffiliateBannerRow[image=$image, width=$width, height=$height, ]';
  }

  AffiliateBannerRow.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    image = json['image'];
    width = json['width'];
    height = json['height'];
  }

  Map<String, dynamic> toJson() {
    return {
      'image': image,
      'width': width,
      'height': height
     };
  }

  static List<AffiliateBannerRow> listFromJson(List<dynamic> json) {
    return json == null ? new List<AffiliateBannerRow>() : json.map((value) => new AffiliateBannerRow.fromJson(value)).toList();
  }

  static Map<String, AffiliateBannerRow> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, AffiliateBannerRow>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new AffiliateBannerRow.fromJson(value));
    }
    return map;
  }
}
