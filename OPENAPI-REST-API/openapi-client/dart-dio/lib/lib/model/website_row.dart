//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'website_row.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class WebsiteRow {
  /// Returns a new [WebsiteRow] instance.
  WebsiteRow({

    required  this.websiteId,

    required  this.websiteHostname,

    required  this.repeatInvoicesCost,

    required  this.websiteStatus,

    required  this.servicesName,

    required  this.websiteComment,
  });

      /// The id of the website.
  @JsonKey(
    
    name: r'website_id',
    required: true,
    includeIfNull: false,
  )


  final String websiteId;



      /// The hostname of the website.
  @JsonKey(
    
    name: r'website_hostname',
    required: true,
    includeIfNull: false,
  )


  final String websiteHostname;



      /// The repeat invoices cost of the website.
  @JsonKey(
    
    name: r'repeat_invoices_cost',
    required: true,
    includeIfNull: false,
  )


  final String repeatInvoicesCost;



      /// The status of the website.
  @JsonKey(
    
    name: r'website_status',
    required: true,
    includeIfNull: false,
  )


  final String websiteStatus;



      /// The services name of the website.
  @JsonKey(
    
    name: r'services_name',
    required: true,
    includeIfNull: false,
  )


  final String servicesName;



      /// The comment of the website.
  @JsonKey(
    
    name: r'website_comment',
    required: true,
    includeIfNull: false,
  )


  final String websiteComment;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is WebsiteRow &&
      runtimeType == other.runtimeType &&
      equals(
        [
            websiteId,
            websiteHostname,
            repeatInvoicesCost,
            websiteStatus,
            servicesName,
            websiteComment,
        ],
        [
            other.websiteId,
            other.websiteHostname,
            other.repeatInvoicesCost,
            other.websiteStatus,
            other.servicesName,
            other.websiteComment,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        websiteId,
        websiteHostname,
        repeatInvoicesCost,
        websiteStatus,
        servicesName,
        websiteComment,
    ],);

  factory WebsiteRow.fromJson(Map<String, dynamic> json) => _$WebsiteRowFromJson(json);

  Map<String, dynamic> toJson() => _$WebsiteRowToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

