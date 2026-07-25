//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'quickserver_order_server_details381.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class QuickserverOrderServerDetails381 {
  /// Returns a new [QuickserverOrderServerDetails381] instance.
  QuickserverOrderServerDetails381({

    this.cpu = const Optional.absent(),

    this.ram = const Optional.absent(),

    this.hd = const Optional.absent(),

    this.cores = const Optional.absent(),

    this.cost = const Optional.absent(),
  });

      /// CPU details of the server.
  @OptionalConverter()
  @JsonKey(
    
    name: r'cpu',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> cpu;



      /// RAM capacity of the server.
  @OptionalConverter()
  @JsonKey(
    
    name: r'ram',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> ram;



      /// Hard disk capacity of the server.
  @OptionalConverter()
  @JsonKey(
    
    name: r'hd',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> hd;



      /// Number of CPU cores.
  @OptionalConverter()
  @JsonKey(
    
    name: r'cores',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<int?> cores;



      /// Cost of the server.
  @OptionalConverter()
  @JsonKey(
    
    name: r'cost',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> cost;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is QuickserverOrderServerDetails381 &&
      runtimeType == other.runtimeType &&
      equals(
        [
            cpu,
            ram,
            hd,
            cores,
            cost,
        ],
        [
            other.cpu,
            other.ram,
            other.hd,
            other.cores,
            other.cost,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        cpu,
        ram,
        hd,
        cores,
        cost,
    ],);

  factory QuickserverOrderServerDetails381.fromJson(Map<String, dynamic> json) => _$QuickserverOrderServerDetails381FromJson(json);

  Map<String, dynamic> toJson() => _$QuickserverOrderServerDetails381ToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

