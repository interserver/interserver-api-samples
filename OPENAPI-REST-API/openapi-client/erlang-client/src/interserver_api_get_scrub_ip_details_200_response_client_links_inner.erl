-module(interserver_api_get_scrub_ip_details_200_response_client_links_inner).

-export([encode/1]).

-export_type([interserver_api_get_scrub_ip_details_200_response_client_links_inner/0]).

-type interserver_api_get_scrub_ip_details_200_response_client_links_inner() ::
    #{ 'label' => binary(),
       'link' => binary(),
       'icon' => binary(),
       'icon_text' => binary(),
       'help_text' => binary(),
       'other_attr' => binary()
     }.

encode(#{ 'label' := Label,
          'link' := Link,
          'icon' := Icon,
          'icon_text' := IconText,
          'help_text' := HelpText,
          'other_attr' := OtherAttr
        }) ->
    #{ 'label' => Label,
       'link' => Link,
       'icon' => Icon,
       'icon_text' => IconText,
       'help_text' => HelpText,
       'other_attr' => OtherAttr
     }.
