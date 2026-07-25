#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "MailOrderRequest.h"

using namespace std;
using namespace Tizen::ArtikCloud;

MailOrderRequest::MailOrderRequest()
{
	//__init();
}

MailOrderRequest::~MailOrderRequest()
{
	//__cleanup();
}

void
MailOrderRequest::__init()
{
	//serviceType = int(0);
	//coupon = std::string();
	//comment = std::string();
}

void
MailOrderRequest::__cleanup()
{
	//if(serviceType != NULL) {
	//
	//delete serviceType;
	//serviceType = NULL;
	//}
	//if(coupon != NULL) {
	//
	//delete coupon;
	//coupon = NULL;
	//}
	//if(comment != NULL) {
	//
	//delete comment;
	//comment = NULL;
	//}
	//
}

void
MailOrderRequest::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *serviceTypeKey = "serviceType";
	node = json_object_get_member(pJsonObject, serviceTypeKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&serviceType, node, "int", "");
		} else {
			
		}
	}
	const gchar *couponKey = "coupon";
	node = json_object_get_member(pJsonObject, couponKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&coupon, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *commentKey = "comment";
	node = json_object_get_member(pJsonObject, commentKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&comment, node, "std::string", "");
		} else {
			
		}
	}
}

MailOrderRequest::MailOrderRequest(char* json)
{
	this->fromJson(json);
}

char*
MailOrderRequest::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("int")) {
		int obj = getServiceType();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *serviceTypeKey = "serviceType";
	json_object_set_member(pJsonObject, serviceTypeKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getCoupon();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *couponKey = "coupon";
	json_object_set_member(pJsonObject, couponKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getComment();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *commentKey = "comment";
	json_object_set_member(pJsonObject, commentKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

int
MailOrderRequest::getServiceType()
{
	return serviceType;
}

void
MailOrderRequest::setServiceType(int  serviceType)
{
	this->serviceType = serviceType;
}

std::string
MailOrderRequest::getCoupon()
{
	return coupon;
}

void
MailOrderRequest::setCoupon(std::string  coupon)
{
	this->coupon = coupon;
}

std::string
MailOrderRequest::getComment()
{
	return comment;
}

void
MailOrderRequest::setComment(std::string  comment)
{
	this->comment = comment;
}


