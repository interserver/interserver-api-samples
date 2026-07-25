using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;
using System.Runtime.Serialization;
using Newtonsoft.Json;

namespace IO.Swagger.Model {

  /// <summary>
  /// Request body to validate (putSsl) or place (addSsl) an SSL certificate order. Contact fields default from the account if omitted. Package ids come from getNewSsl.serviceTypes.
  /// </summary>
  [DataContract]
  public class SslOrderRequest {
    /// <summary>
    /// SSL package service type id from getNewSsl.serviceTypes.
    /// </summary>
    /// <value>SSL package service type id from getNewSsl.serviceTypes.</value>
    [DataMember(Name="ssl", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "ssl")]
    public int? Ssl { get; set; }

    /// <summary>
    /// Domain the certificate is issued for. Wildcard certs require *.domain.com format.
    /// </summary>
    /// <value>Domain the certificate is issued for. Wildcard certs require *.domain.com format.</value>
    [DataMember(Name="hostname", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "hostname")]
    public string Hostname { get; set; }

    /// <summary>
    /// Domain-control approver email (required for all SSL orders).
    /// </summary>
    /// <value>Domain-control approver email (required for all SSL orders).</value>
    [DataMember(Name="approver_email", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "approver_email")]
    public string ApproverEmail { get; set; }

    /// <summary>
    /// Billing frequency in months (12, 24, or 36).
    /// </summary>
    /// <value>Billing frequency in months (12, 24, or 36).</value>
    [DataMember(Name="frequency", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "frequency")]
    public int? Frequency { get; set; }

    /// <summary>
    /// Coupon code.
    /// </summary>
    /// <value>Coupon code.</value>
    [DataMember(Name="coupon", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "coupon")]
    public string Coupon { get; set; }

    /// <summary>
    /// Whether the CSR is server-generated or customer-provided.
    /// </summary>
    /// <value>Whether the CSR is server-generated or customer-provided.</value>
    [DataMember(Name="csr_type", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "csr_type")]
    public string CsrType { get; set; }

    /// <summary>
    /// PEM-encoded CSR (>= 2048-bit) when csr_type=provided.
    /// </summary>
    /// <value>PEM-encoded CSR (>= 2048-bit) when csr_type=provided.</value>
    [DataMember(Name="csr", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "csr")]
    public string Csr { get; set; }

    /// <summary>
    /// Contact first name (defaults from account).
    /// </summary>
    /// <value>Contact first name (defaults from account).</value>
    [DataMember(Name="firstname", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "firstname")]
    public string Firstname { get; set; }

    /// <summary>
    /// Contact last name (defaults from account).
    /// </summary>
    /// <value>Contact last name (defaults from account).</value>
    [DataMember(Name="lastname", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "lastname")]
    public string Lastname { get; set; }

    /// <summary>
    /// Contact email (defaults from account).
    /// </summary>
    /// <value>Contact email (defaults from account).</value>
    [DataMember(Name="email", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "email")]
    public string Email { get; set; }

    /// <summary>
    /// Contact address (defaults from account).
    /// </summary>
    /// <value>Contact address (defaults from account).</value>
    [DataMember(Name="address", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "address")]
    public string Address { get; set; }

    /// <summary>
    /// Contact city (defaults from account).
    /// </summary>
    /// <value>Contact city (defaults from account).</value>
    [DataMember(Name="city", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "city")]
    public string City { get; set; }

    /// <summary>
    /// Contact state/region (defaults from account).
    /// </summary>
    /// <value>Contact state/region (defaults from account).</value>
    [DataMember(Name="state", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "state")]
    public string State { get; set; }

    /// <summary>
    /// Contact postal code (defaults from account).
    /// </summary>
    /// <value>Contact postal code (defaults from account).</value>
    [DataMember(Name="zip", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "zip")]
    public string Zip { get; set; }

    /// <summary>
    /// Contact country (defaults from account).
    /// </summary>
    /// <value>Contact country (defaults from account).</value>
    [DataMember(Name="country", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "country")]
    public string Country { get; set; }

    /// <summary>
    /// Contact phone (defaults from account).
    /// </summary>
    /// <value>Contact phone (defaults from account).</value>
    [DataMember(Name="phone", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "phone")]
    public string Phone { get; set; }

    /// <summary>
    /// Contact company/organization (defaults from account).
    /// </summary>
    /// <value>Contact company/organization (defaults from account).</value>
    [DataMember(Name="company", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "company")]
    public string Company { get; set; }

    /// <summary>
    /// Contact department (defaults to Administration).
    /// </summary>
    /// <value>Contact department (defaults to Administration).</value>
    [DataMember(Name="department", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "department")]
    public string Department { get; set; }

    /// <summary>
    /// EV certificate incorporating agency (only for EV packages).
    /// </summary>
    /// <value>EV certificate incorporating agency (only for EV packages).</value>
    [DataMember(Name="agency", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "agency")]
    public string Agency { get; set; }

    /// <summary>
    /// EV certificate business category (only for EV packages).
    /// </summary>
    /// <value>EV certificate business category (only for EV packages).</value>
    [DataMember(Name="business_category", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "business_category")]
    public string BusinessCategory { get; set; }


    /// <summary>
    /// Get the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class SslOrderRequest {\n");
      sb.Append("  Ssl: ").Append(Ssl).Append("\n");
      sb.Append("  Hostname: ").Append(Hostname).Append("\n");
      sb.Append("  ApproverEmail: ").Append(ApproverEmail).Append("\n");
      sb.Append("  Frequency: ").Append(Frequency).Append("\n");
      sb.Append("  Coupon: ").Append(Coupon).Append("\n");
      sb.Append("  CsrType: ").Append(CsrType).Append("\n");
      sb.Append("  Csr: ").Append(Csr).Append("\n");
      sb.Append("  Firstname: ").Append(Firstname).Append("\n");
      sb.Append("  Lastname: ").Append(Lastname).Append("\n");
      sb.Append("  Email: ").Append(Email).Append("\n");
      sb.Append("  Address: ").Append(Address).Append("\n");
      sb.Append("  City: ").Append(City).Append("\n");
      sb.Append("  State: ").Append(State).Append("\n");
      sb.Append("  Zip: ").Append(Zip).Append("\n");
      sb.Append("  Country: ").Append(Country).Append("\n");
      sb.Append("  Phone: ").Append(Phone).Append("\n");
      sb.Append("  Company: ").Append(Company).Append("\n");
      sb.Append("  Department: ").Append(Department).Append("\n");
      sb.Append("  Agency: ").Append(Agency).Append("\n");
      sb.Append("  BusinessCategory: ").Append(BusinessCategory).Append("\n");
      sb.Append("}\n");
      return sb.ToString();
    }

    /// <summary>
    /// Get the JSON string presentation of the object
    /// </summary>
    /// <returns>JSON string presentation of the object</returns>
    public string ToJson() {
      return JsonConvert.SerializeObject(this, Formatting.Indented);
    }

}
}
