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
  public class InlineResponse20028 {
    /// <summary>
    /// Confirmation message.
    /// </summary>
    /// <value>Confirmation message.</value>
    [DataMember(Name="text", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "text")]
    public string Text { get; set; }

    /// <summary>
    /// The support ticket ID created for tracking the migration. Use this with `/tickets/{id}` to check migration progress.
    /// </summary>
    /// <value>The support ticket ID created for tracking the migration. Use this with `/tickets/{id}` to check migration progress.</value>
    [DataMember(Name="ticket", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "ticket")]
    public int? Ticket { get; set; }


    /// <summary>
    /// Get the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class InlineResponse20028 {\n");
      sb.Append("  Text: ").Append(Text).Append("\n");
      sb.Append("  Ticket: ").Append(Ticket).Append("\n");
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
