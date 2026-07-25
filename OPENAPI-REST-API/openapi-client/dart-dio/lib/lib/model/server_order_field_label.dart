//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'server_order_field_label.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ServerOrderFieldLabel {
  /// Returns a new [ServerOrderFieldLabel] instance.
  ServerOrderFieldLabel({

    this.name = const Optional.absent(),

    this.active = const Optional.absent(),
  });

      /// Name of the field label.
  @OptionalConverter()
  @JsonKey(
    
    name: r'name',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> name;



      /// Active status of the field label.
  @OptionalConverter()
  @JsonKey(
    
    name: r'active',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<int?> active;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is ServerOrderFieldLabel &&
      runtimeType == other.runtimeType &&
      equals(
        [
            name,
            active,
        ],
        [
            other.name,
            other.active,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        name,
        active,
    ],);

  factory ServerOrderFieldLabel.fromJson(Map<String, dynamic> json) => _$ServerOrderFieldLabelFromJson(json);

  Map<String, dynamic> toJson() => _$ServerOrderFieldLabelToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

