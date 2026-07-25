#tag Class
Protected Class CreateGeoFirewallRule

	#tag Property, Flags = &h0
		#tag Note
			1 = Block,  0 = Whitelist
		#tag EndNote
		xdp_action As Integer
	#tag EndProperty


	#tag Property, Flags = &h0
		destination_port As Xoson.O.OptionalInteger
	#tag EndProperty


	#tag Property, Flags = &h0
		#tag Note
			To get country code refer our countries api - https://my.interserver.net/apiv2/account/countries?fetch_by=numcode
		#tag EndNote
		country_code As Xoson.O.OptionalInteger
	#tag EndProperty


	#tag Property, Flags = &h0
		#tag Note
			ASN number
		#tag EndNote
		asn As Xoson.O.OptionalInteger
	#tag EndProperty


    #tag Enum, Name = Xdp_actionEnum, Type = Integer, Flags = &h0
        
        Escaped0 = "0"
        Escaped1 = "1"
        UnknownDefaultOpenApi = "11184809"
        Unknown = 
    #tag EndEnum




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
			Name="destination_port"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="country_code"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="asn"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass


