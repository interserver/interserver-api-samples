//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:interserver_api/lib/model/mail_block_rspamd.dart';
import 'package:interserver_api/lib/model/mail_block_click_house.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'mail_blocks.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class MailBlocks {
  /// Returns a new [MailBlocks] instance.
  MailBlocks({

    required  this.local,

    required  this.mbtrap,

    required  this.subject,
  });

  @JsonKey(
    
    name: r'local',
    required: true,
    includeIfNull: false,
  )


  final List<MailBlockClickHouse> local;



  @JsonKey(
    
    name: r'mbtrap',
    required: true,
    includeIfNull: false,
  )


  final List<MailBlockClickHouse> mbtrap;



  @JsonKey(
    
    name: r'subject',
    required: true,
    includeIfNull: false,
  )


  final List<MailBlockRspamd> subject;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is MailBlocks &&
      runtimeType == other.runtimeType &&
      equals(
        [
            local,
            mbtrap,
            subject,
        ],
        [
            other.local,
            other.mbtrap,
            other.subject,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        local,
        mbtrap,
        subject,
    ],);

  factory MailBlocks.fromJson(Map<String, dynamic> json) => _$MailBlocksFromJson(json);

  Map<String, dynamic> toJson() => _$MailBlocksToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

