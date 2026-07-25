#tag Class
Protected Class MailStatsType

	#tag Property, Flags = &h0
		time As Xoson.O.OptionalString
	#tag EndProperty


	#tag Property, Flags = &h0
		usage As Xoson.O.OptionalInteger
	#tag EndProperty


	#tag Property, Flags = &h0
		currency As Xoson.O.OptionalString
	#tag EndProperty


	#tag Property, Flags = &h0
		currencySymbol As Xoson.O.OptionalString
	#tag EndProperty


	#tag Property, Flags = &h0
		cost As Xoson.O.OptionalDouble
	#tag EndProperty


	#tag Property, Flags = &h0
		received As Xoson.O.OptionalInteger
	#tag EndProperty


	#tag Property, Flags = &h0
		sent As Xoson.O.OptionalInteger
	#tag EndProperty


	#tag Property, Flags = &h0
		volume As OpenAPIClient.Models.MailStatsTypeVolume
	#tag EndProperty


    #tag Enum, Name = TimeEnum, Type = Integer, Flags = &h0
        
        All
        Billing
        Month
        Escaped7d
        Escaped24h
        Today
        Escaped1h
        UnknownDefaultOpenApi
        Unknown
    #tag EndEnum


	#tag Method, Flags = &h0
		Shared Function TimeEnumToString(value As TimeEnum) As String
		  Select Case value
		    
		    Case TimeEnum.All
		      Return "all"
		    Case TimeEnum.Billing
		      Return "billing"
		    Case TimeEnum.Month
		      Return "month"
		    Case TimeEnum.Escaped7d
		      Return "7d"
		    Case TimeEnum.Escaped24h
		      Return "24h"
		    Case TimeEnum.Today
		      Return "today"
		    Case TimeEnum.Escaped1h
		      Return "1h"
		    Case TimeEnum.UnknownDefaultOpenApi
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
			Name="usage"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="currency"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="currencySymbol"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="cost"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="received"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="sent"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="volume"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="MailStatsTypeVolume"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass


