-module(interserver_api_domain_prov_process_pending).

-export([encode/1]).

-export_type([interserver_api_domain_prov_process_pending/0]).

-type interserver_api_domain_prov_process_pending() ::
    #{ '_OPS_version' => binary(),
       'response_text' => binary(),
       'protocol' => binary(),
       'response_code' => binary(),
       'action' => binary(),
       'object' => binary(),
       'is_success' => binary(),
       'attributes' => interserver_api_domain_prov_process_pending_attributes:interserver_api_domain_prov_process_pending_attributes()
     }.

encode(#{ '_OPS_version' := OPSVersion,
          'response_text' := ResponseText,
          'protocol' := Protocol,
          'response_code' := ResponseCode,
          'action' := Action,
          'object' := Object,
          'is_success' := IsSuccess,
          'attributes' := Attributes
        }) ->
    #{ '_OPS_version' => OPSVersion,
       'response_text' => ResponseText,
       'protocol' => Protocol,
       'response_code' => ResponseCode,
       'action' => Action,
       'object' => Object,
       'is_success' => IsSuccess,
       'attributes' => Attributes
     }.
