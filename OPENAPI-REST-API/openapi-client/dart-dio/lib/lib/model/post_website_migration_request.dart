//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'post_website_migration_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PostWebsiteMigrationRequest {
  /// Returns a new [PostWebsiteMigrationRequest] instance.
  PostWebsiteMigrationRequest({

    this.custPortal = const Optional.absent(),

    this.regEmail = const Optional.absent(),

    this.password = const Optional.absent(),

    this.ctrlPanel = const Optional.absent(),

    this.ftpUsername = const Optional.absent(),

    this.ftpPassword = const Optional.absent(),

    this.siteBusyMig = const Optional.absent(),

    this.splReqMig = const Optional.absent(),

    this.domainReg = const Optional.absent(),

    this.dataMig = const Optional.absent(),

    this.domainRegPortal = const Optional.absent(),

    this.domainRegEmail = const Optional.absent(),

    this.domainRegPassword = const Optional.absent(),
  });

      /// URL of the customer's current hosting portal.
  @OptionalConverter()
  @JsonKey(
    
    name: r'custPortal',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> custPortal;



      /// Registered email address at the current host.
  @OptionalConverter()
  @JsonKey(
    
    name: r'regEmail',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> regEmail;



      /// Password for the current hosting account.
  @OptionalConverter()
  @JsonKey(
    
    name: r'password',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> password;



      /// URL of the current control panel.
  @OptionalConverter()
  @JsonKey(
    
    name: r'ctrlPanel',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> ctrlPanel;



      /// FTP username at the current host.
  @OptionalConverter()
  @JsonKey(
    
    name: r'ftpUsername',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> ftpUsername;



      /// FTP password at the current host.
  @OptionalConverter()
  @JsonKey(
    
    name: r'ftpPassword',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> ftpPassword;



      /// Information about site traffic during migration.
  @OptionalConverter()
  @JsonKey(
    
    name: r'siteBusyMig',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> siteBusyMig;



      /// Special requirements for the migration.
  @OptionalConverter()
  @JsonKey(
    
    name: r'splReqMig',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> splReqMig;



      /// Whether domain registration assistance is needed.
  @OptionalConverter()
  @JsonKey(
    
    name: r'domainReg',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> domainReg;



      /// Data migration timing preference.
  @OptionalConverter()
  @JsonKey(
    
    name: r'dataMig',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> dataMig;



      /// Domain registrar portal URL.
  @OptionalConverter()
  @JsonKey(
    
    name: r'domainRegPortal',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> domainRegPortal;



      /// Email for the domain registrar account.
  @OptionalConverter()
  @JsonKey(
    
    name: r'domainRegEmail',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> domainRegEmail;



      /// Password for the domain registrar account.
  @OptionalConverter()
  @JsonKey(
    
    name: r'domainRegPassword',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> domainRegPassword;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is PostWebsiteMigrationRequest &&
      runtimeType == other.runtimeType &&
      equals(
        [
            custPortal,
            regEmail,
            password,
            ctrlPanel,
            ftpUsername,
            ftpPassword,
            siteBusyMig,
            splReqMig,
            domainReg,
            dataMig,
            domainRegPortal,
            domainRegEmail,
            domainRegPassword,
        ],
        [
            other.custPortal,
            other.regEmail,
            other.password,
            other.ctrlPanel,
            other.ftpUsername,
            other.ftpPassword,
            other.siteBusyMig,
            other.splReqMig,
            other.domainReg,
            other.dataMig,
            other.domainRegPortal,
            other.domainRegEmail,
            other.domainRegPassword,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        custPortal,
        regEmail,
        password,
        ctrlPanel,
        ftpUsername,
        ftpPassword,
        siteBusyMig,
        splReqMig,
        domainReg,
        dataMig,
        domainRegPortal,
        domainRegEmail,
        domainRegPassword,
    ],);

  factory PostWebsiteMigrationRequest.fromJson(Map<String, dynamic> json) => _$PostWebsiteMigrationRequestFromJson(json);

  Map<String, dynamic> toJson() => _$PostWebsiteMigrationRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

