#tag Class
Protected Class ServerIpmiPowerRequest

	#tag Property, Flags = &h0
		#tag Note
			The power action to send to the ipmi controller.
		#tag EndNote
		action As String
	#tag EndProperty


	#tag Property, Flags = &h0
		#tag Note
			The Asset ID
		#tag EndNote
		asset As Xoson.O.OptionalInteger
	#tag EndProperty


    #tag Enum, Name = ActionEnum, Type = Integer, Flags = &h0
        
        Cycle
        Reset
        On
        Off
        Escapedsoft
        UnknownDefaultOpenApi
        Unknown
    #tag EndEnum


	#tag Method, Flags = &h0
		Shared Function ActionEnumToString(value As ActionEnum) As String
		  Select Case value
		    
		    Case ActionEnum.Cycle
		      Return "cycle"
		    Case ActionEnum.Reset
		      Return "reset"
		    Case ActionEnum.On
		      Return "on"
		    Case ActionEnum.Off
		      Return "off"
		    Case ActionEnum.Escapedsoft
		      Return "soft"
		    Case ActionEnum.UnknownDefaultOpenApi
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
			Name="asset"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass


