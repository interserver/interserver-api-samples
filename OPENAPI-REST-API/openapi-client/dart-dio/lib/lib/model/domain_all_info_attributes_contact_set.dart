//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:interserver_api/lib/model/domain_tech_contact.dart';
import 'package:interserver_api/lib/model/domain_admin_contact.dart';
import 'package:interserver_api/lib/model/domain_owner_contact.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'domain_all_info_attributes_contact_set.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class DomainAllInfoAttributesContactSet {
  /// Returns a new [DomainAllInfoAttributesContactSet] instance.
  DomainAllInfoAttributesContactSet({

    this.owner = const Optional.absent(),

    this.admin = const Optional.absent(),

    this.tech = const Optional.absent(),
  });

  @OptionalConverter()
  @JsonKey(
    
    name: r'owner',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<DomainOwnerContact?> owner;



  @OptionalConverter()
  @JsonKey(
    
    name: r'admin',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<DomainAdminContact?> admin;



  @OptionalConverter()
  @JsonKey(
    
    name: r'tech',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<DomainTechContact?> tech;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is DomainAllInfoAttributesContactSet &&
      runtimeType == other.runtimeType &&
      equals(
        [
            owner,
            admin,
            tech,
        ],
        [
            other.owner,
            other.admin,
            other.tech,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        owner,
        admin,
        tech,
    ],);

  factory DomainAllInfoAttributesContactSet.fromJson(Map<String, dynamic> json) => _$DomainAllInfoAttributesContactSetFromJson(json);

  Map<String, dynamic> toJson() => _$DomainAllInfoAttributesContactSetToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

