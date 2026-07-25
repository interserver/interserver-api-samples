#tag Class
Protected Class DenyRuleRecord

	#tag Property, Flags = &h0
		#tag Note
			The type of deny rule.
		#tag EndNote
		type As String
	#tag EndProperty


	#tag Property, Flags = &h0
		#tag Note
			The content of the rule.  If a domain type rule then an example would be google.com. For a begins with type an example would be msgid-.  For the email typer an example would be user@server.com.
		#tag EndNote
		data As String
	#tag EndProperty


	#tag Property, Flags = &h0
		#tag Note
			The deny rule Id number.
		#tag EndNote
		id As Integer
	#tag EndProperty


	#tag Property, Flags = &h0
		#tag Note
			the date the rule was created.
		#tag EndNote
		created As String
	#tag EndProperty


	#tag Property, Flags = &h0
		#tag Note
			Mail account username that will be tied to this rule.  If not specified the first active mail order will be used.
		#tag EndNote
		user As Xoson.O.OptionalString
	#tag EndProperty


    #tag Enum, Name = TypeEnum, Type = Integer, Flags = &h0
        
        Domain
        Email
        Startswith
        Destination
        UnknownDefaultOpenApi
        Unknown
    #tag EndEnum


	#tag Method, Flags = &h0
		Shared Function TypeEnumToString(value As TypeEnum) As String
		  Select Case value
		    
		    Case TypeEnum.Domain
		      Return "domain"
		    Case TypeEnum.Email
		      Return "email"
		    Case TypeEnum.Startswith
		      Return "startswith"
		    Case TypeEnum.Destination
		      Return "destination"
		    Case TypeEnum.UnknownDefaultOpenApi
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
			Name="data"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="id"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="created"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="user"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass


