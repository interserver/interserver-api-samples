#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "ServerOrderPostRequest.h"

using namespace std;
using namespace Tizen::ArtikCloud;

ServerOrderPostRequest::ServerOrderPostRequest()
{
	//__init();
}

ServerOrderPostRequest::~ServerOrderPostRequest()
{
	//__cleanup();
}

void
ServerOrderPostRequest::__init()
{
	//cpu = int(0);
	//hd = new ServerOrderPostRequest_hd();
	//memory = int(0);
	//bandwidth = int(0);
	//ips = int(0);
	//os = int(0);
	//cp = int(0);
	//raid = int(0);
	//region = int(0);
	//servername = std::string();
	//rootpass = std::string();
	//tos = bool(false);
	//comment = std::string();
}

void
ServerOrderPostRequest::__cleanup()
{
	//if(cpu != NULL) {
	//
	//delete cpu;
	//cpu = NULL;
	//}
	//if(hd != NULL) {
	//
	//delete hd;
	//hd = NULL;
	//}
	//if(memory != NULL) {
	//
	//delete memory;
	//memory = NULL;
	//}
	//if(bandwidth != NULL) {
	//
	//delete bandwidth;
	//bandwidth = NULL;
	//}
	//if(ips != NULL) {
	//
	//delete ips;
	//ips = NULL;
	//}
	//if(os != NULL) {
	//
	//delete os;
	//os = NULL;
	//}
	//if(cp != NULL) {
	//
	//delete cp;
	//cp = NULL;
	//}
	//if(raid != NULL) {
	//
	//delete raid;
	//raid = NULL;
	//}
	//if(region != NULL) {
	//
	//delete region;
	//region = NULL;
	//}
	//if(servername != NULL) {
	//
	//delete servername;
	//servername = NULL;
	//}
	//if(rootpass != NULL) {
	//
	//delete rootpass;
	//rootpass = NULL;
	//}
	//if(tos != NULL) {
	//
	//delete tos;
	//tos = NULL;
	//}
	//if(comment != NULL) {
	//
	//delete comment;
	//comment = NULL;
	//}
	//
}

void
ServerOrderPostRequest::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *cpuKey = "cpu";
	node = json_object_get_member(pJsonObject, cpuKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&cpu, node, "int", "");
		} else {
			
		}
	}
	const gchar *hdKey = "hd";
	node = json_object_get_member(pJsonObject, hdKey);
	if (node !=NULL) {
	

		if (isprimitive("ServerOrderPostRequest_hd")) {
			jsonToValue(&hd, node, "ServerOrderPostRequest_hd", "ServerOrderPostRequest_hd");
		} else {
			
			ServerOrderPostRequest_hd* obj = static_cast<ServerOrderPostRequest_hd*> (&hd);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *memoryKey = "memory";
	node = json_object_get_member(pJsonObject, memoryKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&memory, node, "int", "");
		} else {
			
		}
	}
	const gchar *bandwidthKey = "bandwidth";
	node = json_object_get_member(pJsonObject, bandwidthKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&bandwidth, node, "int", "");
		} else {
			
		}
	}
	const gchar *ipsKey = "ips";
	node = json_object_get_member(pJsonObject, ipsKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&ips, node, "int", "");
		} else {
			
		}
	}
	const gchar *osKey = "os";
	node = json_object_get_member(pJsonObject, osKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&os, node, "int", "");
		} else {
			
		}
	}
	const gchar *cpKey = "cp";
	node = json_object_get_member(pJsonObject, cpKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&cp, node, "int", "");
		} else {
			
		}
	}
	const gchar *raidKey = "raid";
	node = json_object_get_member(pJsonObject, raidKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&raid, node, "int", "");
		} else {
			
		}
	}
	const gchar *regionKey = "region";
	node = json_object_get_member(pJsonObject, regionKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&region, node, "int", "");
		} else {
			
		}
	}
	const gchar *servernameKey = "servername";
	node = json_object_get_member(pJsonObject, servernameKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&servername, node, "std::string", "");
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
	const gchar *tosKey = "tos";
	node = json_object_get_member(pJsonObject, tosKey);
	if (node !=NULL) {
	

		if (isprimitive("bool")) {
			jsonToValue(&tos, node, "bool", "");
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

ServerOrderPostRequest::ServerOrderPostRequest(char* json)
{
	this->fromJson(json);
}

char*
ServerOrderPostRequest::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("int")) {
		int obj = getCpu();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *cpuKey = "cpu";
	json_object_set_member(pJsonObject, cpuKey, node);
	if (isprimitive("ServerOrderPostRequest_hd")) {
		ServerOrderPostRequest_hd obj = getHd();
		node = converttoJson(&obj, "ServerOrderPostRequest_hd", "");
	}
	else {
		
		ServerOrderPostRequest_hd obj = static_cast<ServerOrderPostRequest_hd> (getHd());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *hdKey = "hd";
	json_object_set_member(pJsonObject, hdKey, node);
	if (isprimitive("int")) {
		int obj = getMemory();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *memoryKey = "memory";
	json_object_set_member(pJsonObject, memoryKey, node);
	if (isprimitive("int")) {
		int obj = getBandwidth();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *bandwidthKey = "bandwidth";
	json_object_set_member(pJsonObject, bandwidthKey, node);
	if (isprimitive("int")) {
		int obj = getIps();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *ipsKey = "ips";
	json_object_set_member(pJsonObject, ipsKey, node);
	if (isprimitive("int")) {
		int obj = getOs();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *osKey = "os";
	json_object_set_member(pJsonObject, osKey, node);
	if (isprimitive("int")) {
		int obj = getCp();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *cpKey = "cp";
	json_object_set_member(pJsonObject, cpKey, node);
	if (isprimitive("int")) {
		int obj = getRaid();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *raidKey = "raid";
	json_object_set_member(pJsonObject, raidKey, node);
	if (isprimitive("int")) {
		int obj = getRegion();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *regionKey = "region";
	json_object_set_member(pJsonObject, regionKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getServername();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *servernameKey = "servername";
	json_object_set_member(pJsonObject, servernameKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getRootpass();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *rootpassKey = "rootpass";
	json_object_set_member(pJsonObject, rootpassKey, node);
	if (isprimitive("bool")) {
		bool obj = getTos();
		node = converttoJson(&obj, "bool", "");
	}
	else {
		
	}
	const gchar *tosKey = "tos";
	json_object_set_member(pJsonObject, tosKey, node);
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
ServerOrderPostRequest::getCpu()
{
	return cpu;
}

void
ServerOrderPostRequest::setCpu(int  cpu)
{
	this->cpu = cpu;
}

ServerOrderPostRequest_hd
ServerOrderPostRequest::getHd()
{
	return hd;
}

void
ServerOrderPostRequest::setHd(ServerOrderPostRequest_hd  hd)
{
	this->hd = hd;
}

int
ServerOrderPostRequest::getMemory()
{
	return memory;
}

void
ServerOrderPostRequest::setMemory(int  memory)
{
	this->memory = memory;
}

int
ServerOrderPostRequest::getBandwidth()
{
	return bandwidth;
}

void
ServerOrderPostRequest::setBandwidth(int  bandwidth)
{
	this->bandwidth = bandwidth;
}

int
ServerOrderPostRequest::getIps()
{
	return ips;
}

void
ServerOrderPostRequest::setIps(int  ips)
{
	this->ips = ips;
}

int
ServerOrderPostRequest::getOs()
{
	return os;
}

void
ServerOrderPostRequest::setOs(int  os)
{
	this->os = os;
}

int
ServerOrderPostRequest::getCp()
{
	return cp;
}

void
ServerOrderPostRequest::setCp(int  cp)
{
	this->cp = cp;
}

int
ServerOrderPostRequest::getRaid()
{
	return raid;
}

void
ServerOrderPostRequest::setRaid(int  raid)
{
	this->raid = raid;
}

int
ServerOrderPostRequest::getRegion()
{
	return region;
}

void
ServerOrderPostRequest::setRegion(int  region)
{
	this->region = region;
}

std::string
ServerOrderPostRequest::getServername()
{
	return servername;
}

void
ServerOrderPostRequest::setServername(std::string  servername)
{
	this->servername = servername;
}

std::string
ServerOrderPostRequest::getRootpass()
{
	return rootpass;
}

void
ServerOrderPostRequest::setRootpass(std::string  rootpass)
{
	this->rootpass = rootpass;
}

bool
ServerOrderPostRequest::getTos()
{
	return tos;
}

void
ServerOrderPostRequest::setTos(bool  tos)
{
	this->tos = tos;
}

std::string
ServerOrderPostRequest::getComment()
{
	return comment;
}

void
ServerOrderPostRequest::setComment(std::string  comment)
{
	this->comment = comment;
}


