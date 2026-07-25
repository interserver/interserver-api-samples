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
  public class InlineResponse20019Ips {
    /// <summary>
    /// Gets or Sets ServiceId
    /// </summary>
    [DataMember(Name="service_id", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "service_id")]
    public decimal? ServiceId { get; set; }

    /// <summary>
    /// Gets or Sets ServiceModule
    /// </summary>
    [DataMember(Name="service_module", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "service_module")]
    public string ServiceModule { get; set; }

    /// <summary>
    /// Gets or Sets ServiceHostname
    /// </summary>
    [DataMember(Name="service_hostname", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "service_hostname")]
    public string ServiceHostname { get; set; }


    /// <summary>
    /// Get the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class InlineResponse20019Ips {\n");
      sb.Append("  ServiceId: ").Append(ServiceId).Append("\n");
      sb.Append("  ServiceModule: ").Append(ServiceModule).Append("\n");
      sb.Append("  ServiceHostname: ").Append(ServiceHostname).Append("\n");
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
