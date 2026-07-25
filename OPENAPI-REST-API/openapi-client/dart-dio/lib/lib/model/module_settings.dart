//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'module_settings.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ModuleSettings {
  /// Returns a new [ModuleSettings] instance.
  ModuleSettings({

    required  this.SERVICE_ID_OFFSET,

    required  this.USE_REPEAT_INVOICE,

    required  this.USE_PACKAGES,

    required  this.BILLING_DAYS_OFFSET,

    required  this.IMGNAME,

    required  this.REPEAT_BILLING_METHOD,

    required  this.DELETE_PENDING_DAYS,

    required  this.SUSPEND_DAYS,

    required  this.SUSPEND_WARNING_DAYS,

    required  this.TITLE,

    required  this.MENUNAME,

    required  this.EMAIL_FROM,

    required  this.TBLNAME,

    required  this.TABLE,

    required  this.TITLE_FIELD,

    required  this.PREFIX,

    this.TITLE_FIELD2 = const Optional.absent(),

    this.TITLE_FIELD3 = const Optional.absent(),
  });

  @JsonKey(
    
    name: r'SERVICE_ID_OFFSET',
    required: true,
    includeIfNull: false,
  )


  final int SERVICE_ID_OFFSET;



  @JsonKey(
    
    name: r'USE_REPEAT_INVOICE',
    required: true,
    includeIfNull: false,
  )


  final bool USE_REPEAT_INVOICE;



  @JsonKey(
    
    name: r'USE_PACKAGES',
    required: true,
    includeIfNull: false,
  )


  final bool USE_PACKAGES;



  @JsonKey(
    
    name: r'BILLING_DAYS_OFFSET',
    required: true,
    includeIfNull: false,
  )


  final int BILLING_DAYS_OFFSET;



  @JsonKey(
    
    name: r'IMGNAME',
    required: true,
    includeIfNull: false,
  )


  final String IMGNAME;



  @JsonKey(
    
    name: r'REPEAT_BILLING_METHOD',
    required: true,
    includeIfNull: false,
  )


  final int REPEAT_BILLING_METHOD;



  @JsonKey(
    
    name: r'DELETE_PENDING_DAYS',
    required: true,
    includeIfNull: false,
  )


  final int DELETE_PENDING_DAYS;



  @JsonKey(
    
    name: r'SUSPEND_DAYS',
    required: true,
    includeIfNull: false,
  )


  final int SUSPEND_DAYS;



  @JsonKey(
    
    name: r'SUSPEND_WARNING_DAYS',
    required: true,
    includeIfNull: false,
  )


  final int SUSPEND_WARNING_DAYS;



  @JsonKey(
    
    name: r'TITLE',
    required: true,
    includeIfNull: false,
  )


  final String TITLE;



  @JsonKey(
    
    name: r'MENUNAME',
    required: true,
    includeIfNull: false,
  )


  final String MENUNAME;



  @JsonKey(
    
    name: r'EMAIL_FROM',
    required: true,
    includeIfNull: false,
  )


  final String EMAIL_FROM;



  @JsonKey(
    
    name: r'TBLNAME',
    required: true,
    includeIfNull: false,
  )


  final String TBLNAME;



  @JsonKey(
    
    name: r'TABLE',
    required: true,
    includeIfNull: false,
  )


  final String TABLE;



  @JsonKey(
    
    name: r'TITLE_FIELD',
    required: true,
    includeIfNull: false,
  )


  final String TITLE_FIELD;



  @JsonKey(
    
    name: r'PREFIX',
    required: true,
    includeIfNull: false,
  )


  final String PREFIX;



  @OptionalConverter()
  @JsonKey(
    
    name: r'TITLE_FIELD2',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> TITLE_FIELD2;



  @OptionalConverter()
  @JsonKey(
    
    name: r'TITLE_FIELD3',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> TITLE_FIELD3;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is ModuleSettings &&
      runtimeType == other.runtimeType &&
      equals(
        [
            SERVICE_ID_OFFSET,
            USE_REPEAT_INVOICE,
            USE_PACKAGES,
            BILLING_DAYS_OFFSET,
            IMGNAME,
            REPEAT_BILLING_METHOD,
            DELETE_PENDING_DAYS,
            SUSPEND_DAYS,
            SUSPEND_WARNING_DAYS,
            TITLE,
            MENUNAME,
            EMAIL_FROM,
            TBLNAME,
            TABLE,
            TITLE_FIELD,
            PREFIX,
            TITLE_FIELD2,
            TITLE_FIELD3,
        ],
        [
            other.SERVICE_ID_OFFSET,
            other.USE_REPEAT_INVOICE,
            other.USE_PACKAGES,
            other.BILLING_DAYS_OFFSET,
            other.IMGNAME,
            other.REPEAT_BILLING_METHOD,
            other.DELETE_PENDING_DAYS,
            other.SUSPEND_DAYS,
            other.SUSPEND_WARNING_DAYS,
            other.TITLE,
            other.MENUNAME,
            other.EMAIL_FROM,
            other.TBLNAME,
            other.TABLE,
            other.TITLE_FIELD,
            other.PREFIX,
            other.TITLE_FIELD2,
            other.TITLE_FIELD3,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        SERVICE_ID_OFFSET,
        USE_REPEAT_INVOICE,
        USE_PACKAGES,
        BILLING_DAYS_OFFSET,
        IMGNAME,
        REPEAT_BILLING_METHOD,
        DELETE_PENDING_DAYS,
        SUSPEND_DAYS,
        SUSPEND_WARNING_DAYS,
        TITLE,
        MENUNAME,
        EMAIL_FROM,
        TBLNAME,
        TABLE,
        TITLE_FIELD,
        PREFIX,
        TITLE_FIELD2,
        TITLE_FIELD3,
    ],);

  factory ModuleSettings.fromJson(Map<String, dynamic> json) => _$ModuleSettingsFromJson(json);

  Map<String, dynamic> toJson() => _$ModuleSettingsToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

