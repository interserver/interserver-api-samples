//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:interserver_api/lib/model/server_order_control_panel.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'server_order_cp_li.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ServerOrderCpLi {
  /// Returns a new [ServerOrderCpLi] instance.
  ServerOrderCpLi({

    this.n9 = const Optional.absent(),
  });

  @OptionalConverter()
  @JsonKey(
    
    name: r'9',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<ServerOrderControlPanel?> n9;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is ServerOrderCpLi &&
      runtimeType == other.runtimeType &&
      equals(
        [
            n9,
        ],
        [
            other.n9,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        n9,
    ],);

  factory ServerOrderCpLi.fromJson(Map<String, dynamic> json) => _$ServerOrderCpLiFromJson(json);

  Map<String, dynamic> toJson() => _$ServerOrderCpLiToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

