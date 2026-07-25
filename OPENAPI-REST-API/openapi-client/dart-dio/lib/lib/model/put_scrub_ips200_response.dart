//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'put_scrub_ips200_response.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PutScrubIps200Response {
  /// Returns a new [PutScrubIps200Response] instance.
  PutScrubIps200Response({

    this.continue_ = const Optional.absent(),

    this.errors = const Optional.absent(),

    this.serviceType = const Optional.absent(),

    this.serviceCost = const Optional.absent(),

    this.originalCost = const Optional.absent(),

    this.repeatServiceCost = const Optional.absent(),
  });

  @OptionalConverter()
  @JsonKey(
    
    name: r'continue',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<bool?> continue_;



  @OptionalConverter()
  @JsonKey(
    
    name: r'errors',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<List<String>?> errors;



  @OptionalConverter()
  @JsonKey(
    
    name: r'serviceType',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<int?> serviceType;



  @OptionalConverter()
  @JsonKey(
    
    name: r'serviceCost',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<num?> serviceCost;



  @OptionalConverter()
  @JsonKey(
    
    name: r'originalCost',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<num?> originalCost;



  @OptionalConverter()
  @JsonKey(
    
    name: r'repeatServiceCost',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<num?> repeatServiceCost;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is PutScrubIps200Response &&
      runtimeType == other.runtimeType &&
      equals(
        [
            continue_,
            errors,
            serviceType,
            serviceCost,
            originalCost,
            repeatServiceCost,
        ],
        [
            other.continue_,
            other.errors,
            other.serviceType,
            other.serviceCost,
            other.originalCost,
            other.repeatServiceCost,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        continue_,
        errors,
        serviceType,
        serviceCost,
        originalCost,
        repeatServiceCost,
    ],);

  factory PutScrubIps200Response.fromJson(Map<String, dynamic> json) => _$PutScrubIps200ResponseFromJson(json);

  Map<String, dynamic> toJson() => _$PutScrubIps200ResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

