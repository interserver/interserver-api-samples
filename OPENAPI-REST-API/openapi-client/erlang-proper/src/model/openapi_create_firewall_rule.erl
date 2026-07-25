-module(openapi_create_firewall_rule).

-include("openapi.hrl").

-export([openapi_create_firewall_rule/0]).

-export([openapi_create_firewall_rule/1]).

-export_type([openapi_create_firewall_rule/0]).

-type openapi_create_firewall_rule() ::
  [ {'protocol_id', integer() }
  | {'xdp_action', integer() }
  | {'destination_port', integer() }
  | {'source_ip', binary() }
  | {'source_port', integer() }
  ].


openapi_create_firewall_rule() ->
    openapi_create_firewall_rule([]).

openapi_create_firewall_rule(Fields) ->
  Default = [ {'protocol_id', integer() }
            , {'xdp_action', integer() }
            , {'destination_port', integer() }
            , {'source_ip', binary() }
            , {'source_port', integer() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

