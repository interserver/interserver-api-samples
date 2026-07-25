//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'tickets_count_array.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class TicketsCountArray {
  /// Returns a new [TicketsCountArray] instance.
  TicketsCountArray({

    this.open = const Optional.absent(),

    this.onHold = const Optional.absent(),

    this.closed = const Optional.absent(),
  });

  @OptionalConverter()
  @JsonKey(
    
    name: r'Open',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<int?> open;



  @OptionalConverter()
  @JsonKey(
    
    name: r'On Hold',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<int?> onHold;



  @OptionalConverter()
  @JsonKey(
    
    name: r'Closed',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<int?> closed;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is TicketsCountArray &&
      runtimeType == other.runtimeType &&
      equals(
        [
            open,
            onHold,
            closed,
        ],
        [
            other.open,
            other.onHold,
            other.closed,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        open,
        onHold,
        closed,
    ],);

  factory TicketsCountArray.fromJson(Map<String, dynamic> json) => _$TicketsCountArrayFromJson(json);

  Map<String, dynamic> toJson() => _$TicketsCountArrayToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

