package io.swagger.api;

import io.swagger.model.*;
import io.swagger.api.OauthApiService;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.Parameter;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.media.ArraySchema;
import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.security.SecurityRequirement;

import io.swagger.model.InlineResponse2006;
import io.swagger.model.InlineResponse2007;
import io.swagger.model.InlineResponse2008;
import io.swagger.model.InlineResponse401;
import io.swagger.model.OauthBody;
import io.swagger.model.OauthBody2;

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
@Path("/oauth")



public class OauthApi  {

    @Inject OauthApiService service;

    @GET
    
    
    @Produces({ "application/json" })
    @Operation(summary = "Begin OAuth login flow — redirect user to provider for authentication", description = "Use as step 1 of social login. Navigate the browser (typically a popup) to `/apiv2/oauth?provider=X` so the provider authenticates the user, then handle the postMessage from the popup. Public — no auth required. Query params: `provider` (required, case-sensitive: `Google`/`GitHub`/`Facebook`/`Twitter`), `origin` (optional, opener window origin used to target postMessage instead of `*`). The endpoint redirects directly to the provider rather than returning JSON. After the provider callback, the popup posts one of: `oauth_success` (logged in), `oauth_2fa_required` (call `patchOauthTwoFactor` with the `oauth_token`), `oauth_link_required` (call `postOauthCallback` to link or create), or `oauth_error`. Siblings: `postOauthCallback`, `patchOauthTwoFactor`, `submitLogin` (password flow).", security = {
        @SecurityRequirement(name = "apiKeyAuth"),
@SecurityRequirement(name = "sessionIdCookieAuth"),
@SecurityRequirement(name = "sessionIdHeaderAuth")
    }, tags={ "Public" })
    @ApiResponses(value = { 
        @ApiResponse(responseCode = "200", description = "OAuth redirect URL for the requested provider.", content = @Content(mediaType = "application/json", schema = @Schema(implementation = InlineResponse2006.class))),
        
        @ApiResponse(responseCode = "401", description = "Unauthorized", content = @Content(mediaType = "application/json", schema = @Schema(implementation = InlineResponse401.class))) })
    public Response getOauthRedirect( @NotNull  @QueryParam("provider") String provider,@Context SecurityContext securityContext)
    throws NotFoundException {
        return service.getOauthRedirect(provider,securityContext);
    }
    @PATCH
    
    @Consumes({ "application/json", "multipart/form-data" })
    @Produces({ "application/json" })
    @Operation(summary = "Submit 2FA code to finish OAuth login when account has 2FA enabled", description = "Final step of the OAuth login flow when the account has 2FA enabled. Called after `postOauthCallback` (or the popup's `window.postMessage()` handshake) returned `2fa_required`. Verifies the TOTP against the account's stored Google Authenticator secret and creates the session. Public — no auth required. Sibling ops: `postOauthCallback` (prior step), `getOauthRedirect` (entry point), `getAccountTfaSetup` (enroll 2FA), `submitLogin`.  **Body fields** (JSON or form): - `code` (string, required) — 6-digit TOTP from the authenticator app. - `account_id` (integer, required) — returned by the prior `postOauthCallback`. - `oauth_token` (string, optional) — signed token from the original `postMessage` payload, type `2fa`, 10-minute expiry. When present, its embedded OAuth profile data is merged into the account (name / picture / phone / address) for any fields still empty.  **Returns:** `{ login: true, sessionId, account_id, account_lid, ima, name, gravatar }`.  **Errors:** - `400` — invalid / expired `oauth_token` or no pending verification. - `401` — invalid 2FA code. - `409` — 2FA not enabled on the account. - `422` — missing `code`.  **Related calls:** - **Prerequisite:** `postOauthCallback`. - **Enroll 2FA on the account first:** `getAccountTfaSetup` → `updateAccountTfa`. - **Alternate login:** `submitLogin`. ", security = {
        @SecurityRequirement(name = "apiKeyAuth"),
@SecurityRequirement(name = "sessionIdCookieAuth"),
@SecurityRequirement(name = "sessionIdHeaderAuth")
    }, tags={ "Public" })
    @ApiResponses(value = { 
        @ApiResponse(responseCode = "200", description = "OAuth 2FA verification result.", content = @Content(mediaType = "application/json", schema = @Schema(implementation = InlineResponse2008.class))),
        
        @ApiResponse(responseCode = "401", description = "Unauthorized", content = @Content(mediaType = "application/json", schema = @Schema(implementation = InlineResponse401.class))) })
    public Response patchOauthTwoFactor(
@Parameter(description = "" ,required=true) OauthBody2 body
,@Context SecurityContext securityContext)
    throws NotFoundException {
        return service.patchOauthTwoFactor(body,securityContext);
    }
    @PATCH
    
    @Consumes({ "application/json", "multipart/form-data" })
    @Produces({ "application/json" })
    @Operation(summary = "Submit 2FA code to finish OAuth login when account has 2FA enabled", description = "Final step of the OAuth login flow when the account has 2FA enabled. Called after `postOauthCallback` (or the popup's `window.postMessage()` handshake) returned `2fa_required`. Verifies the TOTP against the account's stored Google Authenticator secret and creates the session. Public — no auth required. Sibling ops: `postOauthCallback` (prior step), `getOauthRedirect` (entry point), `getAccountTfaSetup` (enroll 2FA), `submitLogin`.  **Body fields** (JSON or form): - `code` (string, required) — 6-digit TOTP from the authenticator app. - `account_id` (integer, required) — returned by the prior `postOauthCallback`. - `oauth_token` (string, optional) — signed token from the original `postMessage` payload, type `2fa`, 10-minute expiry. When present, its embedded OAuth profile data is merged into the account (name / picture / phone / address) for any fields still empty.  **Returns:** `{ login: true, sessionId, account_id, account_lid, ima, name, gravatar }`.  **Errors:** - `400` — invalid / expired `oauth_token` or no pending verification. - `401` — invalid 2FA code. - `409` — 2FA not enabled on the account. - `422` — missing `code`.  **Related calls:** - **Prerequisite:** `postOauthCallback`. - **Enroll 2FA on the account first:** `getAccountTfaSetup` → `updateAccountTfa`. - **Alternate login:** `submitLogin`. ", security = {
        @SecurityRequirement(name = "apiKeyAuth"),
@SecurityRequirement(name = "sessionIdCookieAuth"),
@SecurityRequirement(name = "sessionIdHeaderAuth")
    }, tags={ "Public" })
    @ApiResponses(value = { 
        @ApiResponse(responseCode = "200", description = "OAuth 2FA verification result.", content = @Content(mediaType = "application/json", schema = @Schema(implementation = InlineResponse2008.class))),
        
        @ApiResponse(responseCode = "401", description = "Unauthorized", content = @Content(mediaType = "application/json", schema = @Schema(implementation = InlineResponse401.class))) })
    public Response patchOauthTwoFactor(@Parameter(description = "", required=true)@FormParam("account_id")  Integer accountId,@Parameter(description = "", required=true)@FormParam("code")  String code,@Context SecurityContext securityContext)
    throws NotFoundException {
        return service.patchOauthTwoFactor(accountId,code,securityContext);
    }
    @POST
    
    @Consumes({ "application/json", "multipart/form-data" })
    @Produces({ "application/json" })
    @Operation(summary = "Complete OAuth login by linking provider to existing or new account", description = "Step 3 of the OAuth login flow. Called after `getOauthRedirect` returned `oauth_link_required` via the popup's `window.postMessage()`. Either links the OAuth identity to an existing account (verifying password) or creates a new account. Public — no auth required. Sibling ops: `patchOauthTwoFactor` (2FA follow-up), `getOauthRedirect` (start the flow), `submitSignup`, `submitLogin`.  **Body fields** (JSON or form): - `oauth_token` (string, required) — signed token from the popup's `window.postMessage()` payload; 10-minute expiry. - `login` (string, required) — email. - `password` (string, required). - `create` (boolean, optional) — set `true` to create a new account instead of linking. - `email_confirmation` (string, conditional) — 8-char code emailed on the first `create=true` attempt; server returns 422 `email_verification_required` until provided. - `tfa` (string, conditional) — 6-digit TOTP when the existing account has 2FA enabled (after the first attempt returns 422 `2fa_required`).  **Returns:** `{ login|signup|linked: true, sessionId, account_id, account_lid, ima, name, gravatar }`.  **Errors:** - `400` — invalid / expired `oauth_token`. - `401` — bad password or wrong 2FA code. - `409` — account already exists (when `create: true`). - `422` — missing field; `email_verification_required`; `2fa_required`.  **Related calls:** - **Prerequisite:** `getOauthRedirect` to initiate the popup flow. - **Follow-up when 2FA required:** `patchOauthTwoFactor`. - **Alternate entry points:** `submitLogin`, `submitSignup`. ", security = {
        @SecurityRequirement(name = "apiKeyAuth"),
@SecurityRequirement(name = "sessionIdCookieAuth"),
@SecurityRequirement(name = "sessionIdHeaderAuth")
    }, tags={ "Public" })
    @ApiResponses(value = { 
        @ApiResponse(responseCode = "200", description = "OAuth callback result.", content = @Content(mediaType = "application/json", schema = @Schema(implementation = InlineResponse2007.class))),
        
        @ApiResponse(responseCode = "401", description = "Unauthorized", content = @Content(mediaType = "application/json", schema = @Schema(implementation = InlineResponse401.class))) })
    public Response postOauthCallback( @NotNull  @QueryParam("provider") String provider,
@Parameter(description = "" ) OauthBody body
,@Context SecurityContext securityContext)
    throws NotFoundException {
        return service.postOauthCallback(provider,body,securityContext);
    }
    @POST
    
    @Consumes({ "application/json", "multipart/form-data" })
    @Produces({ "application/json" })
    @Operation(summary = "Complete OAuth login by linking provider to existing or new account", description = "Step 3 of the OAuth login flow. Called after `getOauthRedirect` returned `oauth_link_required` via the popup's `window.postMessage()`. Either links the OAuth identity to an existing account (verifying password) or creates a new account. Public — no auth required. Sibling ops: `patchOauthTwoFactor` (2FA follow-up), `getOauthRedirect` (start the flow), `submitSignup`, `submitLogin`.  **Body fields** (JSON or form): - `oauth_token` (string, required) — signed token from the popup's `window.postMessage()` payload; 10-minute expiry. - `login` (string, required) — email. - `password` (string, required). - `create` (boolean, optional) — set `true` to create a new account instead of linking. - `email_confirmation` (string, conditional) — 8-char code emailed on the first `create=true` attempt; server returns 422 `email_verification_required` until provided. - `tfa` (string, conditional) — 6-digit TOTP when the existing account has 2FA enabled (after the first attempt returns 422 `2fa_required`).  **Returns:** `{ login|signup|linked: true, sessionId, account_id, account_lid, ima, name, gravatar }`.  **Errors:** - `400` — invalid / expired `oauth_token`. - `401` — bad password or wrong 2FA code. - `409` — account already exists (when `create: true`). - `422` — missing field; `email_verification_required`; `2fa_required`.  **Related calls:** - **Prerequisite:** `getOauthRedirect` to initiate the popup flow. - **Follow-up when 2FA required:** `patchOauthTwoFactor`. - **Alternate entry points:** `submitLogin`, `submitSignup`. ", security = {
        @SecurityRequirement(name = "apiKeyAuth"),
@SecurityRequirement(name = "sessionIdCookieAuth"),
@SecurityRequirement(name = "sessionIdHeaderAuth")
    }, tags={ "Public" })
    @ApiResponses(value = { 
        @ApiResponse(responseCode = "200", description = "OAuth callback result.", content = @Content(mediaType = "application/json", schema = @Schema(implementation = InlineResponse2007.class))),
        
        @ApiResponse(responseCode = "401", description = "Unauthorized", content = @Content(mediaType = "application/json", schema = @Schema(implementation = InlineResponse401.class))) })
    public Response postOauthCallback( @NotNull  @QueryParam("provider") String provider,@Parameter(description = "")@FormParam("provider")  String provider2,@Context SecurityContext securityContext)
    throws NotFoundException {
        return service.postOauthCallback(provider,provider2,securityContext);
    }
}
