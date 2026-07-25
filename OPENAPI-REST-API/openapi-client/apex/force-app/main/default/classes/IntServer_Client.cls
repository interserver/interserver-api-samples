public class IntServer_Client extends OAS.ApiClient {
    public IntServer_Client() {
        basePath = 'https://my.interserver.net/apiv2';
        calloutName = 'Interserver_API';
        authentications.put('apiKeyAuth', new OAS.ApiKeyHeaderAuth('X-API-KEY'));
        authentications.put('sessionIdHeaderAuth', new OAS.ApiKeyHeaderAuth('sessionid'));
        authentications.put('sessionIdCookieAuth', new OAS.ApiKeyHeaderAuth('sessionid'));
    }
}
