package io.swagger.api;

import io.swagger.api.*;
import io.swagger.model.*;

import org.glassfish.jersey.media.multipart.FormDataContentDisposition;

import io.swagger.model.ChargeInvoiceRows;
import io.swagger.model.InlineResponse2005;
import io.swagger.model.InlineResponse401;
import io.swagger.model.IpObject;
import io.swagger.model.License;
import io.swagger.model.LicenseOrderRequest;
import io.swagger.model.LicenseRow;
import io.swagger.model.LicensesOrder;
import io.swagger.model.ServiceOrderPostResponse;
import io.swagger.model.SuccessTextResponse;

import java.util.Map;
import java.util.List;
import io.swagger.api.NotFoundException;

import java.io.InputStream;

import javax.ws.rs.core.Response;
import javax.ws.rs.core.SecurityContext;
import javax.validation.constraints.*;

public abstract class LicensesApiService {
    public abstract Response addLicense(LicenseOrderRequest body,SecurityContext securityContext) throws NotFoundException;
    public abstract Response getLicenseInfo(Integer id,SecurityContext securityContext) throws NotFoundException;
    public abstract Response getLicenseInvoices(Integer id,SecurityContext securityContext) throws NotFoundException;
    public abstract Response getLicenseList(SecurityContext securityContext) throws NotFoundException;
    public abstract Response getLicensesWelcomeEmail(Integer id,SecurityContext securityContext) throws NotFoundException;
    public abstract Response getNewLicense(SecurityContext securityContext) throws NotFoundException;
    public abstract Response licensesCancel(Integer id,SecurityContext securityContext) throws NotFoundException;
    public abstract Response postLicenseChangeIp(IpObject body,Integer id,SecurityContext securityContext) throws NotFoundException;
    public abstract Response postLicenseChangeIp(String ip,Integer id,SecurityContext securityContext) throws NotFoundException;
    public abstract Response putLicenses(LicenseOrderRequest body,SecurityContext securityContext) throws NotFoundException;
    public abstract Response updateLicenseInfo(String id,SecurityContext securityContext) throws NotFoundException;
}
