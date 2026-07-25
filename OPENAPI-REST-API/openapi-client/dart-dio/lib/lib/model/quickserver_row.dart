//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'quickserver_row.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class QuickserverRow {
  /// Returns a new [QuickserverRow] instance.
  QuickserverRow({

    required  this.qsId,

    required  this.qsName,

    required  this.cost,

    required  this.qsHostname,

    required  this.qsStatus,

    required  this.qsComment,
  });

      /// The id of the qs.
  @JsonKey(
    
    name: r'qs_id',
    required: true,
    includeIfNull: false,
  )


  final String qsId;



      /// The name of the qs.
  @JsonKey(
    
    name: r'qs_name',
    required: true,
    includeIfNull: false,
  )


  final String qsName;



      /// The cost of the qs.
  @JsonKey(
    
    name: r'cost',
    required: true,
    includeIfNull: false,
  )


  final String cost;



      /// The hostname of the qs.
  @JsonKey(
    
    name: r'qs_hostname',
    required: true,
    includeIfNull: false,
  )


  final String qsHostname;



      /// The status of the qs.
  @JsonKey(
    
    name: r'qs_status',
    required: true,
    includeIfNull: false,
  )


  final String qsStatus;



      /// The comment of the qs.
  @JsonKey(
    
    name: r'qs_comment',
    required: true,
    includeIfNull: false,
  )


  final String qsComment;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is QuickserverRow &&
      runtimeType == other.runtimeType &&
      equals(
        [
            qsId,
            qsName,
            cost,
            qsHostname,
            qsStatus,
            qsComment,
        ],
        [
            other.qsId,
            other.qsName,
            other.cost,
            other.qsHostname,
            other.qsStatus,
            other.qsComment,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        qsId,
        qsName,
        cost,
        qsHostname,
        qsStatus,
        qsComment,
    ],);

  factory QuickserverRow.fromJson(Map<String, dynamic> json) => _$QuickserverRowFromJson(json);

  Map<String, dynamic> toJson() => _$QuickserverRowToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

