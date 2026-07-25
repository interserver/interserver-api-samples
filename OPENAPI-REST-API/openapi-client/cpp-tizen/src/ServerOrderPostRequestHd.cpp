#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "ServerOrderPostRequest_hd.h"

using namespace std;
using namespace Tizen::ArtikCloud;

ServerOrderPostRequest_hd::ServerOrderPostRequest_hd()
{
	//__init();
}

ServerOrderPostRequest_hd::~ServerOrderPostRequest_hd()
{
	//__cleanup();
}

void
ServerOrderPostRequest_hd::__init()
{
}

void
ServerOrderPostRequest_hd::__cleanup()
{
	//
}

void
ServerOrderPostRequest_hd::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
}

ServerOrderPostRequest_hd::ServerOrderPostRequest_hd(char* json)
{
	this->fromJson(json);
}

char*
ServerOrderPostRequest_hd::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}


