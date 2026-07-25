package com.interserver.myadmin.model;


import com.fasterxml.jackson.annotation.JsonSubTypes;
import com.fasterxml.jackson.annotation.JsonTypeInfo;
/**
* OneOfAccountInfoOauthproviders
*/
@JsonTypeInfo(
  use = JsonTypeInfo.Id.NAME,
  include = JsonTypeInfo.As.PROPERTY,
  property = "type")
@JsonSubTypes({
  @JsonSubTypes.Type(value = AccountInfoOauthConfigProviders.class, name = "AccountInfoOauthConfigProviders")
})
public interface OneOfAccountInfoOauthproviders {

}
