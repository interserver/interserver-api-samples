//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:interserver_api/lib/model/backup_order_post_response_cj_params.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'backup_order_post_response.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class BackupOrderPostResponse {
  /// Returns a new [BackupOrderPostResponse] instance.
  BackupOrderPostResponse({

    this.continue_ = const Optional.absent(),

    this.errors = const Optional.absent(),

    this.totalCost = const Optional.absent(),

    this.iid = const Optional.absent(),

    this.iids = const Optional.absent(),

    this.realIids = const Optional.absent(),

    this.serviceId = const Optional.absent(),

    this.invoiceDescription = const Optional.absent(),

    this.cjParams = const Optional.absent(),
  });

  @OptionalConverter()
  @JsonKey(
    
    name: r'continue',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<bool?> continue_;



  @OptionalConverter()
  @JsonKey(
    
    name: r'errors',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<List<String>?> errors;



  @OptionalConverter()
  @JsonKey(
    
    name: r'total_cost',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> totalCost;



  @OptionalConverter()
  @JsonKey(
    
    name: r'iid',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> iid;



  @OptionalConverter()
  @JsonKey(
    
    name: r'iids',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<List<String>?> iids;



  @OptionalConverter()
  @JsonKey(
    
    name: r'real_iids',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<List<String>?> realIids;



  @OptionalConverter()
  @JsonKey(
    
    name: r'serviceId',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<int?> serviceId;



  @OptionalConverter()
  @JsonKey(
    
    name: r'invoice_description',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> invoiceDescription;



  @OptionalConverter()
  @JsonKey(
    
    name: r'cj_params',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<BackupOrderPostResponseCjParams?> cjParams;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is BackupOrderPostResponse &&
      runtimeType == other.runtimeType &&
      equals(
        [
            continue_,
            errors,
            totalCost,
            iid,
            iids,
            realIids,
            serviceId,
            invoiceDescription,
            cjParams,
        ],
        [
            other.continue_,
            other.errors,
            other.totalCost,
            other.iid,
            other.iids,
            other.realIids,
            other.serviceId,
            other.invoiceDescription,
            other.cjParams,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        continue_,
        errors,
        totalCost,
        iid,
        iids,
        realIids,
        serviceId,
        invoiceDescription,
        cjParams,
    ],);

  factory BackupOrderPostResponse.fromJson(Map<String, dynamic> json) => _$BackupOrderPostResponseFromJson(json);

  Map<String, dynamic> toJson() => _$BackupOrderPostResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

