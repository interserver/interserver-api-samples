#tag Class
Protected Class TicketPostDetailsInner

	#tag Property, Flags = &h0
		post_id As Xoson.O.OptionalInteger
	#tag EndProperty


	#tag Property, Flags = &h0
		date As Xoson.O.OptionalString
	#tag EndProperty


	#tag Property, Flags = &h0
		contents As Xoson.O.OptionalString
	#tag EndProperty


	#tag Property, Flags = &h0
		creator As Xoson.O.OptionalString
	#tag EndProperty


	#tag Property, Flags = &h0
		creator_email As Xoson.O.OptionalString
	#tag EndProperty


	#tag Property, Flags = &h0
		creator_name As Xoson.O.OptionalString
	#tag EndProperty


	#tag Property, Flags = &h0
		hasattachments As Xoson.O.OptionalInteger
	#tag EndProperty


	#tag Property, Flags = &h0
		attachment_download As Xoson.O.OptionalString
	#tag EndProperty


    #tag Enum, Name = CreatorEnum, Type = Integer, Flags = &h0
        
        User
        Staff
        UnknownDefaultOpenApi
        Unknown
    #tag EndEnum


	#tag Method, Flags = &h0
		Shared Function CreatorEnumToString(value As CreatorEnum) As String
		  Select Case value
		    
		    Case CreatorEnum.User
		      Return "User"
		    Case CreatorEnum.Staff
		      Return "Staff"
		    Case CreatorEnum.UnknownDefaultOpenApi
		      Return "unknown_default_open_api"
		    Case 
		      Return ""
		  End Select
		  Return ""
		End Function
	#tag EndMethod


	#tag ViewBehavior
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="post_id"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="date"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="contents"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="creator_email"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="creator_name"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="hasattachments"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="attachment_download"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass


