//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'home_details_modules_vps.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class HomeDetailsModulesVps {
  /// Returns a new [HomeDetailsModulesVps] instance.
  HomeDetailsModulesVps({

    this.icon = const Optional.absent(),

    this.viewLink = const Optional.absent(),

    this.heading = const Optional.absent(),

    this.buyLink = const Optional.absent(),

    this.listLink = const Optional.absent(),
  });

      /// The icon for VPS.
  @OptionalConverter()
  @JsonKey(
    
    name: r'icon',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> icon;



      /// Link to view VPS.
  @OptionalConverter()
  @JsonKey(
    
    name: r'view_link',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> viewLink;



      /// Heading for VPS.
  @OptionalConverter()
  @JsonKey(
    
    name: r'heading',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> heading;



      /// Link to order VPS.
  @OptionalConverter()
  @JsonKey(
    
    name: r'buy_link',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> buyLink;



      /// Link to view VPS list.
  @OptionalConverter()
  @JsonKey(
    
    name: r'list_link',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> listLink;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is HomeDetailsModulesVps &&
      runtimeType == other.runtimeType &&
      equals(
        [
            icon,
            viewLink,
            heading,
            buyLink,
            listLink,
        ],
        [
            other.icon,
            other.viewLink,
            other.heading,
            other.buyLink,
            other.listLink,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        icon,
        viewLink,
        heading,
        buyLink,
        listLink,
    ],);

  factory HomeDetailsModulesVps.fromJson(Map<String, dynamic> json) => _$HomeDetailsModulesVpsFromJson(json);

  Map<String, dynamic> toJson() => _$HomeDetailsModulesVpsToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

