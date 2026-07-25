#include "QuickServersApi.h"

using namespace Tiny;



        Response<
            ServiceOrderPostResponse
        >
        QuickServersApi::
        addQs(
            
            QsOrderRequest qsOrderRequest
            
        )
        {
            std::string url = basepath + "/qs/order"; //


            // Headers  | 

            // Query    | 

            // Form     | 
            addHeader("Content-Type", "application/json");





            std::string payload = "";
            // Send Request
            // METHOD | POST
            // Body     | qsOrderRequest



            payload = qsOrderRequest.toJson().dump();

            int httpCode = sendRequest(url, "POST", reinterpret_cast<uint8_t*>(&payload[0]), payload.length());

            // Handle Request
            String output = getResponseBody();
            std::string output_string = output.c_str();




            ServiceOrderPostResponse obj(output_string);


            Response<ServiceOrderPostResponse> response(obj, httpCode);
            return response;
        }

        Response<
            SuccessTextResponse
        >
        QuickServersApi::
        deleteQsBackup(
            
            int id
            , 
            
            std::string file
            , 
            
            std::string all
            
        )
        {
            std::string url = basepath + "/qs/{id}/backups"; //id 


            // Headers  | 

            // Query    | all file 
            addQueryParam("all",all);
            addQueryParam("file",file);

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




            SuccessTextResponse obj(output_string);


            Response<SuccessTextResponse> response(obj, httpCode);
            return response;
        }

        Response<
            QueueResponse
        >
        QuickServersApi::
        doQsBlockSmtp(
            
            int id
            
        )
        {
            std::string url = basepath + "/qs/{id}/block_smtp"; //id 


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




            QueueResponse obj(output_string);


            Response<QueueResponse> response(obj, httpCode);
            return response;
        }

        Response<
            QueueResponse
        >
        QuickServersApi::
        doQsDisableCd(
            
            int id
            
        )
        {
            std::string url = basepath + "/qs/{id}/disable_cd"; //id 


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




            QueueResponse obj(output_string);


            Response<QueueResponse> response(obj, httpCode);
            return response;
        }

        Response<
            QueueResponse
        >
        QuickServersApi::
        doQsDisableQuota(
            
            int id
            
        )
        {
            std::string url = basepath + "/qs/{id}/disable_quota"; //id 


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




            QueueResponse obj(output_string);


            Response<QueueResponse> response(obj, httpCode);
            return response;
        }

        Response<
            QueueResponse
        >
        QuickServersApi::
        doQsEjectCd(
            
            int id
            
        )
        {
            std::string url = basepath + "/qs/{id}/eject_cd"; //id 


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




            QueueResponse obj(output_string);


            Response<QueueResponse> response(obj, httpCode);
            return response;
        }

        Response<
            QueueResponse
        >
        QuickServersApi::
        doQsEnableQuota(
            
            int id
            
        )
        {
            std::string url = basepath + "/qs/{id}/enable_quota"; //id 


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




            QueueResponse obj(output_string);


            Response<QueueResponse> response(obj, httpCode);
            return response;
        }

        Response<
            QueueResponse
        >
        QuickServersApi::
        doQsRestart(
            
            int id
            
        )
        {
            std::string url = basepath + "/qs/{id}/restart"; //id 


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




            QueueResponse obj(output_string);


            Response<QueueResponse> response(obj, httpCode);
            return response;
        }

        Response<
            QueueResponse
        >
        QuickServersApi::
        doQsStart(
            
            int id
            
        )
        {
            std::string url = basepath + "/qs/{id}/start"; //id 


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




            QueueResponse obj(output_string);


            Response<QueueResponse> response(obj, httpCode);
            return response;
        }

        Response<
            QueueResponse
        >
        QuickServersApi::
        doQsStop(
            
            int id
            
        )
        {
            std::string url = basepath + "/qs/{id}/stop"; //id 


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




            QueueResponse obj(output_string);


            Response<QueueResponse> response(obj, httpCode);
            return response;
        }

        Response<
            DownloadQsBackup_200_response
        >
        QuickServersApi::
        downloadQsBackup(
            
            int id
            , 
            
            DownloadQsBackup_request downloadQsBackupRequest
            , 
            
            std::string all
            
        )
        {
            std::string url = basepath + "/qs/{id}/backups"; //id 


            // Headers  | 

            // Query    | all 
            addQueryParam("all",all);

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
            // METHOD | PATCH
            // Body     | downloadQsBackupRequest



            payload = downloadQsBackupRequest.toJson().dump();

            int httpCode = sendRequest(url, "PATCH", reinterpret_cast<uint8_t*>(&payload[0]), payload.length());

            // Handle Request
            String output = getResponseBody();
            std::string output_string = output.c_str();




            DownloadQsBackup_200_response obj(output_string);


            Response<DownloadQsBackup_200_response> response(obj, httpCode);
            return response;
        }

        Response<
            QuickserverOrder
        >
        QuickServersApi::
        getNewQs(
        )
        {
            std::string url = basepath + "/qs/order"; //


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




            QuickserverOrder obj(output_string);


            Response<QuickserverOrder> response(obj, httpCode);
            return response;
        }

        Response<
            QueueResponse
        >
        QuickServersApi::
        getQsBackup(
            
            int id
            
        )
        {
            std::string url = basepath + "/qs/{id}/backup"; //id 


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




            QueueResponse obj(output_string);


            Response<QueueResponse> response(obj, httpCode);
            return response;
        }

        Response<
            VpsBackupRows
        >
        QuickServersApi::
        getQsBackups(
            
            int id
            , 
            
            std::string all
            
        )
        {
            std::string url = basepath + "/qs/{id}/backups"; //id 


            // Headers  | 

            // Query    | all 
            addQueryParam("all",all);

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




            VpsBackupRows obj(output_string);


            Response<VpsBackupRows> response(obj, httpCode);
            return response;
        }

        Response<
            String
        >
        QuickServersApi::
        getQsChangeHostname(
            
            int id
            
        )
        {
            std::string url = basepath + "/qs/{id}/change_hostname"; //id 


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


            Response<String> response(output, httpCode);
            return response;
        }

        Response<
            String
        >
        QuickServersApi::
        getQsChangeRootPassword(
            
            int id
            
        )
        {
            std::string url = basepath + "/qs/{id}/change_root_password"; //id 


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


            Response<String> response(output, httpCode);
            return response;
        }

        Response<
            std::list<std::string>
        >
        QuickServersApi::
        getQsChangeTimezone(
            
            int id
            
        )
        {
            std::string url = basepath + "/qs/{id}/change_timezone"; //id 


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
        QuickServersApi::
        getQsChangeWebuzoPassword(
            
            int id
            
        )
        {
            std::string url = basepath + "/qs/{id}/change_webuzo_password"; //id 


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


            Response<String> response(output, httpCode);
            return response;
        }

        Response<
            Quickserver
        >
        QuickServersApi::
        getQsInfo(
            
            int id
            
        )
        {
            std::string url = basepath + "/qs/{id}"; //id 


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




            Quickserver obj(output_string);


            Response<Quickserver> response(obj, httpCode);
            return response;
        }

        Response<
            String
        >
        QuickServersApi::
        getQsInsertCd(
            
            int id
            
        )
        {
            std::string url = basepath + "/qs/{id}/insert_cd"; //id 


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


            Response<String> response(output, httpCode);
            return response;
        }

        Response<
            ChargeInvoiceRows
        >
        QuickServersApi::
        getQsInvoices(
            
            int id
            
        )
        {
            std::string url = basepath + "/qs/{id}/invoices"; //id 


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
            std::list<QuickserverRow>
        >
        QuickServersApi::
        getQsList(
        )
        {
            std::string url = basepath + "/qs"; //


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



            std::list<QuickserverRow> obj = std::list<QuickserverRow>();
            bourne::json jsonPayload(output_string);








            
            for(auto& var : jsonPayload.array_range())
            {
                QuickserverRow tmp(var.dump());
                obj.push_back(tmp);
            }
            







            Response<std::list<QuickserverRow>> response(obj, httpCode);
            return response;
        }

        Response<
            VpsTemplatesList
        >
        QuickServersApi::
        getQsReinstallOs(
            
            int id
            
        )
        {
            std::string url = basepath + "/qs/{id}/reinstall_os"; //id 


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




            VpsTemplatesList obj(output_string);


            Response<VpsTemplatesList> response(obj, httpCode);
            return response;
        }

        Response<
            String
        >
        QuickServersApi::
        getQsResetPassword(
            
            int id
            
        )
        {
            std::string url = basepath + "/qs/{id}/reset_password"; //id 


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


            Response<String> response(output, httpCode);
            return response;
        }

        Response<
            ReverseDnsEntries
        >
        QuickServersApi::
        getQsReverseDns(
            
            int id
            
        )
        {
            std::string url = basepath + "/qs/{id}/reverse_dns"; //id 


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
            String
        >
        QuickServersApi::
        getQsSetupVnc(
            
            int id
            
        )
        {
            std::string url = basepath + "/qs/{id}/setup_vnc"; //id 


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


            Response<String> response(output, httpCode);
            return response;
        }

        Response<
            String
        >
        QuickServersApi::
        getQsTrafficUsage(
            
            int id
            
        )
        {
            std::string url = basepath + "/qs/{id}/traffic_usage"; //id 


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


            Response<String> response(output, httpCode);
            return response;
        }

        Response<
            String
        >
        QuickServersApi::
        getQsViewDesktop(
            
            int id
            
        )
        {
            std::string url = basepath + "/qs/{id}/view_desktop"; //id 


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


            Response<String> response(output, httpCode);
            return response;
        }

        Response<
            TextResponse
        >
        QuickServersApi::
        getQsWelcomeEmail(
            
            std::string id
            
        )
        {
            std::string url = basepath + "/qs/{id}/welcome_email"; //id 


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
            QueueResponse
        >
        QuickServersApi::
        postQsChangeHostname(
            
            int id
            
        )
        {
            std::string url = basepath + "/qs/{id}/change_hostname"; //id 


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




            QueueResponse obj(output_string);


            Response<QueueResponse> response(obj, httpCode);
            return response;
        }

        Response<
            QueueResponse
        >
        QuickServersApi::
        postQsChangeRootPassword(
            
            int id
            
        )
        {
            std::string url = basepath + "/qs/{id}/change_root_password"; //id 


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




            QueueResponse obj(output_string);


            Response<QueueResponse> response(obj, httpCode);
            return response;
        }

        Response<
            QueueResponse
        >
        QuickServersApi::
        postQsChangeTimezone(
            
            int id
            , 
            
            std::string timezone
            
        )
        {
            std::string url = basepath + "/qs/{id}/change_timezone"; //id 


            // Headers  | 

            // Query    | 

            // Form     | timezone 
            addHeader("Content-Type", "application/x-www-form-urlencoded");

            addFormParam("timezone",timezone);


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




            QueueResponse obj(output_string);


            Response<QueueResponse> response(obj, httpCode);
            return response;
        }

        Response<
            QueueResponse
        >
        QuickServersApi::
        postQsChangeWebuzoPassword(
            
            int id
            
        )
        {
            std::string url = basepath + "/qs/{id}/change_webuzo_password"; //id 


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




            QueueResponse obj(output_string);


            Response<QueueResponse> response(obj, httpCode);
            return response;
        }

        Response<
            QueueResponse
        >
        QuickServersApi::
        postQsInsertCd(
            
            int id
            
        )
        {
            std::string url = basepath + "/qs/{id}/insert_cd"; //id 


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




            QueueResponse obj(output_string);


            Response<QueueResponse> response(obj, httpCode);
            return response;
        }

        Response<
            QueueResponse
        >
        QuickServersApi::
        postQsReinstallOs(
            
            int id
            
        )
        {
            std::string url = basepath + "/qs/{id}/reinstall_os"; //id 


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




            QueueResponse obj(output_string);


            Response<QueueResponse> response(obj, httpCode);
            return response;
        }

        Response<
            QueueResponse
        >
        QuickServersApi::
        postQsResetPassword(
            
            int id
            
        )
        {
            std::string url = basepath + "/qs/{id}/reset_password"; //id 


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




            QueueResponse obj(output_string);


            Response<QueueResponse> response(obj, httpCode);
            return response;
        }

        Response<
            TextResponse
        >
        QuickServersApi::
        postQsReverseDns(
            
            int id
            , 
            
            ReverseDnsEntries reverseDnsEntries
            
        )
        {
            std::string url = basepath + "/qs/{id}/reverse_dns"; //id 


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
            QueueResponse
        >
        QuickServersApi::
        postQsSetupVnc(
            
            int id
            
        )
        {
            std::string url = basepath + "/qs/{id}/setup_vnc"; //id 


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




            QueueResponse obj(output_string);


            Response<QueueResponse> response(obj, httpCode);
            return response;
        }

        Response<
            String
        >
        QuickServersApi::
        postQsTrafficUsage(
            
            int id
            
        )
        {
            std::string url = basepath + "/qs/{id}/traffic_usage"; //id 


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


            Response<String> response(output, httpCode);
            return response;
        }

        Response<
            String
        >
        QuickServersApi::
        postQsViewDesktop(
            
            int id
            
        )
        {
            std::string url = basepath + "/qs/{id}/view_desktop"; //id 


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


            Response<String> response(output, httpCode);
            return response;
        }

        Response<
            QueueResponse
        >
        QuickServersApi::
        postQuickServerRestore(
            
            int id
            , 
            
            RestoreRequest restoreRequest
            
        )
        {
            std::string url = basepath + "/qs/{id}/restore"; //id 


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
            // Body     | restoreRequest



            payload = restoreRequest.toJson().dump();

            int httpCode = sendRequest(url, "POST", reinterpret_cast<uint8_t*>(&payload[0]), payload.length());

            // Handle Request
            String output = getResponseBody();
            std::string output_string = output.c_str();




            QueueResponse obj(output_string);


            Response<QueueResponse> response(obj, httpCode);
            return response;
        }

        Response<
            String
        >
        QuickServersApi::
        putQs(
            
            QsOrderRequest qsOrderRequest
            
        )
        {
            std::string url = basepath + "/qs/order"; //


            // Headers  | 

            // Query    | 

            // Form     | 
            addHeader("Content-Type", "application/json");





            std::string payload = "";
            // Send Request
            // METHOD | PUT
            // Body     | qsOrderRequest



            payload = qsOrderRequest.toJson().dump();

            int httpCode = sendRequest(url, "PUT", reinterpret_cast<uint8_t*>(&payload[0]), payload.length());

            // Handle Request
            String output = getResponseBody();
            std::string output_string = output.c_str();


            Response<String> response(output, httpCode);
            return response;
        }

        Response<
            QuickserversCancel_200_response
        >
        QuickServersApi::
        quickserversCancel(
            
            int id
            
        )
        {
            std::string url = basepath + "/qs/{id}"; //id 


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




            QuickserversCancel_200_response obj(output_string);


            Response<QuickserversCancel_200_response> response(obj, httpCode);
            return response;
        }

        Response<
            SuccessTextResponse
        >
        QuickServersApi::
        updateQsInfo(
            
            std::string id
            
        )
        {
            std::string url = basepath + "/qs/{id}"; //id 


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



