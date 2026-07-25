//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'home_ticket_status_view.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class HomeTicketStatusView {
  /// Returns a new [HomeTicketStatusView] instance.
  HomeTicketStatusView({

    this.n4 = const Optional.absent(),

    this.n5 = const Optional.absent(),

    this.n6 = const Optional.absent(),
  });

      /// Status corresponding to view number 4.
  @OptionalConverter()
  @JsonKey(
    
    name: r'4',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> n4;



      /// Status corresponding to view number 5.
  @OptionalConverter()
  @JsonKey(
    
    name: r'5',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> n5;



      /// Status corresponding to view number 6.
  @OptionalConverter()
  @JsonKey(
    
    name: r'6',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> n6;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is HomeTicketStatusView &&
      runtimeType == other.runtimeType &&
      equals(
        [
            n4,
            n5,
            n6,
        ],
        [
            other.n4,
            other.n5,
            other.n6,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        n4,
        n5,
        n6,
    ],);

  factory HomeTicketStatusView.fromJson(Map<String, dynamic> json) => _$HomeTicketStatusViewFromJson(json);

  Map<String, dynamic> toJson() => _$HomeTicketStatusViewToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

