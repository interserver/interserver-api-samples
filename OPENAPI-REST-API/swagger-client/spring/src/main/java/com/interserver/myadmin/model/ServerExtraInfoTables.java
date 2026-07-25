package com.interserver.myadmin.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.interserver.myadmin.model.ServerAssets;
import io.swagger.v3.oas.annotations.media.Schema;
import org.springframework.validation.annotation.Validated;
import org.openapitools.jackson.nullable.JsonNullable;
import io.swagger.configuration.NotUndefined;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonSetter;
import com.fasterxml.jackson.annotation.Nulls;
import javax.validation.Valid;
import javax.validation.constraints.*;

/**
 * ServerExtraInfoTables
 */
@Validated
@NotUndefined



public class ServerExtraInfoTables   {
  @JsonProperty("assets")

  private ServerAssets assets = null;


  public ServerExtraInfoTables assets(ServerAssets assets) { 

    this.assets = assets;
    return this;
  }

  /**
   * Get assets
   * @return assets
   **/
  
  @Schema(required = true, description = "")
  
@Valid
  @NotNull
  public ServerAssets getAssets() {  
    return assets;
  }



  public void setAssets(ServerAssets assets) { 

    this.assets = assets;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ServerExtraInfoTables serverExtraInfoTables = (ServerExtraInfoTables) o;
    return Objects.equals(this.assets, serverExtraInfoTables.assets);
  }

  @Override
  public int hashCode() {
    return Objects.hash(assets);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ServerExtraInfoTables {\n");
    
    sb.append("    assets: ").append(toIndentedString(assets)).append("\n");
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
