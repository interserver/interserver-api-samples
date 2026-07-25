//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'server_lease.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ServerLease {
  /// Returns a new [ServerLease] instance.
  ServerLease({

    required  this.mac,

    required  this.authenticated,

    required  this.group,
  });

      /// MAC address associated with the lease.
  @JsonKey(
    
    name: r'mac',
    required: true,
    includeIfNull: false,
  )


  final String mac;



      /// Indicates if the lease is authenticated.
  @JsonKey(
    
    name: r'authenticated',
    required: true,
    includeIfNull: false,
  )


  final bool authenticated;



      /// Group identifier for the lease.
  @JsonKey(
    
    name: r'group',
    required: true,
    includeIfNull: false,
  )


  final String group;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is ServerLease &&
      runtimeType == other.runtimeType &&
      equals(
        [
            mac,
            authenticated,
            group,
        ],
        [
            other.mac,
            other.authenticated,
            other.group,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        mac,
        authenticated,
        group,
    ],);

  factory ServerLease.fromJson(Map<String, dynamic> json) => _$ServerLeaseFromJson(json);

  Map<String, dynamic> toJson() => _$ServerLeaseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

