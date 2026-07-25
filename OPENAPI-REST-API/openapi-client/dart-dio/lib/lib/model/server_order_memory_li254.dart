//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:interserver_api/lib/model/server_order_memory.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'server_order_memory_li254.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ServerOrderMemoryLi254 {
  /// Returns a new [ServerOrderMemoryLi254] instance.
  ServerOrderMemoryLi254({

    this.n65 = const Optional.absent(),
  });

  @OptionalConverter()
  @JsonKey(
    
    name: r'65',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<ServerOrderMemory?> n65;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is ServerOrderMemoryLi254 &&
      runtimeType == other.runtimeType &&
      equals(
        [
            n65,
        ],
        [
            other.n65,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        n65,
    ],);

  factory ServerOrderMemoryLi254.fromJson(Map<String, dynamic> json) => _$ServerOrderMemoryLi254FromJson(json);

  Map<String, dynamic> toJson() => _$ServerOrderMemoryLi254ToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

