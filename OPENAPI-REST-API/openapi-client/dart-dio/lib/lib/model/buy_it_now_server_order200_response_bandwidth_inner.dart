//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'buy_it_now_server_order200_response_bandwidth_inner.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class BuyItNowServerOrder200ResponseBandwidthInner {
  /// Returns a new [BuyItNowServerOrder200ResponseBandwidthInner] instance.
  BuyItNowServerOrder200ResponseBandwidthInner({

    this.id = const Optional.absent(),

    this.shortDesc = const Optional.absent(),

    this.longDesc = const Optional.absent(),

    this.monthlyPrice = const Optional.absent(),
  });

  @OptionalConverter()
  @JsonKey(
    
    name: r'id',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> id;



  @OptionalConverter()
  @JsonKey(
    
    name: r'short_desc',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> shortDesc;



  @OptionalConverter()
  @JsonKey(
    
    name: r'long_desc',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> longDesc;



  @OptionalConverter()
  @JsonKey(
    
    name: r'monthly_price',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> monthlyPrice;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is BuyItNowServerOrder200ResponseBandwidthInner &&
      runtimeType == other.runtimeType &&
      equals(
        [
            id,
            shortDesc,
            longDesc,
            monthlyPrice,
        ],
        [
            other.id,
            other.shortDesc,
            other.longDesc,
            other.monthlyPrice,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        id,
        shortDesc,
        longDesc,
        monthlyPrice,
    ],);

  factory BuyItNowServerOrder200ResponseBandwidthInner.fromJson(Map<String, dynamic> json) => _$BuyItNowServerOrder200ResponseBandwidthInnerFromJson(json);

  Map<String, dynamic> toJson() => _$BuyItNowServerOrder200ResponseBandwidthInnerToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

