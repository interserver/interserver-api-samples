//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'get_scrub_ip_details200_response_extra_info_tables_scrub_ips_rows_inner.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class GetScrubIpDetails200ResponseExtraInfoTablesScrubIpsRowsInner {
  /// Returns a new [GetScrubIpDetails200ResponseExtraInfoTablesScrubIpsRowsInner] instance.
  GetScrubIpDetails200ResponseExtraInfoTablesScrubIpsRowsInner({

    this.desc = const Optional.absent(),

    this.value = const Optional.absent(),
  });

  @OptionalConverter()
  @JsonKey(
    
    name: r'desc',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> desc;



  @OptionalConverter()
  @JsonKey(
    
    name: r'value',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> value;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is GetScrubIpDetails200ResponseExtraInfoTablesScrubIpsRowsInner &&
      runtimeType == other.runtimeType &&
      equals(
        [
            desc,
            value,
        ],
        [
            other.desc,
            other.value,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        desc,
        value,
    ],);

  factory GetScrubIpDetails200ResponseExtraInfoTablesScrubIpsRowsInner.fromJson(Map<String, dynamic> json) => _$GetScrubIpDetails200ResponseExtraInfoTablesScrubIpsRowsInnerFromJson(json);

  Map<String, dynamic> toJson() => _$GetScrubIpDetails200ResponseExtraInfoTablesScrubIpsRowsInnerToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

