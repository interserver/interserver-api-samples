#include "ServersApi.h"

using namespace Tiny;



        Response<
            AddServer_200_response
        >
        ServersApi::
        addServer(
            
            ServerOrderPostRequest serverOrderPostRequest
            
        )
        {
            std::string url = basepath + "/servers/order"; //


            // Headers  | 

            // Query    | 

            // Form     | 
            addHeader("Content-Type", "application/json");





            std::string payload = "";
            // Send Request
            // METHOD | POST
            // Body     | serverOrderPostRequest



            payload = serverOrderPostRequest.toJson().dump();

            int httpCode = sendRequest(url, "POST", reinterpret_cast<uint8_t*>(&payload[0]), payload.length());

            // Handle Request
            String output = getResponseBody();
            std::string output_string = output.c_str();




            AddServer_200_response obj(output_string);


            Response<AddServer_200_response> response(obj, httpCode);
            return response;
        }

        Response<
            BuyItNowServerOrder_200_response
        >
        ServersApi::
        buyItNowServerOrder(
        )
        {
            std::string url = basepath + "/servers/order/buy_now_server"; //


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




            BuyItNowServerOrder_200_response obj(output_string);


            Response<BuyItNowServerOrder_200_response> response(obj, httpCode);
            return response;
        }

        Response<
            BuyItNowList
        >
        ServersApi::
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
            ServerOrder
        >
        ServersApi::
        getNewServer(
        )
        {
            std::string url = basepath + "/servers/order"; //


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




            ServerOrder obj(output_string);


            Response<ServerOrder> response(obj, httpCode);
            return response;
        }

        Response<
            Server
        >
        ServersApi::
        getServerInfo(
            
            int id
            
        )
        {
            std::string url = basepath + "/servers/{id}"; //id 


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




            Server obj(output_string);


            Response<Server> response(obj, httpCode);
            return response;
        }

        Response<
            ChargeInvoiceRows
        >
        ServersApi::
        getServerInvoices(
            
            int id
            
        )
        {
            std::string url = basepath + "/servers/{id}/invoices"; //id 


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
            std::list<ServerRow>
        >
        ServersApi::
        getServerList(
        )
        {
            std::string url = basepath + "/servers"; //


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



            std::list<ServerRow> obj = std::list<ServerRow>();
            bourne::json jsonPayload(output_string);








            
            for(auto& var : jsonPayload.array_range())
            {
                ServerRow tmp(var.dump());
                obj.push_back(tmp);
            }
            







            Response<std::list<ServerRow>> response(obj, httpCode);
            return response;
        }

        Response<
            ReverseDnsEntries
        >
        ServersApi::
        getServerReverseDns(
            
            int id
            
        )
        {
            std::string url = basepath + "/servers/{id}/reverse_dns"; //id 


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
            SuccessTextResponse
        >
        ServersApi::
        getServersWelcomeEmail(
            
            int id
            
        )
        {
            std::string url = basepath + "/servers/{id}/welcome_email"; //id 


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
            ServersBuyNowResponse
        >
        ServersApi::
        placeBuyNowServer(
            
            PlaceBuyNowServer_request placeBuyNowServerRequest
            
        )
        {
            std::string url = basepath + "/servers/order/buy_now_server"; //


            // Headers  | 

            // Query    | 

            // Form     | 
            addHeader("Content-Type", "application/json");





            std::string payload = "";
            // Send Request
            // METHOD | POST
            // Body     | placeBuyNowServerRequest



            payload = placeBuyNowServerRequest.toJson().dump();

            int httpCode = sendRequest(url, "POST", reinterpret_cast<uint8_t*>(&payload[0]), payload.length());

            // Handle Request
            String output = getResponseBody();
            std::string output_string = output.c_str();




            ServersBuyNowResponse obj(output_string);


            Response<ServersBuyNowResponse> response(obj, httpCode);
            return response;
        }

        Response<
            TextResponse
        >
        ServersApi::
        postServerReverseDns(
            
            int id
            , 
            
            ReverseDnsEntries reverseDnsEntries
            
        )
        {
            std::string url = basepath + "/servers/{id}/reverse_dns"; //id 


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
            ServerBulkIpmiPowerResponse
        >
        ServersApi::
        serverBulkIpmiPowerGet(
            
            std::string ids
            
        )
        {
            std::string url = basepath + "/servers/bulk/ipmi_power"; //


            // Headers  | 

            // Query    | ids 
            addQueryParam("ids",ids);

            // Form     | 





            std::string payload = "";
            // Send Request
            // METHOD | GET
            // Body     | 
            int httpCode = sendRequest(url, "GET", reinterpret_cast<uint8_t*>(&payload[0]), payload.length());

            // Handle Request
            String output = getResponseBody();
            std::string output_string = output.c_str();




            ServerBulkIpmiPowerResponse obj(output_string);


            Response<ServerBulkIpmiPowerResponse> response(obj, httpCode);
            return response;
        }

        Response<
            ServerIpmiLiveInfo
        >
        ServersApi::
        serverIpmiLiveGet(
            
            int id
            
        )
        {
            std::string url = basepath + "/servers/{id}/ipmi_live"; //id 


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




            ServerIpmiLiveInfo obj(output_string);


            Response<ServerIpmiLiveInfo> response(obj, httpCode);
            return response;
        }

        Response<
            ServerIpmiLiveInfo
        >
        ServersApi::
        serverIpmiLivePost(
            
            int id
            , 
            
            std::string ip
            , 
            
            int asset
            
        )
        {
            std::string url = basepath + "/servers/{id}/ipmi_live"; //id 


            // Headers  | 

            // Query    | 

            // Form     | asset ip 
            addHeader("Content-Type", "application/x-www-form-urlencoded");

            addFormParam("asset",asset);
            addFormParam("ip",ip);


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




            ServerIpmiLiveInfo obj(output_string);


            Response<ServerIpmiLiveInfo> response(obj, httpCode);
            return response;
        }

        Response<
            TextResponse
        >
        ServersApi::
        serverIpmiPowerGet(
            
            int id
            
        )
        {
            std::string url = basepath + "/servers/{id}/ipmi_power"; //id 


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




            TextResponse obj(output_string);


            Response<TextResponse> response(obj, httpCode);
            return response;
        }

        Response<
            TextResponse
        >
        ServersApi::
        serverIpmiPowerPost(
            
            int id
            , 
            
            std::string action
            , 
            
            int asset
            
        )
        {
            std::string url = basepath + "/servers/{id}/ipmi_power"; //id 


            // Headers  | 

            // Query    | 

            // Form     | asset action 
            addHeader("Content-Type", "application/x-www-form-urlencoded");

            addFormParam("asset",asset);
            addFormParam("action",action);


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




            TextResponse obj(output_string);


            Response<TextResponse> response(obj, httpCode);
            return response;
        }

        Response<
            ServersCancel_200_response
        >
        ServersApi::
        serversCancel(
            
            int id
            
        )
        {
            std::string url = basepath + "/servers/{id}"; //id 


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




            ServersCancel_200_response obj(output_string);


            Response<ServersCancel_200_response> response(obj, httpCode);
            return response;
        }

        Response<
            SuccessTextResponse
        >
        ServersApi::
        updateServerInfo(
            
            std::string id
            
        )
        {
            std::string url = basepath + "/servers/{id}"; //id 


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



