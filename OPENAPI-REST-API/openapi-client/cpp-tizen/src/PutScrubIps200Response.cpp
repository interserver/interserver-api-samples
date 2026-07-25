#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "PutScrubIps_200_response.h"

using namespace std;
using namespace Tizen::ArtikCloud;

PutScrubIps_200_response::PutScrubIps_200_response()
{
	//__init();
}

PutScrubIps_200_response::~PutScrubIps_200_response()
{
	//__cleanup();
}

void
PutScrubIps_200_response::__init()
{
	//r_continue = bool(false);
	//new std::list()std::list> errors;
	//serviceType = int(0);
	//serviceCost = double(0);
	//originalCost = double(0);
	//repeatServiceCost = double(0);
}

void
PutScrubIps_200_response::__cleanup()
{
	//if(r_continue != NULL) {
	//
	//delete r_continue;
	//r_continue = NULL;
	//}
	//if(errors != NULL) {
	//errors.RemoveAll(true);
	//delete errors;
	//errors = NULL;
	//}
	//if(serviceType != NULL) {
	//
	//delete serviceType;
	//serviceType = NULL;
	//}
	//if(serviceCost != NULL) {
	//
	//delete serviceCost;
	//serviceCost = NULL;
	//}
	//if(originalCost != NULL) {
	//
	//delete originalCost;
	//originalCost = NULL;
	//}
	//if(repeatServiceCost != NULL) {
	//
	//delete repeatServiceCost;
	//repeatServiceCost = NULL;
	//}
	//
}

void
PutScrubIps_200_response::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *r_continueKey = "continue";
	node = json_object_get_member(pJsonObject, r_continueKey);
	if (node !=NULL) {
	

		if (isprimitive("bool")) {
			jsonToValue(&r_continue, node, "bool", "");
		} else {
			
		}
	}
	const gchar *errorsKey = "errors";
	node = json_object_get_member(pJsonObject, errorsKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<std::string> new_list;
			std::string inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("std::string")) {
					jsonToValue(&inst, temp_json, "std::string", "");
				} else {
					
				}
				new_list.push_back(inst);
			}
			errors = new_list;
		}
		
	}
	const gchar *serviceTypeKey = "serviceType";
	node = json_object_get_member(pJsonObject, serviceTypeKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&serviceType, node, "int", "");
		} else {
			
		}
	}
	const gchar *serviceCostKey = "serviceCost";
	node = json_object_get_member(pJsonObject, serviceCostKey);
	if (node !=NULL) {
	

		if (isprimitive("long long")) {
			jsonToValue(&serviceCost, node, "long long", "");
		} else {
			
			long long* obj = static_cast<long long*> (&serviceCost);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *originalCostKey = "originalCost";
	node = json_object_get_member(pJsonObject, originalCostKey);
	if (node !=NULL) {
	

		if (isprimitive("long long")) {
			jsonToValue(&originalCost, node, "long long", "");
		} else {
			
			long long* obj = static_cast<long long*> (&originalCost);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *repeatServiceCostKey = "repeatServiceCost";
	node = json_object_get_member(pJsonObject, repeatServiceCostKey);
	if (node !=NULL) {
	

		if (isprimitive("long long")) {
			jsonToValue(&repeatServiceCost, node, "long long", "");
		} else {
			
			long long* obj = static_cast<long long*> (&repeatServiceCost);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

PutScrubIps_200_response::PutScrubIps_200_response(char* json)
{
	this->fromJson(json);
}

char*
PutScrubIps_200_response::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("bool")) {
		bool obj = getRContinue();
		node = converttoJson(&obj, "bool", "");
	}
	else {
		
	}
	const gchar *r_continueKey = "continue";
	json_object_set_member(pJsonObject, r_continueKey, node);
	if (isprimitive("std::string")) {
		list<std::string> new_list = static_cast<list <std::string> > (getErrors());
		node = converttoJson(&new_list, "std::string", "array");
	} else {
		node = json_node_alloc();
		list<std::string> new_list = static_cast<list <std::string> > (getErrors());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
	}


	
	const gchar *errorsKey = "errors";
	json_object_set_member(pJsonObject, errorsKey, node);
	if (isprimitive("int")) {
		int obj = getServiceType();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *serviceTypeKey = "serviceType";
	json_object_set_member(pJsonObject, serviceTypeKey, node);
	if (isprimitive("long long")) {
		long long obj = getServiceCost();
		node = converttoJson(&obj, "long long", "");
	}
	else {
		
		long long obj = static_cast<long long> (getServiceCost());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *serviceCostKey = "serviceCost";
	json_object_set_member(pJsonObject, serviceCostKey, node);
	if (isprimitive("long long")) {
		long long obj = getOriginalCost();
		node = converttoJson(&obj, "long long", "");
	}
	else {
		
		long long obj = static_cast<long long> (getOriginalCost());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *originalCostKey = "originalCost";
	json_object_set_member(pJsonObject, originalCostKey, node);
	if (isprimitive("long long")) {
		long long obj = getRepeatServiceCost();
		node = converttoJson(&obj, "long long", "");
	}
	else {
		
		long long obj = static_cast<long long> (getRepeatServiceCost());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *repeatServiceCostKey = "repeatServiceCost";
	json_object_set_member(pJsonObject, repeatServiceCostKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

bool
PutScrubIps_200_response::getRContinue()
{
	return r_continue;
}

void
PutScrubIps_200_response::setRContinue(bool  r_continue)
{
	this->r_continue = r_continue;
}

std::list<std::string>
PutScrubIps_200_response::getErrors()
{
	return errors;
}

void
PutScrubIps_200_response::setErrors(std::list <std::string> errors)
{
	this->errors = errors;
}

int
PutScrubIps_200_response::getServiceType()
{
	return serviceType;
}

void
PutScrubIps_200_response::setServiceType(int  serviceType)
{
	this->serviceType = serviceType;
}

long long
PutScrubIps_200_response::getServiceCost()
{
	return serviceCost;
}

void
PutScrubIps_200_response::setServiceCost(long long  serviceCost)
{
	this->serviceCost = serviceCost;
}

long long
PutScrubIps_200_response::getOriginalCost()
{
	return originalCost;
}

void
PutScrubIps_200_response::setOriginalCost(long long  originalCost)
{
	this->originalCost = originalCost;
}

long long
PutScrubIps_200_response::getRepeatServiceCost()
{
	return repeatServiceCost;
}

void
PutScrubIps_200_response::setRepeatServiceCost(long long  repeatServiceCost)
{
	this->repeatServiceCost = repeatServiceCost;
}


