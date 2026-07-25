#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "DomainOrderRequest.h"

using namespace std;
using namespace Tizen::ArtikCloud;

DomainOrderRequest::DomainOrderRequest()
{
	//__init();
}

DomainOrderRequest::~DomainOrderRequest()
{
	//__cleanup();
}

void
DomainOrderRequest::__init()
{
	//hostname = std::string();
	//type = std::string();
	//coupon = std::string();
	//whois_privacy = std::string();
}

void
DomainOrderRequest::__cleanup()
{
	//if(hostname != NULL) {
	//
	//delete hostname;
	//hostname = NULL;
	//}
	//if(type != NULL) {
	//
	//delete type;
	//type = NULL;
	//}
	//if(coupon != NULL) {
	//
	//delete coupon;
	//coupon = NULL;
	//}
	//if(whois_privacy != NULL) {
	//
	//delete whois_privacy;
	//whois_privacy = NULL;
	//}
	//
}

void
DomainOrderRequest::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *hostnameKey = "hostname";
	node = json_object_get_member(pJsonObject, hostnameKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&hostname, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *typeKey = "type";
	node = json_object_get_member(pJsonObject, typeKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&type, node, "std::string", "");
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
	const gchar *whois_privacyKey = "whois_privacy";
	node = json_object_get_member(pJsonObject, whois_privacyKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&whois_privacy, node, "std::string", "");
		} else {
			
		}
	}
}

DomainOrderRequest::DomainOrderRequest(char* json)
{
	this->fromJson(json);
}

char*
DomainOrderRequest::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("std::string")) {
		std::string obj = getHostname();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *hostnameKey = "hostname";
	json_object_set_member(pJsonObject, hostnameKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getType();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *typeKey = "type";
	json_object_set_member(pJsonObject, typeKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getCoupon();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *couponKey = "coupon";
	json_object_set_member(pJsonObject, couponKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getWhoisPrivacy();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *whois_privacyKey = "whois_privacy";
	json_object_set_member(pJsonObject, whois_privacyKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
DomainOrderRequest::getHostname()
{
	return hostname;
}

void
DomainOrderRequest::setHostname(std::string  hostname)
{
	this->hostname = hostname;
}

std::string
DomainOrderRequest::getType()
{
	return type;
}

void
DomainOrderRequest::setType(std::string  type)
{
	this->type = type;
}

std::string
DomainOrderRequest::getCoupon()
{
	return coupon;
}

void
DomainOrderRequest::setCoupon(std::string  coupon)
{
	this->coupon = coupon;
}

std::string
DomainOrderRequest::getWhoisPrivacy()
{
	return whois_privacy;
}

void
DomainOrderRequest::setWhoisPrivacy(std::string  whois_privacy)
{
	this->whois_privacy = whois_privacy;
}


