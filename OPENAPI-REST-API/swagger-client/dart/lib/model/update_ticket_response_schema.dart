part of swagger.api;

class UpdateTicketResponseSchema {
  
  bool success = null;

  String message = null;

  UpdateTicketResponseSchema();

  @override
  String toString() {
    return 'UpdateTicketResponseSchema[success=$success, message=$message, ]';
  }

  UpdateTicketResponseSchema.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    success = json['success'];
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    return {
      'success': success,
      'message': message
     };
  }

  static List<UpdateTicketResponseSchema> listFromJson(List<dynamic> json) {
    return json == null ? new List<UpdateTicketResponseSchema>() : json.map((value) => new UpdateTicketResponseSchema.fromJson(value)).toList();
  }

  static Map<String, UpdateTicketResponseSchema> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UpdateTicketResponseSchema>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new UpdateTicketResponseSchema.fromJson(value));
    }
    return map;
  }
}
