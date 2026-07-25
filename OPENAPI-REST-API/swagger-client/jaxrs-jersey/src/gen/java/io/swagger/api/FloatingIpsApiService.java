package io.swagger.api;

import io.swagger.api.*;
import io.swagger.model.*;

import org.glassfish.jersey.media.multipart.FormDataContentDisposition;

import io.swagger.model.ChargeInvoiceRows;
import io.swagger.model.FloatingIpOrderRequest;
import io.swagger.model.InlineResponse2004;
import io.swagger.model.InlineResponse401;
import io.swagger.model.IpObject;
import io.swagger.model.ServiceOrderPostResponse;
import io.swagger.model.SuccessTextResponse;

import java.util.Map;
import java.util.List;
import io.swagger.api.NotFoundException;

import java.io.InputStream;

import javax.ws.rs.core.Response;
import javax.ws.rs.core.SecurityContext;
import javax.validation.constraints.*;

public abstract class FloatingIpsApiService {
    public abstract Response addFloatingIp(FloatingIpOrderRequest body,SecurityContext securityContext) throws NotFoundException;
    public abstract Response floatingIpsCancel(Integer id,SecurityContext securityContext) throws NotFoundException;
    public abstract Response getFloatingIpInfo(Integer id,SecurityContext securityContext) throws NotFoundException;
    public abstract Response getFloatingIpInvoices(Integer id,SecurityContext securityContext) throws NotFoundException;
    public abstract Response getFloatingIpsList(SecurityContext securityContext) throws NotFoundException;
    public abstract Response getFloatingIpsWelcomeEmail(Integer id,SecurityContext securityContext) throws NotFoundException;
    public abstract Response getNewFloatingIp(SecurityContext securityContext) throws NotFoundException;
    public abstract Response postFloatingIpsChangeIp(String ip,Integer id,SecurityContext securityContext) throws NotFoundException;
    public abstract Response postFloatingIpsChangeIp(IpObject body,Integer id,SecurityContext securityContext) throws NotFoundException;
    public abstract Response putFloatingIps(FloatingIpOrderRequest body,SecurityContext securityContext) throws NotFoundException;
    public abstract Response updateFloatingIpInfo(String id,SecurityContext securityContext) throws NotFoundException;
}
