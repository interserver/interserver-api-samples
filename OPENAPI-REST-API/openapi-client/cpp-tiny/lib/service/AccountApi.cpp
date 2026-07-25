#include "AccountApi.h"

using namespace Tiny;



        Response<
            SuccessTextResponse
        >
        AccountApi::
        deleteAccountOauthName(
            
            std::string name
            
        )
        {
            std::string url = basepath + "/account/oauth/{name}"; //name 


            // Headers  | 

            // Query    | 

            // Form     | 



                std::string s_name("{");
                s_name.append("name");
                s_name.append("}");

                int pos = url.find(s_name);

                url.erase(pos, s_name.length());
                url.insert(pos, stringify(name));


            std::string payload = "";
            // Send Request
            // METHOD | DELETE
            // Body     | 
            int httpCode = sendRequest(url, "DELETE", reinterpret_cast<uint8_t*>(&payload[0]), payload.length());

            // Handle Request
            String output = getResponseBody();
            std::string output_string = output.c_str();




            SuccessTextResponse obj(output_string);


            Response<SuccessTextResponse> response(obj, httpCode);
            return response;
        }

        Response<
            SuccessTextResponse
        >
        AccountApi::
        deleteAccountTfa(
        )
        {
            std::string url = basepath + "/account/2fa"; //


            // Headers  | 

            // Query    | 

            // Form     | 





            std::string payload = "";
            // Send Request
            // METHOD | DELETE
            // Body     | 
            int httpCode = sendRequest(url, "DELETE", reinterpret_cast<uint8_t*>(&payload[0]), payload.length());

            // Handle Request
            String output = getResponseBody();
            std::string output_string = output.c_str();




            SuccessTextResponse obj(output_string);


            Response<SuccessTextResponse> response(obj, httpCode);
            return response;
        }

        Response<
            GenericResponse
        >
        AccountApi::
        deleteIpLimit(
            
            IpLimitRange ipLimitRange
            
        )
        {
            std::string url = basepath + "/account/iplimits"; //


            // Headers  | 

            // Query    | 

            // Form     | 
            addHeader("Content-Type", "application/json");





            std::string payload = "";
            // Send Request
            // METHOD | PATCH
            // Body     | ipLimitRange



            payload = ipLimitRange.toJson().dump();

            int httpCode = sendRequest(url, "PATCH", reinterpret_cast<uint8_t*>(&payload[0]), payload.length());

            // Handle Request
            String output = getResponseBody();
            std::string output_string = output.c_str();




            GenericResponse obj(output_string);


            Response<GenericResponse> response(obj, httpCode);
            return response;
        }

        Response<
            AccountInfo
        >
        AccountApi::
        getAccountInfo(
        )
        {
            std::string url = basepath + "/account"; //


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




            AccountInfo obj(output_string);


            Response<AccountInfo> response(obj, httpCode);
            return response;
        }

        Response<
            GetAccountTfaSetup_200_response
        >
        AccountApi::
        getAccountTfaSetup(
        )
        {
            std::string url = basepath + "/account/2fa"; //


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




            GetAccountTfaSetup_200_response obj(output_string);


            Response<GetAccountTfaSetup_200_response> response(obj, httpCode);
            return response;
        }

        Response<
            Home
        >
        AccountApi::
        getHome(
        )
        {
            std::string url = basepath + "/home"; //


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




            Home obj(output_string);


            Response<Home> response(obj, httpCode);
            return response;
        }

        Response<
            SearchAutocompleteResponse&lt;std::string, Object&gt;
        >
        AccountApi::
        getSearch(
        )
        {
            std::string url = basepath + "/search"; //


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




            SearchAutocompleteResponse&lt;std::string, Object&gt; obj(output_string);


            Response<SearchAutocompleteResponse&lt;std::string, Object&gt;> response(obj, httpCode);
            return response;
        }

        Response<
            SuccessTextResponse
        >
        AccountApi::
        logout(
        )
        {
            std::string url = basepath + "/logout"; //


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




            SuccessTextResponse obj(output_string);


            Response<SuccessTextResponse> response(obj, httpCode);
            return response;
        }

        Response<
            SuccessTextResponse
        >
        AccountApi::
        logoutAccountOauth(
            
            std::string name
            
        )
        {
            std::string url = basepath + "/account/oauth/{name}/logout"; //name 


            // Headers  | 

            // Query    | 

            // Form     | 



                std::string s_name("{");
                s_name.append("name");
                s_name.append("}");

                int pos = url.find(s_name);

                url.erase(pos, s_name.length());
                url.insert(pos, stringify(name));


            std::string payload = "";
            // Send Request
            // METHOD | GET
            // Body     | 
            int httpCode = sendRequest(url, "GET", reinterpret_cast<uint8_t*>(&payload[0]), payload.length());

            // Handle Request
            String output = getResponseBody();
            std::string output_string = output.c_str();




            SuccessTextResponse obj(output_string);


            Response<SuccessTextResponse> response(obj, httpCode);
            return response;
        }

        Response<
            SuccessTextResponse
        >
        AccountApi::
        updateAccountApiKey(
        )
        {
            std::string url = basepath + "/account/apikey"; //


            // Headers  | 

            // Query    | 

            // Form     | 





            std::string payload = "";
            // Send Request
            // METHOD | POST
            // Body     | 
            int httpCode = sendRequest(url, "POST", reinterpret_cast<uint8_t*>(&payload[0]), payload.length());

            // Handle Request
            String output = getResponseBody();
            std::string output_string = output.c_str();




            SuccessTextResponse obj(output_string);


            Response<SuccessTextResponse> response(obj, httpCode);
            return response;
        }

        Response<
            SuccessTextResponse
        >
        AccountApi::
        updateAccountFeatures(
            
            int disableReset
            , 
            
            int disableReinstall
            
        )
        {
            std::string url = basepath + "/account/features"; //


            // Headers  | 

            // Query    | 

            // Form     | disableReset disableReinstall 
            addHeader("Content-Type", "application/x-www-form-urlencoded");

            addFormParam("disable_reset",disableReset);
            addFormParam("disable_reinstall",disableReinstall);




            std::string payload = "";
            // Send Request
            // METHOD | POST
            // Body     | 
            int httpCode = sendRequest(url, "POST", reinterpret_cast<uint8_t*>(&payload[0]), payload.length());

            // Handle Request
            String output = getResponseBody();
            std::string output_string = output.c_str();




            SuccessTextResponse obj(output_string);


            Response<SuccessTextResponse> response(obj, httpCode);
            return response;
        }

        Response<
            SuccessTextResponse
        >
        AccountApi::
        updateAccountInfo(
            
            std::string name
            , 
            
            std::string address
            , 
            
            std::string city
            , 
            
            std::string state
            , 
            
            std::string zip
            , 
            
            std::string country
            , 
            
            std::string phone
            , 
            
            std::string company
            , 
            
            std::string address2
            , 
            
            std::string locale
            , 
            
            std::string emailInvoices
            , 
            
            std::string emailAbuse
            , 
            
            bool disableReset
            , 
            
            bool disableReinstall
            , 
            
            bool disableServerNotifications
            , 
            
            bool disableEmailNotifications
            , 
            
            std::string gstin
            
        )
        {
            std::string url = basepath + "/account"; //


            // Headers  | 

            // Query    | 

            // Form     | name company address address2 city state zip country phone locale emailInvoices emailAbuse disableReset disableReinstall disableServerNotifications disableEmailNotifications gstin 
            addHeader("Content-Type", "application/x-www-form-urlencoded");

            addFormParam("name",name);
            addFormParam("company",company);
            addFormParam("address",address);
            addFormParam("address2",address2);
            addFormParam("city",city);
            addFormParam("state",state);
            addFormParam("zip",zip);
            addFormParam("country",country);
            addFormParam("phone",phone);
            addFormParam("locale",locale);
            addFormParam("email_invoices",emailInvoices);
            addFormParam("email_abuse",emailAbuse);
            addFormParam("disable_reset",disableReset);
            addFormParam("disable_reinstall",disableReinstall);
            addFormParam("disable_server_notifications",disableServerNotifications);
            addFormParam("disable_email_notifications",disableEmailNotifications);
            addFormParam("gstin",gstin);




            std::string payload = "";
            // Send Request
            // METHOD | POST
            // Body     | 
            int httpCode = sendRequest(url, "POST", reinterpret_cast<uint8_t*>(&payload[0]), payload.length());

            // Handle Request
            String output = getResponseBody();
            std::string output_string = output.c_str();




            SuccessTextResponse obj(output_string);


            Response<SuccessTextResponse> response(obj, httpCode);
            return response;
        }

        Response<
            SuccessTextResponse
        >
        AccountApi::
        updateAccountIpLimits(
            
            std::string start
            , 
            
            std::string end
            
        )
        {
            std::string url = basepath + "/account/iplimits"; //


            // Headers  | 

            // Query    | 

            // Form     | start end 
            addHeader("Content-Type", "application/x-www-form-urlencoded");

            addFormParam("start",start);
            addFormParam("end",end);




            std::string payload = "";
            // Send Request
            // METHOD | POST
            // Body     | 
            int httpCode = sendRequest(url, "POST", reinterpret_cast<uint8_t*>(&payload[0]), payload.length());

            // Handle Request
            String output = getResponseBody();
            std::string output_string = output.c_str();




            SuccessTextResponse obj(output_string);


            Response<SuccessTextResponse> response(obj, httpCode);
            return response;
        }

        Response<
            TextResponse
        >
        AccountApi::
        updateAccountPassword(
            
            std::string password
            
        )
        {
            std::string url = basepath + "/account/password"; //


            // Headers  | 

            // Query    | 

            // Form     | password 
            addHeader("Content-Type", "application/x-www-form-urlencoded");

            addFormParam("password",password);




            std::string payload = "";
            // Send Request
            // METHOD | POST
            // Body     | 
            int httpCode = sendRequest(url, "POST", reinterpret_cast<uint8_t*>(&payload[0]), payload.length());

            // Handle Request
            String output = getResponseBody();
            std::string output_string = output.c_str();




            TextResponse obj(output_string);


            Response<TextResponse> response(obj, httpCode);
            return response;
        }

        Response<
            SuccessTextResponse
        >
        AccountApi::
        updateAccountSshKey(
            
            std::string sshKey
            
        )
        {
            std::string url = basepath + "/account/sshkey"; //


            // Headers  | 

            // Query    | 

            // Form     | sshKey 
            addHeader("Content-Type", "application/x-www-form-urlencoded");

            addFormParam("ssh_key",sshKey);




            std::string payload = "";
            // Send Request
            // METHOD | POST
            // Body     | 
            int httpCode = sendRequest(url, "POST", reinterpret_cast<uint8_t*>(&payload[0]), payload.length());

            // Handle Request
            String output = getResponseBody();
            std::string output_string = output.c_str();




            SuccessTextResponse obj(output_string);


            Response<SuccessTextResponse> response(obj, httpCode);
            return response;
        }

        Response<
            SuccessTextResponse
        >
        AccountApi::
        updateAccountTfa(
            
            std::string r_2fa_google_code
            
        )
        {
            std::string url = basepath + "/account/2fa"; //


            // Headers  | 

            // Query    | 

            // Form     | r_2fa_google_code 
            addHeader("Content-Type", "application/x-www-form-urlencoded");

            addFormParam("2fa_google_code",r_2fa_google_code);




            std::string payload = "";
            // Send Request
            // METHOD | POST
            // Body     | 
            int httpCode = sendRequest(url, "POST", reinterpret_cast<uint8_t*>(&payload[0]), payload.length());

            // Handle Request
            String output = getResponseBody();
            std::string output_string = output.c_str();




            SuccessTextResponse obj(output_string);


            Response<SuccessTextResponse> response(obj, httpCode);
            return response;
        }



