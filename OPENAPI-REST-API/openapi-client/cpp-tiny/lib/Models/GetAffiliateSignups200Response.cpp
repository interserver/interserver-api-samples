

#include "GetAffiliateSignups_200_response.h"

using namespace Tiny;

GetAffiliateSignups_200_response::GetAffiliateSignups_200_response()
{
	data = null;
}

GetAffiliateSignups_200_response::GetAffiliateSignups_200_response(std::string jsonString)
{
	this->fromJson(jsonString);
}

GetAffiliateSignups_200_response::~GetAffiliateSignups_200_response()
{

}

void
GetAffiliateSignups_200_response::fromJson(std::string jsonObj)
{
    bourne::json object = bourne::json::parse(jsonObj);

    const char *dataKey = "data";

    if(object.has_key(dataKey))
    {
        bourne::json value = object[dataKey];




        Object* obj = &data;
		obj->fromJson(value.dump());

    }


}

bourne::json
GetAffiliateSignups_200_response::toJson()
{
    bourne::json object = bourne::json::object();






	object["data"] = getData().toJson();


    return object;

}

Object
GetAffiliateSignups_200_response::getData()
{
	return data;
}

void
GetAffiliateSignups_200_response::setData(Object data)
{
	this->data = data;
}



