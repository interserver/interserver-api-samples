-module(interserver_api_quickserver_client_link).

-export([encode/1]).

-export_type([interserver_api_quickserver_client_link/0]).

-type interserver_api_quickserver_client_link() ::
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
