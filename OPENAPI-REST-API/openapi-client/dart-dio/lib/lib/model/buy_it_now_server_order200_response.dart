//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:interserver_api/lib/model/buy_it_now_server_order200_response_cp_inner.dart';
import 'package:interserver_api/lib/model/buy_it_now_server_order200_response_os_inner.dart';
import 'package:interserver_api/lib/model/buy_it_now_server_order200_response_ips_inner.dart';
import 'package:interserver_api/lib/model/buy_it_now_server_order200_response_bandwidth_inner.dart';
import 'package:interserver_api/lib/model/buy_it_now_server_order200_response_raid_inner.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'buy_it_now_server_order200_response.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class BuyItNowServerOrder200Response {
  /// Returns a new [BuyItNowServerOrder200Response] instance.
  BuyItNowServerOrder200Response({

    this.bandwidth = const Optional.absent(),

    this.ips = const Optional.absent(),

    this.os = const Optional.absent(),

    this.cp = const Optional.absent(),

    this.raid = const Optional.absent(),
  });

  @OptionalConverter()
  @JsonKey(
    
    name: r'bandwidth',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<List<BuyItNowServerOrder200ResponseBandwidthInner>?> bandwidth;



  @OptionalConverter()
  @JsonKey(
    
    name: r'ips',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<List<BuyItNowServerOrder200ResponseIpsInner>?> ips;



  @OptionalConverter()
  @JsonKey(
    
    name: r'os',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<List<BuyItNowServerOrder200ResponseOsInner>?> os;



  @OptionalConverter()
  @JsonKey(
    
    name: r'cp',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<List<BuyItNowServerOrder200ResponseCpInner>?> cp;



  @OptionalConverter()
  @JsonKey(
    
    name: r'raid',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<List<BuyItNowServerOrder200ResponseRaidInner>?> raid;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is BuyItNowServerOrder200Response &&
      runtimeType == other.runtimeType &&
      equals(
        [
            bandwidth,
            ips,
            os,
            cp,
            raid,
        ],
        [
            other.bandwidth,
            other.ips,
            other.os,
            other.cp,
            other.raid,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        bandwidth,
        ips,
        os,
        cp,
        raid,
    ],);

  factory BuyItNowServerOrder200Response.fromJson(Map<String, dynamic> json) => _$BuyItNowServerOrder200ResponseFromJson(json);

  Map<String, dynamic> toJson() => _$BuyItNowServerOrder200ResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

