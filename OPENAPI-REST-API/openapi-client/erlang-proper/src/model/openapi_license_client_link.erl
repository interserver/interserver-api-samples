-module(openapi_license_client_link).

-include("openapi.hrl").

-export([openapi_license_client_link/0]).

-export([openapi_license_client_link/1]).

-export_type([openapi_license_client_link/0]).

-type openapi_license_client_link() ::
  [ {'label', binary() }
  | {'link', binary() }
  | {'icon', binary() }
  | {'help_text', binary() }
  | {'icon_text', binary() }
  | {'other_attr', binary() }
  ].


openapi_license_client_link() ->
    openapi_license_client_link([]).

openapi_license_client_link(Fields) ->
  Default = [ {'label', binary() }
            , {'link', binary() }
            , {'icon', binary() }
            , {'help_text', binary() }
            , {'icon_text', binary() }
            , {'other_attr', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

