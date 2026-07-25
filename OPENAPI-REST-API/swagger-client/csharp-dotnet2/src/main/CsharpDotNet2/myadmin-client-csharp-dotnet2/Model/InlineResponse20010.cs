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
  public class InlineResponse20010 {
    /// <summary>
    /// The response type indicating how to handle the payment. Possible values: `redirect` (redirect user to a URL), `submit` (submit a form to a URL), `single` (immediate result).
    /// </summary>
    /// <value>The response type indicating how to handle the payment. Possible values: `redirect` (redirect user to a URL), `submit` (submit a form to a URL), `single` (immediate result).</value>
    [DataMember(Name="type", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "type")]
    public string Type { get; set; }

    /// <summary>
    /// URL to redirect the user to for payment (when type is `redirect`).
    /// </summary>
    /// <value>URL to redirect the user to for payment (when type is `redirect`).</value>
    [DataMember(Name="redirect", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "redirect")]
    public string Redirect { get; set; }

    /// <summary>
    /// Form action URL (when type is `submit`).
    /// </summary>
    /// <value>Form action URL (when type is `submit`).</value>
    [DataMember(Name="action", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "action")]
    public string Action { get; set; }

    /// <summary>
    /// HTTP method for the form submission (when type is `submit`).
    /// </summary>
    /// <value>HTTP method for the form submission (when type is `submit`).</value>
    [DataMember(Name="method", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "method")]
    public string Method { get; set; }

    /// <summary>
    /// Form field name-value pairs to submit (when type is `submit`).
    /// </summary>
    /// <value>Form field name-value pairs to submit (when type is `submit`).</value>
    [DataMember(Name="items", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "items")]
    public Object Items { get; set; }

    /// <summary>
    /// Status or result text.
    /// </summary>
    /// <value>Status or result text.</value>
    [DataMember(Name="text", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "text")]
    public string Text { get; set; }


    /// <summary>
    /// Get the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class InlineResponse20010 {\n");
      sb.Append("  Type: ").Append(Type).Append("\n");
      sb.Append("  Redirect: ").Append(Redirect).Append("\n");
      sb.Append("  Action: ").Append(Action).Append("\n");
      sb.Append("  Method: ").Append(Method).Append("\n");
      sb.Append("  Items: ").Append(Items).Append("\n");
      sb.Append("  Text: ").Append(Text).Append("\n");
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
