#tag Class
Protected Class VpsOrderPutRequest

	#tag Property, Flags = &h0
		#tag Note
			OS Distribution
		#tag EndNote
		osDistro As String
	#tag EndProperty


	#tag Property, Flags = &h0
		#tag Note
			Number of slices
		#tag EndNote
		slices As Integer
	#tag EndProperty


	#tag Property, Flags = &h0
		#tag Note
			VPS Platform
		#tag EndNote
		vpsPlatform As String
	#tag EndProperty


	#tag Property, Flags = &h0
		#tag Note
			Billing Period or Frequency
		#tag EndNote
		period As Integer
	#tag EndProperty


	#tag Property, Flags = &h0
		#tag Note
			Location
		#tag EndNote
		location As Integer
	#tag EndProperty


	#tag Property, Flags = &h0
		#tag Note
			OS Version
		#tag EndNote
		osVersion As String
	#tag EndProperty


	#tag Property, Flags = &h0
		#tag Note
			The hostname to assign to the VPS
		#tag EndNote
		hostname As String
	#tag EndProperty


	#tag Property, Flags = &h0
		#tag Note
			Root password to assign to the VVPS
		#tag EndNote
		rootpass As String
	#tag EndProperty


	#tag Property, Flags = &h0
		#tag Note
			Control Panel
		#tag EndNote
		controlpanel As Xoson.O.OptionalString
	#tag EndProperty


	#tag Property, Flags = &h0
		#tag Note
			Coupon
		#tag EndNote
		coupon As Xoson.O.OptionalString
	#tag EndProperty


	#tag Property, Flags = &h0
		#tag Note
			Order comments or notes
		#tag EndNote
		comment As Xoson.O.OptionalString
	#tag EndProperty


    #tag Enum, Name = VpsPlatformEnum, Type = Integer, Flags = &h0
        
        Kvm
        Hyperv
        Kvmstorage
        UnknownDefaultOpenApi
        Unknown
    #tag EndEnum

    #tag Enum, Name = ControlpanelEnum, Type = Integer, Flags = &h0
        
        None
        Cpanel
        Da
        UnknownDefaultOpenApi
        Unknown
    #tag EndEnum


	#tag Method, Flags = &h0
		Shared Function VpsPlatformEnumToString(value As VpsPlatformEnum) As String
		  Select Case value
		    
		    Case VpsPlatformEnum.Kvm
		      Return "kvm"
		    Case VpsPlatformEnum.Hyperv
		      Return "hyperv"
		    Case VpsPlatformEnum.Kvmstorage
		      Return "kvmstorage"
		    Case VpsPlatformEnum.UnknownDefaultOpenApi
		      Return "unknown_default_open_api"
		    Case 
		      Return ""
		  End Select
		  Return ""
		End Function
	#tag EndMethod
	#tag Method, Flags = &h0
		Shared Function ControlpanelEnumToString(value As ControlpanelEnum) As String
		  Select Case value
		    
		    Case ControlpanelEnum.None
		      Return "none"
		    Case ControlpanelEnum.Cpanel
		      Return "cpanel"
		    Case ControlpanelEnum.Da
		      Return "da"
		    Case ControlpanelEnum.UnknownDefaultOpenApi
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
			Name="osDistro"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="slices"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="period"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="location"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="osVersion"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
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
			Name="rootpass"
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
		#tag ViewProperty
			Name="comment"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass


