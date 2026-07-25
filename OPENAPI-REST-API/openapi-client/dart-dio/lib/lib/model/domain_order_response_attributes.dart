//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'domain_order_response_attributes.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class DomainOrderResponseAttributes {
  /// Returns a new [DomainOrderResponseAttributes] instance.
  DomainOrderResponseAttributes({

    this.id = const Optional.absent(),

    this.adminEmail = const Optional.absent(),
  });

      /// Registrar order ID.
  @OptionalConverter()
  @JsonKey(
    
    name: r'id',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> id;



      /// Administrative contact email provided for the order.
  @OptionalConverter()
  @JsonKey(
    
    name: r'admin_email',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> adminEmail;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is DomainOrderResponseAttributes &&
      runtimeType == other.runtimeType &&
      equals(
        [
            id,
            adminEmail,
        ],
        [
            other.id,
            other.adminEmail,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        id,
        adminEmail,
    ],);

  factory DomainOrderResponseAttributes.fromJson(Map<String, dynamic> json) => _$DomainOrderResponseAttributesFromJson(json);

  Map<String, dynamic> toJson() => _$DomainOrderResponseAttributesToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

