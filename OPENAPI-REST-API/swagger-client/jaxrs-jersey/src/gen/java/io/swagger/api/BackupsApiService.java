package io.swagger.api;

import io.swagger.api.*;
import io.swagger.model.*;

import org.glassfish.jersey.media.multipart.FormDataContentDisposition;

import io.swagger.model.Backup;
import io.swagger.model.BackupLoginResponse;
import io.swagger.model.BackupOrderPostResponse;
import io.swagger.model.BackupOrderPutRequest;
import io.swagger.model.BackupOrderPutResponse;
import io.swagger.model.BackupRow;
import io.swagger.model.BackupsOrder;
import io.swagger.model.ChargeInvoiceRows;
import io.swagger.model.InlineResponse2002;
import io.swagger.model.InlineResponse401;
import io.swagger.model.SuccessTextResponse;

import java.util.Map;
import java.util.List;
import io.swagger.api.NotFoundException;

import java.io.InputStream;

import javax.ws.rs.core.Response;
import javax.ws.rs.core.SecurityContext;
import javax.validation.constraints.*;

public abstract class BackupsApiService {
    public abstract Response addBackup(Boolean validateOnly,Integer serviceType,String coupon,SecurityContext securityContext) throws NotFoundException;
    public abstract Response addBackup(BackupOrderPutRequest body,SecurityContext securityContext) throws NotFoundException;
    public abstract Response cancelBackup(Integer id,SecurityContext securityContext) throws NotFoundException;
    public abstract Response getBackupInfo(Integer id,SecurityContext securityContext) throws NotFoundException;
    public abstract Response getBackupInvoices(Integer id,SecurityContext securityContext) throws NotFoundException;
    public abstract Response getBackupLogin(Integer id,SecurityContext securityContext) throws NotFoundException;
    public abstract Response getBackupsList(SecurityContext securityContext) throws NotFoundException;
    public abstract Response getBackupsWelcomeEmail(Integer id,SecurityContext securityContext) throws NotFoundException;
    public abstract Response getNewBackup(SecurityContext securityContext) throws NotFoundException;
    public abstract Response updateBackupInfo(Integer id,SecurityContext securityContext) throws NotFoundException;
    public abstract Response validateBackupOrder(Boolean validateOnly,Integer serviceType,String coupon,SecurityContext securityContext) throws NotFoundException;
    public abstract Response validateBackupOrder(BackupOrderPutRequest body,SecurityContext securityContext) throws NotFoundException;
}
