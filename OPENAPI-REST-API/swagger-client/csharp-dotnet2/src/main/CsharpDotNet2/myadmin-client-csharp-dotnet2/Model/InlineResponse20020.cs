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
  public class InlineResponse20020 {
    /// <summary>
    /// Gets or Sets _Continue
    /// </summary>
    [DataMember(Name="continue", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "continue")]
    public bool? _Continue { get; set; }

    /// <summary>
    /// Gets or Sets Errors
    /// </summary>
    [DataMember(Name="errors", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "errors")]
    public List<string> Errors { get; set; }

    /// <summary>
    /// Gets or Sets ServiceType
    /// </summary>
    [DataMember(Name="serviceType", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "serviceType")]
    public int? ServiceType { get; set; }

    /// <summary>
    /// Gets or Sets ServiceCost
    /// </summary>
    [DataMember(Name="serviceCost", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "serviceCost")]
    public decimal? ServiceCost { get; set; }

    /// <summary>
    /// Gets or Sets OriginalCost
    /// </summary>
    [DataMember(Name="originalCost", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "originalCost")]
    public decimal? OriginalCost { get; set; }

    /// <summary>
    /// Gets or Sets RepeatServiceCost
    /// </summary>
    [DataMember(Name="repeatServiceCost", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "repeatServiceCost")]
    public decimal? RepeatServiceCost { get; set; }


    /// <summary>
    /// Get the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class InlineResponse20020 {\n");
      sb.Append("  _Continue: ").Append(_Continue).Append("\n");
      sb.Append("  Errors: ").Append(Errors).Append("\n");
      sb.Append("  ServiceType: ").Append(ServiceType).Append("\n");
      sb.Append("  ServiceCost: ").Append(ServiceCost).Append("\n");
      sb.Append("  OriginalCost: ").Append(OriginalCost).Append("\n");
      sb.Append("  RepeatServiceCost: ").Append(RepeatServiceCost).Append("\n");
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
