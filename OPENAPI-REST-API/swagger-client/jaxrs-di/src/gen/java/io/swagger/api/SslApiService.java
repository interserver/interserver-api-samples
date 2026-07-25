package io.swagger.api;

import io.swagger.api.*;
import io.swagger.model.*;

import org.glassfish.jersey.media.multipart.FormDataContentDisposition;

import io.swagger.model.ChargeInvoiceRows;
import io.swagger.model.InlineResponse20023;
import io.swagger.model.InlineResponse401;
import io.swagger.model.ServiceOrderPostResponse;
import io.swagger.model.SslOrderRequest;
import io.swagger.model.SuccessTextResponse;

import java.util.Map;
import java.util.List;

import java.io.InputStream;

import javax.ws.rs.core.Response;
import javax.ws.rs.core.SecurityContext;
import javax.validation.constraints.*;

public interface SslApiService {
    public Response addSsl(SslOrderRequest body,SecurityContext securityContext);
    public Response getNewSsl(SecurityContext securityContext);
    public Response getSslInfo(Integer id,SecurityContext securityContext);
    public Response getSslInvoices(Integer id,SecurityContext securityContext);
    public Response getSslList(SecurityContext securityContext);
    public Response getSslWelcomeEmail(Integer id,SecurityContext securityContext);
    public Response putSsl(SslOrderRequest body,SecurityContext securityContext);
    public Response sslCancel(Integer id,SecurityContext securityContext);
    public Response updateSslInfo(String id,SecurityContext securityContext);
}
