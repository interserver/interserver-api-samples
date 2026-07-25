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
import io.swagger.api.NotFoundException;

import java.io.InputStream;

import javax.ws.rs.core.Response;
import javax.ws.rs.core.SecurityContext;
import javax.validation.constraints.*;

public abstract class SslApiService {
    public abstract Response addSsl(SslOrderRequest body,SecurityContext securityContext) throws NotFoundException;
    public abstract Response getNewSsl(SecurityContext securityContext) throws NotFoundException;
    public abstract Response getSslInfo(Integer id,SecurityContext securityContext) throws NotFoundException;
    public abstract Response getSslInvoices(Integer id,SecurityContext securityContext) throws NotFoundException;
    public abstract Response getSslList(SecurityContext securityContext) throws NotFoundException;
    public abstract Response getSslWelcomeEmail(Integer id,SecurityContext securityContext) throws NotFoundException;
    public abstract Response putSsl(SslOrderRequest body,SecurityContext securityContext) throws NotFoundException;
    public abstract Response sslCancel(Integer id,SecurityContext securityContext) throws NotFoundException;
    public abstract Response updateSslInfo(String id,SecurityContext securityContext) throws NotFoundException;
}
