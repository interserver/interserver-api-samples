//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'home_details_modules_servers.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class HomeDetailsModulesServers {
  /// Returns a new [HomeDetailsModulesServers] instance.
  HomeDetailsModulesServers({

    this.icon = const Optional.absent(),

    this.viewLink = const Optional.absent(),

    this.heading = const Optional.absent(),

    this.buyLink = const Optional.absent(),

    this.listLink = const Optional.absent(),
  });

      /// The icon for dedicated servers.
  @OptionalConverter()
  @JsonKey(
    
    name: r'icon',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> icon;



      /// Link to view server.
  @OptionalConverter()
  @JsonKey(
    
    name: r'view_link',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> viewLink;



      /// Heading for dedicated servers.
  @OptionalConverter()
  @JsonKey(
    
    name: r'heading',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> heading;



      /// Link to order server.
  @OptionalConverter()
  @JsonKey(
    
    name: r'buy_link',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> buyLink;



      /// Link to view servers list.
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
      other is HomeDetailsModulesServers &&
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

  factory HomeDetailsModulesServers.fromJson(Map<String, dynamic> json) => _$HomeDetailsModulesServersFromJson(json);

  Map<String, dynamic> toJson() => _$HomeDetailsModulesServersToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

