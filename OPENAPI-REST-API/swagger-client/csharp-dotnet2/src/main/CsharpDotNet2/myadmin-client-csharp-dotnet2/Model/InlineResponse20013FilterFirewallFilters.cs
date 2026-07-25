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
  public class InlineResponse20013FilterFirewallFilters {
    /// <summary>
    /// Gets or Sets Daddr
    /// </summary>
    [DataMember(Name="daddr", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "daddr")]
    public string Daddr { get; set; }

    /// <summary>
    /// Gets or Sets Dest
    /// </summary>
    [DataMember(Name="dest", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "dest")]
    public string Dest { get; set; }

    /// <summary>
    /// Gets or Sets FilterName
    /// </summary>
    [DataMember(Name="filter_name", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "filter_name")]
    public string FilterName { get; set; }

    /// <summary>
    /// Gets or Sets DestinationIp
    /// </summary>
    [DataMember(Name="destination_ip", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "destination_ip")]
    public string DestinationIp { get; set; }

    /// <summary>
    /// Gets or Sets Filter
    /// </summary>
    [DataMember(Name="filter", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "filter")]
    public string Filter { get; set; }


    /// <summary>
    /// Get the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class InlineResponse20013FilterFirewallFilters {\n");
      sb.Append("  Daddr: ").Append(Daddr).Append("\n");
      sb.Append("  Dest: ").Append(Dest).Append("\n");
      sb.Append("  FilterName: ").Append(FilterName).Append("\n");
      sb.Append("  DestinationIp: ").Append(DestinationIp).Append("\n");
      sb.Append("  Filter: ").Append(Filter).Append("\n");
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
