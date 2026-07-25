//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:interserver_api/lib/model/place_scrub_order201_response_order_details.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'place_scrub_order201_response.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PlaceScrubOrder201Response {
  /// Returns a new [PlaceScrubOrder201Response] instance.
  PlaceScrubOrder201Response({

    this.success = const Optional.absent(),

    this.text = const Optional.absent(),

    this.orderDetails = const Optional.absent(),
  });

  @OptionalConverter()
  @JsonKey(
    
    name: r'success',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<bool?> success;



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


  final Optional<PlaceScrubOrder201ResponseOrderDetails?> orderDetails;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is PlaceScrubOrder201Response &&
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

  factory PlaceScrubOrder201Response.fromJson(Map<String, dynamic> json) => _$PlaceScrubOrder201ResponseFromJson(json);

  Map<String, dynamic> toJson() => _$PlaceScrubOrder201ResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

