#tag Interface
Protected Interface ServersApiCallbackHandler
	#tag Method, Flags = &h0
		Sub AddServerCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.AddServer200Response)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub BuyItNowServerOrderCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.BuyItNowServerOrder200Response)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetMPServersCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As BuyItNowList)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetNewServerCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.ServerOrder)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetServerInfoCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.Server)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetServerInvoicesCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.ChargeInvoiceRows)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetServerListCallback(status As OpenAPIClient.OpenAPIClientException, data() As OpenAPIClient.Models.ServerRow)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetServerReverseDnsCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.ReverseDnsEntries)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetServersWelcomeEmailCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.SuccessTextResponse)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PlaceBuyNowServerCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.ServersBuyNowResponse)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PostServerReverseDnsCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.TextResponse)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ServerBulkIpmiPowerGetCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.ServerBulkIpmiPowerResponse)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ServerIpmiLiveGetCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.ServerIpmiLiveInfo)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ServerIpmiLivePostCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.ServerIpmiLiveInfo)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ServerIpmiPowerGetCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.TextResponse)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ServerIpmiPowerPostCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.TextResponse)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ServersCancelCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.ServersCancel200Response)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub UpdateServerInfoCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.SuccessTextResponse)
		  
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
