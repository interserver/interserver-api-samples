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
  public class ServerBulkIpmiPowerResponseResults {
    /// <summary>
    /// Server ID this result corresponds to.
    /// </summary>
    /// <value>Server ID this result corresponds to.</value>
    [DataMember(Name="id", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "id")]
    public int? Id { get; set; }

    /// <summary>
    /// Asset ID that was queried for the server (omitted on errors before asset selection).
    /// </summary>
    /// <value>Asset ID that was queried for the server (omitted on errors before asset selection).</value>
    [DataMember(Name="asset", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "asset")]
    public int? Asset { get; set; }

    /// <summary>
    /// IPMI power-status output for this server.
    /// </summary>
    /// <value>IPMI power-status output for this server.</value>
    [DataMember(Name="text", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "text")]
    public string Text { get; set; }

    /// <summary>
    /// Error message for this server, if processing failed (mutually exclusive with `text`).
    /// </summary>
    /// <value>Error message for this server, if processing failed (mutually exclusive with `text`).</value>
    [DataMember(Name="error", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "error")]
    public string Error { get; set; }


    /// <summary>
    /// Get the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class ServerBulkIpmiPowerResponseResults {\n");
      sb.Append("  Id: ").Append(Id).Append("\n");
      sb.Append("  Asset: ").Append(Asset).Append("\n");
      sb.Append("  Text: ").Append(Text).Append("\n");
      sb.Append("  Error: ").Append(Error).Append("\n");
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
