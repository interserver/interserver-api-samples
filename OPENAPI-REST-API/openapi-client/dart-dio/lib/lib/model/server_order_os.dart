//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'server_order_os.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ServerOrderOS {
  /// Returns a new [ServerOrderOS] instance.
  ServerOrderOS({

    this.id = const Optional.absent(),

    this.price = const Optional.absent(),

    this.img = const Optional.absent(),

    this.shortDesc = const Optional.absent(),

    this.longDesc = const Optional.absent(),

    this.monthlyPrice = const Optional.absent(),

    this.active = const Optional.absent(),

    this.priceDisplay = const Optional.absent(),

    this.monthlyPriceDisplay = const Optional.absent(),
  });

      /// Operating System ID.
  @OptionalConverter()
  @JsonKey(
    
    name: r'id',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> id;



      /// Operating System price.
  @OptionalConverter()
  @JsonKey(
    
    name: r'price',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<int?> price;



      /// Operating System image.
  @OptionalConverter()
  @JsonKey(
    
    name: r'img',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> img;



      /// Short description of the OS.
  @OptionalConverter()
  @JsonKey(
    
    name: r'short_desc',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> shortDesc;



      /// Long description of the OS.
  @OptionalConverter()
  @JsonKey(
    
    name: r'long_desc',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> longDesc;



      /// Monthly price.
  @OptionalConverter()
  @JsonKey(
    
    name: r'monthly_price',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<int?> monthlyPrice;



      /// Active status.
  @OptionalConverter()
  @JsonKey(
    
    name: r'active',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> active;



      /// Display of OS price.
  @OptionalConverter()
  @JsonKey(
    
    name: r'price_display',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> priceDisplay;



      /// Display of monthly OS price.
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
      other is ServerOrderOS &&
      runtimeType == other.runtimeType &&
      equals(
        [
            id,
            price,
            img,
            shortDesc,
            longDesc,
            monthlyPrice,
            active,
            priceDisplay,
            monthlyPriceDisplay,
        ],
        [
            other.id,
            other.price,
            other.img,
            other.shortDesc,
            other.longDesc,
            other.monthlyPrice,
            other.active,
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
        monthlyPrice,
        active,
        priceDisplay,
        monthlyPriceDisplay,
    ],);

  factory ServerOrderOS.fromJson(Map<String, dynamic> json) => _$ServerOrderOSFromJson(json);

  Map<String, dynamic> toJson() => _$ServerOrderOSToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

