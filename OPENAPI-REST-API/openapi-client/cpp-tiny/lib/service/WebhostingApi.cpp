#include "WebhostingApi.h"

using namespace Tiny;



        Response<
            ServiceOrderPostResponse
        >
        WebhostingApi::
        addWebsite(
            
            WebsiteOrderPostRequest websiteOrderPostRequest
            
        )
        {
            std::string url = basepath + "/websites/order"; //


            // Headers  | 

            // Query    | 

            // Form     | 
            addHeader("Content-Type", "application/json");





            std::string payload = "";
            // Send Request
            // METHOD | POST
            // Body     | websiteOrderPostRequest



            payload = websiteOrderPostRequest.toJson().dump();

            int httpCode = sendRequest(url, "POST", reinterpret_cast<uint8_t*>(&payload[0]), payload.length());

            // Handle Request
            String output = getResponseBody();
            std::string output_string = output.c_str();




            ServiceOrderPostResponse obj(output_string);


            Response<ServiceOrderPostResponse> response(obj, httpCode);
            return response;
        }

        Response<
            WebsitesOrder
        >
        WebhostingApi::
        getNewWebsite(
        )
        {
            std::string url = basepath + "/websites/order"; //


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




            WebsitesOrder obj(output_string);


            Response<WebsitesOrder> response(obj, httpCode);
            return response;
        }

        Response<
            GetWebsiteBuyIp_200_response
        >
        WebhostingApi::
        getWebsiteBuyIp(
            
            int id
            
        )
        {
            std::string url = basepath + "/websites/{id}/buy_ip"; //id 


            // Headers  | 

            // Query    | 

            // Form     | 



                std::string s_id("{");
                s_id.append("id");
                s_id.append("}");

                int pos = url.find(s_id);

                url.erase(pos, s_id.length());
                url.insert(pos, stringify(id));


            std::string payload = "";
            // Send Request
            // METHOD | GET
            // Body     | 
            int httpCode = sendRequest(url, "GET", reinterpret_cast<uint8_t*>(&payload[0]), payload.length());

            // Handle Request
            String output = getResponseBody();
            std::string output_string = output.c_str();




            GetWebsiteBuyIp_200_response obj(output_string);


            Response<GetWebsiteBuyIp_200_response> response(obj, httpCode);
            return response;
        }

        Response<
            Website
        >
        WebhostingApi::
        getWebsiteInfo(
            
            int id
            
        )
        {
            std::string url = basepath + "/websites/{id}"; //id 


            // Headers  | 

            // Query    | 

            // Form     | 



                std::string s_id("{");
                s_id.append("id");
                s_id.append("}");

                int pos = url.find(s_id);

                url.erase(pos, s_id.length());
                url.insert(pos, stringify(id));


            std::string payload = "";
            // Send Request
            // METHOD | GET
            // Body     | 
            int httpCode = sendRequest(url, "GET", reinterpret_cast<uint8_t*>(&payload[0]), payload.length());

            // Handle Request
            String output = getResponseBody();
            std::string output_string = output.c_str();




            Website obj(output_string);


            Response<Website> response(obj, httpCode);
            return response;
        }

        Response<
            ChargeInvoiceRows
        >
        WebhostingApi::
        getWebsiteInvoices(
            
            int id
            
        )
        {
            std::string url = basepath + "/websites/{id}/invoices"; //id 


            // Headers  | 

            // Query    | 

            // Form     | 



                std::string s_id("{");
                s_id.append("id");
                s_id.append("}");

                int pos = url.find(s_id);

                url.erase(pos, s_id.length());
                url.insert(pos, stringify(id));


            std::string payload = "";
            // Send Request
            // METHOD | GET
            // Body     | 
            int httpCode = sendRequest(url, "GET", reinterpret_cast<uint8_t*>(&payload[0]), payload.length());

            // Handle Request
            String output = getResponseBody();
            std::string output_string = output.c_str();




            ChargeInvoiceRows obj(output_string);


            Response<ChargeInvoiceRows> response(obj, httpCode);
            return response;
        }

        Response<
            std::list<WebsiteRow>
        >
        WebhostingApi::
        getWebsiteList(
        )
        {
            std::string url = basepath + "/websites"; //


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



            std::list<WebsiteRow> obj = std::list<WebsiteRow>();
            bourne::json jsonPayload(output_string);








            
            for(auto& var : jsonPayload.array_range())
            {
                WebsiteRow tmp(var.dump());
                obj.push_back(tmp);
            }
            







            Response<std::list<WebsiteRow>> response(obj, httpCode);
            return response;
        }

        Response<
            WebsiteBackups
        >
        WebhostingApi::
        getWebsitesBackups(
            
            int id
            
        )
        {
            std::string url = basepath + "/websites/{id}/backups"; //id 


            // Headers  | 

            // Query    | 

            // Form     | 



                std::string s_id("{");
                s_id.append("id");
                s_id.append("}");

                int pos = url.find(s_id);

                url.erase(pos, s_id.length());
                url.insert(pos, stringify(id));


            std::string payload = "";
            // Send Request
            // METHOD | GET
            // Body     | 
            int httpCode = sendRequest(url, "GET", reinterpret_cast<uint8_t*>(&payload[0]), payload.length());

            // Handle Request
            String output = getResponseBody();
            std::string output_string = output.c_str();




            WebsiteBackups obj(output_string);


            Response<WebsiteBackups> response(obj, httpCode);
            return response;
        }

        Response<
            WebsiteLoginResponse
        >
        WebhostingApi::
        getWebsitesLogin(
            
            int id
            
        )
        {
            std::string url = basepath + "/websites/{id}/login"; //id 


            // Headers  | 

            // Query    | 

            // Form     | 



                std::string s_id("{");
                s_id.append("id");
                s_id.append("}");

                int pos = url.find(s_id);

                url.erase(pos, s_id.length());
                url.insert(pos, stringify(id));


            std::string payload = "";
            // Send Request
            // METHOD | GET
            // Body     | 
            int httpCode = sendRequest(url, "GET", reinterpret_cast<uint8_t*>(&payload[0]), payload.length());

            // Handle Request
            String output = getResponseBody();
            std::string output_string = output.c_str();




            WebsiteLoginResponse obj(output_string);


            Response<WebsiteLoginResponse> response(obj, httpCode);
            return response;
        }

        Response<
            SuccessTextResponse
        >
        WebhostingApi::
        getWebsitesWelcomeEmail(
            
            int id
            
        )
        {
            std::string url = basepath + "/websites/{id}/welcome_email"; //id 


            // Headers  | 

            // Query    | 

            // Form     | 



                std::string s_id("{");
                s_id.append("id");
                s_id.append("}");

                int pos = url.find(s_id);

                url.erase(pos, s_id.length());
                url.insert(pos, stringify(id));


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
            ReverseDnsEntries
        >
        WebhostingApi::
        gettWebsiteReverseDns(
            
            int id
            
        )
        {
            std::string url = basepath + "/websites/{id}/reverse_dns"; //id 


            // Headers  | 

            // Query    | 

            // Form     | 



                std::string s_id("{");
                s_id.append("id");
                s_id.append("}");

                int pos = url.find(s_id);

                url.erase(pos, s_id.length());
                url.insert(pos, stringify(id));


            std::string payload = "";
            // Send Request
            // METHOD | GET
            // Body     | 
            int httpCode = sendRequest(url, "GET", reinterpret_cast<uint8_t*>(&payload[0]), payload.length());

            // Handle Request
            String output = getResponseBody();
            std::string output_string = output.c_str();




            ReverseDnsEntries obj(output_string);


            Response<ReverseDnsEntries> response(obj, httpCode);
            return response;
        }

        Response<
            PostWebsiteBuyIp_200_response
        >
        WebhostingApi::
        postWebsiteBuyIp(
            
            int id
            , 
            
            PostWebsiteBuyIp_request postWebsiteBuyIpRequest
            
        )
        {
            std::string url = basepath + "/websites/{id}/buy_ip"; //id 


            // Headers  | 

            // Query    | 

            // Form     | 
            addHeader("Content-Type", "application/json");



                std::string s_id("{");
                s_id.append("id");
                s_id.append("}");

                int pos = url.find(s_id);

                url.erase(pos, s_id.length());
                url.insert(pos, stringify(id));


            std::string payload = "";
            // Send Request
            // METHOD | POST
            // Body     | postWebsiteBuyIpRequest



            payload = postWebsiteBuyIpRequest.toJson().dump();

            int httpCode = sendRequest(url, "POST", reinterpret_cast<uint8_t*>(&payload[0]), payload.length());

            // Handle Request
            String output = getResponseBody();
            std::string output_string = output.c_str();




            PostWebsiteBuyIp_200_response obj(output_string);


            Response<PostWebsiteBuyIp_200_response> response(obj, httpCode);
            return response;
        }

        Response<
            PostWebsiteMigration_200_response
        >
        WebhostingApi::
        postWebsiteMigration(
            
            int id
            , 
            
            PostWebsiteMigration_request postWebsiteMigrationRequest
            
        )
        {
            std::string url = basepath + "/websites/{id}/migration"; //id 


            // Headers  | 

            // Query    | 

            // Form     | 
            addHeader("Content-Type", "application/json");



                std::string s_id("{");
                s_id.append("id");
                s_id.append("}");

                int pos = url.find(s_id);

                url.erase(pos, s_id.length());
                url.insert(pos, stringify(id));


            std::string payload = "";
            // Send Request
            // METHOD | POST
            // Body     | postWebsiteMigrationRequest



            payload = postWebsiteMigrationRequest.toJson().dump();

            int httpCode = sendRequest(url, "POST", reinterpret_cast<uint8_t*>(&payload[0]), payload.length());

            // Handle Request
            String output = getResponseBody();
            std::string output_string = output.c_str();




            PostWebsiteMigration_200_response obj(output_string);


            Response<PostWebsiteMigration_200_response> response(obj, httpCode);
            return response;
        }

        Response<
            TextResponse
        >
        WebhostingApi::
        postWebsitesReverseDns(
            
            int id
            , 
            
            ReverseDnsEntries reverseDnsEntries
            
        )
        {
            std::string url = basepath + "/websites/{id}/reverse_dns"; //id 


            // Headers  | 

            // Query    | 

            // Form     | 
            addHeader("Content-Type", "application/json");



                std::string s_id("{");
                s_id.append("id");
                s_id.append("}");

                int pos = url.find(s_id);

                url.erase(pos, s_id.length());
                url.insert(pos, stringify(id));


            std::string payload = "";
            // Send Request
            // METHOD | POST
            // Body     | reverseDnsEntries



            payload = reverseDnsEntries.toJson().dump();

            int httpCode = sendRequest(url, "POST", reinterpret_cast<uint8_t*>(&payload[0]), payload.length());

            // Handle Request
            String output = getResponseBody();
            std::string output_string = output.c_str();




            TextResponse obj(output_string);


            Response<TextResponse> response(obj, httpCode);
            return response;
        }

        Response<
            String
        >
        WebhostingApi::
        putWebsites(
            
            WebsiteOrderPutRequest websiteOrderPutRequest
            
        )
        {
            std::string url = basepath + "/websites/order"; //


            // Headers  | 

            // Query    | 

            // Form     | 
            addHeader("Content-Type", "application/json");





            std::string payload = "";
            // Send Request
            // METHOD | PUT
            // Body     | websiteOrderPutRequest



            payload = websiteOrderPutRequest.toJson().dump();

            int httpCode = sendRequest(url, "PUT", reinterpret_cast<uint8_t*>(&payload[0]), payload.length());

            // Handle Request
            String output = getResponseBody();
            std::string output_string = output.c_str();


            Response<String> response(output, httpCode);
            return response;
        }

        Response<
            SuccessTextResponse
        >
        WebhostingApi::
        updateWebsiteInfo(
            
            std::string id
            
        )
        {
            std::string url = basepath + "/websites/{id}"; //id 


            // Headers  | 

            // Query    | 

            // Form     | 



                std::string s_id("{");
                s_id.append("id");
                s_id.append("}");

                int pos = url.find(s_id);

                url.erase(pos, s_id.length());
                url.insert(pos, stringify(id));


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
            WebhostingCancel_200_response
        >
        WebhostingApi::
        webhostingCancel(
            
            std::string id
            
        )
        {
            std::string url = basepath + "/websites/{id}"; //id 


            // Headers  | 

            // Query    | 

            // Form     | 



                std::string s_id("{");
                s_id.append("id");
                s_id.append("}");

                int pos = url.find(s_id);

                url.erase(pos, s_id.length());
                url.insert(pos, stringify(id));


            std::string payload = "";
            // Send Request
            // METHOD | DELETE
            // Body     | 
            int httpCode = sendRequest(url, "DELETE", reinterpret_cast<uint8_t*>(&payload[0]), payload.length());

            // Handle Request
            String output = getResponseBody();
            std::string output_string = output.c_str();




            WebhostingCancel_200_response obj(output_string);


            Response<WebhostingCancel_200_response> response(obj, httpCode);
            return response;
        }



