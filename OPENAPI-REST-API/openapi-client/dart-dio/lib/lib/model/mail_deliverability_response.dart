//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'mail_deliverability_response.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class MailDeliverabilityResponse {
  /// Returns a new [MailDeliverabilityResponse] instance.
  MailDeliverabilityResponse({

    this.stat = const Optional.absent(),

    this.percent = const Optional.absent(),

    this.tableData = const Optional.absent(),
  });

      /// Delivered and bounced counts.
  @OptionalConverter()
  @JsonKey(
    
    name: r'stat',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<Object?> stat;



      /// Bounce percentage.
  @OptionalConverter()
  @JsonKey(
    
    name: r'percent',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<num?> percent;



      /// Detailed deliverability breakdown by sender or domain.
  @OptionalConverter()
  @JsonKey(
    
    name: r'table_data',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<List<List<String>>?> tableData;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is MailDeliverabilityResponse &&
      runtimeType == other.runtimeType &&
      equals(
        [
            stat,
            percent,
            tableData,
        ],
        [
            other.stat,
            other.percent,
            other.tableData,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        stat,
        percent,
        tableData,
    ],);

  factory MailDeliverabilityResponse.fromJson(Map<String, dynamic> json) => _$MailDeliverabilityResponseFromJson(json);

  Map<String, dynamic> toJson() => _$MailDeliverabilityResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

