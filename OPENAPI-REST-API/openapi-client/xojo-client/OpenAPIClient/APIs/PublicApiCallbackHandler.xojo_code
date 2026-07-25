#tag Interface
Protected Interface PublicApiCallbackHandler
	#tag Method, Flags = &h0
		Sub GetAccountCurrenciesCallback(status As OpenAPIClient.OpenAPIClientException, data() As String)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetAccountLocalesCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As Dictionary)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetCaptchaCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.CaptchaResponse)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetCountriesCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As Object)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetInfoCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.ServicesInfo)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetLoginInfoCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.LoginInfo)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetMPServersCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As BuyItNowList)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetOauthRedirectCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.GetOauthRedirect200Response)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetTimezonesCallback(status As OpenAPIClient.OpenAPIClientException, data() As String)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PatchOauthTwoFactorCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.PatchOauthTwoFactor200Response)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PingServerCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As String)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PostOauthCallbackCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.PostOauthCallback200Response)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SubmitLoginCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.LoginSuccessResponse)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SubmitSignupCallback(status As OpenAPIClient.OpenAPIClientException)
		  
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
