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
  public class InlineResponse20013ExtraInfoTables {
    /// <summary>
    /// Gets or Sets ScrubIps
    /// </summary>
    [DataMember(Name="scrub_ips", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "scrub_ips")]
    public InlineResponse20013ExtraInfoTablesScrubIps ScrubIps { get; set; }


    /// <summary>
    /// Get the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class InlineResponse20013ExtraInfoTables {\n");
      sb.Append("  ScrubIps: ").Append(ScrubIps).Append("\n");
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
