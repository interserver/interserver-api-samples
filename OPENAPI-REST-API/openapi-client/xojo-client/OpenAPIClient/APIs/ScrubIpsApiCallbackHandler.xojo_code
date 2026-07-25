#tag Interface
Protected Interface ScrubIpsApiCallbackHandler
	#tag Method, Flags = &h0
		Sub CancelScrubIpCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.CancelScrubIp200Response)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub CreateFilterCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.CreateFilter201Response)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub CreateGeoRuleCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.CreateRule201Response)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub CreateRuleCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.CreateRule201Response)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DeleteFilterCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.DeleteFilter200Response)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DisableScrubCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.DisableScrub200Response)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub EnableScrubCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.EnableScrub200Response)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetOrderDetailCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.GetOrderDetail200Response)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetScrubIpDetailsCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.GetScrubIpDetails200Response)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetScrubIpFilterTypesCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.ScrubIpFilterTypes)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetScrubIpInvoicesCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.ChargeInvoiceRows)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetScrubIpLogsCallback(status As OpenAPIClient.OpenAPIClientException, data() As OpenAPIClient.Models.ScrubIpsLogRowSchema)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetScrubIpsListCallback(status As OpenAPIClient.OpenAPIClientException, data() As OpenAPIClient.Models.ScrubIpsRowSchema)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PlaceScrubOrderCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.PlaceScrubOrder201Response)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PutScrubIpsCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.PutScrubIps200Response)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ScrubIpsDeleteGeoRuleCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.ScrubIpsDeleteRule200Response)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ScrubIpsDeleteRuleCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.ScrubIpsDeleteRule200Response)
		  
		End Sub
	#tag EndMethod




	#tag ViewBehavior
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Interface
#tag EndInterface
