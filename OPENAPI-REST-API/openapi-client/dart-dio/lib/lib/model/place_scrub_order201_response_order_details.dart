//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:interserver_api/lib/model/place_scrub_order201_response_order_details_cj_params.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'place_scrub_order201_response_order_details.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PlaceScrubOrder201ResponseOrderDetails {
  /// Returns a new [PlaceScrubOrder201ResponseOrderDetails] instance.
  PlaceScrubOrder201ResponseOrderDetails({

    this.totalCost = const Optional.absent(),

    this.serviceId = const Optional.absent(),

    this.invoiceId = const Optional.absent(),

    this.invoiceDescription = const Optional.absent(),

    this.cjParams = const Optional.absent(),
  });

  @OptionalConverter()
  @JsonKey(
    
    name: r'total_cost',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<int?> totalCost;



  @OptionalConverter()
  @JsonKey(
    
    name: r'service_id',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<int?> serviceId;



  @OptionalConverter()
  @JsonKey(
    
    name: r'invoice_id',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<int?> invoiceId;



  @OptionalConverter()
  @JsonKey(
    
    name: r'invoice_description',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> invoiceDescription;



  @OptionalConverter()
  @JsonKey(
    
    name: r'cj_params',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<PlaceScrubOrder201ResponseOrderDetailsCjParams?> cjParams;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is PlaceScrubOrder201ResponseOrderDetails &&
      runtimeType == other.runtimeType &&
      equals(
        [
            totalCost,
            serviceId,
            invoiceId,
            invoiceDescription,
            cjParams,
        ],
        [
            other.totalCost,
            other.serviceId,
            other.invoiceId,
            other.invoiceDescription,
            other.cjParams,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        totalCost,
        serviceId,
        invoiceId,
        invoiceDescription,
        cjParams,
    ],);

  factory PlaceScrubOrder201ResponseOrderDetails.fromJson(Map<String, dynamic> json) => _$PlaceScrubOrder201ResponseOrderDetailsFromJson(json);

  Map<String, dynamic> toJson() => _$PlaceScrubOrder201ResponseOrderDetailsToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

