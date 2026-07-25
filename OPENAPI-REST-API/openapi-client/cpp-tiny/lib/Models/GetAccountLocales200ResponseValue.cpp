

#include "GetAccountLocales_200_response_value.h"

using namespace Tiny;

GetAccountLocales_200_response_value::GetAccountLocales_200_response_value()
{
	name = std::string();
	local_name = std::string();
}

GetAccountLocales_200_response_value::GetAccountLocales_200_response_value(std::string jsonString)
{
	this->fromJson(jsonString);
}

GetAccountLocales_200_response_value::~GetAccountLocales_200_response_value()
{

}

void
GetAccountLocales_200_response_value::fromJson(std::string jsonObj)
{
    bourne::json object = bourne::json::parse(jsonObj);

    const char *nameKey = "name";

    if(object.has_key(nameKey))
    {
        bourne::json value = object[nameKey];



        jsonToValue(&name, value, "std::string");


    }

    const char *local_nameKey = "local_name";

    if(object.has_key(local_nameKey))
    {
        bourne::json value = object[local_nameKey];



        jsonToValue(&local_name, value, "std::string");


    }


}

bourne::json
GetAccountLocales_200_response_value::toJson()
{
    bourne::json object = bourne::json::object();





    object["name"] = getName();






    object["local_name"] = getLocalName();



    return object;

}

std::string
GetAccountLocales_200_response_value::getName()
{
	return name;
}

void
GetAccountLocales_200_response_value::setName(std::string name)
{
	this->name = name;
}

std::string
GetAccountLocales_200_response_value::getLocalName()
{
	return local_name;
}

void
GetAccountLocales_200_response_value::setLocalName(std::string local_name)
{
	this->local_name = local_name;
}



