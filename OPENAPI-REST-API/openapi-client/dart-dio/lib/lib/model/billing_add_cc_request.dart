//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'billing_add_cc_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class BillingAddCcRequest {
  /// Returns a new [BillingAddCcRequest] instance.
  BillingAddCcRequest({

    this.name = const Optional.absent(),

    this.address = const Optional.absent(),

    this.city = const Optional.absent(),

    this.state = const Optional.absent(),

    this.country = const Optional.absent(),

    this.zip = const Optional.absent(),

    this.cc = const Optional.absent(),

    this.ccExp = const Optional.absent(),

    this.ccCcv2 = const Optional.absent(),
  });

  @OptionalConverter()
  @JsonKey(
    
    name: r'name',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> name;



  @OptionalConverter()
  @JsonKey(
    
    name: r'address',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> address;



  @OptionalConverter()
  @JsonKey(
    
    name: r'city',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> city;



  @OptionalConverter()
  @JsonKey(
    
    name: r'state',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> state;



  @OptionalConverter()
  @JsonKey(
    
    name: r'country',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> country;



  @OptionalConverter()
  @JsonKey(
    
    name: r'zip',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> zip;



  @OptionalConverter()
  @JsonKey(
    
    name: r'cc',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> cc;



  @OptionalConverter()
  @JsonKey(
    
    name: r'cc_exp',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> ccExp;



  @OptionalConverter()
  @JsonKey(
    
    name: r'cc_ccv2',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> ccCcv2;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is BillingAddCcRequest &&
      runtimeType == other.runtimeType &&
      equals(
        [
            name,
            address,
            city,
            state,
            country,
            zip,
            cc,
            ccExp,
            ccCcv2,
        ],
        [
            other.name,
            other.address,
            other.city,
            other.state,
            other.country,
            other.zip,
            other.cc,
            other.ccExp,
            other.ccCcv2,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        name,
        address,
        city,
        state,
        country,
        zip,
        cc,
        ccExp,
        ccCcv2,
    ],);

  factory BillingAddCcRequest.fromJson(Map<String, dynamic> json) => _$BillingAddCcRequestFromJson(json);

  Map<String, dynamic> toJson() => _$BillingAddCcRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

