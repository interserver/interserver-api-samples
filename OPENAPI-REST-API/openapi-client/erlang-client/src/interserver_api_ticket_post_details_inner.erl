-module(interserver_api_ticket_post_details_inner).

-export([encode/1]).

-export_type([interserver_api_ticket_post_details_inner/0]).

-type interserver_api_ticket_post_details_inner() ::
    #{ 'post_id' => integer(),
       'date' => binary(),
       'contents' => binary(),
       'creator' => binary(),
       'creator_email' => binary(),
       'creator_name' => binary(),
       'hasattachments' => integer(),
       'attachment_download' => binary()
     }.

encode(#{ 'post_id' := PostId,
          'date' := Date,
          'contents' := Contents,
          'creator' := Creator,
          'creator_email' := CreatorEmail,
          'creator_name' := CreatorName,
          'hasattachments' := Hasattachments,
          'attachment_download' := AttachmentDownload
        }) ->
    #{ 'post_id' => PostId,
       'date' => Date,
       'contents' => Contents,
       'creator' => Creator,
       'creator_email' => CreatorEmail,
       'creator_name' => CreatorName,
       'hasattachments' => Hasattachments,
       'attachment_download' => AttachmentDownload
     }.
