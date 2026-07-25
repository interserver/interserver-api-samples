#include "MailApi.h"

using namespace Tiny;



        Response<
            ServiceOrderPostResponse
        >
        MailApi::
        addMail(
            
            MailOrderRequest mailOrderRequest
            
        )
        {
            std::string url = basepath + "/mail/order"; //


            // Headers  | 

            // Query    | 

            // Form     | 
            addHeader("Content-Type", "application/json");





            std::string payload = "";
            // Send Request
            // METHOD | POST
            // Body     | mailOrderRequest



            payload = mailOrderRequest.toJson().dump();

            int httpCode = sendRequest(url, "POST", reinterpret_cast<uint8_t*>(&payload[0]), payload.length());

            // Handle Request
            String output = getResponseBody();
            std::string output_string = output.c_str();




            ServiceOrderPostResponse obj(output_string);


            Response<ServiceOrderPostResponse> response(obj, httpCode);
            return response;
        }

        Response<
            GenericResponse
        >
        MailApi::
        addRule(
            
            int id
            , 
            
            DenyRuleNew denyRuleNew
            
        )
        {
            std::string url = basepath + "/mail/{id}/rules"; //id 


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
            // Body     | denyRuleNew



            payload = denyRuleNew.toJson().dump();

            int httpCode = sendRequest(url, "POST", reinterpret_cast<uint8_t*>(&payload[0]), payload.length());

            // Handle Request
            String output = getResponseBody();
            std::string output_string = output.c_str();




            GenericResponse obj(output_string);


            Response<GenericResponse> response(obj, httpCode);
            return response;
        }

        Response<
            SuccessTextResponse
        >
        MailApi::
        createMailAlert(
            
            int id
            , 
            
            MailAlertRequest mailAlertRequest
            
        )
        {
            std::string url = basepath + "/mail/{id}/alerts"; //id 


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
            // Body     | mailAlertRequest



            payload = mailAlertRequest.toJson().dump();

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
        MailApi::
        deleteMailAlert(
            
            int id
            , 
            
            DeleteMailAlert_request deleteMailAlertRequest
            
        )
        {
            std::string url = basepath + "/mail/{id}/alerts"; //id 


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
            // METHOD | DELETE
            // Body     | deleteMailAlertRequest



            payload = deleteMailAlertRequest.toJson().dump();

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
        MailApi::
        deleteRule(
            
            int id
            , 
            
            std::string rule
            
        )
        {
            std::string url = basepath + "/mail/{id}/rules/{rule}"; //id rule 


            // Headers  | 

            // Query    | 

            // Form     | 



                std::string s_id("{");
                s_id.append("id");
                s_id.append("}");

                int pos = url.find(s_id);

                url.erase(pos, s_id.length());
                url.insert(pos, stringify(id));
                std::string s_rule("{");
                s_rule.append("rule");
                s_rule.append("}");

                int pos = url.find(s_rule);

                url.erase(pos, s_rule.length());
                url.insert(pos, stringify(rule));


            std::string payload = "";
            // Send Request
            // METHOD | DELETE
            // Body     | 
            int httpCode = sendRequest(url, "DELETE", reinterpret_cast<uint8_t*>(&payload[0]), payload.length());

            // Handle Request
            String output = getResponseBody();
            std::string output_string = output.c_str();




            GenericResponse obj(output_string);


            Response<GenericResponse> response(obj, httpCode);
            return response;
        }

        Response<
            GenericResponse
        >
        MailApi::
        delistBlock(
            
            int id
            , 
            
            std::string email
            
        )
        {
            std::string url = basepath + "/mail/{id}/blocks/delete"; //id 


            // Headers  | 

            // Query    | 

            // Form     | email 
            addHeader("Content-Type", "application/x-www-form-urlencoded");

            addFormParam("email",email);


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




            GenericResponse obj(output_string);


            Response<GenericResponse> response(obj, httpCode);
            return response;
        }

        Response<
            MailAlertsResponse
        >
        MailApi::
        getMailAlerts(
            
            int id
            
        )
        {
            std::string url = basepath + "/mail/{id}/alerts"; //id 


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




            MailAlertsResponse obj(output_string);


            Response<MailAlertsResponse> response(obj, httpCode);
            return response;
        }

        Response<
            MailBlocks
        >
        MailApi::
        getMailBlocks(
            
            int id
            
        )
        {
            std::string url = basepath + "/mail/{id}/blocks"; //id 


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




            MailBlocks obj(output_string);


            Response<MailBlocks> response(obj, httpCode);
            return response;
        }

        Response<
            MailDelistResponse
        >
        MailApi::
        getMailDelist(
            
            int id
            
        )
        {
            std::string url = basepath + "/mail/{id}/delist"; //id 


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




            MailDelistResponse obj(output_string);


            Response<MailDelistResponse> response(obj, httpCode);
            return response;
        }

        Response<
            MailDeliverabilityResponse
        >
        MailApi::
        getMailDeliverability(
            
            int id
            
        )
        {
            std::string url = basepath + "/mail/{id}/deliverability"; //id 


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




            MailDeliverabilityResponse obj(output_string);


            Response<MailDeliverabilityResponse> response(obj, httpCode);
            return response;
        }

        Response<
            MailSchema
        >
        MailApi::
        getMailInfo(
            
            int id
            
        )
        {
            std::string url = basepath + "/mail/{id}"; //id 


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




            MailSchema obj(output_string);


            Response<MailSchema> response(obj, httpCode);
            return response;
        }

        Response<
            ChargeInvoiceRows
        >
        MailApi::
        getMailInvoices(
            
            int id
            
        )
        {
            std::string url = basepath + "/mail/{id}/invoices"; //id 


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
            std::list<MailRow>
        >
        MailApi::
        getMailList(
        )
        {
            std::string url = basepath + "/mail"; //


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



            std::list<MailRow> obj = std::list<MailRow>();
            bourne::json jsonPayload(output_string);








            
            for(auto& var : jsonPayload.array_range())
            {
                MailRow tmp(var.dump());
                obj.push_back(tmp);
            }
            







            Response<std::list<MailRow>> response(obj, httpCode);
            return response;
        }

        Response<
            SuccessTextResponse
        >
        MailApi::
        getMailWelcomeEmail(
            
            int id
            
        )
        {
            std::string url = basepath + "/mail/{id}/welcome_email"; //id 


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
            MailOrder
        >
        MailApi::
        getNewMail(
        )
        {
            std::string url = basepath + "/mail/order"; //


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




            MailOrder obj(output_string);


            Response<MailOrder> response(obj, httpCode);
            return response;
        }

        Response<
            std::list<DenyRuleRecord>
        >
        MailApi::
        getRules(
            
            int id
            
        )
        {
            std::string url = basepath + "/mail/{id}/rules"; //id 


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



            std::list<DenyRuleRecord> obj = std::list<DenyRuleRecord>();
            bourne::json jsonPayload(output_string);








            
            for(auto& var : jsonPayload.array_range())
            {
                DenyRuleRecord tmp(var.dump());
                obj.push_back(tmp);
            }
            







            Response<std::list<DenyRuleRecord>> response(obj, httpCode);
            return response;
        }

        Response<
            MailStatsType
        >
        MailApi::
        getStats(
            
            int id
            , 
            
            std::string time
            
        )
        {
            std::string url = basepath + "/mail/{id}/stats"; //id 


            // Headers  | 

            // Query    | time 
            addQueryParam("time",time);

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




            MailStatsType obj(output_string);


            Response<MailStatsType> response(obj, httpCode);
            return response;
        }

        Response<
            MailCancel_200_response
        >
        MailApi::
        mailCancel(
            
            int id
            
        )
        {
            std::string url = basepath + "/mail/{id}"; //id 


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




            MailCancel_200_response obj(output_string);


            Response<MailCancel_200_response> response(obj, httpCode);
            return response;
        }

        Response<
            SuccessTextResponse
        >
        MailApi::
        postMailDelist(
            
            int id
            , 
            
            MailDelistRequest mailDelistRequest
            
        )
        {
            std::string url = basepath + "/mail/{id}/delist"; //id 


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
            // Body     | mailDelistRequest



            payload = mailDelistRequest.toJson().dump();

            int httpCode = sendRequest(url, "POST", reinterpret_cast<uint8_t*>(&payload[0]), payload.length());

            // Handle Request
            String output = getResponseBody();
            std::string output_string = output.c_str();




            SuccessTextResponse obj(output_string);


            Response<SuccessTextResponse> response(obj, httpCode);
            return response;
        }

        Response<
            String
        >
        MailApi::
        putMail(
            
            MailOrderRequest mailOrderRequest
            
        )
        {
            std::string url = basepath + "/mail/order"; //


            // Headers  | 

            // Query    | 

            // Form     | 
            addHeader("Content-Type", "application/json");





            std::string payload = "";
            // Send Request
            // METHOD | PUT
            // Body     | mailOrderRequest



            payload = mailOrderRequest.toJson().dump();

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
        MailApi::
        resetMailPassword(
            
            int id
            
        )
        {
            std::string url = basepath + "/mail/{id}/reset_password"; //id 


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
            GenericResponse
        >
        MailApi::
        sendAdvMail(
            
            int id
            , 
            
            SendMailAdv sendMailAdv
            
        )
        {
            std::string url = basepath + "/mail/{id}/advsend"; //id 


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
            // Body     | sendMailAdv



            payload = sendMailAdv.toJson().dump();

            int httpCode = sendRequest(url, "POST", reinterpret_cast<uint8_t*>(&payload[0]), payload.length());

            // Handle Request
            String output = getResponseBody();
            std::string output_string = output.c_str();




            GenericResponse obj(output_string);


            Response<GenericResponse> response(obj, httpCode);
            return response;
        }

        Response<
            GenericResponse
        >
        MailApi::
        sendMail(
            
            int id
            , 
            
            SendMail sendMail
            
        )
        {
            std::string url = basepath + "/mail/{id}/send"; //id 


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
            // Body     | sendMail



            payload = sendMail.toJson().dump();

            int httpCode = sendRequest(url, "POST", reinterpret_cast<uint8_t*>(&payload[0]), payload.length());

            // Handle Request
            String output = getResponseBody();
            std::string output_string = output.c_str();




            GenericResponse obj(output_string);


            Response<GenericResponse> response(obj, httpCode);
            return response;
        }

        Response<
            SuccessTextResponse
        >
        MailApi::
        updateMailAlert(
            
            int id
            , 
            
            MailAlertUpdateRequest mailAlertUpdateRequest
            
        )
        {
            std::string url = basepath + "/mail/{id}/alerts"; //id 


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
            // METHOD | PUT
            // Body     | mailAlertUpdateRequest



            payload = mailAlertUpdateRequest.toJson().dump();

            int httpCode = sendRequest(url, "PUT", reinterpret_cast<uint8_t*>(&payload[0]), payload.length());

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
        MailApi::
        updateMailInfo(
            
            std::string id
            
        )
        {
            std::string url = basepath + "/mail/{id}"; //id 


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
            GenericResponse
        >
        MailApi::
        updateRule(
            
            int id
            , 
            
            std::string rule
            , 
            
            DenyRuleNew denyRuleNew
            
        )
        {
            std::string url = basepath + "/mail/{id}/rules/{rule}"; //id rule 


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
                std::string s_rule("{");
                s_rule.append("rule");
                s_rule.append("}");

                int pos = url.find(s_rule);

                url.erase(pos, s_rule.length());
                url.insert(pos, stringify(rule));


            std::string payload = "";
            // Send Request
            // METHOD | PUT
            // Body     | denyRuleNew



            payload = denyRuleNew.toJson().dump();

            int httpCode = sendRequest(url, "PUT", reinterpret_cast<uint8_t*>(&payload[0]), payload.length());

            // Handle Request
            String output = getResponseBody();
            std::string output_string = output.c_str();




            GenericResponse obj(output_string);


            Response<GenericResponse> response(obj, httpCode);
            return response;
        }

        Response<
            MailLog
        >
        MailApi::
        viewMailLog(
            
            int id
            , 
            
            long id2
            , 
            
            std::string origin
            , 
            
            std::string mx
            , 
            
            std::string from
            , 
            
            std::string to
            , 
            
            std::string subject
            , 
            
            std::string mailid
            , 
            
            std::string messageId
            , 
            
            std::string replyto
            , 
            
            std::string headerfrom
            , 
            
            int delivered
            , 
            
            int skip
            , 
            
            int limit
            , 
            
            ViewMailLog_startDate_parameter startDate
            , 
            
            ViewMailLog_startDate_parameter endDate
            , 
            
            std::string sort
            , 
            
            std::string dir
            , 
            
            std::string groupby
            
        )
        {
            std::string url = basepath + "/mail/{id}/log"; //id 


            // Headers  | 

            // Query    | id2 origin mx from to subject mailid messageId replyto headerfrom delivered skip limit startDate endDate sort dir groupby 
            addQueryParam("id",id2);
            addQueryParam("origin",origin);
            addQueryParam("mx",mx);
            addQueryParam("from",from);
            addQueryParam("to",to);
            addQueryParam("subject",subject);
            addQueryParam("mailid",mailid);
            addQueryParam("messageId",messageId);
            addQueryParam("replyto",replyto);
            addQueryParam("headerfrom",headerfrom);
            addQueryParam("delivered",delivered);
            addQueryParam("skip",skip);
            addQueryParam("limit",limit);
            addQueryParam("startDate",startDate);
            addQueryParam("endDate",endDate);
            addQueryParam("sort",sort);
            addQueryParam("dir",dir);
            addQueryParam("groupby",groupby);

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




            MailLog obj(output_string);


            Response<MailLog> response(obj, httpCode);
            return response;
        }



