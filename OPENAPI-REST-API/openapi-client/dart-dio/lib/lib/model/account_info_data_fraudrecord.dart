//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'account_info_data_fraudrecord.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class AccountInfoDataFraudrecord {
  /// Returns a new [AccountInfoDataFraudrecord] instance.
  AccountInfoDataFraudrecord({

    this.score = const Optional.absent(),

    this.count = const Optional.absent(),

    this.reliability = const Optional.absent(),

    this.code = const Optional.absent(),
  });

  @OptionalConverter()
  @JsonKey(
    
    name: r'score',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> score;



  @OptionalConverter()
  @JsonKey(
    
    name: r'count',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> count;



  @OptionalConverter()
  @JsonKey(
    
    name: r'reliability',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> reliability;



  @OptionalConverter()
  @JsonKey(
    
    name: r'code',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> code;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is AccountInfoDataFraudrecord &&
      runtimeType == other.runtimeType &&
      equals(
        [
            score,
            count,
            reliability,
            code,
        ],
        [
            other.score,
            other.count,
            other.reliability,
            other.code,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        score,
        count,
        reliability,
        code,
    ],);

  factory AccountInfoDataFraudrecord.fromJson(Map<String, dynamic> json) => _$AccountInfoDataFraudrecordFromJson(json);

  Map<String, dynamic> toJson() => _$AccountInfoDataFraudrecordToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

