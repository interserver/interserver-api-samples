
#include "GetAccountLocales_200_response_value.h"

using namespace Tiny;

#include <string>
#include <list>
#include <unity.h>
#include "bourne/json.hpp"



void test_GetAccountLocales_200_response_value_name_is_assigned_from_json()
{


    bourne::json input =
    {
        "name", "hello"
    };

    GetAccountLocales_200_response_value obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getName().c_str());






}


void test_GetAccountLocales_200_response_value_local_name_is_assigned_from_json()
{


    bourne::json input =
    {
        "local_name", "hello"
    };

    GetAccountLocales_200_response_value obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getLocalName().c_str());






}



void test_GetAccountLocales_200_response_value_name_is_converted_to_json()
{

    bourne::json input =
    {
        "name", "hello"
    };

    GetAccountLocales_200_response_value obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["name"] == output["name"]);



}


void test_GetAccountLocales_200_response_value_local_name_is_converted_to_json()
{

    bourne::json input =
    {
        "local_name", "hello"
    };

    GetAccountLocales_200_response_value obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["local_name"] == output["local_name"]);



}


