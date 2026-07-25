#tag Class
Protected Class DomainOrderRequest

	#tag Property, Flags = &h0
		#tag Note
			Fully-qualified domain to register or transfer (e.g. example.com).
		#tag EndNote
		hostname As String
	#tag EndProperty


	#tag Property, Flags = &h0
		#tag Note
			Order type.
		#tag EndNote
		type As Xoson.O.OptionalString
	#tag EndProperty


	#tag Property, Flags = &h0
		#tag Note
			Coupon code (addDomain only).
		#tag EndNote
		coupon As Xoson.O.OptionalString
	#tag EndProperty


	#tag Property, Flags = &h0
		#tag Note
			Set to "enable" to add Whois privacy (addDomain only).
		#tag EndNote
		whois_privacy As Xoson.O.OptionalString
	#tag EndProperty


    #tag Enum, Name = TypeEnum, Type = Integer, Flags = &h0
        
        Register
        Transfer
        
    #tag EndEnum

    #tag Enum, Name = Whois_privacyEnum, Type = Integer, Flags = &h0
        
        Enable
        Disable
        
    #tag EndEnum


	#tag Method, Flags = &h0
		Shared Function TypeEnumToString(value As TypeEnum) As String
		  Select Case value
		    
		    Case TypeEnum.Register
		      Return "register"
		    Case TypeEnum.Transfer
		      Return "transfer"
		    
		  End Select
		  Return ""
		End Function
	#tag EndMethod
	#tag Method, Flags = &h0
		Shared Function Whois_privacyEnumToString(value As Whois_privacyEnum) As String
		  Select Case value
		    
		    Case Whois_privacyEnum.Enable
		      Return "enable"
		    Case Whois_privacyEnum.Disable
		      Return "disable"
		    
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
			Name="hostname"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="coupon"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass


