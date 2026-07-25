#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "GetAccountLocales_200_response_value.h"

using namespace std;
using namespace Tizen::ArtikCloud;

GetAccountLocales_200_response_value::GetAccountLocales_200_response_value()
{
	//__init();
}

GetAccountLocales_200_response_value::~GetAccountLocales_200_response_value()
{
	//__cleanup();
}

void
GetAccountLocales_200_response_value::__init()
{
	//name = std::string();
	//local_name = std::string();
}

void
GetAccountLocales_200_response_value::__cleanup()
{
	//if(name != NULL) {
	//
	//delete name;
	//name = NULL;
	//}
	//if(local_name != NULL) {
	//
	//delete local_name;
	//local_name = NULL;
	//}
	//
}

void
GetAccountLocales_200_response_value::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *nameKey = "name";
	node = json_object_get_member(pJsonObject, nameKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&name, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *local_nameKey = "local_name";
	node = json_object_get_member(pJsonObject, local_nameKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&local_name, node, "std::string", "");
		} else {
			
		}
	}
}

GetAccountLocales_200_response_value::GetAccountLocales_200_response_value(char* json)
{
	this->fromJson(json);
}

char*
GetAccountLocales_200_response_value::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("std::string")) {
		std::string obj = getName();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *nameKey = "name";
	json_object_set_member(pJsonObject, nameKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getLocalName();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *local_nameKey = "local_name";
	json_object_set_member(pJsonObject, local_nameKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
GetAccountLocales_200_response_value::getName()
{
	return name;
}

void
GetAccountLocales_200_response_value::setName(std::string  name)
{
	this->name = name;
}

std::string
GetAccountLocales_200_response_value::getLocalName()
{
	return local_name;
}

void
GetAccountLocales_200_response_value::setLocalName(std::string  local_name)
{
	this->local_name = local_name;
}


