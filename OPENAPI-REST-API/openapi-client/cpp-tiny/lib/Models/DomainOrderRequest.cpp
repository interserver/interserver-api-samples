

#include "DomainOrderRequest.h"

using namespace Tiny;

DomainOrderRequest::DomainOrderRequest()
{
	hostname = std::string();
	type = std::string();
	coupon = std::string();
	whois_privacy = std::string();
}

DomainOrderRequest::DomainOrderRequest(std::string jsonString)
{
	this->fromJson(jsonString);
}

DomainOrderRequest::~DomainOrderRequest()
{

}

void
DomainOrderRequest::fromJson(std::string jsonObj)
{
    bourne::json object = bourne::json::parse(jsonObj);

    const char *hostnameKey = "hostname";

    if(object.has_key(hostnameKey))
    {
        bourne::json value = object[hostnameKey];



        jsonToValue(&hostname, value, "std::string");


    }

    const char *typeKey = "type";

    if(object.has_key(typeKey))
    {
        bourne::json value = object[typeKey];



        jsonToValue(&type, value, "std::string");


    }

    const char *couponKey = "coupon";

    if(object.has_key(couponKey))
    {
        bourne::json value = object[couponKey];



        jsonToValue(&coupon, value, "std::string");


    }

    const char *whois_privacyKey = "whois_privacy";

    if(object.has_key(whois_privacyKey))
    {
        bourne::json value = object[whois_privacyKey];



        jsonToValue(&whois_privacy, value, "std::string");


    }


}

bourne::json
DomainOrderRequest::toJson()
{
    bourne::json object = bourne::json::object();





    object["hostname"] = getHostname();






    object["type"] = getType();






    object["coupon"] = getCoupon();






    object["whois_privacy"] = getWhoisPrivacy();



    return object;

}

std::string
DomainOrderRequest::getHostname()
{
	return hostname;
}

void
DomainOrderRequest::setHostname(std::string hostname)
{
	this->hostname = hostname;
}

std::string
DomainOrderRequest::getType()
{
	return type;
}

void
DomainOrderRequest::setType(std::string type)
{
	this->type = type;
}

std::string
DomainOrderRequest::getCoupon()
{
	return coupon;
}

void
DomainOrderRequest::setCoupon(std::string coupon)
{
	this->coupon = coupon;
}

std::string
DomainOrderRequest::getWhoisPrivacy()
{
	return whois_privacy;
}

void
DomainOrderRequest::setWhoisPrivacy(std::string whois_privacy)
{
	this->whois_privacy = whois_privacy;
}



