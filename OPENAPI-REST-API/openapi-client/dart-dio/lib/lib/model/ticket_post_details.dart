//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:interserver_api/lib/model/ticket_post_details_inner.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'ticket_post_details.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class TicketPostDetails {
  /// Returns a new [TicketPostDetails] instance.
  TicketPostDetails({
  });


    bool operator ==(Object other) {
      return identical(this, other) ||
      other is TicketPostDetails &&
      runtimeType == other.runtimeType &&
      equals(
        [
        ],
        [
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
    ],);

  factory TicketPostDetails.fromJson(Map<String, dynamic> json) => _$TicketPostDetailsFromJson(json);

  Map<String, dynamic> toJson() => _$TicketPostDetailsToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

