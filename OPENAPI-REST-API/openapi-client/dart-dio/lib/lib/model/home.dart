//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:interserver_api/lib/model/home_details.dart';
import 'package:interserver_api/lib/model/home_ticket_status_view.dart';
import 'package:interserver_api/lib/model/home_ticket_status.dart';
import 'package:interserver_api/lib/model/home_services.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'home.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class Home {
  /// Returns a new [Home] instance.
  Home({

    required  this.lastLoginIp,

    required  this.lastLogin,

    required  this.currency,

    required  this.amount,

    required  this.invoiceList,

    required  this.balance,

    required  this.fullName,

    required  this.email,

    required  this.tickets,

    required  this.ticketStatus,

    required  this.ticketStatusView,

    required  this.details,

    required  this.services,

    required  this.AFFILIATE_AMOUNT,
  });

      /// Last login IP.
  @JsonKey(
    
    name: r'last_login_ip',
    required: true,
    includeIfNull: false,
  )


  final String lastLoginIp;



      /// Last login time.
  @JsonKey(
    
    name: r'last_login',
    required: true,
    includeIfNull: false,
  )


  final String lastLogin;



      /// Currency symbol.
  @JsonKey(
    
    name: r'currency',
    required: true,
    includeIfNull: false,
  )


  final String currency;



      /// Amount with currency.
  @JsonKey(
    
    name: r'amount',
    required: true,
    includeIfNull: false,
  )


  final String amount;



      /// Number of invoices.
  @JsonKey(
    
    name: r'invoice_list',
    required: true,
    includeIfNull: false,
  )


  final int invoiceList;



      /// Balance with currency.
  @JsonKey(
    
    name: r'balance',
    required: true,
    includeIfNull: false,
  )


  final String balance;



      /// Users full name.
  @JsonKey(
    
    name: r'full_name',
    required: true,
    includeIfNull: false,
  )


  final String fullName;



      /// User email address.
  @JsonKey(
    
    name: r'email',
    required: true,
    includeIfNull: false,
  )


  final String email;



      /// List of tickets.
  @JsonKey(
    
    name: r'tickets',
    required: true,
    includeIfNull: false,
  )


  final List<String> tickets;



  @JsonKey(
    
    name: r'ticketStatus',
    required: true,
    includeIfNull: false,
  )


  final HomeTicketStatus ticketStatus;



  @JsonKey(
    
    name: r'ticketStatusView',
    required: true,
    includeIfNull: false,
  )


  final HomeTicketStatusView ticketStatusView;



  @JsonKey(
    
    name: r'details',
    required: true,
    includeIfNull: false,
  )


  final HomeDetails details;



  @JsonKey(
    
    name: r'services',
    required: true,
    includeIfNull: false,
  )


  final HomeServices services;



      /// Affiliate amount with currency.
  @JsonKey(
    
    name: r'AFFILIATE_AMOUNT',
    required: true,
    includeIfNull: false,
  )


  final String AFFILIATE_AMOUNT;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is Home &&
      runtimeType == other.runtimeType &&
      equals(
        [
            lastLoginIp,
            lastLogin,
            currency,
            amount,
            invoiceList,
            balance,
            fullName,
            email,
            tickets,
            ticketStatus,
            ticketStatusView,
            details,
            services,
            AFFILIATE_AMOUNT,
        ],
        [
            other.lastLoginIp,
            other.lastLogin,
            other.currency,
            other.amount,
            other.invoiceList,
            other.balance,
            other.fullName,
            other.email,
            other.tickets,
            other.ticketStatus,
            other.ticketStatusView,
            other.details,
            other.services,
            other.AFFILIATE_AMOUNT,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        lastLoginIp,
        lastLogin,
        currency,
        amount,
        invoiceList,
        balance,
        fullName,
        email,
        tickets,
        ticketStatus,
        ticketStatusView,
        details,
        services,
        AFFILIATE_AMOUNT,
    ],);

  factory Home.fromJson(Map<String, dynamic> json) => _$HomeFromJson(json);

  Map<String, dynamic> toJson() => _$HomeToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

