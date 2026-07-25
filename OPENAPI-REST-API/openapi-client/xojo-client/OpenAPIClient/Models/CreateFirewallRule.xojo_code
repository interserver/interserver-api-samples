#tag Class
Protected Class CreateFirewallRule

	#tag Property, Flags = &h0
		#tag Note
			1 = TCP, 2 = UDP
		#tag EndNote
		protocol_id As Integer
	#tag EndProperty


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
			Source IP address to match. Use '0.0.0.0' to match any source.
		#tag EndNote
		source_ip As Xoson.O.OptionalString
	#tag EndProperty


	#tag Property, Flags = &h0
		source_port As Xoson.O.OptionalInteger
	#tag EndProperty


    #tag Enum, Name = Protocol_idEnum, Type = Integer, Flags = &h0
        
        Escaped1 = "1"
        Escaped2 = "2"
        UnknownDefaultOpenApi = "11184809"
        Unknown = 
    #tag EndEnum

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
			Name="source_ip"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="source_port"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass


