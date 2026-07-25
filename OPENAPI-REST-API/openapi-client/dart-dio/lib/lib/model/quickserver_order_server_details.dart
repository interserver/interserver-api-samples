//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:interserver_api/lib/model/quickserver_order_server_details381.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'quickserver_order_server_details.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class QuickserverOrderServerDetails {
  /// Returns a new [QuickserverOrderServerDetails] instance.
  QuickserverOrderServerDetails({

    this.n381 = const Optional.absent(),
  });

  @OptionalConverter()
  @JsonKey(
    
    name: r'381',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<QuickserverOrderServerDetails381?> n381;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is QuickserverOrderServerDetails &&
      runtimeType == other.runtimeType &&
      equals(
        [
            n381,
        ],
        [
            other.n381,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        n381,
    ],);

  factory QuickserverOrderServerDetails.fromJson(Map<String, dynamic> json) => _$QuickserverOrderServerDetailsFromJson(json);

  Map<String, dynamic> toJson() => _$QuickserverOrderServerDetailsToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

