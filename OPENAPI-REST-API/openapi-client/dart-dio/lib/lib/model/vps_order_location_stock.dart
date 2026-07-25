//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:interserver_api/lib/model/vps_order_location_stock1.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'vps_order_location_stock.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class VpsOrderLocationStock {
  /// Returns a new [VpsOrderLocationStock] instance.
  VpsOrderLocationStock({

    this.n1 = const Optional.absent(),
  });

  @OptionalConverter()
  @JsonKey(
    
    name: r'1',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<VpsOrderLocationStock1?> n1;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is VpsOrderLocationStock &&
      runtimeType == other.runtimeType &&
      equals(
        [
            n1,
        ],
        [
            other.n1,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        n1,
    ],);

  factory VpsOrderLocationStock.fromJson(Map<String, dynamic> json) => _$VpsOrderLocationStockFromJson(json);

  Map<String, dynamic> toJson() => _$VpsOrderLocationStockToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

