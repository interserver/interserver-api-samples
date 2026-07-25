//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:interserver_api/lib/model/server_order_os.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'server_order_os_li.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ServerOrderOsLi {
  /// Returns a new [ServerOrderOsLi] instance.
  ServerOrderOsLi({

    this.n51 = const Optional.absent(),
  });

  @OptionalConverter()
  @JsonKey(
    
    name: r'51',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<ServerOrderOS?> n51;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is ServerOrderOsLi &&
      runtimeType == other.runtimeType &&
      equals(
        [
            n51,
        ],
        [
            other.n51,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        n51,
    ],);

  factory ServerOrderOsLi.fromJson(Map<String, dynamic> json) => _$ServerOrderOsLiFromJson(json);

  Map<String, dynamic> toJson() => _$ServerOrderOsLiToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

