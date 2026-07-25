-module(interserver_api_vps_backup_row).

-export([encode/1]).

-export_type([interserver_api_vps_backup_row/0]).

-type interserver_api_vps_backup_row() ::
    #{ 'type' := binary(),
       'service' := integer(),
       'name' := binary(),
       'size' := integer(),
       'date' := integer()
     }.

encode(#{ 'type' := Type,
          'service' := Service,
          'name' := Name,
          'size' := Size,
          'date' := Date
        }) ->
    #{ 'type' => Type,
       'service' => Service,
       'name' => Name,
       'size' => Size,
       'date' => Date
     }.
