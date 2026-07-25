//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:interserver_api/lib/model/domain_order_services.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'domain_order.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class DomainOrder {
  /// Returns a new [DomainOrder] instance.
  DomainOrder({

    this.whoisPrivacyCost = const Optional.absent(),

    this.services = const Optional.absent(),

    this.tldServices = const Optional.absent(),
  });

      /// Cost of Whois Privacy
  @OptionalConverter()
  @JsonKey(
    
    name: r'whoisPrivacyCost',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> whoisPrivacyCost;



  @OptionalConverter()
  @JsonKey(
    
    name: r'services',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<DomainOrderServices?> services;



      /// Map of TLDs to domain service IDs.
  @OptionalConverter()
  @JsonKey(
    
    name: r'tldServices',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<Object?> tldServices;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is DomainOrder &&
      runtimeType == other.runtimeType &&
      equals(
        [
            whoisPrivacyCost,
            services,
            tldServices,
        ],
        [
            other.whoisPrivacyCost,
            other.services,
            other.tldServices,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        whoisPrivacyCost,
        services,
        tldServices,
    ],);

  factory DomainOrder.fromJson(Map<String, dynamic> json) => _$DomainOrderFromJson(json);

  Map<String, dynamic> toJson() => _$DomainOrderToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

