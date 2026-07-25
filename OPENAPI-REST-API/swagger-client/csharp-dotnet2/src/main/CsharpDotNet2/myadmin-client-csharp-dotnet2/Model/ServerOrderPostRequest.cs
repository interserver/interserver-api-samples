using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;
using System.Runtime.Serialization;
using Newtonsoft.Json;

namespace IO.Swagger.Model {

  /// <summary>
  /// Request body to place a custom dedicated server order. All ids come from getNewServer&#x27;s config_li / regions.
  /// </summary>
  [DataContract]
  public class ServerOrderPostRequest {
    /// <summary>
    /// CPU configuration id from config_li.cpu_li. Constrains valid hd/memory options.
    /// </summary>
    /// <value>CPU configuration id from config_li.cpu_li. Constrains valid hd/memory options.</value>
    [DataMember(Name="cpu", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "cpu")]
    public int? Cpu { get; set; }

    /// <summary>
    /// Hard-drive configuration id(s) from config_li.hd_li[cpu]. Accepts a single id or an array of ids.
    /// </summary>
    /// <value>Hard-drive configuration id(s) from config_li.hd_li[cpu]. Accepts a single id or an array of ids.</value>
    [DataMember(Name="hd", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "hd")]
    public OneOfServerOrderPostRequestHd Hd { get; set; }

    /// <summary>
    /// Memory configuration id from config_li.memory_li[cpu].
    /// </summary>
    /// <value>Memory configuration id from config_li.memory_li[cpu].</value>
    [DataMember(Name="memory", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "memory")]
    public int? Memory { get; set; }

    /// <summary>
    /// Bandwidth configuration id from config_li.bandwidth_li.
    /// </summary>
    /// <value>Bandwidth configuration id from config_li.bandwidth_li.</value>
    [DataMember(Name="bandwidth", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "bandwidth")]
    public int? Bandwidth { get; set; }

    /// <summary>
    /// IP block configuration id from config_li.ips_li.
    /// </summary>
    /// <value>IP block configuration id from config_li.ips_li.</value>
    [DataMember(Name="ips", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "ips")]
    public int? Ips { get; set; }

    /// <summary>
    /// Operating System configuration id from config_li.os_li.
    /// </summary>
    /// <value>Operating System configuration id from config_li.os_li.</value>
    [DataMember(Name="os", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "os")]
    public int? Os { get; set; }

    /// <summary>
    /// Control Panel configuration id from config_li.cp_li.
    /// </summary>
    /// <value>Control Panel configuration id from config_li.cp_li.</value>
    [DataMember(Name="cp", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "cp")]
    public int? Cp { get; set; }

    /// <summary>
    /// RAID configuration id from config_li.raid_li.
    /// </summary>
    /// <value>RAID configuration id from config_li.raid_li.</value>
    [DataMember(Name="raid", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "raid")]
    public int? Raid { get; set; }

    /// <summary>
    /// Region id from the regions list.
    /// </summary>
    /// <value>Region id from the regions list.</value>
    [DataMember(Name="region", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "region")]
    public int? Region { get; set; }

    /// <summary>
    /// Server hostname. Must pass valid_hostname().
    /// </summary>
    /// <value>Server hostname. Must pass valid_hostname().</value>
    [DataMember(Name="servername", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "servername")]
    public string Servername { get; set; }

    /// <summary>
    /// Root password for the server.
    /// </summary>
    /// <value>Root password for the server.</value>
    [DataMember(Name="rootpass", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "rootpass")]
    public string Rootpass { get; set; }

    /// <summary>
    /// Terms-of-service acceptance. Must be true to place the order.
    /// </summary>
    /// <value>Terms-of-service acceptance. Must be true to place the order.</value>
    [DataMember(Name="tos", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "tos")]
    public bool? Tos { get; set; }

    /// <summary>
    /// Optional free-form order comment.
    /// </summary>
    /// <value>Optional free-form order comment.</value>
    [DataMember(Name="comment", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "comment")]
    public string Comment { get; set; }


    /// <summary>
    /// Get the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class ServerOrderPostRequest {\n");
      sb.Append("  Cpu: ").Append(Cpu).Append("\n");
      sb.Append("  Hd: ").Append(Hd).Append("\n");
      sb.Append("  Memory: ").Append(Memory).Append("\n");
      sb.Append("  Bandwidth: ").Append(Bandwidth).Append("\n");
      sb.Append("  Ips: ").Append(Ips).Append("\n");
      sb.Append("  Os: ").Append(Os).Append("\n");
      sb.Append("  Cp: ").Append(Cp).Append("\n");
      sb.Append("  Raid: ").Append(Raid).Append("\n");
      sb.Append("  Region: ").Append(Region).Append("\n");
      sb.Append("  Servername: ").Append(Servername).Append("\n");
      sb.Append("  Rootpass: ").Append(Rootpass).Append("\n");
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
