

#include "ServerOrderPostRequest.h"

using namespace Tiny;

ServerOrderPostRequest::ServerOrderPostRequest()
{
	cpu = int(0);
	hd = ServerOrderPostRequest_hd();
	memory = int(0);
	bandwidth = int(0);
	ips = int(0);
	os = int(0);
	cp = int(0);
	raid = int(0);
	region = int(0);
	servername = std::string();
	rootpass = std::string();
	tos = bool(false);
	comment = std::string();
}

ServerOrderPostRequest::ServerOrderPostRequest(std::string jsonString)
{
	this->fromJson(jsonString);
}

ServerOrderPostRequest::~ServerOrderPostRequest()
{

}

void
ServerOrderPostRequest::fromJson(std::string jsonObj)
{
    bourne::json object = bourne::json::parse(jsonObj);

    const char *cpuKey = "cpu";

    if(object.has_key(cpuKey))
    {
        bourne::json value = object[cpuKey];



        jsonToValue(&cpu, value, "int");


    }

    const char *hdKey = "hd";

    if(object.has_key(hdKey))
    {
        bourne::json value = object[hdKey];




        ServerOrderPostRequest_hd* obj = &hd;
		obj->fromJson(value.dump());

    }

    const char *memoryKey = "memory";

    if(object.has_key(memoryKey))
    {
        bourne::json value = object[memoryKey];



        jsonToValue(&memory, value, "int");


    }

    const char *bandwidthKey = "bandwidth";

    if(object.has_key(bandwidthKey))
    {
        bourne::json value = object[bandwidthKey];



        jsonToValue(&bandwidth, value, "int");


    }

    const char *ipsKey = "ips";

    if(object.has_key(ipsKey))
    {
        bourne::json value = object[ipsKey];



        jsonToValue(&ips, value, "int");


    }

    const char *osKey = "os";

    if(object.has_key(osKey))
    {
        bourne::json value = object[osKey];



        jsonToValue(&os, value, "int");


    }

    const char *cpKey = "cp";

    if(object.has_key(cpKey))
    {
        bourne::json value = object[cpKey];



        jsonToValue(&cp, value, "int");


    }

    const char *raidKey = "raid";

    if(object.has_key(raidKey))
    {
        bourne::json value = object[raidKey];



        jsonToValue(&raid, value, "int");


    }

    const char *regionKey = "region";

    if(object.has_key(regionKey))
    {
        bourne::json value = object[regionKey];



        jsonToValue(&region, value, "int");


    }

    const char *servernameKey = "servername";

    if(object.has_key(servernameKey))
    {
        bourne::json value = object[servernameKey];



        jsonToValue(&servername, value, "std::string");


    }

    const char *rootpassKey = "rootpass";

    if(object.has_key(rootpassKey))
    {
        bourne::json value = object[rootpassKey];



        jsonToValue(&rootpass, value, "std::string");


    }

    const char *tosKey = "tos";

    if(object.has_key(tosKey))
    {
        bourne::json value = object[tosKey];



        jsonToValue(&tos, value, "bool");


    }

    const char *commentKey = "comment";

    if(object.has_key(commentKey))
    {
        bourne::json value = object[commentKey];



        jsonToValue(&comment, value, "std::string");


    }


}

bourne::json
ServerOrderPostRequest::toJson()
{
    bourne::json object = bourne::json::object();





    object["cpu"] = getCpu();







	object["hd"] = getHd().toJson();





    object["memory"] = getMemory();






    object["bandwidth"] = getBandwidth();






    object["ips"] = getIps();






    object["os"] = getOs();






    object["cp"] = getCp();






    object["raid"] = getRaid();






    object["region"] = getRegion();






    object["servername"] = getServername();






    object["rootpass"] = getRootpass();






    object["tos"] = isTos();






    object["comment"] = getComment();



    return object;

}

int
ServerOrderPostRequest::getCpu()
{
	return cpu;
}

void
ServerOrderPostRequest::setCpu(int cpu)
{
	this->cpu = cpu;
}

ServerOrderPostRequest_hd
ServerOrderPostRequest::getHd()
{
	return hd;
}

void
ServerOrderPostRequest::setHd(ServerOrderPostRequest_hd hd)
{
	this->hd = hd;
}

int
ServerOrderPostRequest::getMemory()
{
	return memory;
}

void
ServerOrderPostRequest::setMemory(int memory)
{
	this->memory = memory;
}

int
ServerOrderPostRequest::getBandwidth()
{
	return bandwidth;
}

void
ServerOrderPostRequest::setBandwidth(int bandwidth)
{
	this->bandwidth = bandwidth;
}

int
ServerOrderPostRequest::getIps()
{
	return ips;
}

void
ServerOrderPostRequest::setIps(int ips)
{
	this->ips = ips;
}

int
ServerOrderPostRequest::getOs()
{
	return os;
}

void
ServerOrderPostRequest::setOs(int os)
{
	this->os = os;
}

int
ServerOrderPostRequest::getCp()
{
	return cp;
}

void
ServerOrderPostRequest::setCp(int cp)
{
	this->cp = cp;
}

int
ServerOrderPostRequest::getRaid()
{
	return raid;
}

void
ServerOrderPostRequest::setRaid(int raid)
{
	this->raid = raid;
}

int
ServerOrderPostRequest::getRegion()
{
	return region;
}

void
ServerOrderPostRequest::setRegion(int region)
{
	this->region = region;
}

std::string
ServerOrderPostRequest::getServername()
{
	return servername;
}

void
ServerOrderPostRequest::setServername(std::string servername)
{
	this->servername = servername;
}

std::string
ServerOrderPostRequest::getRootpass()
{
	return rootpass;
}

void
ServerOrderPostRequest::setRootpass(std::string rootpass)
{
	this->rootpass = rootpass;
}

bool
ServerOrderPostRequest::isTos()
{
	return tos;
}

void
ServerOrderPostRequest::setTos(bool tos)
{
	this->tos = tos;
}

std::string
ServerOrderPostRequest::getComment()
{
	return comment;
}

void
ServerOrderPostRequest::setComment(std::string comment)
{
	this->comment = comment;
}



