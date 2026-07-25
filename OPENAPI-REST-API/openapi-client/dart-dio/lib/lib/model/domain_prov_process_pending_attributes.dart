//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'domain_prov_process_pending_attributes.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class DomainProvProcessPendingAttributes {
  /// Returns a new [DomainProvProcessPendingAttributes] instance.
  DomainProvProcessPendingAttributes({

    this.id = const Optional.absent(),

    this.orderId = const Optional.absent(),

    this.registrationExpirationDate = const Optional.absent(),

    this.fAutoRenew = const Optional.absent(),
  });

  @OptionalConverter()
  @JsonKey(
    
    name: r'id',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> id;



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
    
    name: r'registration expiration date',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> registrationExpirationDate;



  @OptionalConverter()
  @JsonKey(
    
    name: r'f_auto_renew',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> fAutoRenew;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is DomainProvProcessPendingAttributes &&
      runtimeType == other.runtimeType &&
      equals(
        [
            id,
            orderId,
            registrationExpirationDate,
            fAutoRenew,
        ],
        [
            other.id,
            other.orderId,
            other.registrationExpirationDate,
            other.fAutoRenew,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        id,
        orderId,
        registrationExpirationDate,
        fAutoRenew,
    ],);

  factory DomainProvProcessPendingAttributes.fromJson(Map<String, dynamic> json) => _$DomainProvProcessPendingAttributesFromJson(json);

  Map<String, dynamic> toJson() => _$DomainProvProcessPendingAttributesToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

