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
  public class InlineResponse20013ServiceInfo {
    /// <summary>
    /// Gets or Sets ScrubIpId
    /// </summary>
    [DataMember(Name="scrub_ip_id", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "scrub_ip_id")]
    public string ScrubIpId { get; set; }

    /// <summary>
    /// Gets or Sets ScrubIpType
    /// </summary>
    [DataMember(Name="scrub_ip_type", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "scrub_ip_type")]
    public string ScrubIpType { get; set; }

    /// <summary>
    /// Gets or Sets ScrubIpCustid
    /// </summary>
    [DataMember(Name="scrub_ip_custid", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "scrub_ip_custid")]
    public string ScrubIpCustid { get; set; }

    /// <summary>
    /// Gets or Sets ScrubIpOrderDate
    /// </summary>
    [DataMember(Name="scrub_ip_order_date", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "scrub_ip_order_date")]
    public string ScrubIpOrderDate { get; set; }

    /// <summary>
    /// Gets or Sets ScrubIpIp
    /// </summary>
    [DataMember(Name="scrub_ip_ip", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "scrub_ip_ip")]
    public string ScrubIpIp { get; set; }

    /// <summary>
    /// Gets or Sets ScrubIpServiceId
    /// </summary>
    [DataMember(Name="scrub_ip_service_id", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "scrub_ip_service_id")]
    public string ScrubIpServiceId { get; set; }

    /// <summary>
    /// Gets or Sets ScrubIpServiceModule
    /// </summary>
    [DataMember(Name="scrub_ip_service_module", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "scrub_ip_service_module")]
    public string ScrubIpServiceModule { get; set; }

    /// <summary>
    /// Gets or Sets ScrubIpStatus
    /// </summary>
    [DataMember(Name="scrub_ip_status", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "scrub_ip_status")]
    public string ScrubIpStatus { get; set; }

    /// <summary>
    /// Gets or Sets ScrubIpInvoice
    /// </summary>
    [DataMember(Name="scrub_ip_invoice", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "scrub_ip_invoice")]
    public string ScrubIpInvoice { get; set; }

    /// <summary>
    /// Gets or Sets ScrubIpCurrency
    /// </summary>
    [DataMember(Name="scrub_ip_currency", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "scrub_ip_currency")]
    public string ScrubIpCurrency { get; set; }

    /// <summary>
    /// Gets or Sets ScrubIpCoupon
    /// </summary>
    [DataMember(Name="scrub_ip_coupon", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "scrub_ip_coupon")]
    public string ScrubIpCoupon { get; set; }

    /// <summary>
    /// Gets or Sets ScrubIpComment
    /// </summary>
    [DataMember(Name="scrub_ip_comment", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "scrub_ip_comment")]
    public string ScrubIpComment { get; set; }


    /// <summary>
    /// Get the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class InlineResponse20013ServiceInfo {\n");
      sb.Append("  ScrubIpId: ").Append(ScrubIpId).Append("\n");
      sb.Append("  ScrubIpType: ").Append(ScrubIpType).Append("\n");
      sb.Append("  ScrubIpCustid: ").Append(ScrubIpCustid).Append("\n");
      sb.Append("  ScrubIpOrderDate: ").Append(ScrubIpOrderDate).Append("\n");
      sb.Append("  ScrubIpIp: ").Append(ScrubIpIp).Append("\n");
      sb.Append("  ScrubIpServiceId: ").Append(ScrubIpServiceId).Append("\n");
      sb.Append("  ScrubIpServiceModule: ").Append(ScrubIpServiceModule).Append("\n");
      sb.Append("  ScrubIpStatus: ").Append(ScrubIpStatus).Append("\n");
      sb.Append("  ScrubIpInvoice: ").Append(ScrubIpInvoice).Append("\n");
      sb.Append("  ScrubIpCurrency: ").Append(ScrubIpCurrency).Append("\n");
      sb.Append("  ScrubIpCoupon: ").Append(ScrubIpCoupon).Append("\n");
      sb.Append("  ScrubIpComment: ").Append(ScrubIpComment).Append("\n");
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
