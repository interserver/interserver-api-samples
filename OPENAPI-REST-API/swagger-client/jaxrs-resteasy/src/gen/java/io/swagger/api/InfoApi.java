package io.swagger.api;

import io.swagger.model.*;
import io.swagger.api.InfoApiService;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.Parameter;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.media.ArraySchema;
import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.security.SecurityRequirement;

import io.swagger.model.InlineResponse401;
import io.swagger.model.ServicesInfo;

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
@Path("/info")



public class InfoApi  {

    @Inject InfoApiService service;

    @GET
    
    
    @Produces({ "application/json" })
    @Operation(summary = "Discover available modules, service packages, categories, and types", description = "Enumerates what services this MyAdmin install sells before placing orders or building a signup UI. Public — no auth required. Sibling ops: `getNewVps`, `getNewWebsite`, `getNewMail`, `getNewSsl`, `getNewLicense`, `getNewBackup`, `getNewQs`, `getNewServer` — each module's catalog op for buyable-package details.  **Path/Query/Body:** None.  **Returns:** `{ modules, services, serviceTypes, serviceCategories }`. - `modules` (array) — enabled plugin modules (`vps`, `webhosting`, `domains`, `ssl`, etc.). - `services` (object) — map of `services_id` → row from the `services` table, filtered to `services_buyable=1 AND services_hidden=0`, with `services_ourcost` / `services_hidden` stripped, and `services_id` / `services_category` / `services_type` cast to int and `services_cost` cast to float. - `serviceTypes` (object) — joins service rows to human-readable type names. - `serviceCategories` (object) — joins service rows to category names.  **Auth:** None.  **Errors:** No documented error path; 401 only if a stricter auth layer is added upstream.  **Related calls:** - **Module-specific order catalog:** `getNewVps`, `getNewWebsite`, `getNewMail`, `getNewSsl`, `getNewLicense`, `getNewBackup`, `getNewQs`, `getNewServer`. - **Deeper health probe:** `pingServer`. ", security = {
        @SecurityRequirement(name = "apiKeyAuth"),
@SecurityRequirement(name = "sessionIdCookieAuth"),
@SecurityRequirement(name = "sessionIdHeaderAuth")
    }, tags={ "Public" })
    @ApiResponses(value = { 
        @ApiResponse(responseCode = "200", description = "The modules and services information from the server.", content = @Content(mediaType = "application/json", schema = @Schema(implementation = ServicesInfo.class))),
        
        @ApiResponse(responseCode = "401", description = "Unauthorized", content = @Content(mediaType = "application/json", schema = @Schema(implementation = InlineResponse401.class))) })
    public Response getInfo(@Context SecurityContext securityContext)
    throws NotFoundException {
        return service.getInfo(securityContext);
    }
}
