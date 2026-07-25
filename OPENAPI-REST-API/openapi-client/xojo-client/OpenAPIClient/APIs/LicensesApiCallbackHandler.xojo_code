#tag Interface
Protected Interface LicensesApiCallbackHandler
	#tag Method, Flags = &h0
		Sub AddLicenseCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.ServiceOrderPostResponse)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetLicenseInfoCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.License)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetLicenseInvoicesCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.ChargeInvoiceRows)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetLicenseListCallback(status As OpenAPIClient.OpenAPIClientException, data() As OpenAPIClient.Models.LicenseRow)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetLicensesWelcomeEmailCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.SuccessTextResponse)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetNewLicenseCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.LicensesOrder)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub LicensesCancelCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.LicensesCancel200Response)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PostLicenseChangeIpCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.SuccessTextResponse)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PutLicensesCallback(status As OpenAPIClient.OpenAPIClientException)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub UpdateLicenseInfoCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.SuccessTextResponse)
		  
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
