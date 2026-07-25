part of swagger.api;

class QueueResponse {
  /* Response text */
  String text = null;
/* The Queue ID attached to the action. */
  int queueId = null;

  QueueResponse();

  @override
  String toString() {
    return 'QueueResponse[text=$text, queueId=$queueId, ]';
  }

  QueueResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    text = json['text'];
    queueId = json['queueId'];
  }

  Map<String, dynamic> toJson() {
    return {
      'text': text,
      'queueId': queueId
     };
  }

  static List<QueueResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<QueueResponse>() : json.map((value) => new QueueResponse.fromJson(value)).toList();
  }

  static Map<String, QueueResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, QueueResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new QueueResponse.fromJson(value));
    }
    return map;
  }
}
