

#include "WebsiteOrderPostRequest.h"

using namespace Tiny;

WebsiteOrderPostRequest::WebsiteOrderPostRequest()
{
	hostname = std::string();
	packageId = int(0);
	rootpass = std::string();
	period = int(0);
	coupon = std::string();
	serviceOfferId = int(0);
	script = int(0);
	comment = std::string();
	registerDomain = bool(false);
}

WebsiteOrderPostRequest::WebsiteOrderPostRequest(std::string jsonString)
{
	this->fromJson(jsonString);
}

WebsiteOrderPostRequest::~WebsiteOrderPostRequest()
{

}

void
WebsiteOrderPostRequest::fromJson(std::string jsonObj)
{
    bourne::json object = bourne::json::parse(jsonObj);

    const char *hostnameKey = "hostname";

    if(object.has_key(hostnameKey))
    {
        bourne::json value = object[hostnameKey];



        jsonToValue(&hostname, value, "std::string");


    }

    const char *packageIdKey = "packageId";

    if(object.has_key(packageIdKey))
    {
        bourne::json value = object[packageIdKey];



        jsonToValue(&packageId, value, "int");


    }

    const char *rootpassKey = "rootpass";

    if(object.has_key(rootpassKey))
    {
        bourne::json value = object[rootpassKey];



        jsonToValue(&rootpass, value, "std::string");


    }

    const char *periodKey = "period";

    if(object.has_key(periodKey))
    {
        bourne::json value = object[periodKey];



        jsonToValue(&period, value, "int");


    }

    const char *couponKey = "coupon";

    if(object.has_key(couponKey))
    {
        bourne::json value = object[couponKey];



        jsonToValue(&coupon, value, "std::string");


    }

    const char *serviceOfferIdKey = "serviceOfferId";

    if(object.has_key(serviceOfferIdKey))
    {
        bourne::json value = object[serviceOfferIdKey];



        jsonToValue(&serviceOfferId, value, "int");


    }

    const char *scriptKey = "script";

    if(object.has_key(scriptKey))
    {
        bourne::json value = object[scriptKey];



        jsonToValue(&script, value, "int");


    }

    const char *commentKey = "comment";

    if(object.has_key(commentKey))
    {
        bourne::json value = object[commentKey];



        jsonToValue(&comment, value, "std::string");


    }

    const char *registerDomainKey = "registerDomain";

    if(object.has_key(registerDomainKey))
    {
        bourne::json value = object[registerDomainKey];



        jsonToValue(&registerDomain, value, "bool");


    }


}

bourne::json
WebsiteOrderPostRequest::toJson()
{
    bourne::json object = bourne::json::object();





    object["hostname"] = getHostname();






    object["packageId"] = getPackageId();






    object["rootpass"] = getRootpass();






    object["period"] = getPeriod();






    object["coupon"] = getCoupon();






    object["serviceOfferId"] = getServiceOfferId();






    object["script"] = getScript();






    object["comment"] = getComment();






    object["registerDomain"] = isRegisterDomain();



    return object;

}

std::string
WebsiteOrderPostRequest::getHostname()
{
	return hostname;
}

void
WebsiteOrderPostRequest::setHostname(std::string hostname)
{
	this->hostname = hostname;
}

int
WebsiteOrderPostRequest::getPackageId()
{
	return packageId;
}

void
WebsiteOrderPostRequest::setPackageId(int packageId)
{
	this->packageId = packageId;
}

std::string
WebsiteOrderPostRequest::getRootpass()
{
	return rootpass;
}

void
WebsiteOrderPostRequest::setRootpass(std::string rootpass)
{
	this->rootpass = rootpass;
}

int
WebsiteOrderPostRequest::getPeriod()
{
	return period;
}

void
WebsiteOrderPostRequest::setPeriod(int period)
{
	this->period = period;
}

std::string
WebsiteOrderPostRequest::getCoupon()
{
	return coupon;
}

void
WebsiteOrderPostRequest::setCoupon(std::string coupon)
{
	this->coupon = coupon;
}

int
WebsiteOrderPostRequest::getServiceOfferId()
{
	return serviceOfferId;
}

void
WebsiteOrderPostRequest::setServiceOfferId(int serviceOfferId)
{
	this->serviceOfferId = serviceOfferId;
}

int
WebsiteOrderPostRequest::getScript()
{
	return script;
}

void
WebsiteOrderPostRequest::setScript(int script)
{
	this->script = script;
}

std::string
WebsiteOrderPostRequest::getComment()
{
	return comment;
}

void
WebsiteOrderPostRequest::setComment(std::string comment)
{
	this->comment = comment;
}

bool
WebsiteOrderPostRequest::isRegisterDomain()
{
	return registerDomain;
}

void
WebsiteOrderPostRequest::setRegisterDomain(bool registerDomain)
{
	this->registerDomain = registerDomain;
}



