#tag Class
Protected Class UpdateTicket

	#tag Property, Flags = &h0
		ip As Xoson.O.OptionalString
	#tag EndProperty


	#tag Property, Flags = &h0
		ip_address As Xoson.O.OptionalString
	#tag EndProperty


	#tag Property, Flags = &h0
		customer_server_access As Xoson.O.OptionalString
	#tag EndProperty


	#tag Property, Flags = &h0
		root_password As Xoson.O.OptionalString
	#tag EndProperty


	#tag Property, Flags = &h0
		sudo_username As Xoson.O.OptionalString
	#tag EndProperty


	#tag Property, Flags = &h0
		sudo_password As Xoson.O.OptionalString
	#tag EndProperty


	#tag Property, Flags = &h0
		port As Xoson.O.OptionalInteger
	#tag EndProperty


    #tag Enum, Name = Customer_server_accessEnum, Type = Integer, Flags = &h0
        
        Y
        N
        UnknownDefaultOpenApi
        Unknown
    #tag EndEnum


	#tag Method, Flags = &h0
		Shared Function Customer_server_accessEnumToString(value As Customer_server_accessEnum) As String
		  Select Case value
		    
		    Case Customer_server_accessEnum.Y
		      Return "y"
		    Case Customer_server_accessEnum.N
		      Return "n"
		    Case Customer_server_accessEnum.UnknownDefaultOpenApi
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
			Name="ip"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="ip_address"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="root_password"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="sudo_username"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="sudo_password"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="port"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass


