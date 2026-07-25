-module(interserver_api_affiliate_banner_row).

-export([encode/1]).

-export_type([interserver_api_affiliate_banner_row/0]).

-type interserver_api_affiliate_banner_row() ::
    #{ 'image' => binary(),
       'width' => binary(),
       'height' => binary()
     }.

encode(#{ 'image' := Image,
          'width' := Width,
          'height' := Height
        }) ->
    #{ 'image' => Image,
       'width' => Width,
       'height' => Height
     }.
