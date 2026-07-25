//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'get_scrub_ip_details200_response_client_links_inner.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class GetScrubIpDetails200ResponseClientLinksInner {
  /// Returns a new [GetScrubIpDetails200ResponseClientLinksInner] instance.
  GetScrubIpDetails200ResponseClientLinksInner({

    this.label = const Optional.absent(),

    this.link = const Optional.absent(),

    this.icon = const Optional.absent(),

    this.iconText = const Optional.absent(),

    this.helpText = const Optional.absent(),

    this.otherAttr = const Optional.absent(),
  });

  @OptionalConverter()
  @JsonKey(
    
    name: r'label',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> label;



  @OptionalConverter()
  @JsonKey(
    
    name: r'link',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> link;



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
      other is GetScrubIpDetails200ResponseClientLinksInner &&
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

  factory GetScrubIpDetails200ResponseClientLinksInner.fromJson(Map<String, dynamic> json) => _$GetScrubIpDetails200ResponseClientLinksInnerFromJson(json);

  Map<String, dynamic> toJson() => _$GetScrubIpDetails200ResponseClientLinksInnerToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

