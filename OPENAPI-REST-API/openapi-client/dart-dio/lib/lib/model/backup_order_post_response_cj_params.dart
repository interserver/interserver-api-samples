//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'backup_order_post_response_cj_params.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class BackupOrderPostResponseCjParams {
  /// Returns a new [BackupOrderPostResponseCjParams] instance.
  BackupOrderPostResponseCjParams({

    this.containerTagId = const Optional.absent(),

    this.CID = const Optional.absent(),

    this.OID = const Optional.absent(),

    this.TYPE = const Optional.absent(),

    this.ITEM1 = const Optional.absent(),

    this.AMT1 = const Optional.absent(),

    this.QTY1 = const Optional.absent(),

    this.CURRENCY = const Optional.absent(),
  });

  @OptionalConverter()
  @JsonKey(
    
    name: r'containerTagId',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> containerTagId;



  @OptionalConverter()
  @JsonKey(
    
    name: r'CID',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> CID;



  @OptionalConverter()
  @JsonKey(
    
    name: r'OID',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> OID;



  @OptionalConverter()
  @JsonKey(
    
    name: r'TYPE',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> TYPE;



  @OptionalConverter()
  @JsonKey(
    
    name: r'ITEM1',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> ITEM1;



  @OptionalConverter()
  @JsonKey(
    
    name: r'AMT1',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> AMT1;



  @OptionalConverter()
  @JsonKey(
    
    name: r'QTY1',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<int?> QTY1;



  @OptionalConverter()
  @JsonKey(
    
    name: r'CURRENCY',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> CURRENCY;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is BackupOrderPostResponseCjParams &&
      runtimeType == other.runtimeType &&
      equals(
        [
            containerTagId,
            CID,
            OID,
            TYPE,
            ITEM1,
            AMT1,
            QTY1,
            CURRENCY,
        ],
        [
            other.containerTagId,
            other.CID,
            other.OID,
            other.TYPE,
            other.ITEM1,
            other.AMT1,
            other.QTY1,
            other.CURRENCY,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        containerTagId,
        CID,
        OID,
        TYPE,
        ITEM1,
        AMT1,
        QTY1,
        CURRENCY,
    ],);

  factory BackupOrderPostResponseCjParams.fromJson(Map<String, dynamic> json) => _$BackupOrderPostResponseCjParamsFromJson(json);

  Map<String, dynamic> toJson() => _$BackupOrderPostResponseCjParamsToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

