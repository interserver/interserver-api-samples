//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:interserver_api/lib/model/home_details_modules.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'home_details.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class HomeDetails {
  /// Returns a new [HomeDetails] instance.
  HomeDetails({

    this.modules = const Optional.absent(),
  });

  @OptionalConverter()
  @JsonKey(
    
    name: r'modules',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<HomeDetailsModules?> modules;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is HomeDetails &&
      runtimeType == other.runtimeType &&
      equals(
        [
            modules,
        ],
        [
            other.modules,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        modules,
    ],);

  factory HomeDetails.fromJson(Map<String, dynamic> json) => _$HomeDetailsFromJson(json);

  Map<String, dynamic> toJson() => _$HomeDetailsToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

