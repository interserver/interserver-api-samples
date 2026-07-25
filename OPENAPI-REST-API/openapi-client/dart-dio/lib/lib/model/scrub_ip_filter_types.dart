//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:interserver_api/lib/model/scrub_ip_filter_types_filters_value.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'scrub_ip_filter_types.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ScrubIpFilterTypes {
  /// Returns a new [ScrubIpFilterTypes] instance.
  ScrubIpFilterTypes({

    this.success = const Optional.absent(),

    this.filters = const Optional.absent(),
  });

  @OptionalConverter()
  @JsonKey(
    
    name: r'success',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<bool?> success;



  @OptionalConverter()
  @JsonKey(
    
    name: r'filters',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<Map<String, ScrubIpFilterTypesFiltersValue>?> filters;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is ScrubIpFilterTypes &&
      runtimeType == other.runtimeType &&
      equals(
        [
            success,
            filters,
        ],
        [
            other.success,
            other.filters,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        success,
        filters,
    ],);

  factory ScrubIpFilterTypes.fromJson(Map<String, dynamic> json) => _$ScrubIpFilterTypesFromJson(json);

  Map<String, dynamic> toJson() => _$ScrubIpFilterTypesToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

