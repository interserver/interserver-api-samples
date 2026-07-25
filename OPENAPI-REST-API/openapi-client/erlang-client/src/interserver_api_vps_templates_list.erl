-module(interserver_api_vps_templates_list).

-export([encode/1]).

-export_type([interserver_api_vps_templates_list/0]).

-type interserver_api_vps_templates_list() ::
    #{ 'templates' := list()
     }.

encode(#{ 'templates' := Templates
        }) ->
    #{ 'templates' => Templates
     }.
