//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:interserver_api/lib/model/buy_it_now_row_cpu_inner.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'buy_it_now_row.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class BuyItNowRow {
  /// Returns a new [BuyItNowRow] instance.
  BuyItNowRow({

    this.serverId = const Optional.absent(),

    this.cpu = const Optional.absent(),

    this.memory = const Optional.absent(),

    this.disk = const Optional.absent(),

    this.bandwidth = const Optional.absent(),

    this.ips = const Optional.absent(),

    this.location = const Optional.absent(),

    this.price = const Optional.absent(),
  });

      /// Unique server ID. Use this as `server_id` in `POST /servers/order/buy_now_server`.
  @OptionalConverter()
  @JsonKey(
    
    name: r'server_id',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> serverId;



  @OptionalConverter()
  @JsonKey(
    
    name: r'cpu',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<List<BuyItNowRowCpuInner>?> cpu;



  @OptionalConverter()
  @JsonKey(
    
    name: r'memory',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> memory;



  @OptionalConverter()
  @JsonKey(
    
    name: r'disk',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<Map<String, String>?> disk;



  @OptionalConverter()
  @JsonKey(
    
    name: r'bandwidth',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> bandwidth;



  @OptionalConverter()
  @JsonKey(
    
    name: r'ips',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> ips;



  @OptionalConverter()
  @JsonKey(
    
    name: r'location',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> location;



  @OptionalConverter()
  @JsonKey(
    
    name: r'price',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<int?> price;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is BuyItNowRow &&
      runtimeType == other.runtimeType &&
      equals(
        [
            serverId,
            cpu,
            memory,
            disk,
            bandwidth,
            ips,
            location,
            price,
        ],
        [
            other.serverId,
            other.cpu,
            other.memory,
            other.disk,
            other.bandwidth,
            other.ips,
            other.location,
            other.price,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        serverId,
        cpu,
        memory,
        disk,
        bandwidth,
        ips,
        location,
        price,
    ],);

  factory BuyItNowRow.fromJson(Map<String, dynamic> json) => _$BuyItNowRowFromJson(json);

  Map<String, dynamic> toJson() => _$BuyItNowRowToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

