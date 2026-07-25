

#include "DeleteMailAlert_request.h"

using namespace Tiny;

DeleteMailAlert_request::DeleteMailAlert_request()
{
	alert_id = int(0);
}

DeleteMailAlert_request::DeleteMailAlert_request(std::string jsonString)
{
	this->fromJson(jsonString);
}

DeleteMailAlert_request::~DeleteMailAlert_request()
{

}

void
DeleteMailAlert_request::fromJson(std::string jsonObj)
{
    bourne::json object = bourne::json::parse(jsonObj);

    const char *alert_idKey = "alert_id";

    if(object.has_key(alert_idKey))
    {
        bourne::json value = object[alert_idKey];



        jsonToValue(&alert_id, value, "int");


    }


}

bourne::json
DeleteMailAlert_request::toJson()
{
    bourne::json object = bourne::json::object();





    object["alert_id"] = getAlertId();



    return object;

}

int
DeleteMailAlert_request::getAlertId()
{
	return alert_id;
}

void
DeleteMailAlert_request::setAlertId(int alert_id)
{
	this->alert_id = alert_id;
}



