-module(interserver_api_domain_order_response).

-export([encode/1]).

-export_type([interserver_api_domain_order_response/0]).

-type interserver_api_domain_order_response() ::
    #{ '_OPS_version' => binary(),
       'protocol' => binary(),
       'is_success' => binary(),
       'action' => binary(),
       'attributes' => interserver_api_domain_order_response_attributes:interserver_api_domain_order_response_attributes(),
       'response_text' => binary(),
       'object' => binary(),
       'response_code' => binary()
     }.

encode(#{ '_OPS_version' := OPSVersion,
          'protocol' := Protocol,
          'is_success' := IsSuccess,
          'action' := Action,
          'attributes' := Attributes,
          'response_text' := ResponseText,
          'object' := Object,
          'response_code' := ResponseCode
        }) ->
    #{ '_OPS_version' => OPSVersion,
       'protocol' => Protocol,
       'is_success' => IsSuccess,
       'action' => Action,
       'attributes' => Attributes,
       'response_text' => ResponseText,
       'object' => Object,
       'response_code' => ResponseCode
     }.
