using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;
using System.Runtime.Serialization;
using Newtonsoft.Json;

namespace IO.Swagger.Model {

  /// <summary>
  /// Request body to validate (putLicenses) or place (addLicense) a license order. Package ids come from getNewLicense.serviceTypes.
  /// </summary>
  [DataContract]
  public class LicenseOrderRequest {
    /// <summary>
    /// License service type id from getNewLicense.serviceTypes (must be buyable).
    /// </summary>
    /// <value>License service type id from getNewLicense.serviceTypes (must be buyable).</value>
    [DataMember(Name="package", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "package")]
    public int? Package { get; set; }

    /// <summary>
    /// IP address the license is bound to.
    /// </summary>
    /// <value>IP address the license is bound to.</value>
    [DataMember(Name="ip", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "ip")]
    public string Ip { get; set; }

    /// <summary>
    /// Terms-of-service acceptance. Must be true to place the order.
    /// </summary>
    /// <value>Terms-of-service acceptance. Must be true to place the order.</value>
    [DataMember(Name="tos", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "tos")]
    public bool? Tos { get; set; }

    /// <summary>
    /// Billing frequency in months.
    /// </summary>
    /// <value>Billing frequency in months.</value>
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
    /// Free-form note saved on the service row.
    /// </summary>
    /// <value>Free-form note saved on the service row.</value>
    [DataMember(Name="comment", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "comment")]
    public string Comment { get; set; }


    /// <summary>
    /// Get the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class LicenseOrderRequest {\n");
      sb.Append("  Package: ").Append(Package).Append("\n");
      sb.Append("  Ip: ").Append(Ip).Append("\n");
      sb.Append("  Tos: ").Append(Tos).Append("\n");
      sb.Append("  Frequency: ").Append(Frequency).Append("\n");
      sb.Append("  Coupon: ").Append(Coupon).Append("\n");
      sb.Append("  Comment: ").Append(Comment).Append("\n");
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
