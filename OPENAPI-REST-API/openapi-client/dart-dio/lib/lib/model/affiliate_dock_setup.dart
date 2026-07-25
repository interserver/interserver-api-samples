//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'affiliate_dock_setup.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class AffiliateDockSetup {
  /// Returns a new [AffiliateDockSetup] instance.
  AffiliateDockSetup({

    this.affiliateDockTitle = const Optional.absent(),

    this.affiliateDockDescription = const Optional.absent(),

    this.referrerCoupon = const Optional.absent(),
  });

  @OptionalConverter()
  @JsonKey(
    
    name: r'affiliate_dock_title',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> affiliateDockTitle;



  @OptionalConverter()
  @JsonKey(
    
    name: r'affiliate_dock_description',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> affiliateDockDescription;



  @OptionalConverter()
  @JsonKey(
    
    name: r'referrer_coupon',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> referrerCoupon;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is AffiliateDockSetup &&
      runtimeType == other.runtimeType &&
      equals(
        [
            affiliateDockTitle,
            affiliateDockDescription,
            referrerCoupon,
        ],
        [
            other.affiliateDockTitle,
            other.affiliateDockDescription,
            other.referrerCoupon,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        affiliateDockTitle,
        affiliateDockDescription,
        referrerCoupon,
    ],);

  factory AffiliateDockSetup.fromJson(Map<String, dynamic> json) => _$AffiliateDockSetupFromJson(json);

  Map<String, dynamic> toJson() => _$AffiliateDockSetupToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

