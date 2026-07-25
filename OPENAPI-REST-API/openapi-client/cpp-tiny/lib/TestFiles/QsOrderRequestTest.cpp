
#include "QsOrderRequest.h"

using namespace Tiny;

#include <string>
#include <list>
#include <unity.h>
#include "bourne/json.hpp"



void test_QsOrderRequest_server_is_assigned_from_json()
{
    bourne::json input =
    {
        "server", 1
    };

    QsOrderRequest obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getServer());








}


void test_QsOrderRequest_password_is_assigned_from_json()
{


    bourne::json input =
    {
        "password", "hello"
    };

    QsOrderRequest obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getPassword().c_str());






}


void test_QsOrderRequest_tos_is_assigned_from_json()
{




    bourne::json input =
    {
        "tos", true
    };

    QsOrderRequest obj(input.dump());

    TEST_ASSERT(true == obj.isTos());




}


void test_QsOrderRequest_os_is_assigned_from_json()
{


    bourne::json input =
    {
        "os", "hello"
    };

    QsOrderRequest obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getOs().c_str());






}


void test_QsOrderRequest_comment_is_assigned_from_json()
{


    bourne::json input =
    {
        "comment", "hello"
    };

    QsOrderRequest obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getComment().c_str());






}



void test_QsOrderRequest_server_is_converted_to_json()
{
    bourne::json input =
    {
        "server", 1
    };

    QsOrderRequest obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["server"] == output["server"]);




}


void test_QsOrderRequest_password_is_converted_to_json()
{

    bourne::json input =
    {
        "password", "hello"
    };

    QsOrderRequest obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["password"] == output["password"]);



}


void test_QsOrderRequest_tos_is_converted_to_json()
{


    bourne::json input =
    {
        "tos", true
    };

    QsOrderRequest obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["tos"] == output["tos"]);


}


void test_QsOrderRequest_os_is_converted_to_json()
{

    bourne::json input =
    {
        "os", "hello"
    };

    QsOrderRequest obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["os"] == output["os"]);



}


void test_QsOrderRequest_comment_is_converted_to_json()
{

    bourne::json input =
    {
        "comment", "hello"
    };

    QsOrderRequest obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["comment"] == output["comment"]);



}


