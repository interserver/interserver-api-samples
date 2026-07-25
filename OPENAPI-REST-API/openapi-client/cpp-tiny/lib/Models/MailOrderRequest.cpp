

#include "MailOrderRequest.h"

using namespace Tiny;

MailOrderRequest::MailOrderRequest()
{
	serviceType = int(0);
	coupon = std::string();
	comment = std::string();
}

MailOrderRequest::MailOrderRequest(std::string jsonString)
{
	this->fromJson(jsonString);
}

MailOrderRequest::~MailOrderRequest()
{

}

void
MailOrderRequest::fromJson(std::string jsonObj)
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
MailOrderRequest::toJson()
{
    bourne::json object = bourne::json::object();





    object["serviceType"] = getServiceType();






    object["coupon"] = getCoupon();






    object["comment"] = getComment();



    return object;

}

int
MailOrderRequest::getServiceType()
{
	return serviceType;
}

void
MailOrderRequest::setServiceType(int serviceType)
{
	this->serviceType = serviceType;
}

std::string
MailOrderRequest::getCoupon()
{
	return coupon;
}

void
MailOrderRequest::setCoupon(std::string coupon)
{
	this->coupon = coupon;
}

std::string
MailOrderRequest::getComment()
{
	return comment;
}

void
MailOrderRequest::setComment(std::string comment)
{
	this->comment = comment;
}



