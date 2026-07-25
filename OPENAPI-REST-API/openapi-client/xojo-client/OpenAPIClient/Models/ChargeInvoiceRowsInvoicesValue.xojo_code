#tag Class
Protected Class ChargeInvoiceRowsInvoicesValue

	#tag Property, Flags = &h0
		#tag Note
			Unique invoice ID.
		#tag EndNote
		invoices_id As Xoson.O.OptionalDouble
	#tag EndProperty


	#tag Property, Flags = &h0
		#tag Note
			Description of the invoice charge.
		#tag EndNote
		invoices_description As Xoson.O.OptionalString
	#tag EndProperty


	#tag Property, Flags = &h0
		#tag Note
			Invoice amount.
		#tag EndNote
		invoices_amount As Xoson.O.OptionalDouble
	#tag EndProperty


	#tag Property, Flags = &h0
		#tag Note
			Invoice date.
		#tag EndNote
		invoices_date As Xoson.O.OptionalString
	#tag EndProperty


	#tag Property, Flags = &h0
		invoices_paid As Xoson.O.OptionalDouble
	#tag EndProperty


	#tag Property, Flags = &h0
		invoices_due_date As Xoson.O.OptionalString
	#tag EndProperty


	#tag Property, Flags = &h0
		invoices_currency As Xoson.O.OptionalString
	#tag EndProperty


	#tag Property, Flags = &h0
		currency_symbol As Xoson.O.OptionalString
	#tag EndProperty


	#tag Property, Flags = &h0
		invoices_date_formatted As Xoson.O.OptionalString
	#tag EndProperty


	#tag Property, Flags = &h0
		#tag Note
			This is optional when invoices_paid = 1 this array will show
		#tag EndNote
		paid_invoices As Dictionary
	#tag EndProperty


    #tag Enum, Name = Invoices_paidEnum, Type = Integer, Flags = &h0
        
        Escaped0
        Escaped1
        UnknownDefaultOpenApi
        Unknown
    #tag EndEnum


	#tag Method, Flags = &h0
		Shared Function Invoices_paidEnumToString(value As Invoices_paidEnum) As String
		  Select Case value
		    
		    Case Invoices_paidEnum.Escaped0
		      Return "0"
		    Case Invoices_paidEnum.Escaped1
		      Return "1"
		    Case Invoices_paidEnum.UnknownDefaultOpenApi
		      Return "11184809"
		    Case 
		      Return ""
		  End Select
		  Return ""
		End Function
	#tag EndMethod


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
			Name="invoices_id"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="invoices_description"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="invoices_amount"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="invoices_date"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="invoices_due_date"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="invoices_currency"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="currency_symbol"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="invoices_date_formatted"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="paid_invoices"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Dictionary"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass


