package io.swagger.api;

import io.swagger.api.*;
import io.swagger.model.*;

import io.swagger.model.ChargeInvoiceRows;
import io.swagger.model.InlineResponse20023;
import io.swagger.model.InlineResponse401;
import io.swagger.model.ServiceOrderPostResponse;
import io.swagger.model.SslOrderRequest;
import io.swagger.model.SuccessTextResponse;

import java.util.List;
import java.util.Map;
import io.swagger.api.NotFoundException;

import java.io.InputStream;

import javax.ws.rs.core.Response;
import javax.ws.rs.core.SecurityContext;


public interface SslApiService {
      Response addSsl(SslOrderRequest body,SecurityContext securityContext) throws NotFoundException;
      Response getNewSsl(SecurityContext securityContext) throws NotFoundException;
      Response getSslInfo(Integer id,SecurityContext securityContext) throws NotFoundException;
      Response getSslInvoices(Integer id,SecurityContext securityContext) throws NotFoundException;
      Response getSslList(SecurityContext securityContext) throws NotFoundException;
      Response getSslWelcomeEmail(Integer id,SecurityContext securityContext) throws NotFoundException;
      Response putSsl(SslOrderRequest body,SecurityContext securityContext) throws NotFoundException;
      Response sslCancel(Integer id,SecurityContext securityContext) throws NotFoundException;
      Response updateSslInfo(String id,SecurityContext securityContext) throws NotFoundException;
}
