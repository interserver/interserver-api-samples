//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'affiliate_traffic_row.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class AffiliateTrafficRow {
  /// Returns a new [AffiliateTrafficRow] instance.
  AffiliateTrafficRow({

    this.trafficId = const Optional.absent(),

    this.trafficIp = const Optional.absent(),

    this.trafficUrl = const Optional.absent(),

    this.trafficAffiliate = const Optional.absent(),

    this.trafficReferrer = const Optional.absent(),

    this.trafficTimestamp = const Optional.absent(),
  });

  @OptionalConverter()
  @JsonKey(
    
    name: r'traffic_id',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> trafficId;



  @OptionalConverter()
  @JsonKey(
    
    name: r'traffic_ip',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> trafficIp;



  @OptionalConverter()
  @JsonKey(
    
    name: r'traffic_url',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> trafficUrl;



  @OptionalConverter()
  @JsonKey(
    
    name: r'traffic_affiliate',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> trafficAffiliate;



  @OptionalConverter()
  @JsonKey(
    
    name: r'traffic_referrer',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> trafficReferrer;



  @OptionalConverter()
  @JsonKey(
    
    name: r'traffic_timestamp',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> trafficTimestamp;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is AffiliateTrafficRow &&
      runtimeType == other.runtimeType &&
      equals(
        [
            trafficId,
            trafficIp,
            trafficUrl,
            trafficAffiliate,
            trafficReferrer,
            trafficTimestamp,
        ],
        [
            other.trafficId,
            other.trafficIp,
            other.trafficUrl,
            other.trafficAffiliate,
            other.trafficReferrer,
            other.trafficTimestamp,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        trafficId,
        trafficIp,
        trafficUrl,
        trafficAffiliate,
        trafficReferrer,
        trafficTimestamp,
    ],);

  factory AffiliateTrafficRow.fromJson(Map<String, dynamic> json) => _$AffiliateTrafficRowFromJson(json);

  Map<String, dynamic> toJson() => _$AffiliateTrafficRowToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

