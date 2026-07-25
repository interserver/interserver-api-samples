part of swagger.api;

class ServerLocation1 {
  
  int locationId = null;

  String locationName = null;

  String locationDescription = null;

  String locationLat = null;

  String locationLong = null;

  int locationIpmiGroup = null;

  ServerLocation1();

  @override
  String toString() {
    return 'ServerLocation1[locationId=$locationId, locationName=$locationName, locationDescription=$locationDescription, locationLat=$locationLat, locationLong=$locationLong, locationIpmiGroup=$locationIpmiGroup, ]';
  }

  ServerLocation1.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    locationId = json['location_id'];
    locationName = json['location_name'];
    locationDescription = json['location_description'];
    locationLat = json['location_lat'];
    locationLong = json['location_long'];
    locationIpmiGroup = json['location_ipmi_group'];
  }

  Map<String, dynamic> toJson() {
    return {
      'location_id': locationId,
      'location_name': locationName,
      'location_description': locationDescription,
      'location_lat': locationLat,
      'location_long': locationLong,
      'location_ipmi_group': locationIpmiGroup
     };
  }

  static List<ServerLocation1> listFromJson(List<dynamic> json) {
    return json == null ? new List<ServerLocation1>() : json.map((value) => new ServerLocation1.fromJson(value)).toList();
  }

  static Map<String, ServerLocation1> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ServerLocation1>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ServerLocation1.fromJson(value));
    }
    return map;
  }
}
