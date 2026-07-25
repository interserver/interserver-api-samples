//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'queue_response.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class QueueResponse {
  /// Returns a new [QueueResponse] instance.
  QueueResponse({

    required  this.text,

    required  this.queueId,
  });

      /// Response text
  @JsonKey(
    
    name: r'text',
    required: true,
    includeIfNull: false,
  )


  final String text;



      /// The Queue ID attached to the action.
  @JsonKey(
    
    name: r'queueId',
    required: true,
    includeIfNull: false,
  )


  final int queueId;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is QueueResponse &&
      runtimeType == other.runtimeType &&
      equals(
        [
            text,
            queueId,
        ],
        [
            other.text,
            other.queueId,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        text,
        queueId,
    ],);

  factory QueueResponse.fromJson(Map<String, dynamic> json) => _$QueueResponseFromJson(json);

  Map<String, dynamic> toJson() => _$QueueResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

