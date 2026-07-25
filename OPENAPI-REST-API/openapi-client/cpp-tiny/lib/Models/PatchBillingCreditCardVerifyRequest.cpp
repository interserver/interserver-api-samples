

#include "PatchBillingCreditCardVerify_request.h"

using namespace Tiny;

PatchBillingCreditCardVerify_request::PatchBillingCreditCardVerify_request()
{
	cc_ccv2 = std::string();
}

PatchBillingCreditCardVerify_request::PatchBillingCreditCardVerify_request(std::string jsonString)
{
	this->fromJson(jsonString);
}

PatchBillingCreditCardVerify_request::~PatchBillingCreditCardVerify_request()
{

}

void
PatchBillingCreditCardVerify_request::fromJson(std::string jsonObj)
{
    bourne::json object = bourne::json::parse(jsonObj);

    const char *cc_ccv2Key = "cc_ccv2";

    if(object.has_key(cc_ccv2Key))
    {
        bourne::json value = object[cc_ccv2Key];



        jsonToValue(&cc_ccv2, value, "std::string");


    }


}

bourne::json
PatchBillingCreditCardVerify_request::toJson()
{
    bourne::json object = bourne::json::object();





    object["cc_ccv2"] = getCcCcv2();



    return object;

}

std::string
PatchBillingCreditCardVerify_request::getCcCcv2()
{
	return cc_ccv2;
}

void
PatchBillingCreditCardVerify_request::setCcCcv2(std::string cc_ccv2)
{
	this->cc_ccv2 = cc_ccv2;
}



