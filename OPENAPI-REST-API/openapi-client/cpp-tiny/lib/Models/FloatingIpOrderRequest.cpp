

#include "FloatingIpOrderRequest.h"

using namespace Tiny;

FloatingIpOrderRequest::FloatingIpOrderRequest()
{
	serviceType = int(0);
	coupon = std::string();
	comment = std::string();
}

FloatingIpOrderRequest::FloatingIpOrderRequest(std::string jsonString)
{
	this->fromJson(jsonString);
}

FloatingIpOrderRequest::~FloatingIpOrderRequest()
{

}

void
FloatingIpOrderRequest::fromJson(std::string jsonObj)
{
    bourne::json object = bourne::json::parse(jsonObj);

    const char *serviceTypeKey = "serviceType";

    if(object.has_key(serviceTypeKey))
    {
        bourne::json value = object[serviceTypeKey];



        jsonToValue(&serviceType, value, "int");


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
FloatingIpOrderRequest::toJson()
{
    bourne::json object = bourne::json::object();





    object["serviceType"] = getServiceType();






    object["coupon"] = getCoupon();






    object["comment"] = getComment();



    return object;

}

int
FloatingIpOrderRequest::getServiceType()
{
	return serviceType;
}

void
FloatingIpOrderRequest::setServiceType(int serviceType)
{
	this->serviceType = serviceType;
}

std::string
FloatingIpOrderRequest::getCoupon()
{
	return coupon;
}

void
FloatingIpOrderRequest::setCoupon(std::string coupon)
{
	this->coupon = coupon;
}

std::string
FloatingIpOrderRequest::getComment()
{
	return comment;
}

void
FloatingIpOrderRequest::setComment(std::string comment)
{
	this->comment = comment;
}



