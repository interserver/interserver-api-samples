using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;
using System.Runtime.Serialization;
using Newtonsoft.Json;

namespace IO.Swagger.Model {

  /// <summary>
  /// 
  /// </summary>
  [DataContract]
  public class InlineResponse20013BillingDetails {
    /// <summary>
    /// Gets or Sets ServiceLastInvoiceDate
    /// </summary>
    [DataMember(Name="service_last_invoice_date", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "service_last_invoice_date")]
    public string ServiceLastInvoiceDate { get; set; }

    /// <summary>
    /// Gets or Sets ServicePaymentStatus
    /// </summary>
    [DataMember(Name="service_payment_status", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "service_payment_status")]
    public string ServicePaymentStatus { get; set; }

    /// <summary>
    /// Gets or Sets ServiceFrequency
    /// </summary>
    [DataMember(Name="service_frequency", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "service_frequency")]
    public string ServiceFrequency { get; set; }

    /// <summary>
    /// Gets or Sets NextDate
    /// </summary>
    [DataMember(Name="next_date", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "next_date")]
    public string NextDate { get; set; }

    /// <summary>
    /// Gets or Sets ServiceNextInvoiceDate
    /// </summary>
    [DataMember(Name="service_next_invoice_date", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "service_next_invoice_date")]
    public string ServiceNextInvoiceDate { get; set; }

    /// <summary>
    /// Gets or Sets ServiceCurrency
    /// </summary>
    [DataMember(Name="service_currency", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "service_currency")]
    public string ServiceCurrency { get; set; }

    /// <summary>
    /// Gets or Sets ServiceCurrencySymbol
    /// </summary>
    [DataMember(Name="service_currency_symbol", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "service_currency_symbol")]
    public string ServiceCurrencySymbol { get; set; }

    /// <summary>
    /// Gets or Sets ServiceCostInfo
    /// </summary>
    [DataMember(Name="service_cost_info", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "service_cost_info")]
    public string ServiceCostInfo { get; set; }


    /// <summary>
    /// Get the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class InlineResponse20013BillingDetails {\n");
      sb.Append("  ServiceLastInvoiceDate: ").Append(ServiceLastInvoiceDate).Append("\n");
      sb.Append("  ServicePaymentStatus: ").Append(ServicePaymentStatus).Append("\n");
      sb.Append("  ServiceFrequency: ").Append(ServiceFrequency).Append("\n");
      sb.Append("  NextDate: ").Append(NextDate).Append("\n");
      sb.Append("  ServiceNextInvoiceDate: ").Append(ServiceNextInvoiceDate).Append("\n");
      sb.Append("  ServiceCurrency: ").Append(ServiceCurrency).Append("\n");
      sb.Append("  ServiceCurrencySymbol: ").Append(ServiceCurrencySymbol).Append("\n");
      sb.Append("  ServiceCostInfo: ").Append(ServiceCostInfo).Append("\n");
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
