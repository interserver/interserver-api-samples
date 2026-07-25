package io.swagger.api;

import io.swagger.api.*;
import io.swagger.model.*;

import org.glassfish.jersey.media.multipart.FormDataContentDisposition;

import io.swagger.model.ChargeInvoiceRows;
import io.swagger.model.IdBuyIpBody;
import io.swagger.model.IdMigrationBody;
import io.swagger.model.InlineResponse20025;
import io.swagger.model.InlineResponse20026;
import io.swagger.model.InlineResponse20027;
import io.swagger.model.InlineResponse20028;
import io.swagger.model.InlineResponse401;
import io.swagger.model.ReverseDnsEntries;
import io.swagger.model.ServiceOrderPostResponse;
import io.swagger.model.SuccessTextResponse;
import io.swagger.model.TextResponse;
import io.swagger.model.Website;
import io.swagger.model.WebsiteBackups;
import io.swagger.model.WebsiteLoginResponse;
import io.swagger.model.WebsiteOrderPostRequest;
import io.swagger.model.WebsiteOrderPutRequest;
import io.swagger.model.WebsiteRow;
import io.swagger.model.WebsitesOrder;

import java.util.Map;
import java.util.List;
import io.swagger.api.NotFoundException;

import java.io.InputStream;

import javax.ws.rs.core.Response;
import javax.ws.rs.core.SecurityContext;
import javax.validation.constraints.*;

public abstract class WebsitesApiService {
    public abstract Response addWebsite(WebsiteOrderPostRequest body,SecurityContext securityContext) throws NotFoundException;
    public abstract Response getNewWebsite(SecurityContext securityContext) throws NotFoundException;
    public abstract Response getWebsiteBuyIp(Integer id,SecurityContext securityContext) throws NotFoundException;
    public abstract Response getWebsiteInfo(Integer id,SecurityContext securityContext) throws NotFoundException;
    public abstract Response getWebsiteInvoices(Integer id,SecurityContext securityContext) throws NotFoundException;
    public abstract Response getWebsiteList(SecurityContext securityContext) throws NotFoundException;
    public abstract Response getWebsitesBackups(Integer id,SecurityContext securityContext) throws NotFoundException;
    public abstract Response getWebsitesLogin(Integer id,SecurityContext securityContext) throws NotFoundException;
    public abstract Response getWebsitesWelcomeEmail(Integer id,SecurityContext securityContext) throws NotFoundException;
    public abstract Response gettWebsiteReverseDns(Integer id,SecurityContext securityContext) throws NotFoundException;
    public abstract Response postWebsiteBuyIp(IdBuyIpBody body,Integer id,SecurityContext securityContext) throws NotFoundException;
    public abstract Response postWebsiteBuyIp(Map<String, String> ips,Integer id,SecurityContext securityContext) throws NotFoundException;
    public abstract Response postWebsiteMigration(IdMigrationBody body,Integer id,SecurityContext securityContext) throws NotFoundException;
    public abstract Response postWebsiteMigration(String custPortal,String regEmail,String password,String ctrlPanel,String ftpUsername,String ftpPassword,String siteBusyMig,String splReqMig,String domainReg,String dataMig,String domainRegPortal,String domainRegEmail,String domainRegPassword,Integer id,SecurityContext securityContext) throws NotFoundException;
    public abstract Response postWebsitesReverseDns(ReverseDnsEntries body,Integer id,SecurityContext securityContext) throws NotFoundException;
    public abstract Response postWebsitesReverseDns(Map<String, Object> ips,Integer id,SecurityContext securityContext) throws NotFoundException;
    public abstract Response putWebsites(WebsiteOrderPutRequest body,SecurityContext securityContext) throws NotFoundException;
    public abstract Response updateWebsiteInfo(String id,SecurityContext securityContext) throws NotFoundException;
    public abstract Response webhostingCancel(String id,SecurityContext securityContext) throws NotFoundException;
}
