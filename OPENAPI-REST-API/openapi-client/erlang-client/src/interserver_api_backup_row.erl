-module(interserver_api_backup_row).

-export([encode/1]).

-export_type([interserver_api_backup_row/0]).

-type interserver_api_backup_row() ::
    #{ 'backup_id' => binary(),
       'backup_name' => binary(),
       'backup_cost' => binary(),
       'backup_username' => binary(),
       'backup_status' => binary(),
       'services_name' => binary()
     }.

encode(#{ 'backup_id' := BackupId,
          'backup_name' := BackupName,
          'backup_cost' := BackupCost,
          'backup_username' := BackupUsername,
          'backup_status' := BackupStatus,
          'services_name' := ServicesName
        }) ->
    #{ 'backup_id' => BackupId,
       'backup_name' => BackupName,
       'backup_cost' => BackupCost,
       'backup_username' => BackupUsername,
       'backup_status' => BackupStatus,
       'services_name' => ServicesName
     }.
