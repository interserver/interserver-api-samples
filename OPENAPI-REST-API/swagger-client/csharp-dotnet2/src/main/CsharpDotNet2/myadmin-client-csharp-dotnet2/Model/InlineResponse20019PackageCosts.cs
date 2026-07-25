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
  public class InlineResponse20019PackageCosts {
    /// <summary>
    /// Gets or Sets PackageId
    /// </summary>
    [DataMember(Name="package_id", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "package_id")]
    public decimal? PackageId { get; set; }

    /// <summary>
    /// Gets or Sets PackageCost
    /// </summary>
    [DataMember(Name="package_cost", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "package_cost")]
    public decimal? PackageCost { get; set; }

    /// <summary>
    /// Gets or Sets Currency
    /// </summary>
    [DataMember(Name="currency", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "currency")]
    public string Currency { get; set; }

    /// <summary>
    /// Gets or Sets CurrencySymbol
    /// </summary>
    [DataMember(Name="currencySymbol", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "currencySymbol")]
    public string CurrencySymbol { get; set; }


    /// <summary>
    /// Get the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class InlineResponse20019PackageCosts {\n");
      sb.Append("  PackageId: ").Append(PackageId).Append("\n");
      sb.Append("  PackageCost: ").Append(PackageCost).Append("\n");
      sb.Append("  Currency: ").Append(Currency).Append("\n");
      sb.Append("  CurrencySymbol: ").Append(CurrencySymbol).Append("\n");
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
