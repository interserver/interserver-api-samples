package io.swagger.api;

import io.swagger.api.*;
import io.swagger.model.*;

import org.glassfish.jersey.media.multipart.FormDataContentDisposition;

import java.math.BigDecimal;
import io.swagger.model.BillingAddCcRequest;
import io.swagger.model.BillingInvoiceDetail;
import io.swagger.model.BillingInvoiceList;
import io.swagger.model.BillingPaymentMethodRequest;
import io.swagger.model.BillingPrepayRequest;
import io.swagger.model.BillingVerifyCcRequest;
import io.swagger.model.IdVerifyBody;
import io.swagger.model.InlineResponse20010;
import io.swagger.model.InlineResponse401;
import io.swagger.model.SuccessTextResponse;

import java.util.Map;
import java.util.List;
import io.swagger.api.NotFoundException;

import java.io.InputStream;

import javax.ws.rs.core.Response;
import javax.ws.rs.core.SecurityContext;
import javax.validation.constraints.*;

public abstract class BillingApiService {
    public abstract Response addBillingCreditCard(BillingAddCcRequest body,SecurityContext securityContext) throws NotFoundException;
    public abstract Response addBillingCreditCard(String name,String address,String city,String state,String country,String zip,String cc,String ccExp,String ccCcv2,SecurityContext securityContext) throws NotFoundException;
    public abstract Response addBillingPrepay(BillingPrepayRequest body,SecurityContext securityContext) throws NotFoundException;
    public abstract Response addBillingPrepay(String module,BigDecimal amount,String automaticUse,SecurityContext securityContext) throws NotFoundException;
    public abstract Response deleteBillingCreditCard(Integer id,SecurityContext securityContext) throws NotFoundException;
    public abstract Response deleteBillingInvoice(Integer id,SecurityContext securityContext) throws NotFoundException;
    public abstract Response deleteBillingPrepay(Integer id,SecurityContext securityContext) throws NotFoundException;
    public abstract Response getBillingCart(SecurityContext securityContext) throws NotFoundException;
    public abstract Response getBillingCreditCardVerify(Integer id,SecurityContext securityContext) throws NotFoundException;
    public abstract Response getBillingInvoice(Integer id,SecurityContext securityContext) throws NotFoundException;
    public abstract Response getBillingInvoices(SecurityContext securityContext) throws NotFoundException;
    public abstract Response getBillingPrePays(SecurityContext securityContext) throws NotFoundException;
    public abstract Response initiatePayment(String method,String invoices,SecurityContext securityContext) throws NotFoundException;
    public abstract Response patchBillingCreditCardVerify(IdVerifyBody body,Integer id,SecurityContext securityContext) throws NotFoundException;
    public abstract Response patchBillingCreditCardVerify(String ccCcv2,Integer id,SecurityContext securityContext) throws NotFoundException;
    public abstract Response postBillingCreditCardVerify(BillingVerifyCcRequest body,Integer id,SecurityContext securityContext) throws NotFoundException;
    public abstract Response postBillingCreditCardVerify(Integer idx,String ccCcv2,String ccAmount1,String ccAmount2,Boolean terms,Integer id,SecurityContext securityContext) throws NotFoundException;
    public abstract Response updateBillingCreditCard(Integer id,SecurityContext securityContext) throws NotFoundException;
    public abstract Response updateBillingPaymentMethod(BillingPaymentMethodRequest body,SecurityContext securityContext) throws NotFoundException;
    public abstract Response updateBillingPaymentMethod(String paymentMethod,String ccAuto,SecurityContext securityContext) throws NotFoundException;
}
