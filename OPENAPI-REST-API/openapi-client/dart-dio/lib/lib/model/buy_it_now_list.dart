//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:interserver_api/lib/model/buy_it_now_row.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'buy_it_now_list.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class BuyItNowList {
  /// Returns a new [BuyItNowList] instance.
  BuyItNowList({
  });


    bool operator ==(Object other) {
      return identical(this, other) ||
      other is BuyItNowList &&
      runtimeType == other.runtimeType &&
      equals(
        [
        ],
        [
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
    ],);

  factory BuyItNowList.fromJson(Map<String, dynamic> json) => _$BuyItNowListFromJson(json);

  Map<String, dynamic> toJson() => _$BuyItNowListToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

