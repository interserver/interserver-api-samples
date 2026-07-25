#include "VPSApi.h"

using namespace Tiny;



        Response<
            ServiceOrderPostResponse
        >
        VPSApi::
        addVps(
            
            VpsOrderPostRequest vpsOrderPostRequest
            
        )
        {
            std::string url = basepath + "/vps/order"; //


            // Headers  | 

            // Query    | 

            // Form     | 
            addHeader("Content-Type", "application/json");





            std::string payload = "";
            // Send Request
            // METHOD | POST
            // Body     | vpsOrderPostRequest



            payload = vpsOrderPostRequest.toJson().dump();

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
        VPSApi::
        deleteVpsBackup(
            
            int id
            , 
            
            std::string file
            , 
            
            std::string all
            
        )
        {
            std::string url = basepath + "/vps/{id}/backups"; //id 


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
        VPSApi::
        doVpsBlockSmtp(
            
            int id
            
        )
        {
            std::string url = basepath + "/vps/{id}/block_smtp"; //id 


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
        VPSApi::
        doVpsDisableCd(
            
            int id
            
        )
        {
            std::string url = basepath + "/vps/{id}/disable_cd"; //id 


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
        VPSApi::
        doVpsDisableQuota(
            
            int id
            
        )
        {
            std::string url = basepath + "/vps/{id}/disable_quota"; //id 


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
        VPSApi::
        doVpsEjectCd(
            
            int id
            
        )
        {
            std::string url = basepath + "/vps/{id}/eject_cd"; //id 


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
        VPSApi::
        doVpsEnableQuota(
            
            int id
            
        )
        {
            std::string url = basepath + "/vps/{id}/enable_quota"; //id 


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
        VPSApi::
        doVpsRestart(
            
            int id
            
        )
        {
            std::string url = basepath + "/vps/{id}/restart"; //id 


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
        VPSApi::
        doVpsStart(
            
            int id
            
        )
        {
            std::string url = basepath + "/vps/{id}/start"; //id 


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
        VPSApi::
        doVpsStop(
            
            int id
            
        )
        {
            std::string url = basepath + "/vps/{id}/stop"; //id 


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
        VPSApi::
        downloadVpsBackup(
            
            int id
            , 
            
            DownloadQsBackup_request downloadQsBackupRequest
            , 
            
            std::string all
            
        )
        {
            std::string url = basepath + "/vps/{id}/backups"; //id 


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
            VpsOrder
        >
        VPSApi::
        getNewVps(
        )
        {
            std::string url = basepath + "/vps/order"; //


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




            VpsOrder obj(output_string);


            Response<VpsOrder> response(obj, httpCode);
            return response;
        }

        Response<
            QueueResponse
        >
        VPSApi::
        getVpsBackup(
            
            int id
            
        )
        {
            std::string url = basepath + "/vps/{id}/backup"; //id 


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
        VPSApi::
        getVpsBackups(
            
            int id
            , 
            
            std::string all
            
        )
        {
            std::string url = basepath + "/vps/{id}/backups"; //id 


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
        VPSApi::
        getVpsBuyHdSpace(
            
            int id
            
        )
        {
            std::string url = basepath + "/vps/{id}/buy_hd_space"; //id 


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
        VPSApi::
        getVpsBuyIp(
            
            int id
            
        )
        {
            std::string url = basepath + "/vps/{id}/buy_ip"; //id 


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
        VPSApi::
        getVpsChangeHostname(
            
            int id
            
        )
        {
            std::string url = basepath + "/vps/{id}/change_hostname"; //id 


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
        VPSApi::
        getVpsChangeRootPassword(
            
            int id
            
        )
        {
            std::string url = basepath + "/vps/{id}/change_root_password"; //id 


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
        VPSApi::
        getVpsChangeTimezone(
            
            int id
            
        )
        {
            std::string url = basepath + "/vps/{id}/change_timezone"; //id 


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
            Vps
        >
        VPSApi::
        getVpsInfo(
            
            int id
            
        )
        {
            std::string url = basepath + "/vps/{id}"; //id 


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




            Vps obj(output_string);


            Response<Vps> response(obj, httpCode);
            return response;
        }

        Response<
            String
        >
        VPSApi::
        getVpsInsertCd(
            
            int id
            
        )
        {
            std::string url = basepath + "/vps/{id}/insert_cd"; //id 


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
        VPSApi::
        getVpsInvoices(
            
            int id
            
        )
        {
            std::string url = basepath + "/vps/{id}/invoices"; //id 


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
            std::list<VpsRow>
        >
        VPSApi::
        getVpsList(
        )
        {
            std::string url = basepath + "/vps"; //


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



            std::list<VpsRow> obj = std::list<VpsRow>();
            bourne::json jsonPayload(output_string);








            
            for(auto& var : jsonPayload.array_range())
            {
                VpsRow tmp(var.dump());
                obj.push_back(tmp);
            }
            







            Response<std::list<VpsRow>> response(obj, httpCode);
            return response;
        }

        Response<
            VpsTemplatesList
        >
        VPSApi::
        getVpsReinstallOs(
            
            int id
            
        )
        {
            std::string url = basepath + "/vps/{id}/reinstall_os"; //id 


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
        VPSApi::
        getVpsResetPassword(
            
            int id
            
        )
        {
            std::string url = basepath + "/vps/{id}/reset_password"; //id 


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
        VPSApi::
        getVpsReverseDns(
            
            int id
            
        )
        {
            std::string url = basepath + "/vps/{id}/reverse_dns"; //id 


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
        VPSApi::
        getVpsSetupVnc(
            
            int id
            
        )
        {
            std::string url = basepath + "/vps/{id}/setup_vnc"; //id 


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
        VPSApi::
        getVpsSlices(
            
            int id
            
        )
        {
            std::string url = basepath + "/vps/{id}/slices"; //id 


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
            VpsTrafficResponse
        >
        VPSApi::
        getVpsTrafficUsage(
            
            int id
            
        )
        {
            std::string url = basepath + "/vps/{id}/traffic_usage"; //id 


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




            VpsTrafficResponse obj(output_string);


            Response<VpsTrafficResponse> response(obj, httpCode);
            return response;
        }

        Response<
            String
        >
        VPSApi::
        getVpsViewDesktop(
            
            int id
            
        )
        {
            std::string url = basepath + "/vps/{id}/view_desktop"; //id 


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
            SuccessTextResponse
        >
        VPSApi::
        getVpsWelcomeEmail(
            
            std::string id
            
        )
        {
            std::string url = basepath + "/vps/{id}/welcome_email"; //id 


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
            String
        >
        VPSApi::
        postVpsBuyHdSpace(
            
            int id
            
        )
        {
            std::string url = basepath + "/vps/{id}/buy_hd_space"; //id 


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
        VPSApi::
        postVpsBuyIp(
            
            int id
            
        )
        {
            std::string url = basepath + "/vps/{id}/buy_ip"; //id 


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
        VPSApi::
        postVpsChangeHostname(
            
            int id
            , 
            
            std::string hostname
            
        )
        {
            std::string url = basepath + "/vps/{id}/change_hostname"; //id 


            // Headers  | 

            // Query    | 

            // Form     | hostname 
            addHeader("Content-Type", "application/x-www-form-urlencoded");

            addFormParam("hostname",hostname);


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
        VPSApi::
        postVpsChangeRootPassword(
            
            int id
            , 
            
            std::string password
            
        )
        {
            std::string url = basepath + "/vps/{id}/change_root_password"; //id 


            // Headers  | 

            // Query    | 

            // Form     | password 
            addHeader("Content-Type", "application/x-www-form-urlencoded");

            addFormParam("password",password);


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
        VPSApi::
        postVpsChangeTimezone(
            
            int id
            , 
            
            std::string timezone
            
        )
        {
            std::string url = basepath + "/vps/{id}/change_timezone"; //id 


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
        VPSApi::
        postVpsChangeWebuzoPassword(
            
            int id
            , 
            
            std::string password
            
        )
        {
            std::string url = basepath + "/vps/{id}/change_webuzo_password"; //id 


            // Headers  | 

            // Query    | 

            // Form     | password 
            addHeader("Content-Type", "application/x-www-form-urlencoded");

            addFormParam("password",password);


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
        VPSApi::
        postVpsInsertCd(
            
            int id
            , 
            
            std::string url
            
        )
        {
            std::string url = basepath + "/vps/{id}/insert_cd"; //id 


            // Headers  | 

            // Query    | 

            // Form     | url 
            addHeader("Content-Type", "application/x-www-form-urlencoded");

            addFormParam("url",url);


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
        VPSApi::
        postVpsReinstallOs(
            
            int id
            , 
            
            std::string r_template
            , 
            
            std::string localPassword
            , 
            
            std::string password
            
        )
        {
            std::string url = basepath + "/vps/{id}/reinstall_os"; //id 


            // Headers  | 

            // Query    | 

            // Form     | r_template password localPassword 
            addHeader("Content-Type", "application/x-www-form-urlencoded");

            addFormParam("template",r_template);
            addFormParam("password",password);
            addFormParam("localPassword",localPassword);


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
        VPSApi::
        postVpsResetPassword(
            
            int id
            
        )
        {
            std::string url = basepath + "/vps/{id}/reset_password"; //id 


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
        VPSApi::
        postVpsRestore(
            
            int id
            , 
            
            RestoreRequest restoreRequest
            
        )
        {
            std::string url = basepath + "/vps/{id}/restore"; //id 


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
            TextResponse
        >
        VPSApi::
        postVpsReverseDns(
            
            int id
            , 
            
            ReverseDnsEntries reverseDnsEntries
            
        )
        {
            std::string url = basepath + "/vps/{id}/reverse_dns"; //id 


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
        VPSApi::
        postVpsSetupVnc(
            
            int id
            
        )
        {
            std::string url = basepath + "/vps/{id}/setup_vnc"; //id 


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
        VPSApi::
        postVpsSlices(
            
            int id
            
        )
        {
            std::string url = basepath + "/vps/{id}/slices"; //id 


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
        VPSApi::
        postVpsTrafficUsage(
            
            int id
            
        )
        {
            std::string url = basepath + "/vps/{id}/traffic_usage"; //id 


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
        VPSApi::
        postVpsViewDesktop(
            
            int id
            
        )
        {
            std::string url = basepath + "/vps/{id}/view_desktop"; //id 


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
            VpsOrderPutResponse
        >
        VPSApi::
        putVps(
            
            VpsOrderPutRequest vpsOrderPutRequest
            
        )
        {
            std::string url = basepath + "/vps/order"; //


            // Headers  | 

            // Query    | 

            // Form     | 
            addHeader("Content-Type", "application/json");





            std::string payload = "";
            // Send Request
            // METHOD | PUT
            // Body     | vpsOrderPutRequest



            payload = vpsOrderPutRequest.toJson().dump();

            int httpCode = sendRequest(url, "PUT", reinterpret_cast<uint8_t*>(&payload[0]), payload.length());

            // Handle Request
            String output = getResponseBody();
            std::string output_string = output.c_str();




            VpsOrderPutResponse obj(output_string);


            Response<VpsOrderPutResponse> response(obj, httpCode);
            return response;
        }

        Response<
            String
        >
        VPSApi::
        putVpsBuyHdSpace(
            
            int id
            
        )
        {
            std::string url = basepath + "/vps/{id}/buy_hd_space"; //id 


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
            // METHOD | PUT
            // Body     | 
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
        VPSApi::
        updateVpsInfo(
            
            std::string id
            
        )
        {
            std::string url = basepath + "/vps/{id}"; //id 


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
            VPSCancel_200_response
        >
        VPSApi::
        vPSCancel(
            
            int id
            
        )
        {
            std::string url = basepath + "/vps/{id}"; //id 


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




            VPSCancel_200_response obj(output_string);


            Response<VPSCancel_200_response> response(obj, httpCode);
            return response;
        }



