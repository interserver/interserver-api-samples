//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'server_order_memory.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ServerOrderMemory {
  /// Returns a new [ServerOrderMemory] instance.
  ServerOrderMemory({

    this.id = const Optional.absent(),

    this.price = const Optional.absent(),

    this.img = const Optional.absent(),

    this.shortDesc = const Optional.absent(),

    this.longDesc = const Optional.absent(),

    this.manu = const Optional.absent(),

    this.size = const Optional.absent(),

    this.type = const Optional.absent(),

    this.hidden = const Optional.absent(),

    this.monthlyPrice = const Optional.absent(),

    this.driveType = const Optional.absent(),

    this.monthlyPriceDisplay = const Optional.absent(),
  });

      /// Memory ID.
  @OptionalConverter()
  @JsonKey(
    
    name: r'id',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> id;



      /// Memory price.
  @OptionalConverter()
  @JsonKey(
    
    name: r'price',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> price;



      /// Memory image.
  @OptionalConverter()
  @JsonKey(
    
    name: r'img',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> img;



      /// Short description of the memory.
  @OptionalConverter()
  @JsonKey(
    
    name: r'short_desc',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> shortDesc;



      /// Long description of the memory.
  @OptionalConverter()
  @JsonKey(
    
    name: r'long_desc',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> longDesc;



      /// Manufacturer information.
  @OptionalConverter()
  @JsonKey(
    
    name: r'manu',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> manu;



      /// Memory size.
  @OptionalConverter()
  @JsonKey(
    
    name: r'size',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> size;



      /// Memory type.
  @OptionalConverter()
  @JsonKey(
    
    name: r'type',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> type;



      /// Hidden status.
  @OptionalConverter()
  @JsonKey(
    
    name: r'hidden',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> hidden;



      /// Monthly price.
  @OptionalConverter()
  @JsonKey(
    
    name: r'monthly_price',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<int?> monthlyPrice;



      /// Drive type.
  @OptionalConverter()
  @JsonKey(
    
    name: r'drive_type',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> driveType;



      /// Display of monthly memory price.
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
      other is ServerOrderMemory &&
      runtimeType == other.runtimeType &&
      equals(
        [
            id,
            price,
            img,
            shortDesc,
            longDesc,
            manu,
            size,
            type,
            hidden,
            monthlyPrice,
            driveType,
            monthlyPriceDisplay,
        ],
        [
            other.id,
            other.price,
            other.img,
            other.shortDesc,
            other.longDesc,
            other.manu,
            other.size,
            other.type,
            other.hidden,
            other.monthlyPrice,
            other.driveType,
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
        manu,
        size,
        type,
        hidden,
        monthlyPrice,
        driveType,
        monthlyPriceDisplay,
    ],);

  factory ServerOrderMemory.fromJson(Map<String, dynamic> json) => _$ServerOrderMemoryFromJson(json);

  Map<String, dynamic> toJson() => _$ServerOrderMemoryToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

