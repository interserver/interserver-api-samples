#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "PatchBillingCreditCardVerify_request.h"

using namespace std;
using namespace Tizen::ArtikCloud;

PatchBillingCreditCardVerify_request::PatchBillingCreditCardVerify_request()
{
	//__init();
}

PatchBillingCreditCardVerify_request::~PatchBillingCreditCardVerify_request()
{
	//__cleanup();
}

void
PatchBillingCreditCardVerify_request::__init()
{
	//cc_ccv2 = std::string();
}

void
PatchBillingCreditCardVerify_request::__cleanup()
{
	//if(cc_ccv2 != NULL) {
	//
	//delete cc_ccv2;
	//cc_ccv2 = NULL;
	//}
	//
}

void
PatchBillingCreditCardVerify_request::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *cc_ccv2Key = "cc_ccv2";
	node = json_object_get_member(pJsonObject, cc_ccv2Key);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&cc_ccv2, node, "std::string", "");
		} else {
			
		}
	}
}

PatchBillingCreditCardVerify_request::PatchBillingCreditCardVerify_request(char* json)
{
	this->fromJson(json);
}

char*
PatchBillingCreditCardVerify_request::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("std::string")) {
		std::string obj = getCcCcv2();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *cc_ccv2Key = "cc_ccv2";
	json_object_set_member(pJsonObject, cc_ccv2Key, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
PatchBillingCreditCardVerify_request::getCcCcv2()
{
	return cc_ccv2;
}

void
PatchBillingCreditCardVerify_request::setCcCcv2(std::string  cc_ccv2)
{
	this->cc_ccv2 = cc_ccv2;
}


