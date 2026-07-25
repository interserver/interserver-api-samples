//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:interserver_api/lib/model/buy_it_now_row_cpu_inner_one_of.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'buy_it_now_row_cpu_inner.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class BuyItNowRowCpuInner {
  /// Returns a new [BuyItNowRowCpuInner] instance.
  BuyItNowRowCpuInner({

    this.img = const Optional.absent(),

    this.type = const Optional.absent(),

    this.speed = const Optional.absent(),

    this.numCpus = const Optional.absent(),

    this.numCores = const Optional.absent(),
  });

  @OptionalConverter()
  @JsonKey(
    
    name: r'img',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> img;



  @OptionalConverter()
  @JsonKey(
    
    name: r'type',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> type;



  @OptionalConverter()
  @JsonKey(
    
    name: r'speed',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> speed;



  @OptionalConverter()
  @JsonKey(
    
    name: r'num_cpus',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> numCpus;



  @OptionalConverter()
  @JsonKey(
    
    name: r'num_cores',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> numCores;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is BuyItNowRowCpuInner &&
      runtimeType == other.runtimeType &&
      equals(
        [
            img,
            type,
            speed,
            numCpus,
            numCores,
        ],
        [
            other.img,
            other.type,
            other.speed,
            other.numCpus,
            other.numCores,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        img,
        type,
        speed,
        numCpus,
        numCores,
    ],);

  factory BuyItNowRowCpuInner.fromJson(Map<String, dynamic> json) => _$BuyItNowRowCpuInnerFromJson(json);

  Map<String, dynamic> toJson() => _$BuyItNowRowCpuInnerToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

