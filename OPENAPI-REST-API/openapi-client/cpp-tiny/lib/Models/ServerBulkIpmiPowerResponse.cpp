

#include "ServerBulkIpmiPowerResponse.h"

using namespace Tiny;

ServerBulkIpmiPowerResponse::ServerBulkIpmiPowerResponse()
{
	results = std::list<ServerBulkIpmiPowerResponse_results_inner>();
}

ServerBulkIpmiPowerResponse::ServerBulkIpmiPowerResponse(std::string jsonString)
{
	this->fromJson(jsonString);
}

ServerBulkIpmiPowerResponse::~ServerBulkIpmiPowerResponse()
{

}

void
ServerBulkIpmiPowerResponse::fromJson(std::string jsonObj)
{
    bourne::json object = bourne::json::parse(jsonObj);

    const char *resultsKey = "results";

    if(object.has_key(resultsKey))
    {
        bourne::json value = object[resultsKey];


        std::list<ServerBulkIpmiPowerResponse_results_inner> results_list;
        ServerBulkIpmiPowerResponse_results_inner element;
        for(auto& var : value.array_range())
        {


            element.fromJson(var.dump());

            results_list.push_back(element);
        }
        results = results_list;


    }


}

bourne::json
ServerBulkIpmiPowerResponse::toJson()
{
    bourne::json object = bourne::json::object();




    std::list<ServerBulkIpmiPowerResponse_results_inner> results_list = getResults();
    bourne::json results_arr = bourne::json::array();

    for(auto& var : results_list)
    {
        ServerBulkIpmiPowerResponse_results_inner obj = var;
        results_arr.append(obj.toJson());
    }
    object["results"] = results_arr;




    return object;

}

std::list<ServerBulkIpmiPowerResponse_results_inner>
ServerBulkIpmiPowerResponse::getResults()
{
	return results;
}

void
ServerBulkIpmiPowerResponse::setResults(std::list<ServerBulkIpmiPowerResponse_results_inner> results)
{
	this->results = results;
}



