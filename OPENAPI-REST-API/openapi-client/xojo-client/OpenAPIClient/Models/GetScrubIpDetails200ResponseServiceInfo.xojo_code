#tag Class
Protected Class GetScrubIpDetails200ResponseServiceInfo

	#tag Property, Flags = &h0
		scrub_ip_id As Xoson.O.OptionalString
	#tag EndProperty


	#tag Property, Flags = &h0
		scrub_ip_type As Xoson.O.OptionalString
	#tag EndProperty


	#tag Property, Flags = &h0
		scrub_ip_custid As Xoson.O.OptionalString
	#tag EndProperty


	#tag Property, Flags = &h0
		scrub_ip_order_date As Xoson.O.OptionalString
	#tag EndProperty


	#tag Property, Flags = &h0
		scrub_ip_ip As Xoson.O.OptionalString
	#tag EndProperty


	#tag Property, Flags = &h0
		scrub_ip_service_id As Xoson.O.OptionalString
	#tag EndProperty


	#tag Property, Flags = &h0
		scrub_ip_service_module As Xoson.O.OptionalString
	#tag EndProperty


	#tag Property, Flags = &h0
		scrub_ip_status As Xoson.O.OptionalString
	#tag EndProperty


	#tag Property, Flags = &h0
		scrub_ip_invoice As Xoson.O.OptionalString
	#tag EndProperty


	#tag Property, Flags = &h0
		scrub_ip_currency As Xoson.O.OptionalString
	#tag EndProperty


	#tag Property, Flags = &h0
		scrub_ip_coupon As Xoson.O.OptionalString
	#tag EndProperty


	#tag Property, Flags = &h0
		scrub_ip_comment As Xoson.O.OptionalString
	#tag EndProperty


    #tag Enum, Name = Scrub_ip_statusEnum, Type = Integer, Flags = &h0
        
        Active
        Pending
        Canceled
        Expired
        UnknownDefaultOpenApi
        Unknown
    #tag EndEnum


	#tag Method, Flags = &h0
		Shared Function Scrub_ip_statusEnumToString(value As Scrub_ip_statusEnum) As String
		  Select Case value
		    
		    Case Scrub_ip_statusEnum.Active
		      Return "active"
		    Case Scrub_ip_statusEnum.Pending
		      Return "pending"
		    Case Scrub_ip_statusEnum.Canceled
		      Return "canceled"
		    Case Scrub_ip_statusEnum.Expired
		      Return "expired"
		    Case Scrub_ip_statusEnum.UnknownDefaultOpenApi
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
			Name="scrub_ip_id"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="scrub_ip_type"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="scrub_ip_custid"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="scrub_ip_order_date"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="scrub_ip_ip"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="scrub_ip_service_id"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="scrub_ip_service_module"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="scrub_ip_invoice"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="scrub_ip_currency"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="scrub_ip_coupon"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="scrub_ip_comment"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass


