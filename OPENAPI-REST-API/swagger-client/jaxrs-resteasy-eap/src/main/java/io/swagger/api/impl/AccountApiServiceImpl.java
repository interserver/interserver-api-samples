package io.swagger.api.impl;

import io.swagger.api.*;
import io.swagger.model.*;
import org.jboss.resteasy.plugins.providers.multipart.MultipartFormDataInput;
import org.jboss.resteasy.plugins.providers.multipart.MultipartFormDataInput;
import org.jboss.resteasy.plugins.providers.multipart.MultipartFormDataInput;
import org.jboss.resteasy.plugins.providers.multipart.MultipartFormDataInput;
import org.jboss.resteasy.plugins.providers.multipart.MultipartFormDataInput;
import org.jboss.resteasy.plugins.providers.multipart.MultipartFormDataInput;

import io.swagger.model.Account2faBody1;
import io.swagger.model.AccountFeatures;
import io.swagger.model.AccountInfo;
import io.swagger.model.AccountInfoPost;
import io.swagger.model.AccountSshKey;
import io.swagger.model.GenericResponse;
import io.swagger.model.InlineResponse200;
import io.swagger.model.InlineResponse401;
import io.swagger.model.InlineResponseMap200;
import io.swagger.model.IpLimitRange;
import io.swagger.model.PasswordRequest;
import io.swagger.model.SuccessTextResponse;
import io.swagger.model.TextResponse;

import java.util.List;
import java.util.Map;

import java.io.InputStream;

import javax.ws.rs.core.Response;
import javax.ws.rs.core.SecurityContext;


public class AccountApiServiceImpl implements AccountApi {
      public Response deleteAccountOauthName(String name,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response deleteAccountTfa(SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response deleteIpLimit(IpLimitRange body,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response getAccountCurrencies(SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response getAccountInfo(SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response getAccountLocales(SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response getAccountTfaSetup(SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response getCountries(String fetchBy,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response getTimezones(SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response logoutAccountOauth(String name,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response updateAccountApiKey(SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response updateAccountFeatures(MultipartFormDataInput input,Integer disableReset,Integer disableReinstall,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response updateAccountFeatures(MultipartFormDataInput input,AccountFeatures body,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response updateAccountInfo(MultipartFormDataInput input,String name,String company,String address,String address2,String city,String state,String zip,String country,String phone,String locale,String emailInvoices,String emailAbuse,Boolean disableReset,Boolean disableReinstall,Boolean disableServerNotifications,Boolean disableEmailNotifications,String gstin,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response updateAccountInfo(MultipartFormDataInput input,AccountInfoPost body,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response updateAccountIpLimits(MultipartFormDataInput input,String start,String end,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response updateAccountIpLimits(MultipartFormDataInput input,IpLimitRange body,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response updateAccountPassword(MultipartFormDataInput input,String password,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response updateAccountPassword(MultipartFormDataInput input,PasswordRequest body,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response updateAccountSshKey(MultipartFormDataInput input,String sshKey,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response updateAccountSshKey(MultipartFormDataInput input,AccountSshKey body,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response updateAccountTfa(MultipartFormDataInput input,String _2faGoogleCode,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response updateAccountTfa(MultipartFormDataInput input,Account2faBody1 body,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
}
