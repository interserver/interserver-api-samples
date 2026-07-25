#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "QsOrderRequest.h"

using namespace std;
using namespace Tizen::ArtikCloud;

QsOrderRequest::QsOrderRequest()
{
	//__init();
}

QsOrderRequest::~QsOrderRequest()
{
	//__cleanup();
}

void
QsOrderRequest::__init()
{
	//server = int(0);
	//password = std::string();
	//tos = bool(false);
	//os = std::string();
	//comment = std::string();
}

void
QsOrderRequest::__cleanup()
{
	//if(server != NULL) {
	//
	//delete server;
	//server = NULL;
	//}
	//if(password != NULL) {
	//
	//delete password;
	//password = NULL;
	//}
	//if(tos != NULL) {
	//
	//delete tos;
	//tos = NULL;
	//}
	//if(os != NULL) {
	//
	//delete os;
	//os = NULL;
	//}
	//if(comment != NULL) {
	//
	//delete comment;
	//comment = NULL;
	//}
	//
}

void
QsOrderRequest::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *serverKey = "server";
	node = json_object_get_member(pJsonObject, serverKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&server, node, "int", "");
		} else {
			
		}
	}
	const gchar *passwordKey = "password";
	node = json_object_get_member(pJsonObject, passwordKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&password, node, "std::string", "");
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
	const gchar *osKey = "os";
	node = json_object_get_member(pJsonObject, osKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&os, node, "std::string", "");
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

QsOrderRequest::QsOrderRequest(char* json)
{
	this->fromJson(json);
}

char*
QsOrderRequest::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("int")) {
		int obj = getServer();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *serverKey = "server";
	json_object_set_member(pJsonObject, serverKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getPassword();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *passwordKey = "password";
	json_object_set_member(pJsonObject, passwordKey, node);
	if (isprimitive("bool")) {
		bool obj = getTos();
		node = converttoJson(&obj, "bool", "");
	}
	else {
		
	}
	const gchar *tosKey = "tos";
	json_object_set_member(pJsonObject, tosKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getOs();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *osKey = "os";
	json_object_set_member(pJsonObject, osKey, node);
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
QsOrderRequest::getServer()
{
	return server;
}

void
QsOrderRequest::setServer(int  server)
{
	this->server = server;
}

std::string
QsOrderRequest::getPassword()
{
	return password;
}

void
QsOrderRequest::setPassword(std::string  password)
{
	this->password = password;
}

bool
QsOrderRequest::getTos()
{
	return tos;
}

void
QsOrderRequest::setTos(bool  tos)
{
	this->tos = tos;
}

std::string
QsOrderRequest::getOs()
{
	return os;
}

void
QsOrderRequest::setOs(std::string  os)
{
	this->os = os;
}

std::string
QsOrderRequest::getComment()
{
	return comment;
}

void
QsOrderRequest::setComment(std::string  comment)
{
	this->comment = comment;
}


