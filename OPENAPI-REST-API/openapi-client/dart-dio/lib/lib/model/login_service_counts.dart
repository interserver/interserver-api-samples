//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'login_service_counts.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class LoginServiceCounts {
  /// Returns a new [LoginServiceCounts] instance.
  LoginServiceCounts({

    required  this.vps,

    required  this.websites,

    required  this.servers,
  });

      /// The number of total VPS orders that have been placed in our billing system.
  @JsonKey(
    
    name: r'vps',
    required: true,
    includeIfNull: false,
  )


  final int vps;



      /// The number of total website orders that have been placed in our billing system.
  @JsonKey(
    
    name: r'websites',
    required: true,
    includeIfNull: false,
  )


  final int websites;



      /// The number of total server orders that have been placed in our billing system.
  @JsonKey(
    
    name: r'servers',
    required: true,
    includeIfNull: false,
  )


  final int servers;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is LoginServiceCounts &&
      runtimeType == other.runtimeType &&
      equals(
        [
            vps,
            websites,
            servers,
        ],
        [
            other.vps,
            other.websites,
            other.servers,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        vps,
        websites,
        servers,
    ],);

  factory LoginServiceCounts.fromJson(Map<String, dynamic> json) => _$LoginServiceCountsFromJson(json);

  Map<String, dynamic> toJson() => _$LoginServiceCountsToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

