//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'home_ticket_status.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class HomeTicketStatus {
  /// Returns a new [HomeTicketStatus] instance.
  HomeTicketStatus({

    this.open = const Optional.absent(),

    this.onHold = const Optional.absent(),
  });

      /// Count of open tickets.
  @OptionalConverter()
  @JsonKey(
    
    name: r'Open',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<int?> open;



      /// Count of tickets on hold.
  @OptionalConverter()
  @JsonKey(
    
    name: r'On Hold',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<int?> onHold;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is HomeTicketStatus &&
      runtimeType == other.runtimeType &&
      equals(
        [
            open,
            onHold,
        ],
        [
            other.open,
            other.onHold,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        open,
        onHold,
    ],);

  factory HomeTicketStatus.fromJson(Map<String, dynamic> json) => _$HomeTicketStatusFromJson(json);

  Map<String, dynamic> toJson() => _$HomeTicketStatusToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

