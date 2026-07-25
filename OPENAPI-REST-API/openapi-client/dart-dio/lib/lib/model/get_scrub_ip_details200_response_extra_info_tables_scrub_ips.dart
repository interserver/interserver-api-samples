//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:interserver_api/lib/model/get_scrub_ip_details200_response_extra_info_tables_scrub_ips_rows_inner.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'get_scrub_ip_details200_response_extra_info_tables_scrub_ips.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class GetScrubIpDetails200ResponseExtraInfoTablesScrubIps {
  /// Returns a new [GetScrubIpDetails200ResponseExtraInfoTablesScrubIps] instance.
  GetScrubIpDetails200ResponseExtraInfoTablesScrubIps({

    this.title = const Optional.absent(),

    this.rows = const Optional.absent(),
  });

  @OptionalConverter()
  @JsonKey(
    
    name: r'title',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> title;



  @OptionalConverter()
  @JsonKey(
    
    name: r'rows',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<List<GetScrubIpDetails200ResponseExtraInfoTablesScrubIpsRowsInner>?> rows;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is GetScrubIpDetails200ResponseExtraInfoTablesScrubIps &&
      runtimeType == other.runtimeType &&
      equals(
        [
            title,
            rows,
        ],
        [
            other.title,
            other.rows,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        title,
        rows,
    ],);

  factory GetScrubIpDetails200ResponseExtraInfoTablesScrubIps.fromJson(Map<String, dynamic> json) => _$GetScrubIpDetails200ResponseExtraInfoTablesScrubIpsFromJson(json);

  Map<String, dynamic> toJson() => _$GetScrubIpDetails200ResponseExtraInfoTablesScrubIpsToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

