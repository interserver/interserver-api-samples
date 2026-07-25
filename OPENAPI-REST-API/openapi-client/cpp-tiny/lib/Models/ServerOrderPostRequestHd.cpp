

#include "ServerOrderPostRequest_hd.h"

using namespace Tiny;

ServerOrderPostRequest_hd::ServerOrderPostRequest_hd()
{
}

ServerOrderPostRequest_hd::ServerOrderPostRequest_hd(std::string jsonString)
{
	this->fromJson(jsonString);
}

ServerOrderPostRequest_hd::~ServerOrderPostRequest_hd()
{

}

void
ServerOrderPostRequest_hd::fromJson(std::string jsonObj)
{
    bourne::json object = bourne::json::parse(jsonObj);


}

bourne::json
ServerOrderPostRequest_hd::toJson()
{
    bourne::json object = bourne::json::object();


    return object;

}



