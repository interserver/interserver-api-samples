-module(interserver_api_vps_template_row).

-export([encode/1]).

-export_type([interserver_api_vps_template_row/0]).

-type interserver_api_vps_template_row() ::
    #{ 'template_id' => binary(),
       'template_type' => binary(),
       'template_os' => binary(),
       'template_version' => binary(),
       'template_bits' => binary(),
       'template_file' => binary(),
       'template_available' => binary(),
       'template_name' => binary(),
       'template_dir' => binary()
     }.

encode(#{ 'template_id' := TemplateId,
          'template_type' := TemplateType,
          'template_os' := TemplateOs,
          'template_version' := TemplateVersion,
          'template_bits' := TemplateBits,
          'template_file' := TemplateFile,
          'template_available' := TemplateAvailable,
          'template_name' := TemplateName,
          'template_dir' := TemplateDir
        }) ->
    #{ 'template_id' => TemplateId,
       'template_type' => TemplateType,
       'template_os' => TemplateOs,
       'template_version' => TemplateVersion,
       'template_bits' => TemplateBits,
       'template_file' => TemplateFile,
       'template_available' => TemplateAvailable,
       'template_name' => TemplateName,
       'template_dir' => TemplateDir
     }.
