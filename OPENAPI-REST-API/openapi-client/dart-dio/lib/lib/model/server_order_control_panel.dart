//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'server_order_control_panel.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ServerOrderControlPanel {
  /// Returns a new [ServerOrderControlPanel] instance.
  ServerOrderControlPanel({

    this.id = const Optional.absent(),

    this.price = const Optional.absent(),

    this.img = const Optional.absent(),

    this.shortDesc = const Optional.absent(),

    this.longDesc = const Optional.absent(),

    this.osType = const Optional.absent(),

    this.monthlyPrice = const Optional.absent(),

    this.types = const Optional.absent(),

    this.priceDisplay = const Optional.absent(),

    this.monthlyPriceDisplay = const Optional.absent(),
  });

      /// Control Panel ID.
  @OptionalConverter()
  @JsonKey(
    
    name: r'id',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> id;



      /// Control Panel price.
  @OptionalConverter()
  @JsonKey(
    
    name: r'price',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<int?> price;



      /// Control Panel image.
  @OptionalConverter()
  @JsonKey(
    
    name: r'img',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> img;



      /// Short description of the control panel.
  @OptionalConverter()
  @JsonKey(
    
    name: r'short_desc',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> shortDesc;



      /// Long description of the control panel.
  @OptionalConverter()
  @JsonKey(
    
    name: r'long_desc',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> longDesc;



      /// OS types compatible with the control panel.
  @OptionalConverter()
  @JsonKey(
    
    name: r'os_type',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> osType;



      /// Monthly price.
  @OptionalConverter()
  @JsonKey(
    
    name: r'monthly_price',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<int?> monthlyPrice;



      /// List of types.
  @OptionalConverter()
  @JsonKey(
    
    name: r'types',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<List<String>?> types;



      /// Display of control panel price.
  @OptionalConverter()
  @JsonKey(
    
    name: r'price_display',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> priceDisplay;



      /// Display of monthly control panel price.
  @OptionalConverter()
  @JsonKey(
    
    name: r'monthly_price_display',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> monthlyPriceDisplay;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is ServerOrderControlPanel &&
      runtimeType == other.runtimeType &&
      equals(
        [
            id,
            price,
            img,
            shortDesc,
            longDesc,
            osType,
            monthlyPrice,
            types,
            priceDisplay,
            monthlyPriceDisplay,
        ],
        [
            other.id,
            other.price,
            other.img,
            other.shortDesc,
            other.longDesc,
            other.osType,
            other.monthlyPrice,
            other.types,
            other.priceDisplay,
            other.monthlyPriceDisplay,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        id,
        price,
        img,
        shortDesc,
        longDesc,
        osType,
        monthlyPrice,
        types,
        priceDisplay,
        monthlyPriceDisplay,
    ],);

  factory ServerOrderControlPanel.fromJson(Map<String, dynamic> json) => _$ServerOrderControlPanelFromJson(json);

  Map<String, dynamic> toJson() => _$ServerOrderControlPanelToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

