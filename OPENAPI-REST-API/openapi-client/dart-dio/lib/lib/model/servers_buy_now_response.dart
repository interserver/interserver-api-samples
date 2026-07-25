//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:interserver_api/lib/model/servers_buy_now_response_order_details.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'servers_buy_now_response.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ServersBuyNowResponse {
  /// Returns a new [ServersBuyNowResponse] instance.
  ServersBuyNowResponse({

    this.success = const Optional.absent(),

    this.text = const Optional.absent(),

    this.orderDetails = const Optional.absent(),
  });

      /// Whether the order was placed successfully.
  @OptionalConverter()
  @JsonKey(
    
    name: r'success',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<bool?> success;



      /// Human-readable status message.
  @OptionalConverter()
  @JsonKey(
    
    name: r'text',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> text;



  @OptionalConverter()
  @JsonKey(
    
    name: r'order_details',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<ServersBuyNowResponseOrderDetails?> orderDetails;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is ServersBuyNowResponse &&
      runtimeType == other.runtimeType &&
      equals(
        [
            success,
            text,
            orderDetails,
        ],
        [
            other.success,
            other.text,
            other.orderDetails,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        success,
        text,
        orderDetails,
    ],);

  factory ServersBuyNowResponse.fromJson(Map<String, dynamic> json) => _$ServersBuyNowResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ServersBuyNowResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

