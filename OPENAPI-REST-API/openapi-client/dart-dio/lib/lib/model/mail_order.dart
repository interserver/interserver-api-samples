//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'mail_order.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class MailOrder {
  /// Returns a new [MailOrder] instance.
  MailOrder({

    required  this.id,

    required  this.status,

    required  this.username,

    this.comment = const Optional.absent(),
  });

      /// The ID of the order.
  @JsonKey(
    
    name: r'id',
    required: true,
    includeIfNull: false,
  )


  final int id;



      /// The order status.
  @JsonKey(
    
    name: r'status',
    required: true,
    includeIfNull: false,
  )


  final String status;



      /// The username to use for this order.
  @JsonKey(
    
    name: r'username',
    required: true,
    includeIfNull: false,
  )


  final String username;



      /// Optional order comment.
  @OptionalConverter()
  @JsonKey(
    
    name: r'comment',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> comment;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is MailOrder &&
      runtimeType == other.runtimeType &&
      equals(
        [
            id,
            status,
            username,
            comment,
        ],
        [
            other.id,
            other.status,
            other.username,
            other.comment,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        id,
        status,
        username,
        comment,
    ],);

  factory MailOrder.fromJson(Map<String, dynamic> json) => _$MailOrderFromJson(json);

  Map<String, dynamic> toJson() => _$MailOrderToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

