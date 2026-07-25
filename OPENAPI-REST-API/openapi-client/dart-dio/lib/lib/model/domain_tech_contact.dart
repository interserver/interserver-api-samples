//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'domain_tech_contact.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class DomainTechContact {
  /// Returns a new [DomainTechContact] instance.
  DomainTechContact({

    this.state = const Optional.absent(),

    this.status = const Optional.absent(),

    this.orgName = const Optional.absent(),

    this.country = const Optional.absent(),

    this.postalCode = const Optional.absent(),

    this.fax = const Optional.absent(),

    this.email = const Optional.absent(),

    this.address2 = const Optional.absent(),

    this.address3 = const Optional.absent(),

    this.address1 = const Optional.absent(),

    this.city = const Optional.absent(),

    this.phone = const Optional.absent(),

    this.firstName = const Optional.absent(),

    this.lastName = const Optional.absent(),
  });

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
    
    name: r'status',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> status;



  @OptionalConverter()
  @JsonKey(
    
    name: r'org_name',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> orgName;



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
    
    name: r'postal_code',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> postalCode;



  @OptionalConverter()
  @JsonKey(
    
    name: r'fax',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> fax;



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
    
    name: r'address1',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> address1;



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
    
    name: r'phone',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> phone;



  @OptionalConverter()
  @JsonKey(
    
    name: r'first_name',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> firstName;



  @OptionalConverter()
  @JsonKey(
    
    name: r'last_name',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> lastName;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is DomainTechContact &&
      runtimeType == other.runtimeType &&
      equals(
        [
            state,
            status,
            orgName,
            country,
            postalCode,
            fax,
            email,
            address2,
            address3,
            address1,
            city,
            phone,
            firstName,
            lastName,
        ],
        [
            other.state,
            other.status,
            other.orgName,
            other.country,
            other.postalCode,
            other.fax,
            other.email,
            other.address2,
            other.address3,
            other.address1,
            other.city,
            other.phone,
            other.firstName,
            other.lastName,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        state,
        status,
        orgName,
        country,
        postalCode,
        fax,
        email,
        address2,
        address3,
        address1,
        city,
        phone,
        firstName,
        lastName,
    ],);

  factory DomainTechContact.fromJson(Map<String, dynamic> json) => _$DomainTechContactFromJson(json);

  Map<String, dynamic> toJson() => _$DomainTechContactToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

