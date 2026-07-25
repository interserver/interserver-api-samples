//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'servers_buy_now_response_order_details.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ServersBuyNowResponseOrderDetails {
  /// Returns a new [ServersBuyNowResponseOrderDetails] instance.
  ServersBuyNowResponseOrderDetails({

    this.serviceId = const Optional.absent(),

    this.invoiceId = const Optional.absent(),
  });

      /// The newly created service ID for the ordered server.
  @OptionalConverter()
  @JsonKey(
    
    name: r'service_id',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<num?> serviceId;



      /// The invoice ID generated for the order.
  @OptionalConverter()
  @JsonKey(
    
    name: r'invoice_id',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<num?> invoiceId;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is ServersBuyNowResponseOrderDetails &&
      runtimeType == other.runtimeType &&
      equals(
        [
            serviceId,
            invoiceId,
        ],
        [
            other.serviceId,
            other.invoiceId,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        serviceId,
        invoiceId,
    ],);

  factory ServersBuyNowResponseOrderDetails.fromJson(Map<String, dynamic> json) => _$ServersBuyNowResponseOrderDetailsFromJson(json);

  Map<String, dynamic> toJson() => _$ServersBuyNowResponseOrderDetailsToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

