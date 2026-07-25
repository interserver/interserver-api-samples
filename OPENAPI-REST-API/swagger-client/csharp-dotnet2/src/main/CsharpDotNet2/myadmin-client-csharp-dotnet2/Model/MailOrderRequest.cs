using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;
using System.Runtime.Serialization;
using Newtonsoft.Json;

namespace IO.Swagger.Model {

  /// <summary>
  /// Request body to validate (putMail) or place (addMail) a mail order. Service type ids come from getNewMail.serviceTypes.
  /// </summary>
  [DataContract]
  public class MailOrderRequest {
    /// <summary>
    /// Mail plan service type id from getNewMail.serviceTypes (must be buyable).
    /// </summary>
    /// <value>Mail plan service type id from getNewMail.serviceTypes (must be buyable).</value>
    [DataMember(Name="serviceType", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "serviceType")]
    public int? ServiceType { get; set; }

    /// <summary>
    /// Coupon code.
    /// </summary>
    /// <value>Coupon code.</value>
    [DataMember(Name="coupon", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "coupon")]
    public string Coupon { get; set; }

    /// <summary>
    /// Free-form note saved on the service row (used on addMail).
    /// </summary>
    /// <value>Free-form note saved on the service row (used on addMail).</value>
    [DataMember(Name="comment", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "comment")]
    public string Comment { get; set; }


    /// <summary>
    /// Get the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class MailOrderRequest {\n");
      sb.Append("  ServiceType: ").Append(ServiceType).Append("\n");
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
