//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'domain_row.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class DomainRow {
  /// Returns a new [DomainRow] instance.
  DomainRow({

    this.domainId = const Optional.absent(),

    this.domainHostname = const Optional.absent(),

    this.domainExpireDate = const Optional.absent(),

    this.cost = const Optional.absent(),

    this.domainStatus = const Optional.absent(),
  });

      /// The ID number of the domain in our billing system.
  @OptionalConverter()
  @JsonKey(
    
    name: r'domain_id',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> domainId;



      /// The hostname of the domain.
  @OptionalConverter()
  @JsonKey(
    
    name: r'domain_hostname',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> domainHostname;



      /// The expiration date of the domain.
  @OptionalConverter()
  @JsonKey(
    
    name: r'domain_expire_date',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> domainExpireDate;



      /// The cost of the domain.
  @OptionalConverter()
  @JsonKey(
    
    name: r'cost',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> cost;



      /// The billing / registration status of the domain.
  @OptionalConverter()
  @JsonKey(
    
    name: r'domain_status',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> domainStatus;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is DomainRow &&
      runtimeType == other.runtimeType &&
      equals(
        [
            domainId,
            domainHostname,
            domainExpireDate,
            cost,
            domainStatus,
        ],
        [
            other.domainId,
            other.domainHostname,
            other.domainExpireDate,
            other.cost,
            other.domainStatus,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        domainId,
        domainHostname,
        domainExpireDate,
        cost,
        domainStatus,
    ],);

  factory DomainRow.fromJson(Map<String, dynamic> json) => _$DomainRowFromJson(json);

  Map<String, dynamic> toJson() => _$DomainRowToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

