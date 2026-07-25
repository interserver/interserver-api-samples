//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'domain_search_response.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class DomainSearchResponse {
  /// Returns a new [DomainSearchResponse] instance.
  DomainSearchResponse({

    this.success = const Optional.absent(),

    this.responseText = const Optional.absent(),

    this.responseTime = const Optional.absent(),

    this.lookup = const Optional.absent(),

    this.suggest = const Optional.absent(),

    this.tlds = const Optional.absent(),
  });

      /// Indicates whether the registrar search succeeded.
  @OptionalConverter()
  @JsonKey(
    
    name: r'success',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<bool?> success;



      /// Human-readable status text from the registrar.
  @OptionalConverter()
  @JsonKey(
    
    name: r'response_text',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> responseText;



      /// Response time as reported by the registrar.
  @OptionalConverter()
  @JsonKey(
    
    name: r'response_time',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> responseTime;



      /// Availability lookup results for queried domains.
  @OptionalConverter()
  @JsonKey(
    
    name: r'lookup',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<List<Object>?> lookup;



      /// Suggested alternative domains and availability data.
  @OptionalConverter()
  @JsonKey(
    
    name: r'suggest',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<List<Object>?> suggest;



      /// TLDs evaluated during the search.
  @OptionalConverter()
  @JsonKey(
    
    name: r'tlds',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<List<String>?> tlds;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is DomainSearchResponse &&
      runtimeType == other.runtimeType &&
      equals(
        [
            success,
            responseText,
            responseTime,
            lookup,
            suggest,
            tlds,
        ],
        [
            other.success,
            other.responseText,
            other.responseTime,
            other.lookup,
            other.suggest,
            other.tlds,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        success,
        responseText,
        responseTime,
        lookup,
        suggest,
        tlds,
    ],);

  factory DomainSearchResponse.fromJson(Map<String, dynamic> json) => _$DomainSearchResponseFromJson(json);

  Map<String, dynamic> toJson() => _$DomainSearchResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

