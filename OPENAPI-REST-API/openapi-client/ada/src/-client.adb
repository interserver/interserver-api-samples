--  ------------ EDIT NOTE ------------
--  InterServer Management API
--  # Overview  The InterServer Management API provides programmatic access to manage your InterServer services. Use this REST API to automate provisioning, configuration, and billing operations across your account.  The API covers the following service categories: _ [Domains](https://www.interserver.net/domains/) — registration, transfers, and DNS management _ [Web Hosting](https://www.interserver.net/hosting/) — shared and reseller hosting _ [VPS Hosting](https://www.interserver.net/vps/) — virtual private servers _ [Dedicated Servers](https://www.interserver.net/dedicated/) — bare metal and [Rapid Deploy Servers](https://www.interserver.net/dedicated/rapid_deploy.html) _ [Backups](https://www.interserver.net/storage/) — storage and backup services _ Licenses — control panel and software licenses _ [Mail](https://www.mail.baby/) — mail delivery services _ SSL — certificate provisioning _ Billing — invoices, payment methods, and account management  For interactive testing, see the [API documentation](/api_docs/).  # Authentication  Most endpoints require authentication. Two methods are supported:  ## API Key (Preferred)  Generate an API key from the [Account Security](https://my.interserver.net/account_security) page on [my.interserver.net](https://my.interserver.net/). Pass it in the `X_API_KEY` request header:  ``` X_API_KEY: your_api_key_here ```  ## Session_Based Authentication  Alternatively, authenticate by creating a session:  1. **Log in** — Send a `POST` request to `/login` with your account credentials. The response includes a session identifier. 2. **Pass the session ID** — Include the session identifier in the `sessionid` header on subsequent requests:  ``` sessionid: your_session_id_here ```  API key authentication is recommended for most integrations as it does not expire and avoids the overhead of session management.  
--  This file was generated with openapi-generator.  You can modify it to implement
--  the client.  After you modify this file, you should add the following line
--  to the .openapi-generator-ignore file:
--
--  src/.ads
--
--  Then, you can drop this edit note comment.
--  ------------ EDIT NOTE ------------
with .Clients;
with .Models;
with Swagger;
with Swagger.Credentials.OAuth;
with Util.Http.Clients.Aws;
with Ada.Text_IO;
with Ada.Command_Line;
with Ada.Calendar.Formatting;
with Ada.Exceptions;
procedure .Client is

   use Ada.Text_IO;

   procedure Usage;

   Server    : constant Swagger.UString := Swagger.To_UString ("http://localhost:8080/v2");
   Arg_Count : constant Natural := Ada.Command_Line.Argument_Count;
   Arg       : Positive := 1;

   procedure Usage is
   begin
      Put_Line ("Usage: Interserver_Api {params}...");
   end Usage;

begin
   if Arg_Count <= 1 then
      Usage;
      return;
   end if;
   Util.Http.Clients.Aws.Register;
   declare
      Command : constant String := Ada.Command_Line.Argument (Arg);
      Item    : constant String := Ada.Command_Line.Argument (Arg + 1);
      Cred    : aliased Swagger.Credentials.OAuth.OAuth2_Credential_Type;
      C       : .Clients.Client_Type;
   begin
      C.Set_Server (Server);
      C.Set_Credentials (Cred'Unchecked_Access);
      Arg := Arg + 2;

   exception
      when E : Constraint_Error =>
         Put_Line ("Constraint error raised: " & Ada.Exceptions.Exception_Message (E));

   end;
end .Client;
