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
  public class InlineResponseMap200 {
    /// <summary>
    /// English display name of the locale.
    /// </summary>
    /// <value>English display name of the locale.</value>
    [DataMember(Name="name", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "name")]
    public string Name { get; set; }

    /// <summary>
    /// Display name of the locale in its own language.
    /// </summary>
    /// <value>Display name of the locale in its own language.</value>
    [DataMember(Name="local_name", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "local_name")]
    public string LocalName { get; set; }


    /// <summary>
    /// Get the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class InlineResponseMap200 {\n");
      sb.Append("  Name: ").Append(Name).Append("\n");
      sb.Append("  LocalName: ").Append(LocalName).Append("\n");
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
