#tag Module
Protected Module Models
	#tag Method, Flags = &h21
		Protected Function DnsRecordTypeToString(value As DnsRecordType) As String
		  Select Case value
		    Case DnsRecordType.A
		      Return "A"
		    Case DnsRecordType.A6
		      Return "A6"
		    Case DnsRecordType.Aaaa
		      Return "AAAA"
		    Case DnsRecordType.Afsdb
		      Return "AFSDB"
		    Case DnsRecordType.Alias
		      Return "ALIAS"
		    Case DnsRecordType.Caa
		      Return "CAA"
		    Case DnsRecordType.Cdnskey
		      Return "CDNSKEY"
		    Case DnsRecordType.Cds
		      Return "CDS"
		    Case DnsRecordType.Cert
		      Return "CERT"
		    Case DnsRecordType.Cname
		      Return "CNAME"
		    Case DnsRecordType.Dhcid
		      Return "DHCID"
		    Case DnsRecordType.Dlv
		      Return "DLV"
		    Case DnsRecordType.Dnskey
		      Return "DNSKEY"
		    Case DnsRecordType.Dname
		      Return "DNAME"
		    Case DnsRecordType.Ds
		      Return "DS"
		    Case DnsRecordType.Eui48
		      Return "EUI48"
		    Case DnsRecordType.Eui64
		      Return "EUI64"
		    Case DnsRecordType.Hinfo
		      Return "HINFO"
		    Case DnsRecordType.Ipseckey
		      Return "IPSECKEY"
		    Case DnsRecordType.Key
		      Return "KEY"
		    Case DnsRecordType.Kx
		      Return "KX"
		    Case DnsRecordType.Loc
		      Return "LOC"
		    Case DnsRecordType.Maila
		      Return "MAILA"
		    Case DnsRecordType.Mailb
		      Return "MAILB"
		    Case DnsRecordType.Minfo
		      Return "MINFO"
		    Case DnsRecordType.Mr
		      Return "MR"
		    Case DnsRecordType.Mx
		      Return "MX"
		    Case DnsRecordType.Naptr
		      Return "NAPTR"
		    Case DnsRecordType.Ns
		      Return "NS"
		    Case DnsRecordType.Nsec
		      Return "NSEC"
		    Case DnsRecordType.Nsec3
		      Return "NSEC3"
		    Case DnsRecordType.Nsec3param
		      Return "NSEC3PARAM"
		    Case DnsRecordType.Openpgpkey
		      Return "OPENPGPKEY"
		    Case DnsRecordType.Opt
		      Return "OPT"
		    Case DnsRecordType.Ptr
		      Return "PTR"
		    Case DnsRecordType.Rkey
		      Return "RKEY"
		    Case DnsRecordType.Rp
		      Return "RP"
		    Case DnsRecordType.Rrsig
		      Return "RRSIG"
		    Case DnsRecordType.Sig
		      Return "SIG"
		    Case DnsRecordType.Soa
		      Return "SOA"
		    Case DnsRecordType.Spf
		      Return "SPF"
		    Case DnsRecordType.Srv
		      Return "SRV"
		    Case DnsRecordType.Sshfp
		      Return "SSHFP"
		    Case DnsRecordType.Tlsa
		      Return "TLSA"
		    Case DnsRecordType.Tkey
		      Return "TKEY"
		    Case DnsRecordType.Tsig
		      Return "TSIG"
		    Case DnsRecordType.Txt
		      Return "TXT"
		    Case DnsRecordType.Wks
		      Return "WKS"
		    Case DnsRecordType.Uri
		      Return "URI⏎"
		    Case DnsRecordType.UnknownDefaultOpenApi
		      Return "unknown_default_open_api"
		    Case DnsRecordType.
		      Return ""
		  End Select
		  Return ""
		End Function
	#tag EndMethod


	#tag Enum, Name = DnsRecordType, Type = Integer, Flags = &h1
		
		A
		A6
		Aaaa
		Afsdb
		Alias
		Caa
		Cdnskey
		Cds
		Cert
		Cname
		Dhcid
		Dlv
		Dnskey
		Dname
		Ds
		Eui48
		Eui64
		Hinfo
		Ipseckey
		Key
		Kx
		Loc
		Maila
		Mailb
		Minfo
		Mr
		Mx
		Naptr
		Ns
		Nsec
		Nsec3
		Nsec3param
		Openpgpkey
		Opt
		Ptr
		Rkey
		Rp
		Rrsig
		Sig
		Soa
		Spf
		Srv
		Sshfp
		Tlsa
		Tkey
		Tsig
		Txt
		Wks
		Uri
		UnknownDefaultOpenApi
		Unknown
	#tag EndEnum


	#tag ViewBehavior
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
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
	#tag EndViewBehavior
End Module
#tag EndModule
