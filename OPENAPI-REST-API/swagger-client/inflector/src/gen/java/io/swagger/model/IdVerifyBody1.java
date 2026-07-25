package io.swagger.model;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.v3.oas.annotations.media.Schema;





public class IdVerifyBody1   {
  @JsonProperty("cc_ccv2")
  private String ccCcv2 = null;
  /**
   * The CVV/CVC code on the back of the credit card.
   **/
  public IdVerifyBody1 ccCcv2(String ccCcv2) {
    this.ccCcv2 = ccCcv2;
    return this;
  }

  
  @Schema(required = true, description = "The CVV/CVC code on the back of the credit card.")
  @JsonProperty("cc_ccv2")
  public String getCcCcv2() {
    return ccCcv2;
  }
  public void setCcCcv2(String ccCcv2) {
    this.ccCcv2 = ccCcv2;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    IdVerifyBody1 idVerifyBody1 = (IdVerifyBody1) o;
    return Objects.equals(ccCcv2, idVerifyBody1.ccCcv2);
  }

  @Override
  public int hashCode() {
    return Objects.hash(ccCcv2);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class IdVerifyBody1 {\n");
    sb.append("    ccCcv2: ").append(toIndentedString(ccCcv2)).append("\n");
    sb.append("}");
    return sb.toString();
  }

  /**
   * Convert the given object to string with each line indented by 4 spaces
   * (except the first line).
   */
  private String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}
