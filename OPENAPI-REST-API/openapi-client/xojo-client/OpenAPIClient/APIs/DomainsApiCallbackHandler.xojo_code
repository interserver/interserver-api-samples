#tag Interface
Protected Interface DomainsApiCallbackHandler
	#tag Method, Flags = &h0
		Sub AddDomainCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.ServiceOrderPostResponse)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AddDomainDnssecCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.SuccessTextResponse)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AddDomainNameserverCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.TextResponse)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub CancelDomainCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.CancelDomain200Response)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DeleteDomainDnssecCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.SuccessTextResponse)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DeleteDomainNameserverCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.TextResponse)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetDomainContactCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.DomainContactDetails)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetDomainDnssecCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As DomainDnssecRecords)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetDomainInfoCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.Domain)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetDomainInvoicesCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.ChargeInvoiceRows)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetDomainLookupCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.DomainLookupResponse)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetDomainNameserversCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As DomainNameserverGetResponse)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetDomainRenewalCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.SuccessTextResponse)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetDomainSearchCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.DomainSearchResponse)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetDomainTransferCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.SuccessTextResponse)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetDomainWhoisPrivacyCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.SuccessTextResponse)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetDomainsListCallback(status As OpenAPIClient.OpenAPIClientException, data() As OpenAPIClient.Models.DomainRow)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetDomainsWelcomeEmailCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.SuccessTextResponse)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetNewDomainCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.DomainOrder)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PatchDomainsCallback(status As OpenAPIClient.OpenAPIClientException)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PostDomainRenewalCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.SuccessTextResponse)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PostDomainSearchCallback(status As OpenAPIClient.OpenAPIClientException)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PostDomainTransferCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.SuccessTextResponse)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PutDomainsCallback(status As OpenAPIClient.OpenAPIClientException)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub UpdateDomainContactCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.SuccessTextResponse)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub UpdateDomainInfoCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.SuccessTextResponse)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub UpdateDomainNameserversCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.TextResponse)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub UpdateDomainWhoisPrivacyCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.SuccessTextResponse)
		  
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
