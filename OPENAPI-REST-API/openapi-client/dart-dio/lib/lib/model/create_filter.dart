//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'create_filter.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class CreateFilter {
  /// Returns a new [CreateFilter] instance.
  CreateFilter({

    required  this.filterType,

    required  this.port,
  });

  @JsonKey(
    
    name: r'filter_type',
    required: true,
    includeIfNull: false,
  )


  final String filterType;



  @JsonKey(
    
    name: r'port',
    required: true,
    includeIfNull: false,
  )


  final int port;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is CreateFilter &&
      runtimeType == other.runtimeType &&
      equals(
        [
            filterType,
            port,
        ],
        [
            other.filterType,
            other.port,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        filterType,
        port,
    ],);

  factory CreateFilter.fromJson(Map<String, dynamic> json) => _$CreateFilterFromJson(json);

  Map<String, dynamic> toJson() => _$CreateFilterToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

