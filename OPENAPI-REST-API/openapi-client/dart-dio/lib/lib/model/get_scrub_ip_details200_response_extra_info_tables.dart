//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:interserver_api/lib/model/get_scrub_ip_details200_response_extra_info_tables_scrub_ips.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'get_scrub_ip_details200_response_extra_info_tables.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class GetScrubIpDetails200ResponseExtraInfoTables {
  /// Returns a new [GetScrubIpDetails200ResponseExtraInfoTables] instance.
  GetScrubIpDetails200ResponseExtraInfoTables({

    this.scrubIps = const Optional.absent(),
  });

  @OptionalConverter()
  @JsonKey(
    
    name: r'scrub_ips',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<GetScrubIpDetails200ResponseExtraInfoTablesScrubIps?> scrubIps;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is GetScrubIpDetails200ResponseExtraInfoTables &&
      runtimeType == other.runtimeType &&
      equals(
        [
            scrubIps,
        ],
        [
            other.scrubIps,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        scrubIps,
    ],);

  factory GetScrubIpDetails200ResponseExtraInfoTables.fromJson(Map<String, dynamic> json) => _$GetScrubIpDetails200ResponseExtraInfoTablesFromJson(json);

  Map<String, dynamic> toJson() => _$GetScrubIpDetails200ResponseExtraInfoTablesToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

