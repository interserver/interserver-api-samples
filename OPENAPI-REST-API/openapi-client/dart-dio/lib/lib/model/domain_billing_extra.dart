//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:interserver_api/lib/model/domain_order_response.dart';
import 'package:interserver_api/lib/model/domain_prov_process_pending.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'domain_billing_extra.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class DomainBillingExtra {
  /// Returns a new [DomainBillingExtra] instance.
  DomainBillingExtra({

    this.order = const Optional.absent(),

    this.orderId = const Optional.absent(),

    this.domainId = const Optional.absent(),

    this.provProcessPending = const Optional.absent(),

    this.email = const Optional.absent(),

    this.firstname = const Optional.absent(),

    this.lastname = const Optional.absent(),

    this.company = const Optional.absent(),

    this.address = const Optional.absent(),

    this.address2 = const Optional.absent(),

    this.address3 = const Optional.absent(),

    this.city = const Optional.absent(),

    this.state = const Optional.absent(),

    this.zip = const Optional.absent(),

    this.country = const Optional.absent(),

    this.phone = const Optional.absent(),

    this.fax = const Optional.absent(),
  });

  @OptionalConverter()
  @JsonKey(
    
    name: r'order',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<DomainOrderResponse?> order;



  @OptionalConverter()
  @JsonKey(
    
    name: r'order_id',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> orderId;



  @OptionalConverter()
  @JsonKey(
    
    name: r'domain_id',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> domainId;



  @OptionalConverter()
  @JsonKey(
    
    name: r'provProcessPending',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<DomainProvProcessPending?> provProcessPending;



  @OptionalConverter()
  @JsonKey(
    
    name: r'email',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> email;



  @OptionalConverter()
  @JsonKey(
    
    name: r'firstname',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> firstname;



  @OptionalConverter()
  @JsonKey(
    
    name: r'lastname',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> lastname;



  @OptionalConverter()
  @JsonKey(
    
    name: r'company',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> company;



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
    
    name: r'address2',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> address2;



  @OptionalConverter()
  @JsonKey(
    
    name: r'address3',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> address3;



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
    
    name: r'zip',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> zip;



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
    
    name: r'phone',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> phone;



  @OptionalConverter()
  @JsonKey(
    
    name: r'fax',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> fax;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is DomainBillingExtra &&
      runtimeType == other.runtimeType &&
      equals(
        [
            order,
            orderId,
            domainId,
            provProcessPending,
            email,
            firstname,
            lastname,
            company,
            address,
            address2,
            address3,
            city,
            state,
            zip,
            country,
            phone,
            fax,
        ],
        [
            other.order,
            other.orderId,
            other.domainId,
            other.provProcessPending,
            other.email,
            other.firstname,
            other.lastname,
            other.company,
            other.address,
            other.address2,
            other.address3,
            other.city,
            other.state,
            other.zip,
            other.country,
            other.phone,
            other.fax,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        order,
        orderId,
        domainId,
        provProcessPending,
        email,
        firstname,
        lastname,
        company,
        address,
        address2,
        address3,
        city,
        state,
        zip,
        country,
        phone,
        fax,
    ],);

  factory DomainBillingExtra.fromJson(Map<String, dynamic> json) => _$DomainBillingExtraFromJson(json);

  Map<String, dynamic> toJson() => _$DomainBillingExtraToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

