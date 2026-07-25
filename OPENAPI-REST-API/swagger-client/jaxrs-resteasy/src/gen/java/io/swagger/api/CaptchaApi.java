package io.swagger.api;

import io.swagger.model.*;
import io.swagger.api.CaptchaApiService;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.Parameter;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.media.ArraySchema;
import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.security.SecurityRequirement;

import io.swagger.model.CaptchaResponse;
import io.swagger.model.InlineResponse401;

import java.util.Map;
import java.util.List;
import io.swagger.api.NotFoundException;

import java.io.InputStream;

import javax.ws.rs.core.Context;
import javax.ws.rs.core.Response;
import javax.ws.rs.core.SecurityContext;
import javax.ws.rs.*;
import javax.inject.Inject;

import javax.validation.constraints.*;
@Path("/captcha")



public class CaptchaApi  {

    @Inject CaptchaApiService service;

    @GET
    
    
    @Produces({ "application/json" })
    @Operation(summary = "Fetch a base64 JPEG captcha challenge for human verification", description = "Fetches a fresh captcha challenge image to display before submitting `submitSignup` (or any unauthenticated form that needs human verification). Public endpoint — no authentication required. Sibling ops: `getLoginInfo` (returns a captcha alongside other login-page data), `submitSignup` (consumes the answer), `submitLogin`.  **Path/Query/Body:** None.  **Returns:** `{ captcha: string }` — `captcha` is a `data:image/jpeg;base64,...` URL ready to drop into an `<img src>`.  **Side effects:** the phrase is stored server-side in `$_SESSION['captcha']` (also aliased to the signup-flow key `$_SESSION['captchaSignup']` and forgot-password key `$_SESSION['captchaFP']`). The browser must send the same `PHPSESSID` cookie back when posting the answer.  **Charset:** 8 chars from `3456789ABCDEFGHJKLMNPQRSTWXY` — no ambiguous `0`/`1`/`I`/`O`/`2`/`Z`.  **Related calls:** - **Consumers:** `submitSignup`, `submitLogin`. - **One-shot login bootstrap:** `getLoginInfo`. answer in `captcha` field). ", security = {
        @SecurityRequirement(name = "apiKeyAuth"),
@SecurityRequirement(name = "sessionIdCookieAuth"),
@SecurityRequirement(name = "sessionIdHeaderAuth")
    }, tags={ "Public" })
    @ApiResponses(value = { 
        @ApiResponse(responseCode = "200", description = "An array containing a `captcha` field containing a string with a base64 encoded captcha image.", content = @Content(mediaType = "application/json", schema = @Schema(implementation = CaptchaResponse.class))),
        
        @ApiResponse(responseCode = "401", description = "Unauthorized", content = @Content(mediaType = "application/json", schema = @Schema(implementation = InlineResponse401.class))) })
    public Response getCaptcha(@Context SecurityContext securityContext)
    throws NotFoundException {
        return service.getCaptcha(securityContext);
    }
}
