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
  public class InlineResponse20013FilterFirewallRules {
    /// <summary>
    /// Gets or Sets Id
    /// </summary>
    [DataMember(Name="id", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "id")]
    public string Id { get; set; }

    /// <summary>
    /// Gets or Sets SourceIp
    /// </summary>
    [DataMember(Name="source_ip", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "source_ip")]
    public string SourceIp { get; set; }

    /// <summary>
    /// Gets or Sets DestinationIp
    /// </summary>
    [DataMember(Name="destination_ip", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "destination_ip")]
    public string DestinationIp { get; set; }

    /// <summary>
    /// Gets or Sets ProtocolId
    /// </summary>
    [DataMember(Name="protocol_id", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "protocol_id")]
    public string ProtocolId { get; set; }

    /// <summary>
    /// Gets or Sets SourcePort
    /// </summary>
    [DataMember(Name="source_port", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "source_port")]
    public string SourcePort { get; set; }

    /// <summary>
    /// Gets or Sets DestinationPort
    /// </summary>
    [DataMember(Name="destination_port", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "destination_port")]
    public string DestinationPort { get; set; }

    /// <summary>
    /// Gets or Sets XdpAction
    /// </summary>
    [DataMember(Name="xdp_action", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "xdp_action")]
    public string XdpAction { get; set; }

    /// <summary>
    /// Gets or Sets GlobalDrop
    /// </summary>
    [DataMember(Name="global_drop", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "global_drop")]
    public string GlobalDrop { get; set; }


    /// <summary>
    /// Get the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class InlineResponse20013FilterFirewallRules {\n");
      sb.Append("  Id: ").Append(Id).Append("\n");
      sb.Append("  SourceIp: ").Append(SourceIp).Append("\n");
      sb.Append("  DestinationIp: ").Append(DestinationIp).Append("\n");
      sb.Append("  ProtocolId: ").Append(ProtocolId).Append("\n");
      sb.Append("  SourcePort: ").Append(SourcePort).Append("\n");
      sb.Append("  DestinationPort: ").Append(DestinationPort).Append("\n");
      sb.Append("  XdpAction: ").Append(XdpAction).Append("\n");
      sb.Append("  GlobalDrop: ").Append(GlobalDrop).Append("\n");
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
