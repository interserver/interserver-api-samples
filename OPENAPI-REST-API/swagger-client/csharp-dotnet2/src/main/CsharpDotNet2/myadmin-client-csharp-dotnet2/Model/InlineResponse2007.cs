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
  public class InlineResponse2007 {
    /// <summary>
    /// Whether the user was logged in to an existing account.
    /// </summary>
    /// <value>Whether the user was logged in to an existing account.</value>
    [DataMember(Name="login", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "login")]
    public bool? Login { get; set; }

    /// <summary>
    /// Whether a new account was created.
    /// </summary>
    /// <value>Whether a new account was created.</value>
    [DataMember(Name="signup", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "signup")]
    public bool? Signup { get; set; }

    /// <summary>
    /// Whether the OAuth provider was linked to an existing account.
    /// </summary>
    /// <value>Whether the OAuth provider was linked to an existing account.</value>
    [DataMember(Name="linked", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "linked")]
    public bool? Linked { get; set; }

    /// <summary>
    /// The account ID associated with the OAuth login.
    /// </summary>
    /// <value>The account ID associated with the OAuth login.</value>
    [DataMember(Name="account_id", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "account_id")]
    public int? AccountId { get; set; }

    /// <summary>
    /// Error code if additional verification is needed (e.g. `2fa_required`).
    /// </summary>
    /// <value>Error code if additional verification is needed (e.g. `2fa_required`).</value>
    [DataMember(Name="error_code", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "error_code")]
    public string ErrorCode { get; set; }


    /// <summary>
    /// Get the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class InlineResponse2007 {\n");
      sb.Append("  Login: ").Append(Login).Append("\n");
      sb.Append("  Signup: ").Append(Signup).Append("\n");
      sb.Append("  Linked: ").Append(Linked).Append("\n");
      sb.Append("  AccountId: ").Append(AccountId).Append("\n");
      sb.Append("  ErrorCode: ").Append(ErrorCode).Append("\n");
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
