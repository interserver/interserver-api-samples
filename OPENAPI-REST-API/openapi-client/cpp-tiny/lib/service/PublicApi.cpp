#include "PublicApi.h"

using namespace Tiny;



        Response<
            std::list<std::string>
        >
        PublicApi::
        getAccountCurrencies(
        )
        {
            std::string url = basepath + "/account/currencies"; //


            // Headers  | 

            // Query    | 

            // Form     | 





            std::string payload = "";
            // Send Request
            // METHOD | GET
            // Body     | 
            int httpCode = sendRequest(url, "GET", reinterpret_cast<uint8_t*>(&payload[0]), payload.length());

            // Handle Request
            String output = getResponseBody();
            std::string output_string = output.c_str();



            std::list<std::string> obj = std::list<std::string>();
            bourne::json jsonPayload(output_string);








            
            for(auto& var : jsonPayload.array_range())
            {
                std::string tmp(var.dump());
                obj.push_back(tmp);
            }
            







            Response<std::list<std::string>> response(obj, httpCode);
            return response;
        }

        Response<
            String
        >
        PublicApi::
        getAccountLocales(
        )
        {
            std::string url = basepath + "/account/locales"; //


            // Headers  | 

            // Query    | 

            // Form     | 





            std::string payload = "";
            // Send Request
            // METHOD | GET
            // Body     | 
            int httpCode = sendRequest(url, "GET", reinterpret_cast<uint8_t*>(&payload[0]), payload.length());

            // Handle Request
            String output = getResponseBody();
            std::string output_string = output.c_str();



            //TODO: Implement map logic here




            //TODO: No support for maps.
            Response<String> response(output, httpCode);
            return response;
        }

        Response<
            CaptchaResponse
        >
        PublicApi::
        getCaptcha(
        )
        {
            std::string url = basepath + "/captcha"; //


            // Headers  | 

            // Query    | 

            // Form     | 





            std::string payload = "";
            // Send Request
            // METHOD | GET
            // Body     | 
            int httpCode = sendRequest(url, "GET", reinterpret_cast<uint8_t*>(&payload[0]), payload.length());

            // Handle Request
            String output = getResponseBody();
            std::string output_string = output.c_str();




            CaptchaResponse obj(output_string);


            Response<CaptchaResponse> response(obj, httpCode);
            return response;
        }

        Response<
            Object
        >
        PublicApi::
        getCountries(
            
            std::string fetchBy
            
        )
        {
            std::string url = basepath + "/account/countries"; //


            // Headers  | 

            // Query    | fetchBy 
            addQueryParam("fetch_by",fetchBy);

            // Form     | 





            std::string payload = "";
            // Send Request
            // METHOD | GET
            // Body     | 
            int httpCode = sendRequest(url, "GET", reinterpret_cast<uint8_t*>(&payload[0]), payload.length());

            // Handle Request
            String output = getResponseBody();
            std::string output_string = output.c_str();




            Object obj(output_string);


            Response<Object> response(obj, httpCode);
            return response;
        }

        Response<
            ServicesInfo
        >
        PublicApi::
        getInfo(
        )
        {
            std::string url = basepath + "/info"; //


            // Headers  | 

            // Query    | 

            // Form     | 





            std::string payload = "";
            // Send Request
            // METHOD | GET
            // Body     | 
            int httpCode = sendRequest(url, "GET", reinterpret_cast<uint8_t*>(&payload[0]), payload.length());

            // Handle Request
            String output = getResponseBody();
            std::string output_string = output.c_str();




            ServicesInfo obj(output_string);


            Response<ServicesInfo> response(obj, httpCode);
            return response;
        }

        Response<
            LoginInfo
        >
        PublicApi::
        getLoginInfo(
        )
        {
            std::string url = basepath + "/login"; //


            // Headers  | 

            // Query    | 

            // Form     | 





            std::string payload = "";
            // Send Request
            // METHOD | GET
            // Body     | 
            int httpCode = sendRequest(url, "GET", reinterpret_cast<uint8_t*>(&payload[0]), payload.length());

            // Handle Request
            String output = getResponseBody();
            std::string output_string = output.c_str();




            LoginInfo obj(output_string);


            Response<LoginInfo> response(obj, httpCode);
            return response;
        }

        Response<
            BuyItNowList
        >
        PublicApi::
        getMPServers(
        )
        {
            std::string url = basepath + "/buy_now_servers_list"; //


            // Headers  | 

            // Query    | 

            // Form     | 





            std::string payload = "";
            // Send Request
            // METHOD | GET
            // Body     | 
            int httpCode = sendRequest(url, "GET", reinterpret_cast<uint8_t*>(&payload[0]), payload.length());

            // Handle Request
            String output = getResponseBody();
            std::string output_string = output.c_str();




            BuyItNowList obj(output_string);


            Response<BuyItNowList> response(obj, httpCode);
            return response;
        }

        Response<
            GetOauthRedirect_200_response
        >
        PublicApi::
        getOauthRedirect(
            
            std::string provider
            
        )
        {
            std::string url = basepath + "/oauth"; //


            // Headers  | 

            // Query    | provider 
            addQueryParam("provider",provider);

            // Form     | 





            std::string payload = "";
            // Send Request
            // METHOD | GET
            // Body     | 
            int httpCode = sendRequest(url, "GET", reinterpret_cast<uint8_t*>(&payload[0]), payload.length());

            // Handle Request
            String output = getResponseBody();
            std::string output_string = output.c_str();




            GetOauthRedirect_200_response obj(output_string);


            Response<GetOauthRedirect_200_response> response(obj, httpCode);
            return response;
        }

        Response<
            std::list<std::string>
        >
        PublicApi::
        getTimezones(
        )
        {
            std::string url = basepath + "/account/timezones"; //


            // Headers  | 

            // Query    | 

            // Form     | 





            std::string payload = "";
            // Send Request
            // METHOD | GET
            // Body     | 
            int httpCode = sendRequest(url, "GET", reinterpret_cast<uint8_t*>(&payload[0]), payload.length());

            // Handle Request
            String output = getResponseBody();
            std::string output_string = output.c_str();



            std::list<std::string> obj = std::list<std::string>();
            bourne::json jsonPayload(output_string);








            
            for(auto& var : jsonPayload.array_range())
            {
                std::string tmp(var.dump());
                obj.push_back(tmp);
            }
            







            Response<std::list<std::string>> response(obj, httpCode);
            return response;
        }

        Response<
            PatchOauthTwoFactor_200_response
        >
        PublicApi::
        patchOauthTwoFactor(
            
            PatchOauthTwoFactor_request patchOauthTwoFactorRequest
            
        )
        {
            std::string url = basepath + "/oauth"; //


            // Headers  | 

            // Query    | 

            // Form     | 
            addHeader("Content-Type", "application/json");





            std::string payload = "";
            // Send Request
            // METHOD | PATCH
            // Body     | patchOauthTwoFactorRequest



            payload = patchOauthTwoFactorRequest.toJson().dump();

            int httpCode = sendRequest(url, "PATCH", reinterpret_cast<uint8_t*>(&payload[0]), payload.length());

            // Handle Request
            String output = getResponseBody();
            std::string output_string = output.c_str();




            PatchOauthTwoFactor_200_response obj(output_string);


            Response<PatchOauthTwoFactor_200_response> response(obj, httpCode);
            return response;
        }

        Response<
            std::string
        >
        PublicApi::
        pingServer(
        )
        {
            std::string url = basepath + "/ping"; //


            // Headers  | 

            // Query    | 

            // Form     | 





            std::string payload = "";
            // Send Request
            // METHOD | GET
            // Body     | 
            int httpCode = sendRequest(url, "GET", reinterpret_cast<uint8_t*>(&payload[0]), payload.length());

            // Handle Request
            String output = getResponseBody();
            std::string output_string = output.c_str();



            bourne::json jsonPayload(output_string);
            std::string obj;
            jsonToValue(&obj, jsonPayload, "std::string");



            Response<std::string> response(obj, httpCode);
            return response;
        }

        Response<
            PostOauthCallback_200_response
        >
        PublicApi::
        postOauthCallback(
            
            std::string provider
            , 
            
            PostOauthCallback_request postOauthCallbackRequest
            
        )
        {
            std::string url = basepath + "/oauth"; //


            // Headers  | 

            // Query    | provider 
            addQueryParam("provider",provider);

            // Form     | 
            addHeader("Content-Type", "application/json");





            std::string payload = "";
            // Send Request
            // METHOD | POST
            // Body     | postOauthCallbackRequest



            payload = postOauthCallbackRequest.toJson().dump();

            int httpCode = sendRequest(url, "POST", reinterpret_cast<uint8_t*>(&payload[0]), payload.length());

            // Handle Request
            String output = getResponseBody();
            std::string output_string = output.c_str();




            PostOauthCallback_200_response obj(output_string);


            Response<PostOauthCallback_200_response> response(obj, httpCode);
            return response;
        }

        Response<
            LoginSuccessResponse
        >
        PublicApi::
        submitLogin(
            
            std::string login
            , 
            
            std::string passwd
            , 
            
            std::string remember
            , 
            
            LoginSubmissionExample_g_recaptcha_response gRecaptchaResponse
            , 
            
            std::string tfa
            
        )
        {
            std::string url = basepath + "/login"; //


            // Headers  | 

            // Query    | 

            // Form     | login passwd remember gRecaptchaResponse tfa 
            addHeader("Content-Type", "application/x-www-form-urlencoded");

            addFormParam("login",login);
            addFormParam("passwd",passwd);
            addFormParam("remember",remember);
            addFormParam("g-recaptcha-response",gRecaptchaResponse);
            addFormParam("tfa",tfa);




            std::string payload = "";
            // Send Request
            // METHOD | POST
            // Body     | 
            int httpCode = sendRequest(url, "POST", reinterpret_cast<uint8_t*>(&payload[0]), payload.length());

            // Handle Request
            String output = getResponseBody();
            std::string output_string = output.c_str();




            LoginSuccessResponse obj(output_string);


            Response<LoginSuccessResponse> response(obj, httpCode);
            return response;
        }

        Response<
            String
        >
        PublicApi::
        submitSignup(
            
            LoginSubmissionExample loginSubmissionExample
            
        )
        {
            std::string url = basepath + "/signup"; //


            // Headers  | 

            // Query    | 

            // Form     | 
            addHeader("Content-Type", "application/json");





            std::string payload = "";
            // Send Request
            // METHOD | POST
            // Body     | loginSubmissionExample



            payload = loginSubmissionExample.toJson().dump();

            int httpCode = sendRequest(url, "POST", reinterpret_cast<uint8_t*>(&payload[0]), payload.length());

            // Handle Request
            String output = getResponseBody();
            std::string output_string = output.c_str();


            Response<String> response(output, httpCode);
            return response;
        }



