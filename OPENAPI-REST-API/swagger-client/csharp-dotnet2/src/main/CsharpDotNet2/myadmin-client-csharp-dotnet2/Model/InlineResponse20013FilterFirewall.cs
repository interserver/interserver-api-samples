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
  public class InlineResponse20013FilterFirewall {
    /// <summary>
    /// Gets or Sets Rules
    /// </summary>
    [DataMember(Name="rules", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "rules")]
    public List<InlineResponse20013FilterFirewallRules> Rules { get; set; }

    /// <summary>
    /// Gets or Sets Filters
    /// </summary>
    [DataMember(Name="filters", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "filters")]
    public List<InlineResponse20013FilterFirewallFilters> Filters { get; set; }

    /// <summary>
    /// Gets or Sets ScrubEnabled
    /// </summary>
    [DataMember(Name="scrub_enabled", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "scrub_enabled")]
    public int? ScrubEnabled { get; set; }


    /// <summary>
    /// Get the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class InlineResponse20013FilterFirewall {\n");
      sb.Append("  Rules: ").Append(Rules).Append("\n");
      sb.Append("  Filters: ").Append(Filters).Append("\n");
      sb.Append("  ScrubEnabled: ").Append(ScrubEnabled).Append("\n");
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
