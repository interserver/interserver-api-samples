//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'server_order_ip.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ServerOrderIP {
  /// Returns a new [ServerOrderIP] instance.
  ServerOrderIP({

    this.id = const Optional.absent(),

    this.price = const Optional.absent(),

    this.img = const Optional.absent(),

    this.shortDesc = const Optional.absent(),

    this.longDesc = const Optional.absent(),

    this.qty = const Optional.absent(),

    this.monthlyPrice = const Optional.absent(),

    this.priceDisplay = const Optional.absent(),

    this.monthlyPriceDisplay = const Optional.absent(),
  });

      /// IP ID.
  @OptionalConverter()
  @JsonKey(
    
    name: r'id',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> id;



      /// IP price.
  @OptionalConverter()
  @JsonKey(
    
    name: r'price',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<int?> price;



      /// IP image.
  @OptionalConverter()
  @JsonKey(
    
    name: r'img',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> img;



      /// Short description of the IP.
  @OptionalConverter()
  @JsonKey(
    
    name: r'short_desc',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> shortDesc;



      /// Long description of the IP.
  @OptionalConverter()
  @JsonKey(
    
    name: r'long_desc',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> longDesc;



      /// Quantity of IPs.
  @OptionalConverter()
  @JsonKey(
    
    name: r'qty',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> qty;



      /// Monthly price.
  @OptionalConverter()
  @JsonKey(
    
    name: r'monthly_price',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<int?> monthlyPrice;



      /// Display of IP price.
  @OptionalConverter()
  @JsonKey(
    
    name: r'price_display',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> priceDisplay;



      /// Display of monthly IP price.
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
      other is ServerOrderIP &&
      runtimeType == other.runtimeType &&
      equals(
        [
            id,
            price,
            img,
            shortDesc,
            longDesc,
            qty,
            monthlyPrice,
            priceDisplay,
            monthlyPriceDisplay,
        ],
        [
            other.id,
            other.price,
            other.img,
            other.shortDesc,
            other.longDesc,
            other.qty,
            other.monthlyPrice,
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
        qty,
        monthlyPrice,
        priceDisplay,
        monthlyPriceDisplay,
    ],);

  factory ServerOrderIP.fromJson(Map<String, dynamic> json) => _$ServerOrderIPFromJson(json);

  Map<String, dynamic> toJson() => _$ServerOrderIPToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

