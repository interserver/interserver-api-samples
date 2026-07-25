

#include "LicenseOrderRequest.h"

using namespace Tiny;

LicenseOrderRequest::LicenseOrderRequest()
{
	package = int(0);
	ip = std::string();
	tos = bool(false);
	frequency = int(0);
	coupon = std::string();
	comment = std::string();
}

LicenseOrderRequest::LicenseOrderRequest(std::string jsonString)
{
	this->fromJson(jsonString);
}

LicenseOrderRequest::~LicenseOrderRequest()
{

}

void
LicenseOrderRequest::fromJson(std::string jsonObj)
{
    bourne::json object = bourne::json::parse(jsonObj);

    const char *packageKey = "package";

    if(object.has_key(packageKey))
    {
        bourne::json value = object[packageKey];



        jsonToValue(&package, value, "int");


    }

    const char *ipKey = "ip";

    if(object.has_key(ipKey))
    {
        bourne::json value = object[ipKey];



        jsonToValue(&ip, value, "std::string");


    }

    const char *tosKey = "tos";

    if(object.has_key(tosKey))
    {
        bourne::json value = object[tosKey];



        jsonToValue(&tos, value, "bool");


    }

    const char *frequencyKey = "frequency";

    if(object.has_key(frequencyKey))
    {
        bourne::json value = object[frequencyKey];



        jsonToValue(&frequency, value, "int");


    }

    const char *couponKey = "coupon";

    if(object.has_key(couponKey))
    {
        bourne::json value = object[couponKey];



        jsonToValue(&coupon, value, "std::string");


    }

    const char *commentKey = "comment";

    if(object.has_key(commentKey))
    {
        bourne::json value = object[commentKey];



        jsonToValue(&comment, value, "std::string");


    }


}

bourne::json
LicenseOrderRequest::toJson()
{
    bourne::json object = bourne::json::object();





    object["package"] = getPackage();






    object["ip"] = getIp();






    object["tos"] = isTos();






    object["frequency"] = getFrequency();






    object["coupon"] = getCoupon();






    object["comment"] = getComment();



    return object;

}

int
LicenseOrderRequest::getPackage()
{
	return package;
}

void
LicenseOrderRequest::setPackage(int package)
{
	this->package = package;
}

std::string
LicenseOrderRequest::getIp()
{
	return ip;
}

void
LicenseOrderRequest::setIp(std::string ip)
{
	this->ip = ip;
}

bool
LicenseOrderRequest::isTos()
{
	return tos;
}

void
LicenseOrderRequest::setTos(bool tos)
{
	this->tos = tos;
}

int
LicenseOrderRequest::getFrequency()
{
	return frequency;
}

void
LicenseOrderRequest::setFrequency(int frequency)
{
	this->frequency = frequency;
}

std::string
LicenseOrderRequest::getCoupon()
{
	return coupon;
}

void
LicenseOrderRequest::setCoupon(std::string coupon)
{
	this->coupon = coupon;
}

std::string
LicenseOrderRequest::getComment()
{
	return comment;
}

void
LicenseOrderRequest::setComment(std::string comment)
{
	this->comment = comment;
}



