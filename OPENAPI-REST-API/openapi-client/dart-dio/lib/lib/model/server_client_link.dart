//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'server_client_link.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ServerClientLink {
  /// Returns a new [ServerClientLink] instance.
  ServerClientLink({

    required  this.label,

    required  this.link,

    this.icon = const Optional.absent(),

    this.iconText = const Optional.absent(),

    this.helpText = const Optional.absent(),
  });

  @JsonKey(
    
    name: r'label',
    required: true,
    includeIfNull: false,
  )


  final String label;



  @JsonKey(
    
    name: r'link',
    required: true,
    includeIfNull: false,
  )


  final String link;



  @OptionalConverter()
  @JsonKey(
    
    name: r'icon',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> icon;



  @OptionalConverter()
  @JsonKey(
    
    name: r'icon_text',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> iconText;



  @OptionalConverter()
  @JsonKey(
    
    name: r'help_text',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> helpText;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is ServerClientLink &&
      runtimeType == other.runtimeType &&
      equals(
        [
            label,
            link,
            icon,
            iconText,
            helpText,
        ],
        [
            other.label,
            other.link,
            other.icon,
            other.iconText,
            other.helpText,
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
    ],);

  factory ServerClientLink.fromJson(Map<String, dynamic> json) => _$ServerClientLinkFromJson(json);

  Map<String, dynamic> toJson() => _$ServerClientLinkToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

