

#include "PutScrubIps_200_response.h"

using namespace Tiny;

PutScrubIps_200_response::PutScrubIps_200_response()
{
	r_continue = bool(false);
	errors = std::list<std::string>();
	serviceType = int(0);
	serviceCost = float(0);
	originalCost = float(0);
	repeatServiceCost = float(0);
}

PutScrubIps_200_response::PutScrubIps_200_response(std::string jsonString)
{
	this->fromJson(jsonString);
}

PutScrubIps_200_response::~PutScrubIps_200_response()
{

}

void
PutScrubIps_200_response::fromJson(std::string jsonObj)
{
    bourne::json object = bourne::json::parse(jsonObj);

    const char *r_continueKey = "continue";

    if(object.has_key(r_continueKey))
    {
        bourne::json value = object[r_continueKey];



        jsonToValue(&r_continue, value, "bool");


    }

    const char *errorsKey = "errors";

    if(object.has_key(errorsKey))
    {
        bourne::json value = object[errorsKey];


        std::list<std::string> errors_list;
        std::string element;
        for(auto& var : value.array_range())
        {

            jsonToValue(&element, var, "std::string");


            errors_list.push_back(element);
        }
        errors = errors_list;


    }

    const char *serviceTypeKey = "serviceType";

    if(object.has_key(serviceTypeKey))
    {
        bourne::json value = object[serviceTypeKey];



        jsonToValue(&serviceType, value, "int");


    }

    const char *serviceCostKey = "serviceCost";

    if(object.has_key(serviceCostKey))
    {
        bourne::json value = object[serviceCostKey];



        jsonToValue(&serviceCost, value, "long");


    }

    const char *originalCostKey = "originalCost";

    if(object.has_key(originalCostKey))
    {
        bourne::json value = object[originalCostKey];



        jsonToValue(&originalCost, value, "long");


    }

    const char *repeatServiceCostKey = "repeatServiceCost";

    if(object.has_key(repeatServiceCostKey))
    {
        bourne::json value = object[repeatServiceCostKey];



        jsonToValue(&repeatServiceCost, value, "long");


    }


}

bourne::json
PutScrubIps_200_response::toJson()
{
    bourne::json object = bourne::json::object();





    object["r_continue"] = isRContinue();





    std::list<std::string> errors_list = getErrors();
    bourne::json errors_arr = bourne::json::array();

    for(auto& var : errors_list)
    {
        errors_arr.append(var);
    }
    object["errors"] = errors_arr;









    object["serviceType"] = getServiceType();






    object["serviceCost"] = getServiceCost();






    object["originalCost"] = getOriginalCost();






    object["repeatServiceCost"] = getRepeatServiceCost();



    return object;

}

bool
PutScrubIps_200_response::isRContinue()
{
	return r_continue;
}

void
PutScrubIps_200_response::setRContinue(bool r_continue)
{
	this->r_continue = r_continue;
}

std::list<std::string>
PutScrubIps_200_response::getErrors()
{
	return errors;
}

void
PutScrubIps_200_response::setErrors(std::list<std::string> errors)
{
	this->errors = errors;
}

int
PutScrubIps_200_response::getServiceType()
{
	return serviceType;
}

void
PutScrubIps_200_response::setServiceType(int serviceType)
{
	this->serviceType = serviceType;
}

long
PutScrubIps_200_response::getServiceCost()
{
	return serviceCost;
}

void
PutScrubIps_200_response::setServiceCost(long serviceCost)
{
	this->serviceCost = serviceCost;
}

long
PutScrubIps_200_response::getOriginalCost()
{
	return originalCost;
}

void
PutScrubIps_200_response::setOriginalCost(long originalCost)
{
	this->originalCost = originalCost;
}

long
PutScrubIps_200_response::getRepeatServiceCost()
{
	return repeatServiceCost;
}

void
PutScrubIps_200_response::setRepeatServiceCost(long repeatServiceCost)
{
	this->repeatServiceCost = repeatServiceCost;
}



