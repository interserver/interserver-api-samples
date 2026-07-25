-module(interserver_api_license_client_link).

-export([encode/1]).

-export_type([interserver_api_license_client_link/0]).

-type interserver_api_license_client_link() ::
    #{ 'label' := binary(),
       'link' := binary(),
       'icon' := binary(),
       'help_text' := binary(),
       'icon_text' => binary(),
       'other_attr' => binary()
     }.

encode(#{ 'label' := Label,
          'link' := Link,
          'icon' := Icon,
          'help_text' := HelpText,
          'icon_text' := IconText,
          'other_attr' := OtherAttr
        }) ->
    #{ 'label' => Label,
       'link' => Link,
       'icon' => Icon,
       'help_text' => HelpText,
       'icon_text' => IconText,
       'other_attr' => OtherAttr
     }.
