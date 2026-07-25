//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'server_order_cpu.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ServerOrderCPU {
  /// Returns a new [ServerOrderCPU] instance.
  ServerOrderCPU({

    this.id = const Optional.absent(),

    this.price = const Optional.absent(),

    this.img = const Optional.absent(),

    this.shortDesc = const Optional.absent(),

    this.longDesc = const Optional.absent(),

    this.location = const Optional.absent(),

    this.fsb = const Optional.absent(),

    this.manu = const Optional.absent(),

    this.type = const Optional.absent(),

    this.speed = const Optional.absent(),

    this.cache = const Optional.absent(),

    this.active = const Optional.absent(),

    this.numCores = const Optional.absent(),

    this.numCpus = const Optional.absent(),

    this.benchmark = const Optional.absent(),

    this.monthlyPrice = const Optional.absent(),

    this.maxRam = const Optional.absent(),

    this.minRam = const Optional.absent(),

    this.maxLff = const Optional.absent(),

    this.maxSff = const Optional.absent(),

    this.maxNve = const Optional.absent(),

    this.visible = const Optional.absent(),

    this.hdIds = const Optional.absent(),

    this.priceDisplay = const Optional.absent(),

    this.monthlyPriceDisplay = const Optional.absent(),
  });

      /// CPU ID.
  @OptionalConverter()
  @JsonKey(
    
    name: r'id',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> id;



      /// CPU price.
  @OptionalConverter()
  @JsonKey(
    
    name: r'price',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<int?> price;



      /// CPU image.
  @OptionalConverter()
  @JsonKey(
    
    name: r'img',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> img;



      /// Short description of the CPU.
  @OptionalConverter()
  @JsonKey(
    
    name: r'short_desc',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> shortDesc;



      /// Long description of the CPU.
  @OptionalConverter()
  @JsonKey(
    
    name: r'long_desc',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> longDesc;



      /// Location of the CPU.
  @OptionalConverter()
  @JsonKey(
    
    name: r'location',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> location;



      /// Front Side Bus information.
  @OptionalConverter()
  @JsonKey(
    
    name: r'fsb',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> fsb;



      /// Manufacturer information.
  @OptionalConverter()
  @JsonKey(
    
    name: r'manu',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> manu;



      /// CPU type.
  @OptionalConverter()
  @JsonKey(
    
    name: r'type',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> type;



      /// CPU speed.
  @OptionalConverter()
  @JsonKey(
    
    name: r'speed',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> speed;



      /// Cache information.
  @OptionalConverter()
  @JsonKey(
    
    name: r'cache',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> cache;



      /// Active status.
  @OptionalConverter()
  @JsonKey(
    
    name: r'active',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> active;



      /// Number of cores.
  @OptionalConverter()
  @JsonKey(
    
    name: r'num_cores',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> numCores;



      /// Number of CPUs.
  @OptionalConverter()
  @JsonKey(
    
    name: r'num_cpus',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> numCpus;



      /// CPU benchmark.
  @OptionalConverter()
  @JsonKey(
    
    name: r'benchmark',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> benchmark;



      /// Monthly price.
  @OptionalConverter()
  @JsonKey(
    
    name: r'monthly_price',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<int?> monthlyPrice;



      /// Maximum RAM supported.
  @OptionalConverter()
  @JsonKey(
    
    name: r'max_ram',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> maxRam;



      /// Minimum RAM required.
  @OptionalConverter()
  @JsonKey(
    
    name: r'min_ram',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> minRam;



      /// Maximum LFF (Large Form Factor) supported.
  @OptionalConverter()
  @JsonKey(
    
    name: r'max_lff',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> maxLff;



      /// Maximum SFF (Small Form Factor) supported.
  @OptionalConverter()
  @JsonKey(
    
    name: r'max_sff',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> maxSff;



      /// Maximum NVMe drives supported.
  @OptionalConverter()
  @JsonKey(
    
    name: r'max_nve',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> maxNve;



      /// Visibility status.
  @OptionalConverter()
  @JsonKey(
    
    name: r'visible',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> visible;



      /// Hard drive IDs.
  @OptionalConverter()
  @JsonKey(
    
    name: r'hd_ids',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> hdIds;



      /// Display of CPU price.
  @OptionalConverter()
  @JsonKey(
    
    name: r'price_display',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> priceDisplay;



      /// Display of monthly CPU price.
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
      other is ServerOrderCPU &&
      runtimeType == other.runtimeType &&
      equals(
        [
            id,
            price,
            img,
            shortDesc,
            longDesc,
            location,
            fsb,
            manu,
            type,
            speed,
            cache,
            active,
            numCores,
            numCpus,
            benchmark,
            monthlyPrice,
            maxRam,
            minRam,
            maxLff,
            maxSff,
            maxNve,
            visible,
            hdIds,
            priceDisplay,
            monthlyPriceDisplay,
        ],
        [
            other.id,
            other.price,
            other.img,
            other.shortDesc,
            other.longDesc,
            other.location,
            other.fsb,
            other.manu,
            other.type,
            other.speed,
            other.cache,
            other.active,
            other.numCores,
            other.numCpus,
            other.benchmark,
            other.monthlyPrice,
            other.maxRam,
            other.minRam,
            other.maxLff,
            other.maxSff,
            other.maxNve,
            other.visible,
            other.hdIds,
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
        location,
        fsb,
        manu,
        type,
        speed,
        cache,
        active,
        numCores,
        numCpus,
        benchmark,
        monthlyPrice,
        maxRam,
        minRam,
        maxLff,
        maxSff,
        maxNve,
        visible,
        hdIds,
        priceDisplay,
        monthlyPriceDisplay,
    ],);

  factory ServerOrderCPU.fromJson(Map<String, dynamic> json) => _$ServerOrderCPUFromJson(json);

  Map<String, dynamic> toJson() => _$ServerOrderCPUToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

