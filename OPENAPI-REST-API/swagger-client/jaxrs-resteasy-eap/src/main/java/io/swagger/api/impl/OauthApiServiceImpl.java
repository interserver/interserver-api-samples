package io.swagger.api.impl;

import io.swagger.api.*;
import io.swagger.model.*;

import io.swagger.model.InlineResponse2006;
import io.swagger.model.InlineResponse2007;
import io.swagger.model.InlineResponse2008;
import io.swagger.model.InlineResponse401;
import io.swagger.model.OauthBody;
import io.swagger.model.OauthBody2;

import java.util.List;
import java.util.Map;

import java.io.InputStream;

import javax.ws.rs.core.Response;
import javax.ws.rs.core.SecurityContext;


public class OauthApiServiceImpl implements OauthApi {
      public Response getOauthRedirect(String provider,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response patchOauthTwoFactor(OauthBody2 body,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response patchOauthTwoFactor(Integer accountId,String code,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response postOauthCallback(String provider,OauthBody body,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
      public Response postOauthCallback(String provider,String provider2,SecurityContext securityContext) {
      // do some magic!
      return Response.ok().build();
  }
}
