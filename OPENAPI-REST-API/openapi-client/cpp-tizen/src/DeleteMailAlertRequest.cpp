#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "DeleteMailAlert_request.h"

using namespace std;
using namespace Tizen::ArtikCloud;

DeleteMailAlert_request::DeleteMailAlert_request()
{
	//__init();
}

DeleteMailAlert_request::~DeleteMailAlert_request()
{
	//__cleanup();
}

void
DeleteMailAlert_request::__init()
{
	//alert_id = int(0);
}

void
DeleteMailAlert_request::__cleanup()
{
	//if(alert_id != NULL) {
	//
	//delete alert_id;
	//alert_id = NULL;
	//}
	//
}

void
DeleteMailAlert_request::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *alert_idKey = "alert_id";
	node = json_object_get_member(pJsonObject, alert_idKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&alert_id, node, "int", "");
		} else {
			
		}
	}
}

DeleteMailAlert_request::DeleteMailAlert_request(char* json)
{
	this->fromJson(json);
}

char*
DeleteMailAlert_request::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("int")) {
		int obj = getAlertId();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *alert_idKey = "alert_id";
	json_object_set_member(pJsonObject, alert_idKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

int
DeleteMailAlert_request::getAlertId()
{
	return alert_id;
}

void
DeleteMailAlert_request::setAlertId(int  alert_id)
{
	this->alert_id = alert_id;
}


