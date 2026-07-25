part of swagger.api;

class InlineResponse200 {
  /* Base64-encoded secret key for TOTP setup. */
  String n2faGoogleKey = null;
/* Human-readable formatted key (chunks of 4 characters). */
  String n2faGoogleSplit = null;

  InlineResponse200();

  @override
  String toString() {
    return 'InlineResponse200[n2faGoogleKey=$n2faGoogleKey, n2faGoogleSplit=$n2faGoogleSplit, ]';
  }

  InlineResponse200.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    n2faGoogleKey = json['2fa_google_key'];
    n2faGoogleSplit = json['2fa_google_split'];
  }

  Map<String, dynamic> toJson() {
    return {
      '2fa_google_key': n2faGoogleKey,
      '2fa_google_split': n2faGoogleSplit
     };
  }

  static List<InlineResponse200> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse200>() : json.map((value) => new InlineResponse200.fromJson(value)).toList();
  }

  static Map<String, InlineResponse200> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, InlineResponse200>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new InlineResponse200.fromJson(value));
    }
    return map;
  }
}
