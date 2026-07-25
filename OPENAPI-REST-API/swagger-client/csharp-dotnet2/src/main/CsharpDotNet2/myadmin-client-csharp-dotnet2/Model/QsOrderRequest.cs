using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;
using System.Runtime.Serialization;
using Newtonsoft.Json;

namespace IO.Swagger.Model {

  /// <summary>
  /// Request body to validate (putQs) or place (addQs) a QuickServer order. Server and OS template come from getNewQs.
  /// </summary>
  [DataContract]
  public class QsOrderRequest {
    /// <summary>
    /// QuickServer plan/server id from getNewQs.
    /// </summary>
    /// <value>QuickServer plan/server id from getNewQs.</value>
    [DataMember(Name="server", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "server")]
    public int? Server { get; set; }

    /// <summary>
    /// Root password for the QuickServer.
    /// </summary>
    /// <value>Root password for the QuickServer.</value>
    [DataMember(Name="password", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "password")]
    public string Password { get; set; }

    /// <summary>
    /// OS template file name from getNewQs (falls back to a default if unrecognized).
    /// </summary>
    /// <value>OS template file name from getNewQs (falls back to a default if unrecognized).</value>
    [DataMember(Name="os", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "os")]
    public string Os { get; set; }

    /// <summary>
    /// Terms-of-service acceptance. Must be true to place the order.
    /// </summary>
    /// <value>Terms-of-service acceptance. Must be true to place the order.</value>
    [DataMember(Name="tos", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "tos")]
    public bool? Tos { get; set; }

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
      sb.Append("class QsOrderRequest {\n");
      sb.Append("  Server: ").Append(Server).Append("\n");
      sb.Append("  Password: ").Append(Password).Append("\n");
      sb.Append("  Os: ").Append(Os).Append("\n");
      sb.Append("  Tos: ").Append(Tos).Append("\n");
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
