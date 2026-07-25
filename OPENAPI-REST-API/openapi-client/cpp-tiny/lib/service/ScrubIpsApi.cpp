#include "ScrubIpsApi.h"

using namespace Tiny;



        Response<
            CancelScrubIp_200_response
        >
        ScrubIpsApi::
        cancelScrubIp(
            
            int id
            
        )
        {
            std::string url = basepath + "/scrub_ips/{id}"; //id 


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




            CancelScrubIp_200_response obj(output_string);


            Response<CancelScrubIp_200_response> response(obj, httpCode);
            return response;
        }

        Response<
            CreateFilter_201_response
        >
        ScrubIpsApi::
        createFilter(
            
            int id
            , 
            
            CreateFilter createFilter
            
        )
        {
            std::string url = basepath + "/scrub_ips/{id}/create_filter"; //id 


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
            // Body     | createFilter



            payload = createFilter.toJson().dump();

            int httpCode = sendRequest(url, "POST", reinterpret_cast<uint8_t*>(&payload[0]), payload.length());

            // Handle Request
            String output = getResponseBody();
            std::string output_string = output.c_str();




            CreateFilter_201_response obj(output_string);


            Response<CreateFilter_201_response> response(obj, httpCode);
            return response;
        }

        Response<
            CreateRule_201_response
        >
        ScrubIpsApi::
        createGeoRule(
            
            int id
            , 
            
            CreateGeoFirewallRule createGeoFirewallRule
            
        )
        {
            std::string url = basepath + "/scrub_ips/{id}/create_geo_rule"; //id 


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
            // Body     | createGeoFirewallRule



            payload = createGeoFirewallRule.toJson().dump();

            int httpCode = sendRequest(url, "POST", reinterpret_cast<uint8_t*>(&payload[0]), payload.length());

            // Handle Request
            String output = getResponseBody();
            std::string output_string = output.c_str();




            CreateRule_201_response obj(output_string);


            Response<CreateRule_201_response> response(obj, httpCode);
            return response;
        }

        Response<
            CreateRule_201_response
        >
        ScrubIpsApi::
        createRule(
            
            int id
            , 
            
            CreateFirewallRule createFirewallRule
            
        )
        {
            std::string url = basepath + "/scrub_ips/{id}/create_rule"; //id 


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
            // Body     | createFirewallRule



            payload = createFirewallRule.toJson().dump();

            int httpCode = sendRequest(url, "POST", reinterpret_cast<uint8_t*>(&payload[0]), payload.length());

            // Handle Request
            String output = getResponseBody();
            std::string output_string = output.c_str();




            CreateRule_201_response obj(output_string);


            Response<CreateRule_201_response> response(obj, httpCode);
            return response;
        }

        Response<
            DeleteFilter_200_response
        >
        ScrubIpsApi::
        deleteFilter(
            
            int id
            , 
            
            CreateFilter createFilter
            
        )
        {
            std::string url = basepath + "/scrub_ips/{id}/delete_filter"; //id 


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
            // Body     | createFilter



            payload = createFilter.toJson().dump();

            int httpCode = sendRequest(url, "POST", reinterpret_cast<uint8_t*>(&payload[0]), payload.length());

            // Handle Request
            String output = getResponseBody();
            std::string output_string = output.c_str();




            DeleteFilter_200_response obj(output_string);


            Response<DeleteFilter_200_response> response(obj, httpCode);
            return response;
        }

        Response<
            DisableScrub_200_response
        >
        ScrubIpsApi::
        disableScrub(
            
            int id
            
        )
        {
            std::string url = basepath + "/scrub_ips/{id}/disable"; //id 


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




            DisableScrub_200_response obj(output_string);


            Response<DisableScrub_200_response> response(obj, httpCode);
            return response;
        }

        Response<
            EnableScrub_200_response
        >
        ScrubIpsApi::
        enableScrub(
            
            int id
            
        )
        {
            std::string url = basepath + "/scrub_ips/{id}/enable"; //id 


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




            EnableScrub_200_response obj(output_string);


            Response<EnableScrub_200_response> response(obj, httpCode);
            return response;
        }

        Response<
            GetOrderDetail_200_response
        >
        ScrubIpsApi::
        getOrderDetail(
        )
        {
            std::string url = basepath + "/scrub_ips/order"; //


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




            GetOrderDetail_200_response obj(output_string);


            Response<GetOrderDetail_200_response> response(obj, httpCode);
            return response;
        }

        Response<
            GetScrubIpDetails_200_response
        >
        ScrubIpsApi::
        getScrubIpDetails(
            
            int id
            
        )
        {
            std::string url = basepath + "/scrub_ips/{id}"; //id 


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




            GetScrubIpDetails_200_response obj(output_string);


            Response<GetScrubIpDetails_200_response> response(obj, httpCode);
            return response;
        }

        Response<
            ScrubIpFilterTypes
        >
        ScrubIpsApi::
        getScrubIpFilterTypes(
        )
        {
            std::string url = basepath + "/scrub_ips/filter_types"; //


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




            ScrubIpFilterTypes obj(output_string);


            Response<ScrubIpFilterTypes> response(obj, httpCode);
            return response;
        }

        Response<
            ChargeInvoiceRows
        >
        ScrubIpsApi::
        getScrubIpInvoices(
            
            int id
            
        )
        {
            std::string url = basepath + "/scrub_ips/{id}/invoices"; //id 


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
            std::list<ScrubIpsLogRowSchema>
        >
        ScrubIpsApi::
        getScrubIpLogs(
            
            std::string id
            
        )
        {
            std::string url = basepath + "/scrub_ips/{id}/logs"; //id 


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



            std::list<ScrubIpsLogRowSchema> obj = std::list<ScrubIpsLogRowSchema>();
            bourne::json jsonPayload(output_string);








            
            for(auto& var : jsonPayload.array_range())
            {
                ScrubIpsLogRowSchema tmp(var.dump());
                obj.push_back(tmp);
            }
            







            Response<std::list<ScrubIpsLogRowSchema>> response(obj, httpCode);
            return response;
        }

        Response<
            std::list<ScrubIpsRowSchema>
        >
        ScrubIpsApi::
        getScrubIpsList(
        )
        {
            std::string url = basepath + "/scrub_ips"; //


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



            std::list<ScrubIpsRowSchema> obj = std::list<ScrubIpsRowSchema>();
            bourne::json jsonPayload(output_string);








            
            for(auto& var : jsonPayload.array_range())
            {
                ScrubIpsRowSchema tmp(var.dump());
                obj.push_back(tmp);
            }
            







            Response<std::list<ScrubIpsRowSchema>> response(obj, httpCode);
            return response;
        }

        Response<
            PlaceScrubOrder_201_response
        >
        ScrubIpsApi::
        placeScrubOrder(
            
            ScrubIpPlaceOrder scrubIpPlaceOrder
            
        )
        {
            std::string url = basepath + "/scrub_ips/order"; //


            // Headers  | 

            // Query    | 

            // Form     | 
            addHeader("Content-Type", "application/json");





            std::string payload = "";
            // Send Request
            // METHOD | POST
            // Body     | scrubIpPlaceOrder



            payload = scrubIpPlaceOrder.toJson().dump();

            int httpCode = sendRequest(url, "POST", reinterpret_cast<uint8_t*>(&payload[0]), payload.length());

            // Handle Request
            String output = getResponseBody();
            std::string output_string = output.c_str();




            PlaceScrubOrder_201_response obj(output_string);


            Response<PlaceScrubOrder_201_response> response(obj, httpCode);
            return response;
        }

        Response<
            PutScrubIps_200_response
        >
        ScrubIpsApi::
        putScrubIps(
            
            ScrubIpPlaceOrder scrubIpPlaceOrder
            
        )
        {
            std::string url = basepath + "/scrub_ips/order"; //


            // Headers  | 

            // Query    | 

            // Form     | 
            addHeader("Content-Type", "application/json");





            std::string payload = "";
            // Send Request
            // METHOD | PUT
            // Body     | scrubIpPlaceOrder



            payload = scrubIpPlaceOrder.toJson().dump();

            int httpCode = sendRequest(url, "PUT", reinterpret_cast<uint8_t*>(&payload[0]), payload.length());

            // Handle Request
            String output = getResponseBody();
            std::string output_string = output.c_str();




            PutScrubIps_200_response obj(output_string);


            Response<PutScrubIps_200_response> response(obj, httpCode);
            return response;
        }

        Response<
            ScrubIpsDeleteRule_200_response
        >
        ScrubIpsApi::
        scrubIpsDeleteGeoRule(
            
            int id
            , 
            
            Delete_Geo_Firewall_Rule deleteGeoFirewallRule
            
        )
        {
            std::string url = basepath + "/scrub_ips/{id}/delete_geo_rule"; //id 


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
            // Body     | deleteGeoFirewallRule



            payload = deleteGeoFirewallRule.toJson().dump();

            int httpCode = sendRequest(url, "POST", reinterpret_cast<uint8_t*>(&payload[0]), payload.length());

            // Handle Request
            String output = getResponseBody();
            std::string output_string = output.c_str();




            ScrubIpsDeleteRule_200_response obj(output_string);


            Response<ScrubIpsDeleteRule_200_response> response(obj, httpCode);
            return response;
        }

        Response<
            ScrubIpsDeleteRule_200_response
        >
        ScrubIpsApi::
        scrubIpsDeleteRule(
            
            int id
            , 
            
            Delete_Firewall_Rule deleteFirewallRule
            
        )
        {
            std::string url = basepath + "/scrub_ips/{id}/delete_rule"; //id 


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
            // Body     | deleteFirewallRule



            payload = deleteFirewallRule.toJson().dump();

            int httpCode = sendRequest(url, "POST", reinterpret_cast<uint8_t*>(&payload[0]), payload.length());

            // Handle Request
            String output = getResponseBody();
            std::string output_string = output.c_str();




            ScrubIpsDeleteRule_200_response obj(output_string);


            Response<ScrubIpsDeleteRule_200_response> response(obj, httpCode);
            return response;
        }



