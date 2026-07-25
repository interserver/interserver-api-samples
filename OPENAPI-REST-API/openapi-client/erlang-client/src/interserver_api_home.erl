-module(interserver_api_home).

-export([encode/1]).

-export_type([interserver_api_home/0]).

-type interserver_api_home() ::
    #{ 'last_login_ip' := binary(),
       'last_login' := binary(),
       'currency' := binary(),
       'amount' := binary(),
       'invoice_list' := integer(),
       'balance' := binary(),
       'full_name' := binary(),
       'email' := binary(),
       'tickets' := list(),
       'ticketStatus' := interserver_api_home_ticket_status:interserver_api_home_ticket_status(),
       'ticketStatusView' := interserver_api_home_ticket_status_view:interserver_api_home_ticket_status_view(),
       'details' := interserver_api_home_details:interserver_api_home_details(),
       'services' := interserver_api_home_services:interserver_api_home_services(),
       'AFFILIATE_AMOUNT' := binary()
     }.

encode(#{ 'last_login_ip' := LastLoginIp,
          'last_login' := LastLogin,
          'currency' := Currency,
          'amount' := Amount,
          'invoice_list' := InvoiceList,
          'balance' := Balance,
          'full_name' := FullName,
          'email' := Email,
          'tickets' := Tickets,
          'ticketStatus' := TicketStatus,
          'ticketStatusView' := TicketStatusView,
          'details' := Details,
          'services' := Services,
          'AFFILIATE_AMOUNT' := AFFILIATEAMOUNT
        }) ->
    #{ 'last_login_ip' => LastLoginIp,
       'last_login' => LastLogin,
       'currency' => Currency,
       'amount' => Amount,
       'invoice_list' => InvoiceList,
       'balance' => Balance,
       'full_name' => FullName,
       'email' => Email,
       'tickets' => Tickets,
       'ticketStatus' => TicketStatus,
       'ticketStatusView' => TicketStatusView,
       'details' => Details,
       'services' => Services,
       'AFFILIATE_AMOUNT' => AFFILIATEAMOUNT
     }.
