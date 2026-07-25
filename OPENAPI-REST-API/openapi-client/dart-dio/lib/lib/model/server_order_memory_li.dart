//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:interserver_api/lib/model/server_order_memory_li254.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'server_order_memory_li.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ServerOrderMemoryLi {
  /// Returns a new [ServerOrderMemoryLi] instance.
  ServerOrderMemoryLi({

    this.n254 = const Optional.absent(),
  });

  @OptionalConverter()
  @JsonKey(
    
    name: r'254',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<ServerOrderMemoryLi254?> n254;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is ServerOrderMemoryLi &&
      runtimeType == other.runtimeType &&
      equals(
        [
            n254,
        ],
        [
            other.n254,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        n254,
    ],);

  factory ServerOrderMemoryLi.fromJson(Map<String, dynamic> json) => _$ServerOrderMemoryLiFromJson(json);

  Map<String, dynamic> toJson() => _$ServerOrderMemoryLiToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

