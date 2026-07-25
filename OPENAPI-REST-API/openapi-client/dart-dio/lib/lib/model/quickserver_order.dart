//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:interserver_api/lib/model/quickserver_order_server_details.dart';
import 'package:interserver_api/lib/model/quickserver_order_templates.dart';
import 'package:interserver_api/lib/model/quickserver_order_distro_sel.dart';
import 'package:interserver_api/lib/model/quickserver_order_version.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'quickserver_order.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class QuickserverOrder {
  /// Returns a new [QuickserverOrder] instance.
  QuickserverOrder({

    this.qsId = const Optional.absent(),

    this.serverDetails = const Optional.absent(),

    this.templates = const Optional.absent(),

    this.version = const Optional.absent(),

    this.distroSel = const Optional.absent(),
  });

      /// Quickserver ID.
  @OptionalConverter()
  @JsonKey(
    
    name: r'qs_id',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> qsId;



  @OptionalConverter()
  @JsonKey(
    
    name: r'server_details',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<QuickserverOrderServerDetails?> serverDetails;



  @OptionalConverter()
  @JsonKey(
    
    name: r'templates',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<QuickserverOrderTemplates?> templates;



  @OptionalConverter()
  @JsonKey(
    
    name: r'version',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<QuickserverOrderVersion?> version;



  @OptionalConverter()
  @JsonKey(
    
    name: r'distro_sel',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<QuickserverOrderDistroSel?> distroSel;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is QuickserverOrder &&
      runtimeType == other.runtimeType &&
      equals(
        [
            qsId,
            serverDetails,
            templates,
            version,
            distroSel,
        ],
        [
            other.qsId,
            other.serverDetails,
            other.templates,
            other.version,
            other.distroSel,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        qsId,
        serverDetails,
        templates,
        version,
        distroSel,
    ],);

  factory QuickserverOrder.fromJson(Map<String, dynamic> json) => _$QuickserverOrderFromJson(json);

  Map<String, dynamic> toJson() => _$QuickserverOrderToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

