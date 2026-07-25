//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'license_client_link.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class LicenseClientLink {
  /// Returns a new [LicenseClientLink] instance.
  LicenseClientLink({

    required  this.label,

    required  this.link,

    required  this.icon,

    required  this.helpText,

    this.iconText = const Optional.absent(),

    this.otherAttr = const Optional.absent(),
  });

      /// Link label
  @JsonKey(
    
    name: r'label',
    required: true,
    includeIfNull: false,
  )


  final String label;



      /// Link URL
  @JsonKey(
    
    name: r'link',
    required: true,
    includeIfNull: false,
  )


  final String link;



      /// Link icon
  @JsonKey(
    
    name: r'icon',
    required: true,
    includeIfNull: false,
  )


  final String icon;



      /// Help text
  @JsonKey(
    
    name: r'help_text',
    required: true,
    includeIfNull: false,
  )


  final String helpText;



      /// Icon text
  @OptionalConverter()
  @JsonKey(
    
    name: r'icon_text',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> iconText;



      /// Other attributes
  @OptionalConverter()
  @JsonKey(
    
    name: r'other_attr',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> otherAttr;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is LicenseClientLink &&
      runtimeType == other.runtimeType &&
      equals(
        [
            label,
            link,
            icon,
            helpText,
            iconText,
            otherAttr,
        ],
        [
            other.label,
            other.link,
            other.icon,
            other.helpText,
            other.iconText,
            other.otherAttr,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        label,
        link,
        icon,
        helpText,
        iconText,
        otherAttr,
    ],);

  factory LicenseClientLink.fromJson(Map<String, dynamic> json) => _$LicenseClientLinkFromJson(json);

  Map<String, dynamic> toJson() => _$LicenseClientLinkToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

