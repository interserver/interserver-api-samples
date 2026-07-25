#tag Interface
Protected Interface BillingApiCallbackHandler
	#tag Method, Flags = &h0
		Sub AddBillingCreditCardCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.SuccessTextResponse)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AddBillingPrepayCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.SuccessTextResponse)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DeleteBillingCreditCardCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.SuccessTextResponse)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DeleteBillingInvoiceCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.SuccessTextResponse)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DeleteBillingPrepayCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.SuccessTextResponse)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetAffiliateBannersCallback(status As OpenAPIClient.OpenAPIClientException, data() As OpenAPIClient.Models.AffiliateBannerRow)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetAffiliateDownloadCallback(status As OpenAPIClient.OpenAPIClientException)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetAffiliateRichReportCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.TextResponse)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetAffiliateSalesGraphCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.StatusMonthlyBreakdown)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetAffiliateSignupsCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.GetAffiliateSignups200Response)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetAffiliateTrafficGraphCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As MonthlyCounts)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetAffiliateWebTrafficCallback(status As OpenAPIClient.OpenAPIClientException, data() As OpenAPIClient.Models.AffiliateTrafficRow)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetBillingCartCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As Object)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetBillingCreditCardVerifyCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.SuccessTextResponse)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetBillingInvoiceCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As BillingInvoiceDetail)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetBillingInvoicesCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.BillingInvoiceList)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetBillingPrePaysCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As Object)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub InitiatePaymentCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.InitiatePayment200Response)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PatchBillingCreditCardVerifyCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.SuccessTextResponse)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PostBillingCreditCardVerifyCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.SuccessTextResponse)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub UpdateAffiliateDockSetupCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.TextResponse)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub UpdateAffiliatePaymentSetupCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.TextResponse)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub UpdateBillingCreditCardCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.SuccessTextResponse)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub UpdateBillingPaymentMethodCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.SuccessTextResponse)
		  
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
