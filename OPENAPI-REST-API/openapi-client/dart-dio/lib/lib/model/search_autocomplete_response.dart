//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'search_autocomplete_response.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class SearchAutocompleteResponse {
  /// Returns a new [SearchAutocompleteResponse] instance.
  SearchAutocompleteResponse({
  });


    bool operator ==(Object other) {
      return identical(this, other) ||
      other is SearchAutocompleteResponse &&
      runtimeType == other.runtimeType &&
      equals(
        [
        ],
        [
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
    ],);

  factory SearchAutocompleteResponse.fromJson(Map<String, dynamic> json) => _$SearchAutocompleteResponseFromJson(json);

  Map<String, dynamic> toJson() => _$SearchAutocompleteResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

