using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;
using System.Runtime.Serialization;
using Newtonsoft.Json;

namespace IO.Swagger.Model {

  /// <summary>
  /// request to validate a webhosting order
  /// </summary>
  [DataContract]
  public class WebsiteOrderPutRequest {
    /// <summary>
    /// Primary FQDN for the website. Must pass valid_hostname() and the keyword blocklist.
    /// </summary>
    /// <value>Primary FQDN for the website. Must pass valid_hostname() and the keyword blocklist.</value>
    [DataMember(Name="hostname", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "hostname")]
    public string Hostname { get; set; }

    /// <summary>
    /// Plan id from getNewWebsite.serviceTypes[].services_id (must be buyable).
    /// </summary>
    /// <value>Plan id from getNewWebsite.serviceTypes[].services_id (must be buyable).</value>
    [DataMember(Name="packageId", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "packageId")]
    public int? PackageId { get; set; }

    /// <summary>
    /// Control-panel admin password. If blank, a random password is generated server-side.
    /// </summary>
    /// <value>Control-panel admin password. If blank, a random password is generated server-side.</value>
    [DataMember(Name="rootpass", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "rootpass")]
    public string Rootpass { get; set; }

    /// <summary>
    /// Billing cycle in months (1 / 6 / 12 / 24 / 36).
    /// </summary>
    /// <value>Billing cycle in months (1 / 6 / 12 / 24 / 36).</value>
    [DataMember(Name="period", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "period")]
    public int? Period { get; set; }

    /// <summary>
    /// Coupon code.
    /// </summary>
    /// <value>Coupon code.</value>
    [DataMember(Name="coupon", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "coupon")]
    public string Coupon { get; set; }

    /// <summary>
    /// Promo bundle id from getNewWebsite.serviceOffers.
    /// </summary>
    /// <value>Promo bundle id from getNewWebsite.serviceOffers.</value>
    [DataMember(Name="serviceOfferId", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "serviceOfferId")]
    public int? ServiceOfferId { get; set; }

    /// <summary>
    /// Auto-installer id (0 = none).
    /// </summary>
    /// <value>Auto-installer id (0 = none).</value>
    [DataMember(Name="script", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "script")]
    public int? Script { get; set; }

    /// <summary>
    /// Free-form note saved on the service row.
    /// </summary>
    /// <value>Free-form note saved on the service row.</value>
    [DataMember(Name="comment", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "comment")]
    public string Comment { get; set; }

    /// <summary>
    /// When true and enableDomainRegistering=true from the catalog, also registers/transfers the domain through the order.
    /// </summary>
    /// <value>When true and enableDomainRegistering=true from the catalog, also registers/transfers the domain through the order.</value>
    [DataMember(Name="registerDomain", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "registerDomain")]
    public bool? RegisterDomain { get; set; }


    /// <summary>
    /// Get the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class WebsiteOrderPutRequest {\n");
      sb.Append("  Hostname: ").Append(Hostname).Append("\n");
      sb.Append("  PackageId: ").Append(PackageId).Append("\n");
      sb.Append("  Rootpass: ").Append(Rootpass).Append("\n");
      sb.Append("  Period: ").Append(Period).Append("\n");
      sb.Append("  Coupon: ").Append(Coupon).Append("\n");
      sb.Append("  ServiceOfferId: ").Append(ServiceOfferId).Append("\n");
      sb.Append("  Script: ").Append(Script).Append("\n");
      sb.Append("  Comment: ").Append(Comment).Append("\n");
      sb.Append("  RegisterDomain: ").Append(RegisterDomain).Append("\n");
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
