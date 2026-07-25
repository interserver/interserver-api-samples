#tag Interface
Protected Interface QuickServersApiCallbackHandler
	#tag Method, Flags = &h0
		Sub AddQsCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.ServiceOrderPostResponse)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DeleteQsBackupCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.SuccessTextResponse)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DoQsBlockSmtpCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.QueueResponse)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DoQsDisableCdCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.QueueResponse)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DoQsDisableQuotaCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.QueueResponse)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DoQsEjectCdCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.QueueResponse)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DoQsEnableQuotaCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.QueueResponse)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DoQsRestartCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.QueueResponse)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DoQsStartCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.QueueResponse)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DoQsStopCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.QueueResponse)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DownloadQsBackupCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.DownloadQsBackup200Response)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetNewQsCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.QuickserverOrder)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetQsBackupCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.QueueResponse)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetQsBackupsCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As VpsBackupRows)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetQsChangeHostnameCallback(status As OpenAPIClient.OpenAPIClientException)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetQsChangeRootPasswordCallback(status As OpenAPIClient.OpenAPIClientException)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetQsChangeTimezoneCallback(status As OpenAPIClient.OpenAPIClientException, data() As String)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetQsChangeWebuzoPasswordCallback(status As OpenAPIClient.OpenAPIClientException)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetQsInfoCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.Quickserver)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetQsInsertCdCallback(status As OpenAPIClient.OpenAPIClientException)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetQsInvoicesCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.ChargeInvoiceRows)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetQsListCallback(status As OpenAPIClient.OpenAPIClientException, data() As OpenAPIClient.Models.QuickserverRow)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetQsReinstallOsCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.VpsTemplatesList)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetQsResetPasswordCallback(status As OpenAPIClient.OpenAPIClientException)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetQsReverseDnsCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.ReverseDnsEntries)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetQsSetupVncCallback(status As OpenAPIClient.OpenAPIClientException)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetQsTrafficUsageCallback(status As OpenAPIClient.OpenAPIClientException)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetQsViewDesktopCallback(status As OpenAPIClient.OpenAPIClientException)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetQsWelcomeEmailCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.TextResponse)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PostQsChangeHostnameCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.QueueResponse)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PostQsChangeRootPasswordCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.QueueResponse)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PostQsChangeTimezoneCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.QueueResponse)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PostQsChangeWebuzoPasswordCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.QueueResponse)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PostQsInsertCdCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.QueueResponse)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PostQsReinstallOsCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.QueueResponse)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PostQsResetPasswordCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.QueueResponse)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PostQsReverseDnsCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.TextResponse)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PostQsSetupVncCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.QueueResponse)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PostQsTrafficUsageCallback(status As OpenAPIClient.OpenAPIClientException)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PostQsViewDesktopCallback(status As OpenAPIClient.OpenAPIClientException)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PostQuickServerRestoreCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.QueueResponse)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PutQsCallback(status As OpenAPIClient.OpenAPIClientException)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub QuickserversCancelCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.QuickserversCancel200Response)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub UpdateQsInfoCallback(status As OpenAPIClient.OpenAPIClientException, Optional data As OpenAPIClient.Models.SuccessTextResponse)
		  
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
