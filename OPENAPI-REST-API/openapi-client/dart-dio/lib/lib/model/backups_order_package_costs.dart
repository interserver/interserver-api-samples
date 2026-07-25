//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'backups_order_package_costs.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class BackupsOrderPackageCosts {
  /// Returns a new [BackupsOrderPackageCosts] instance.
  BackupsOrderPackageCosts({

    required  this.n11006,
  });

      /// The cost associated with package 11006.
  @JsonKey(
    
    name: r'11006',
    required: true,
    includeIfNull: false,
  )


  final int n11006;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is BackupsOrderPackageCosts &&
      runtimeType == other.runtimeType &&
      equals(
        [
            n11006,
        ],
        [
            other.n11006,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        n11006,
    ],);

  factory BackupsOrderPackageCosts.fromJson(Map<String, dynamic> json) => _$BackupsOrderPackageCostsFromJson(json);

  Map<String, dynamic> toJson() => _$BackupsOrderPackageCostsToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

