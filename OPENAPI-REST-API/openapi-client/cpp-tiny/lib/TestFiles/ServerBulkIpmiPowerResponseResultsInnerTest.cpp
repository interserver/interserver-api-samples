
#include "ServerBulkIpmiPowerResponse_results_inner.h"

using namespace Tiny;

#include <string>
#include <list>
#include <unity.h>
#include "bourne/json.hpp"



void test_ServerBulkIpmiPowerResponse_results_inner_id_is_assigned_from_json()
{
    bourne::json input =
    {
        "id", 1
    };

    ServerBulkIpmiPowerResponse_results_inner obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getId());








}


void test_ServerBulkIpmiPowerResponse_results_inner_asset_is_assigned_from_json()
{
    bourne::json input =
    {
        "asset", 1
    };

    ServerBulkIpmiPowerResponse_results_inner obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getAsset());








}


void test_ServerBulkIpmiPowerResponse_results_inner_text_is_assigned_from_json()
{


    bourne::json input =
    {
        "text", "hello"
    };

    ServerBulkIpmiPowerResponse_results_inner obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getText().c_str());






}


void test_ServerBulkIpmiPowerResponse_results_inner_error_is_assigned_from_json()
{


    bourne::json input =
    {
        "error", "hello"
    };

    ServerBulkIpmiPowerResponse_results_inner obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getError().c_str());






}



void test_ServerBulkIpmiPowerResponse_results_inner_id_is_converted_to_json()
{
    bourne::json input =
    {
        "id", 1
    };

    ServerBulkIpmiPowerResponse_results_inner obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["id"] == output["id"]);




}


void test_ServerBulkIpmiPowerResponse_results_inner_asset_is_converted_to_json()
{
    bourne::json input =
    {
        "asset", 1
    };

    ServerBulkIpmiPowerResponse_results_inner obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["asset"] == output["asset"]);




}


void test_ServerBulkIpmiPowerResponse_results_inner_text_is_converted_to_json()
{

    bourne::json input =
    {
        "text", "hello"
    };

    ServerBulkIpmiPowerResponse_results_inner obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["text"] == output["text"]);



}


void test_ServerBulkIpmiPowerResponse_results_inner_error_is_converted_to_json()
{

    bourne::json input =
    {
        "error", "hello"
    };

    ServerBulkIpmiPowerResponse_results_inner obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["error"] == output["error"]);



}


