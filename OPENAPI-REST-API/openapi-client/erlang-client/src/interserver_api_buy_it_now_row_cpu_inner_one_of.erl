-module(interserver_api_buy_it_now_row_cpu_inner_one_of).

-export([encode/1]).

-export_type([interserver_api_buy_it_now_row_cpu_inner_one_of/0]).

-type interserver_api_buy_it_now_row_cpu_inner_one_of() ::
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
