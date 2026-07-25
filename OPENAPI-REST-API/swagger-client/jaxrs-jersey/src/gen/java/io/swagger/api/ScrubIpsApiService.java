package io.swagger.api;

import io.swagger.api.*;
import io.swagger.model.*;

import org.glassfish.jersey.media.multipart.FormDataContentDisposition;

import io.swagger.model.ChargeInvoiceRows;
import io.swagger.model.CreateFilter;
import io.swagger.model.CreateFirewallRule;
import io.swagger.model.CreateGeoFirewallRule;
import io.swagger.model.DeleteFirewallRule;
import io.swagger.model.DeleteGeoFirewallRule;
import io.swagger.model.InlineResponse20013;
import io.swagger.model.InlineResponse20014;
import io.swagger.model.InlineResponse20015;
import io.swagger.model.InlineResponse20016;
import io.swagger.model.InlineResponse20017;
import io.swagger.model.InlineResponse20018;
import io.swagger.model.InlineResponse20019;
import io.swagger.model.InlineResponse20020;
import io.swagger.model.InlineResponse201;
import io.swagger.model.InlineResponse2011;
import io.swagger.model.InlineResponse2012;
import io.swagger.model.InlineResponse400;
import io.swagger.model.InlineResponse4001;
import io.swagger.model.InlineResponse4002;
import io.swagger.model.InlineResponse4003;
import io.swagger.model.InlineResponse4004;
import io.swagger.model.InlineResponse4005;
import io.swagger.model.InlineResponse401;
import io.swagger.model.InlineResponse500;
import io.swagger.model.InlineResponse5001;
import io.swagger.model.InlineResponse5002;
import io.swagger.model.InlineResponse5003;
import io.swagger.model.InlineResponse5004;
import io.swagger.model.InlineResponse5005;
import io.swagger.model.ScrubIpFilterTypes;
import io.swagger.model.ScrubIpPlaceOrder;
import io.swagger.model.ScrubIpsLogRowSchema;
import io.swagger.model.ScrubIpsRowSchema;

import java.util.Map;
import java.util.List;
import io.swagger.api.NotFoundException;

import java.io.InputStream;

import javax.ws.rs.core.Response;
import javax.ws.rs.core.SecurityContext;
import javax.validation.constraints.*;

public abstract class ScrubIpsApiService {
    public abstract Response cancelScrubIp(Integer id,SecurityContext securityContext) throws NotFoundException;
    public abstract Response createFilter(CreateFilter body,Integer id,SecurityContext securityContext) throws NotFoundException;
    public abstract Response createGeoRule(CreateGeoFirewallRule body,Integer id,SecurityContext securityContext) throws NotFoundException;
    public abstract Response createRule(CreateFirewallRule body,Integer id,SecurityContext securityContext) throws NotFoundException;
    public abstract Response deleteFilter(CreateFilter body,Integer id,SecurityContext securityContext) throws NotFoundException;
    public abstract Response disableScrub(Integer id,SecurityContext securityContext) throws NotFoundException;
    public abstract Response enableScrub(Integer id,SecurityContext securityContext) throws NotFoundException;
    public abstract Response getOrderDetail(SecurityContext securityContext) throws NotFoundException;
    public abstract Response getScrubIpDetails(Integer id,SecurityContext securityContext) throws NotFoundException;
    public abstract Response getScrubIpFilterTypes(SecurityContext securityContext) throws NotFoundException;
    public abstract Response getScrubIpInvoices(Integer id,SecurityContext securityContext) throws NotFoundException;
    public abstract Response getScrubIpLogs(String id,SecurityContext securityContext) throws NotFoundException;
    public abstract Response getScrubIpsList(SecurityContext securityContext) throws NotFoundException;
    public abstract Response placeScrubOrder(ScrubIpPlaceOrder body,SecurityContext securityContext) throws NotFoundException;
    public abstract Response putScrubIps(ScrubIpPlaceOrder body,SecurityContext securityContext) throws NotFoundException;
    public abstract Response scrubIpsDeleteGeoRule(DeleteGeoFirewallRule body,Integer id,SecurityContext securityContext) throws NotFoundException;
    public abstract Response scrubIpsDeleteRule(DeleteFirewallRule body,Integer id,SecurityContext securityContext) throws NotFoundException;
}
