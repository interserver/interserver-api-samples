//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'account_ssh_key.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class AccountSshKey {
  /// Returns a new [AccountSshKey] instance.
  AccountSshKey({

    this.sshKey = const Optional.absent(),
  });

  @OptionalConverter()
  @JsonKey(
    
    name: r'ssh_key',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> sshKey;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is AccountSshKey &&
      runtimeType == other.runtimeType &&
      equals(
        [
            sshKey,
        ],
        [
            other.sshKey,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        sshKey,
    ],);

  factory AccountSshKey.fromJson(Map<String, dynamic> json) => _$AccountSshKeyFromJson(json);

  Map<String, dynamic> toJson() => _$AccountSshKeyToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

