#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "WebsiteOrderPutRequest.h"

using namespace std;
using namespace Tizen::ArtikCloud;

WebsiteOrderPutRequest::WebsiteOrderPutRequest()
{
	//__init();
}

WebsiteOrderPutRequest::~WebsiteOrderPutRequest()
{
	//__cleanup();
}

void
WebsiteOrderPutRequest::__init()
{
	//hostname = std::string();
	//packageId = int(0);
	//rootpass = std::string();
	//period = int(0);
	//coupon = std::string();
	//serviceOfferId = int(0);
	//script = int(0);
	//comment = std::string();
	//registerDomain = bool(false);
}

void
WebsiteOrderPutRequest::__cleanup()
{
	//if(hostname != NULL) {
	//
	//delete hostname;
	//hostname = NULL;
	//}
	//if(packageId != NULL) {
	//
	//delete packageId;
	//packageId = NULL;
	//}
	//if(rootpass != NULL) {
	//
	//delete rootpass;
	//rootpass = NULL;
	//}
	//if(period != NULL) {
	//
	//delete period;
	//period = NULL;
	//}
	//if(coupon != NULL) {
	//
	//delete coupon;
	//coupon = NULL;
	//}
	//if(serviceOfferId != NULL) {
	//
	//delete serviceOfferId;
	//serviceOfferId = NULL;
	//}
	//if(script != NULL) {
	//
	//delete script;
	//script = NULL;
	//}
	//if(comment != NULL) {
	//
	//delete comment;
	//comment = NULL;
	//}
	//if(registerDomain != NULL) {
	//
	//delete registerDomain;
	//registerDomain = NULL;
	//}
	//
}

void
WebsiteOrderPutRequest::fromJson(char* jsonStr)
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
	const gchar *packageIdKey = "packageId";
	node = json_object_get_member(pJsonObject, packageIdKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&packageId, node, "int", "");
		} else {
			
		}
	}
	const gchar *rootpassKey = "rootpass";
	node = json_object_get_member(pJsonObject, rootpassKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&rootpass, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *periodKey = "period";
	node = json_object_get_member(pJsonObject, periodKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&period, node, "int", "");
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
	const gchar *serviceOfferIdKey = "serviceOfferId";
	node = json_object_get_member(pJsonObject, serviceOfferIdKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&serviceOfferId, node, "int", "");
		} else {
			
		}
	}
	const gchar *scriptKey = "script";
	node = json_object_get_member(pJsonObject, scriptKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&script, node, "int", "");
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
	const gchar *registerDomainKey = "registerDomain";
	node = json_object_get_member(pJsonObject, registerDomainKey);
	if (node !=NULL) {
	

		if (isprimitive("bool")) {
			jsonToValue(&registerDomain, node, "bool", "");
		} else {
			
		}
	}
}

WebsiteOrderPutRequest::WebsiteOrderPutRequest(char* json)
{
	this->fromJson(json);
}

char*
WebsiteOrderPutRequest::toJson()
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
	if (isprimitive("int")) {
		int obj = getPackageId();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *packageIdKey = "packageId";
	json_object_set_member(pJsonObject, packageIdKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getRootpass();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *rootpassKey = "rootpass";
	json_object_set_member(pJsonObject, rootpassKey, node);
	if (isprimitive("int")) {
		int obj = getPeriod();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *periodKey = "period";
	json_object_set_member(pJsonObject, periodKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getCoupon();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *couponKey = "coupon";
	json_object_set_member(pJsonObject, couponKey, node);
	if (isprimitive("int")) {
		int obj = getServiceOfferId();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *serviceOfferIdKey = "serviceOfferId";
	json_object_set_member(pJsonObject, serviceOfferIdKey, node);
	if (isprimitive("int")) {
		int obj = getScript();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *scriptKey = "script";
	json_object_set_member(pJsonObject, scriptKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getComment();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *commentKey = "comment";
	json_object_set_member(pJsonObject, commentKey, node);
	if (isprimitive("bool")) {
		bool obj = getRegisterDomain();
		node = converttoJson(&obj, "bool", "");
	}
	else {
		
	}
	const gchar *registerDomainKey = "registerDomain";
	json_object_set_member(pJsonObject, registerDomainKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
WebsiteOrderPutRequest::getHostname()
{
	return hostname;
}

void
WebsiteOrderPutRequest::setHostname(std::string  hostname)
{
	this->hostname = hostname;
}

int
WebsiteOrderPutRequest::getPackageId()
{
	return packageId;
}

void
WebsiteOrderPutRequest::setPackageId(int  packageId)
{
	this->packageId = packageId;
}

std::string
WebsiteOrderPutRequest::getRootpass()
{
	return rootpass;
}

void
WebsiteOrderPutRequest::setRootpass(std::string  rootpass)
{
	this->rootpass = rootpass;
}

int
WebsiteOrderPutRequest::getPeriod()
{
	return period;
}

void
WebsiteOrderPutRequest::setPeriod(int  period)
{
	this->period = period;
}

std::string
WebsiteOrderPutRequest::getCoupon()
{
	return coupon;
}

void
WebsiteOrderPutRequest::setCoupon(std::string  coupon)
{
	this->coupon = coupon;
}

int
WebsiteOrderPutRequest::getServiceOfferId()
{
	return serviceOfferId;
}

void
WebsiteOrderPutRequest::setServiceOfferId(int  serviceOfferId)
{
	this->serviceOfferId = serviceOfferId;
}

int
WebsiteOrderPutRequest::getScript()
{
	return script;
}

void
WebsiteOrderPutRequest::setScript(int  script)
{
	this->script = script;
}

std::string
WebsiteOrderPutRequest::getComment()
{
	return comment;
}

void
WebsiteOrderPutRequest::setComment(std::string  comment)
{
	this->comment = comment;
}

bool
WebsiteOrderPutRequest::getRegisterDomain()
{
	return registerDomain;
}

void
WebsiteOrderPutRequest::setRegisterDomain(bool  registerDomain)
{
	this->registerDomain = registerDomain;
}


