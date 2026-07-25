#tag Class
Protected Class TicketCustomFieldDetails

	#tag Property, Flags = &h0
		Customer_Server_Access As Xoson.O.OptionalString
	#tag EndProperty


	#tag Property, Flags = &h0
		Ip_Address As Xoson.O.OptionalString
	#tag EndProperty


	#tag Property, Flags = &h0
		Root_Password As Xoson.O.OptionalString
	#tag EndProperty


	#tag Property, Flags = &h0
		Sudo_User As Xoson.O.OptionalString
	#tag EndProperty


	#tag Property, Flags = &h0
		Sudo_Password As Xoson.O.OptionalInteger
	#tag EndProperty


	#tag Property, Flags = &h0
		Port As Xoson.O.OptionalInteger
	#tag EndProperty


    #tag Enum, Name = Customer_Server_AccessEnum, Type = Integer, Flags = &h0
        
        Y
        N
        UnknownDefaultOpenApi
        Unknown
    #tag EndEnum


	#tag Method, Flags = &h0
		Shared Function Customer_Server_AccessEnumToString(value As Customer_Server_AccessEnum) As String
		  Select Case value
		    
		    Case Customer_Server_AccessEnum.Y
		      Return "y"
		    Case Customer_Server_AccessEnum.N
		      Return "n"
		    Case Customer_Server_AccessEnum.UnknownDefaultOpenApi
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
			Name="Ip_Address"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Root_Password"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Sudo_User"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Sudo_Password"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Port"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass


