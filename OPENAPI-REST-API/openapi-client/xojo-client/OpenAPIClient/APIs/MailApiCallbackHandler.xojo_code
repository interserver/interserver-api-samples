#tag Interface
Protected Interface MailApiCallbackHandler
	#tag Method, Flags = &h0
		Sub AddMailCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.ServiceOrderPostResponse)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AddRuleCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.GenericResponse)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub CreateMailAlertCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.SuccessTextResponse)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DeleteMailAlertCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.SuccessTextResponse)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DeleteRuleCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.GenericResponse)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DelistBlockCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.GenericResponse)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetMailAlertsCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As MailAlertsResponse)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetMailBlocksCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.MailBlocks)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetMailDelistCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.MailDelistResponse)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetMailDeliverabilityCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.MailDeliverabilityResponse)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetMailInfoCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.MailSchema)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetMailInvoicesCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.ChargeInvoiceRows)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetMailListCallback(status As OpenAPIClient.OpenAPIClientException, data() As OpenAPIClient.Models.MailRow)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetMailWelcomeEmailCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.SuccessTextResponse)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetNewMailCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.MailOrder)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetRulesCallback(status As OpenAPIClient.OpenAPIClientException, data() As OpenAPIClient.Models.DenyRuleRecord)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetStatsCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.MailStatsType)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MailCancelCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.MailCancel200Response)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PostMailDelistCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.SuccessTextResponse)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PutMailCallback(status As OpenAPIClient.OpenAPIClientException)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ResetMailPasswordCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.SuccessTextResponse)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SendAdvMailCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.GenericResponse)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SendMailCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.GenericResponse)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub UpdateMailAlertCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.SuccessTextResponse)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub UpdateMailInfoCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.SuccessTextResponse)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub UpdateRuleCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.GenericResponse)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ViewMailLogCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.MailLog)
		  
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
