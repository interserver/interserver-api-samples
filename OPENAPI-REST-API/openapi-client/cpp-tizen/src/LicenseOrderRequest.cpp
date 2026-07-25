#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "LicenseOrderRequest.h"

using namespace std;
using namespace Tizen::ArtikCloud;

LicenseOrderRequest::LicenseOrderRequest()
{
	//__init();
}

LicenseOrderRequest::~LicenseOrderRequest()
{
	//__cleanup();
}

void
LicenseOrderRequest::__init()
{
	//package = int(0);
	//ip = std::string();
	//tos = bool(false);
	//frequency = int(0);
	//coupon = std::string();
	//comment = std::string();
}

void
LicenseOrderRequest::__cleanup()
{
	//if(package != NULL) {
	//
	//delete package;
	//package = NULL;
	//}
	//if(ip != NULL) {
	//
	//delete ip;
	//ip = NULL;
	//}
	//if(tos != NULL) {
	//
	//delete tos;
	//tos = NULL;
	//}
	//if(frequency != NULL) {
	//
	//delete frequency;
	//frequency = NULL;
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
LicenseOrderRequest::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *packageKey = "package";
	node = json_object_get_member(pJsonObject, packageKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&package, node, "int", "");
		} else {
			
		}
	}
	const gchar *ipKey = "ip";
	node = json_object_get_member(pJsonObject, ipKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&ip, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *tosKey = "tos";
	node = json_object_get_member(pJsonObject, tosKey);
	if (node !=NULL) {
	

		if (isprimitive("bool")) {
			jsonToValue(&tos, node, "bool", "");
		} else {
			
		}
	}
	const gchar *frequencyKey = "frequency";
	node = json_object_get_member(pJsonObject, frequencyKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&frequency, node, "int", "");
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

LicenseOrderRequest::LicenseOrderRequest(char* json)
{
	this->fromJson(json);
}

char*
LicenseOrderRequest::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("int")) {
		int obj = getPackage();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *packageKey = "package";
	json_object_set_member(pJsonObject, packageKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getIp();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *ipKey = "ip";
	json_object_set_member(pJsonObject, ipKey, node);
	if (isprimitive("bool")) {
		bool obj = getTos();
		node = converttoJson(&obj, "bool", "");
	}
	else {
		
	}
	const gchar *tosKey = "tos";
	json_object_set_member(pJsonObject, tosKey, node);
	if (isprimitive("int")) {
		int obj = getFrequency();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *frequencyKey = "frequency";
	json_object_set_member(pJsonObject, frequencyKey, node);
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
LicenseOrderRequest::getPackage()
{
	return package;
}

void
LicenseOrderRequest::setPackage(int  package)
{
	this->package = package;
}

std::string
LicenseOrderRequest::getIp()
{
	return ip;
}

void
LicenseOrderRequest::setIp(std::string  ip)
{
	this->ip = ip;
}

bool
LicenseOrderRequest::getTos()
{
	return tos;
}

void
LicenseOrderRequest::setTos(bool  tos)
{
	this->tos = tos;
}

int
LicenseOrderRequest::getFrequency()
{
	return frequency;
}

void
LicenseOrderRequest::setFrequency(int  frequency)
{
	this->frequency = frequency;
}

std::string
LicenseOrderRequest::getCoupon()
{
	return coupon;
}

void
LicenseOrderRequest::setCoupon(std::string  coupon)
{
	this->coupon = coupon;
}

std::string
LicenseOrderRequest::getComment()
{
	return comment;
}

void
LicenseOrderRequest::setComment(std::string  comment)
{
	this->comment = comment;
}


