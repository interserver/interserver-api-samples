-module(interserver_api_delete_firewall_rule).

-export([encode/1]).

-export_type([interserver_api_delete_firewall_rule/0]).

-type interserver_api_delete_firewall_rule() ::
    #{ 'rule_id' := integer()
     }.

encode(#{ 'rule_id' := RuleId
        }) ->
    #{ 'rule_id' => RuleId
     }.
