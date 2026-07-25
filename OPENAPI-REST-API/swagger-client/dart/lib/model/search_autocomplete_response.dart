part of swagger.api;

class SearchAutocompleteResponse {
  
  SearchAutocompleteResponse();

  @override
  String toString() {
    return 'SearchAutocompleteResponse[]';
  }

  SearchAutocompleteResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<SearchAutocompleteResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<SearchAutocompleteResponse>() : json.map((value) => new SearchAutocompleteResponse.fromJson(value)).toList();
  }

  static Map<String, SearchAutocompleteResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, SearchAutocompleteResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new SearchAutocompleteResponse.fromJson(value));
    }
    return map;
  }
}
