//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'scrub_ip_filter_types_filters_value.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ScrubIpFilterTypesFiltersValue {
  /// Returns a new [ScrubIpFilterTypesFiltersValue] instance.
  ScrubIpFilterTypesFiltersValue({

    this.name = const Optional.absent(),

    this.desc = const Optional.absent(),
  });

  @OptionalConverter()
  @JsonKey(
    
    name: r'name',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> name;



  @OptionalConverter()
  @JsonKey(
    
    name: r'desc',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> desc;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is ScrubIpFilterTypesFiltersValue &&
      runtimeType == other.runtimeType &&
      equals(
        [
            name,
            desc,
        ],
        [
            other.name,
            other.desc,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        name,
        desc,
    ],);

  factory ScrubIpFilterTypesFiltersValue.fromJson(Map<String, dynamic> json) => _$ScrubIpFilterTypesFiltersValueFromJson(json);

  Map<String, dynamic> toJson() => _$ScrubIpFilterTypesFiltersValueToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

