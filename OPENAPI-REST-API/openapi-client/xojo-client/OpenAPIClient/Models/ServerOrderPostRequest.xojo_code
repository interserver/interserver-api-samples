#tag Class
Protected Class ServerOrderPostRequest

	#tag Property, Flags = &h0
		#tag Note
			CPU configuration id from config_li.cpu_li. Constrains valid hd/memory options.
		#tag EndNote
		cpu As Integer
	#tag EndProperty


	#tag Property, Flags = &h0
		hd As OpenAPIClient.Models.ServerOrderPostRequestHd
	#tag EndProperty


	#tag Property, Flags = &h0
		#tag Note
			Memory configuration id from config_li.memory_li[cpu].
		#tag EndNote
		memory As Integer
	#tag EndProperty


	#tag Property, Flags = &h0
		#tag Note
			Bandwidth configuration id from config_li.bandwidth_li.
		#tag EndNote
		bandwidth As Integer
	#tag EndProperty


	#tag Property, Flags = &h0
		#tag Note
			IP block configuration id from config_li.ips_li.
		#tag EndNote
		ips As Integer
	#tag EndProperty


	#tag Property, Flags = &h0
		#tag Note
			Operating System configuration id from config_li.os_li.
		#tag EndNote
		os As Integer
	#tag EndProperty


	#tag Property, Flags = &h0
		#tag Note
			Control Panel configuration id from config_li.cp_li.
		#tag EndNote
		cp As Integer
	#tag EndProperty


	#tag Property, Flags = &h0
		#tag Note
			RAID configuration id from config_li.raid_li.
		#tag EndNote
		raid As Integer
	#tag EndProperty


	#tag Property, Flags = &h0
		#tag Note
			Region id from the regions list.
		#tag EndNote
		region As Integer
	#tag EndProperty


	#tag Property, Flags = &h0
		#tag Note
			Server hostname. Must pass valid_hostname().
		#tag EndNote
		servername As String
	#tag EndProperty


	#tag Property, Flags = &h0
		#tag Note
			Root password for the server.
		#tag EndNote
		rootpass As String
	#tag EndProperty


	#tag Property, Flags = &h0
		#tag Note
			Terms-of-service acceptance. Must be true to place the order.
		#tag EndNote
		tos As Boolean
	#tag EndProperty


	#tag Property, Flags = &h0
		#tag Note
			Optional free-form order comment.
		#tag EndNote
		comment As Xoson.O.OptionalString
	#tag EndProperty





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
			Name="cpu"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="hd"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="ServerOrderPostRequestHd"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="memory"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="bandwidth"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="ips"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="os"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="cp"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="raid"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="region"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="servername"
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
			Name="tos"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
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


