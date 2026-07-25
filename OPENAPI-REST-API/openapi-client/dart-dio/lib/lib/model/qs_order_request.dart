//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'qs_order_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class QsOrderRequest {
  /// Returns a new [QsOrderRequest] instance.
  QsOrderRequest({

    required  this.server,

    required  this.password,

    required  this.tos,

    this.os = const Optional.present(''),

    this.comment = const Optional.present(''),
  });

      /// QuickServer plan/server id from getNewQs.
  @JsonKey(
    
    name: r'server',
    required: true,
    includeIfNull: false,
  )


  final int server;



      /// Root password for the QuickServer.
  @JsonKey(
    
    name: r'password',
    required: true,
    includeIfNull: false,
  )


  final String password;



      /// Terms-of-service acceptance. Must be true to place the order.
  @JsonKey(
    
    name: r'tos',
    required: true,
    includeIfNull: false,
  )


  final bool tos;



      /// OS template file name from getNewQs (falls back to a default if unrecognized).
  @OptionalConverter()
  @JsonKey(
    defaultValue: '',
    name: r'os',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> os;



      /// Free-form note saved on the service row.
  @OptionalConverter()
  @JsonKey(
    defaultValue: '',
    name: r'comment',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> comment;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is QsOrderRequest &&
      runtimeType == other.runtimeType &&
      equals(
        [
            server,
            password,
            tos,
            os,
            comment,
        ],
        [
            other.server,
            other.password,
            other.tos,
            other.os,
            other.comment,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        server,
        password,
        tos,
        os,
        comment,
    ],);

  factory QsOrderRequest.fromJson(Map<String, dynamic> json) => _$QsOrderRequestFromJson(json);

  Map<String, dynamic> toJson() => _$QsOrderRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

