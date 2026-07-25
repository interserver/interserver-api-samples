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
  public class IdAlertsBody {
    /// <summary>
    /// The ID of the alert to delete.
    /// </summary>
    /// <value>The ID of the alert to delete.</value>
    [DataMember(Name="alert_id", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "alert_id")]
    public int? AlertId { get; set; }


    /// <summary>
    /// Get the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class IdAlertsBody {\n");
      sb.Append("  AlertId: ").Append(AlertId).Append("\n");
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
