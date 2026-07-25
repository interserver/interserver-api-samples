

#include "WebsiteOrderPutRequest.h"

using namespace Tiny;

WebsiteOrderPutRequest::WebsiteOrderPutRequest()
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

WebsiteOrderPutRequest::WebsiteOrderPutRequest(std::string jsonString)
{
	this->fromJson(jsonString);
}

WebsiteOrderPutRequest::~WebsiteOrderPutRequest()
{

}

void
WebsiteOrderPutRequest::fromJson(std::string jsonObj)
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
WebsiteOrderPutRequest::toJson()
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
WebsiteOrderPutRequest::getHostname()
{
	return hostname;
}

void
WebsiteOrderPutRequest::setHostname(std::string hostname)
{
	this->hostname = hostname;
}

int
WebsiteOrderPutRequest::getPackageId()
{
	return packageId;
}

void
WebsiteOrderPutRequest::setPackageId(int packageId)
{
	this->packageId = packageId;
}

std::string
WebsiteOrderPutRequest::getRootpass()
{
	return rootpass;
}

void
WebsiteOrderPutRequest::setRootpass(std::string rootpass)
{
	this->rootpass = rootpass;
}

int
WebsiteOrderPutRequest::getPeriod()
{
	return period;
}

void
WebsiteOrderPutRequest::setPeriod(int period)
{
	this->period = period;
}

std::string
WebsiteOrderPutRequest::getCoupon()
{
	return coupon;
}

void
WebsiteOrderPutRequest::setCoupon(std::string coupon)
{
	this->coupon = coupon;
}

int
WebsiteOrderPutRequest::getServiceOfferId()
{
	return serviceOfferId;
}

void
WebsiteOrderPutRequest::setServiceOfferId(int serviceOfferId)
{
	this->serviceOfferId = serviceOfferId;
}

int
WebsiteOrderPutRequest::getScript()
{
	return script;
}

void
WebsiteOrderPutRequest::setScript(int script)
{
	this->script = script;
}

std::string
WebsiteOrderPutRequest::getComment()
{
	return comment;
}

void
WebsiteOrderPutRequest::setComment(std::string comment)
{
	this->comment = comment;
}

bool
WebsiteOrderPutRequest::isRegisterDomain()
{
	return registerDomain;
}

void
WebsiteOrderPutRequest::setRegisterDomain(bool registerDomain)
{
	this->registerDomain = registerDomain;
}



