-module(interserver_api_website_service_master).

-export([encode/1]).

-export_type([interserver_api_website_service_master/0]).

-type interserver_api_website_service_master() ::
    #{ 'website_id' => binary(),
       'website_name' => binary(),
       'website_ip' => binary(),
       'website_type' => binary(),
       'website_available' => binary(),
       'website_hdsize' => binary(),
       'website_hdfree' => binary(),
       'website_load' => binary(),
       'website_last_update' => binary(),
       'website_max_sites' => binary(),
       'website_order' => binary(),
       'website_partitions' => binary(),
       'website_dns1' => binary(),
       'website_dns2' => binary()
     }.

encode(#{ 'website_id' := WebsiteId,
          'website_name' := WebsiteName,
          'website_ip' := WebsiteIp,
          'website_type' := WebsiteType,
          'website_available' := WebsiteAvailable,
          'website_hdsize' := WebsiteHdsize,
          'website_hdfree' := WebsiteHdfree,
          'website_load' := WebsiteLoad,
          'website_last_update' := WebsiteLastUpdate,
          'website_max_sites' := WebsiteMaxSites,
          'website_order' := WebsiteOrder,
          'website_partitions' := WebsitePartitions,
          'website_dns1' := WebsiteDns1,
          'website_dns2' := WebsiteDns2
        }) ->
    #{ 'website_id' => WebsiteId,
       'website_name' => WebsiteName,
       'website_ip' => WebsiteIp,
       'website_type' => WebsiteType,
       'website_available' => WebsiteAvailable,
       'website_hdsize' => WebsiteHdsize,
       'website_hdfree' => WebsiteHdfree,
       'website_load' => WebsiteLoad,
       'website_last_update' => WebsiteLastUpdate,
       'website_max_sites' => WebsiteMaxSites,
       'website_order' => WebsiteOrder,
       'website_partitions' => WebsitePartitions,
       'website_dns1' => WebsiteDns1,
       'website_dns2' => WebsiteDns2
     }.
