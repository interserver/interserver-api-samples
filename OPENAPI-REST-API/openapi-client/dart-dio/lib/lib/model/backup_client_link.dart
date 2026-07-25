//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'backup_client_link.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class BackupClientLink {
  /// Returns a new [BackupClientLink] instance.
  BackupClientLink({

    this.label = const Optional.absent(),

    this.link = const Optional.absent(),

    this.icon = const Optional.absent(),

    this.iconText = const Optional.absent(),

    this.helpText = const Optional.absent(),

    this.otherAttr = const Optional.absent(),
  });

      /// Label of the client link.
  @OptionalConverter()
  @JsonKey(
    
    name: r'label',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> label;



      /// Link URL of the client link.
  @OptionalConverter()
  @JsonKey(
    
    name: r'link',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> link;



      /// Icon of the client link.
  @OptionalConverter()
  @JsonKey(
    
    name: r'icon',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> icon;



      /// Icon text of the client link.
  @OptionalConverter()
  @JsonKey(
    
    name: r'icon_text',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> iconText;



      /// Help text of the client link.
  @OptionalConverter()
  @JsonKey(
    
    name: r'help_text',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> helpText;



      /// Other attributes of the client link.
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
      other is BackupClientLink &&
      runtimeType == other.runtimeType &&
      equals(
        [
            label,
            link,
            icon,
            iconText,
            helpText,
            otherAttr,
        ],
        [
            other.label,
            other.link,
            other.icon,
            other.iconText,
            other.helpText,
            other.otherAttr,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        label,
        link,
        icon,
        iconText,
        helpText,
        otherAttr,
    ],);

  factory BackupClientLink.fromJson(Map<String, dynamic> json) => _$BackupClientLinkFromJson(json);

  Map<String, dynamic> toJson() => _$BackupClientLinkToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

