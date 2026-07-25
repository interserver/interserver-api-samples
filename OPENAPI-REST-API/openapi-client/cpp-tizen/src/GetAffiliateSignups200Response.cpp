#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "GetAffiliateSignups_200_response.h"

using namespace std;
using namespace Tizen::ArtikCloud;

GetAffiliateSignups_200_response::GetAffiliateSignups_200_response()
{
	//__init();
}

GetAffiliateSignups_200_response::~GetAffiliateSignups_200_response()
{
	//__cleanup();
}

void
GetAffiliateSignups_200_response::__init()
{
	//data = null;
}

void
GetAffiliateSignups_200_response::__cleanup()
{
	//if(data != NULL) {
	//
	//delete data;
	//data = NULL;
	//}
	//
}

void
GetAffiliateSignups_200_response::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *dataKey = "data";
	node = json_object_get_member(pJsonObject, dataKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&data, node, "std::string", "");
		} else {
			
			std::string* obj = static_cast<std::string*> (&data);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

GetAffiliateSignups_200_response::GetAffiliateSignups_200_response(char* json)
{
	this->fromJson(json);
}

char*
GetAffiliateSignups_200_response::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("std::string")) {
		std::string obj = getData();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
		std::string obj = static_cast<std::string> (getData());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *dataKey = "data";
	json_object_set_member(pJsonObject, dataKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
GetAffiliateSignups_200_response::getData()
{
	return data;
}

void
GetAffiliateSignups_200_response::setData(std::string  data)
{
	this->data = data;
}


