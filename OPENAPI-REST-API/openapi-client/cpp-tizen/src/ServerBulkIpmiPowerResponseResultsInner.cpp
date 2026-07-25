#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "ServerBulkIpmiPowerResponse_results_inner.h"

using namespace std;
using namespace Tizen::ArtikCloud;

ServerBulkIpmiPowerResponse_results_inner::ServerBulkIpmiPowerResponse_results_inner()
{
	//__init();
}

ServerBulkIpmiPowerResponse_results_inner::~ServerBulkIpmiPowerResponse_results_inner()
{
	//__cleanup();
}

void
ServerBulkIpmiPowerResponse_results_inner::__init()
{
	//id = int(0);
	//asset = int(0);
	//text = std::string();
	//error = std::string();
}

void
ServerBulkIpmiPowerResponse_results_inner::__cleanup()
{
	//if(id != NULL) {
	//
	//delete id;
	//id = NULL;
	//}
	//if(asset != NULL) {
	//
	//delete asset;
	//asset = NULL;
	//}
	//if(text != NULL) {
	//
	//delete text;
	//text = NULL;
	//}
	//if(error != NULL) {
	//
	//delete error;
	//error = NULL;
	//}
	//
}

void
ServerBulkIpmiPowerResponse_results_inner::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *idKey = "id";
	node = json_object_get_member(pJsonObject, idKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&id, node, "int", "");
		} else {
			
		}
	}
	const gchar *assetKey = "asset";
	node = json_object_get_member(pJsonObject, assetKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&asset, node, "int", "");
		} else {
			
		}
	}
	const gchar *textKey = "text";
	node = json_object_get_member(pJsonObject, textKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&text, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *errorKey = "error";
	node = json_object_get_member(pJsonObject, errorKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&error, node, "std::string", "");
		} else {
			
		}
	}
}

ServerBulkIpmiPowerResponse_results_inner::ServerBulkIpmiPowerResponse_results_inner(char* json)
{
	this->fromJson(json);
}

char*
ServerBulkIpmiPowerResponse_results_inner::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("int")) {
		int obj = getId();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *idKey = "id";
	json_object_set_member(pJsonObject, idKey, node);
	if (isprimitive("int")) {
		int obj = getAsset();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *assetKey = "asset";
	json_object_set_member(pJsonObject, assetKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getText();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *textKey = "text";
	json_object_set_member(pJsonObject, textKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getError();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *errorKey = "error";
	json_object_set_member(pJsonObject, errorKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

int
ServerBulkIpmiPowerResponse_results_inner::getId()
{
	return id;
}

void
ServerBulkIpmiPowerResponse_results_inner::setId(int  id)
{
	this->id = id;
}

int
ServerBulkIpmiPowerResponse_results_inner::getAsset()
{
	return asset;
}

void
ServerBulkIpmiPowerResponse_results_inner::setAsset(int  asset)
{
	this->asset = asset;
}

std::string
ServerBulkIpmiPowerResponse_results_inner::getText()
{
	return text;
}

void
ServerBulkIpmiPowerResponse_results_inner::setText(std::string  text)
{
	this->text = text;
}

std::string
ServerBulkIpmiPowerResponse_results_inner::getError()
{
	return error;
}

void
ServerBulkIpmiPowerResponse_results_inner::setError(std::string  error)
{
	this->error = error;
}


