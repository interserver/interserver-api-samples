-module(interserver_api_buy_it_now_row_cpu_inner).

-export([encode/1]).

-export_type([interserver_api_buy_it_now_row_cpu_inner/0]).

-type interserver_api_buy_it_now_row_cpu_inner() ::
    #{ 'img' => binary(),
       'type' => binary(),
       'speed' => binary(),
       'num_cpus' => binary(),
       'num_cores' => binary()
     }.

encode(#{ 'img' := Img,
          'type' := Type,
          'speed' := Speed,
          'num_cpus' := NumCpus,
          'num_cores' := NumCores
        }) ->
    #{ 'img' => Img,
       'type' => Type,
       'speed' => Speed,
       'num_cpus' => NumCpus,
       'num_cores' => NumCores
     }.
