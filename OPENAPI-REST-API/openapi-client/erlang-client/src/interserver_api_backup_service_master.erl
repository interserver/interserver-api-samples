-module(interserver_api_backup_service_master).

-export([encode/1]).

-export_type([interserver_api_backup_service_master/0]).

-type interserver_api_backup_service_master() ::
    #{ 'backup_id' => integer(),
       'backup_name' => binary(),
       'backup_ip' => binary(),
       'backup_type' => integer(),
       'backup_hdsize' => integer(),
       'backup_hdfree' => integer(),
       'backup_last_update' => binary(),
       'backup_available' => integer(),
       'backup_iowait' => integer(),
       'backup_order' => integer()
     }.

encode(#{ 'backup_id' := BackupId,
          'backup_name' := BackupName,
          'backup_ip' := BackupIp,
          'backup_type' := BackupType,
          'backup_hdsize' := BackupHdsize,
          'backup_hdfree' := BackupHdfree,
          'backup_last_update' := BackupLastUpdate,
          'backup_available' := BackupAvailable,
          'backup_iowait' := BackupIowait,
          'backup_order' := BackupOrder
        }) ->
    #{ 'backup_id' => BackupId,
       'backup_name' => BackupName,
       'backup_ip' => BackupIp,
       'backup_type' => BackupType,
       'backup_hdsize' => BackupHdsize,
       'backup_hdfree' => BackupHdfree,
       'backup_last_update' => BackupLastUpdate,
       'backup_available' => BackupAvailable,
       'backup_iowait' => BackupIowait,
       'backup_order' => BackupOrder
     }.
