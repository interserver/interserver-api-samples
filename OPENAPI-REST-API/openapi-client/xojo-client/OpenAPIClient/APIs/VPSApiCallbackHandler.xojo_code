#tag Interface
Protected Interface VPSApiCallbackHandler
	#tag Method, Flags = &h0
		Sub AddVpsCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.ServiceOrderPostResponse)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DeleteVpsBackupCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.SuccessTextResponse)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DoVpsBlockSmtpCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.QueueResponse)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DoVpsDisableCdCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.QueueResponse)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DoVpsDisableQuotaCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.QueueResponse)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DoVpsEjectCdCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.QueueResponse)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DoVpsEnableQuotaCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.QueueResponse)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DoVpsRestartCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.QueueResponse)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DoVpsStartCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.QueueResponse)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DoVpsStopCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.QueueResponse)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DownloadVpsBackupCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.DownloadQsBackup200Response)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetNewVpsCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.VpsOrder)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetVpsBackupCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.QueueResponse)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetVpsBackupsCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As VpsBackupRows)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetVpsBuyHdSpaceCallback(status As OpenAPIClient.OpenAPIClientException)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetVpsBuyIpCallback(status As OpenAPIClient.OpenAPIClientException)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetVpsChangeHostnameCallback(status As OpenAPIClient.OpenAPIClientException)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetVpsChangeRootPasswordCallback(status As OpenAPIClient.OpenAPIClientException)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetVpsChangeTimezoneCallback(status As OpenAPIClient.OpenAPIClientException, data() As String)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetVpsInfoCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.Vps)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetVpsInsertCdCallback(status As OpenAPIClient.OpenAPIClientException)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetVpsInvoicesCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.ChargeInvoiceRows)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetVpsListCallback(status As OpenAPIClient.OpenAPIClientException, data() As OpenAPIClient.Models.VpsRow)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetVpsReinstallOsCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.VpsTemplatesList)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetVpsResetPasswordCallback(status As OpenAPIClient.OpenAPIClientException)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetVpsReverseDnsCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.ReverseDnsEntries)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetVpsSetupVncCallback(status As OpenAPIClient.OpenAPIClientException)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetVpsSlicesCallback(status As OpenAPIClient.OpenAPIClientException)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetVpsTrafficUsageCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.VpsTrafficResponse)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetVpsViewDesktopCallback(status As OpenAPIClient.OpenAPIClientException)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetVpsWelcomeEmailCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.SuccessTextResponse)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PostVpsBuyHdSpaceCallback(status As OpenAPIClient.OpenAPIClientException)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PostVpsBuyIpCallback(status As OpenAPIClient.OpenAPIClientException)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PostVpsChangeHostnameCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.QueueResponse)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PostVpsChangeRootPasswordCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.QueueResponse)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PostVpsChangeTimezoneCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.QueueResponse)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PostVpsChangeWebuzoPasswordCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.QueueResponse)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PostVpsInsertCdCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.QueueResponse)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PostVpsReinstallOsCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.QueueResponse)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PostVpsResetPasswordCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.QueueResponse)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PostVpsRestoreCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.QueueResponse)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PostVpsReverseDnsCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.TextResponse)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PostVpsSetupVncCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.QueueResponse)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PostVpsSlicesCallback(status As OpenAPIClient.OpenAPIClientException)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PostVpsTrafficUsageCallback(status As OpenAPIClient.OpenAPIClientException)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PostVpsViewDesktopCallback(status As OpenAPIClient.OpenAPIClientException)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PutVpsCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.VpsOrderPutResponse)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PutVpsBuyHdSpaceCallback(status As OpenAPIClient.OpenAPIClientException)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub UpdateVpsInfoCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.SuccessTextResponse)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub VPSCancelCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.VPSCancel200Response)
		  
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
