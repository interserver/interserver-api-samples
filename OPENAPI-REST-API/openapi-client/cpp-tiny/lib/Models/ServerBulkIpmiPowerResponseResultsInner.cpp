

#include "ServerBulkIpmiPowerResponse_results_inner.h"

using namespace Tiny;

ServerBulkIpmiPowerResponse_results_inner::ServerBulkIpmiPowerResponse_results_inner()
{
	id = int(0);
	asset = int(0);
	text = std::string();
	error = std::string();
}

ServerBulkIpmiPowerResponse_results_inner::ServerBulkIpmiPowerResponse_results_inner(std::string jsonString)
{
	this->fromJson(jsonString);
}

ServerBulkIpmiPowerResponse_results_inner::~ServerBulkIpmiPowerResponse_results_inner()
{

}

void
ServerBulkIpmiPowerResponse_results_inner::fromJson(std::string jsonObj)
{
    bourne::json object = bourne::json::parse(jsonObj);

    const char *idKey = "id";

    if(object.has_key(idKey))
    {
        bourne::json value = object[idKey];



        jsonToValue(&id, value, "int");


    }

    const char *assetKey = "asset";

    if(object.has_key(assetKey))
    {
        bourne::json value = object[assetKey];



        jsonToValue(&asset, value, "int");


    }

    const char *textKey = "text";

    if(object.has_key(textKey))
    {
        bourne::json value = object[textKey];



        jsonToValue(&text, value, "std::string");


    }

    const char *errorKey = "error";

    if(object.has_key(errorKey))
    {
        bourne::json value = object[errorKey];



        jsonToValue(&error, value, "std::string");


    }


}

bourne::json
ServerBulkIpmiPowerResponse_results_inner::toJson()
{
    bourne::json object = bourne::json::object();





    object["id"] = getId();






    object["asset"] = getAsset();






    object["text"] = getText();






    object["error"] = getError();



    return object;

}

int
ServerBulkIpmiPowerResponse_results_inner::getId()
{
	return id;
}

void
ServerBulkIpmiPowerResponse_results_inner::setId(int id)
{
	this->id = id;
}

int
ServerBulkIpmiPowerResponse_results_inner::getAsset()
{
	return asset;
}

void
ServerBulkIpmiPowerResponse_results_inner::setAsset(int asset)
{
	this->asset = asset;
}

std::string
ServerBulkIpmiPowerResponse_results_inner::getText()
{
	return text;
}

void
ServerBulkIpmiPowerResponse_results_inner::setText(std::string text)
{
	this->text = text;
}

std::string
ServerBulkIpmiPowerResponse_results_inner::getError()
{
	return error;
}

void
ServerBulkIpmiPowerResponse_results_inner::setError(std::string error)
{
	this->error = error;
}



