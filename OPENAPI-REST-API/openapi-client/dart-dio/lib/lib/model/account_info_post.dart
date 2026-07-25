//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'account_info_post.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class AccountInfoPost {
  /// Returns a new [AccountInfoPost] instance.
  AccountInfoPost({

    required  this.name,

    required  this.address,

    required  this.city,

    required  this.state,

    required  this.zip,

    required  this.country,

    required  this.phone,

    this.company = const Optional.absent(),

    this.address2 = const Optional.absent(),

    this.locale = const Optional.absent(),

    this.emailInvoices = const Optional.absent(),

    this.emailAbuse = const Optional.absent(),

    this.disableReset = const Optional.absent(),

    this.disableReinstall = const Optional.absent(),

    this.disableServerNotifications = const Optional.absent(),

    this.disableEmailNotifications = const Optional.absent(),

    this.gstin = const Optional.absent(),
  });

      /// Your name.
  @JsonKey(
    
    name: r'name',
    required: true,
    includeIfNull: false,
  )


  final String name;



      /// Your address.
  @JsonKey(
    
    name: r'address',
    required: true,
    includeIfNull: false,
  )


  final String address;



      /// Your city.
  @JsonKey(
    
    name: r'city',
    required: true,
    includeIfNull: false,
  )


  final String city;



      /// Your state.
  @JsonKey(
    
    name: r'state',
    required: true,
    includeIfNull: false,
  )


  final String state;



      /// Your ZIP code.
  @JsonKey(
    
    name: r'zip',
    required: true,
    includeIfNull: false,
  )


  final String zip;



      /// Your country.
  @JsonKey(
    
    name: r'country',
    required: true,
    includeIfNull: false,
  )


  final String country;



      /// Your phone number.
  @JsonKey(
    
    name: r'phone',
    required: true,
    includeIfNull: false,
  )


  final String phone;



      /// Your company name.
  @OptionalConverter()
  @JsonKey(
    
    name: r'company',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> company;



      /// Additional address information.
  @OptionalConverter()
  @JsonKey(
    
    name: r'address2',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> address2;



      /// Your preferred locale.
  @OptionalConverter()
  @JsonKey(
    
    name: r'locale',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> locale;



      /// Your email for invoice notifications.
  @OptionalConverter()
  @JsonKey(
    
    name: r'email_invoices',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> emailInvoices;



      /// Your email for abuse notifications.
  @OptionalConverter()
  @JsonKey(
    
    name: r'email_abuse',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> emailAbuse;



      /// Set to `true` to disable account resets, or `false` to enable them.
  @OptionalConverter()
  @JsonKey(
    
    name: r'disable_reset',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<bool?> disableReset;



      /// Set to `true` to disable server reinstalls, or `false` to enable them.
  @OptionalConverter()
  @JsonKey(
    
    name: r'disable_reinstall',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<bool?> disableReinstall;



      /// Set to `true` to disable server notifications, or `false` to enable them.
  @OptionalConverter()
  @JsonKey(
    
    name: r'disable_server_notifications',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<bool?> disableServerNotifications;



      /// Set to `true` to disable email notifications, or `false` to enable them.
  @OptionalConverter()
  @JsonKey(
    
    name: r'disable_email_notifications',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<bool?> disableEmailNotifications;



      /// Your GST identification number (if applicable).
  @OptionalConverter()
  @JsonKey(
    
    name: r'gstin',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> gstin;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is AccountInfoPost &&
      runtimeType == other.runtimeType &&
      equals(
        [
            name,
            address,
            city,
            state,
            zip,
            country,
            phone,
            company,
            address2,
            locale,
            emailInvoices,
            emailAbuse,
            disableReset,
            disableReinstall,
            disableServerNotifications,
            disableEmailNotifications,
            gstin,
        ],
        [
            other.name,
            other.address,
            other.city,
            other.state,
            other.zip,
            other.country,
            other.phone,
            other.company,
            other.address2,
            other.locale,
            other.emailInvoices,
            other.emailAbuse,
            other.disableReset,
            other.disableReinstall,
            other.disableServerNotifications,
            other.disableEmailNotifications,
            other.gstin,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        name,
        address,
        city,
        state,
        zip,
        country,
        phone,
        company,
        address2,
        locale,
        emailInvoices,
        emailAbuse,
        disableReset,
        disableReinstall,
        disableServerNotifications,
        disableEmailNotifications,
        gstin,
    ],);

  factory AccountInfoPost.fromJson(Map<String, dynamic> json) => _$AccountInfoPostFromJson(json);

  Map<String, dynamic> toJson() => _$AccountInfoPostToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

