

#include "QsOrderRequest.h"

using namespace Tiny;

QsOrderRequest::QsOrderRequest()
{
	server = int(0);
	password = std::string();
	tos = bool(false);
	os = std::string();
	comment = std::string();
}

QsOrderRequest::QsOrderRequest(std::string jsonString)
{
	this->fromJson(jsonString);
}

QsOrderRequest::~QsOrderRequest()
{

}

void
QsOrderRequest::fromJson(std::string jsonObj)
{
    bourne::json object = bourne::json::parse(jsonObj);

    const char *serverKey = "server";

    if(object.has_key(serverKey))
    {
        bourne::json value = object[serverKey];



        jsonToValue(&server, value, "int");


    }

    const char *passwordKey = "password";

    if(object.has_key(passwordKey))
    {
        bourne::json value = object[passwordKey];



        jsonToValue(&password, value, "std::string");


    }

    const char *tosKey = "tos";

    if(object.has_key(tosKey))
    {
        bourne::json value = object[tosKey];



        jsonToValue(&tos, value, "bool");


    }

    const char *osKey = "os";

    if(object.has_key(osKey))
    {
        bourne::json value = object[osKey];



        jsonToValue(&os, value, "std::string");


    }

    const char *commentKey = "comment";

    if(object.has_key(commentKey))
    {
        bourne::json value = object[commentKey];



        jsonToValue(&comment, value, "std::string");


    }


}

bourne::json
QsOrderRequest::toJson()
{
    bourne::json object = bourne::json::object();





    object["server"] = getServer();






    object["password"] = getPassword();






    object["tos"] = isTos();






    object["os"] = getOs();






    object["comment"] = getComment();



    return object;

}

int
QsOrderRequest::getServer()
{
	return server;
}

void
QsOrderRequest::setServer(int server)
{
	this->server = server;
}

std::string
QsOrderRequest::getPassword()
{
	return password;
}

void
QsOrderRequest::setPassword(std::string password)
{
	this->password = password;
}

bool
QsOrderRequest::isTos()
{
	return tos;
}

void
QsOrderRequest::setTos(bool tos)
{
	this->tos = tos;
}

std::string
QsOrderRequest::getOs()
{
	return os;
}

void
QsOrderRequest::setOs(std::string os)
{
	this->os = os;
}

std::string
QsOrderRequest::getComment()
{
	return comment;
}

void
QsOrderRequest::setComment(std::string comment)
{
	this->comment = comment;
}



