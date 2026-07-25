
#include "ServerOrderPostRequest.h"

using namespace Tiny;

#include <string>
#include <list>
#include <unity.h>
#include "bourne/json.hpp"



void test_ServerOrderPostRequest_cpu_is_assigned_from_json()
{
    bourne::json input =
    {
        "cpu", 1
    };

    ServerOrderPostRequest obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getCpu());








}



void test_ServerOrderPostRequest_memory_is_assigned_from_json()
{
    bourne::json input =
    {
        "memory", 1
    };

    ServerOrderPostRequest obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getMemory());








}


void test_ServerOrderPostRequest_bandwidth_is_assigned_from_json()
{
    bourne::json input =
    {
        "bandwidth", 1
    };

    ServerOrderPostRequest obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getBandwidth());








}


void test_ServerOrderPostRequest_ips_is_assigned_from_json()
{
    bourne::json input =
    {
        "ips", 1
    };

    ServerOrderPostRequest obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getIps());








}


void test_ServerOrderPostRequest_os_is_assigned_from_json()
{
    bourne::json input =
    {
        "os", 1
    };

    ServerOrderPostRequest obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getOs());








}


void test_ServerOrderPostRequest_cp_is_assigned_from_json()
{
    bourne::json input =
    {
        "cp", 1
    };

    ServerOrderPostRequest obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getCp());








}


void test_ServerOrderPostRequest_raid_is_assigned_from_json()
{
    bourne::json input =
    {
        "raid", 1
    };

    ServerOrderPostRequest obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getRaid());








}


void test_ServerOrderPostRequest_region_is_assigned_from_json()
{
    bourne::json input =
    {
        "region", 1
    };

    ServerOrderPostRequest obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getRegion());








}


void test_ServerOrderPostRequest_servername_is_assigned_from_json()
{


    bourne::json input =
    {
        "servername", "hello"
    };

    ServerOrderPostRequest obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getServername().c_str());






}


void test_ServerOrderPostRequest_rootpass_is_assigned_from_json()
{


    bourne::json input =
    {
        "rootpass", "hello"
    };

    ServerOrderPostRequest obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getRootpass().c_str());






}


void test_ServerOrderPostRequest_tos_is_assigned_from_json()
{




    bourne::json input =
    {
        "tos", true
    };

    ServerOrderPostRequest obj(input.dump());

    TEST_ASSERT(true == obj.isTos());




}


void test_ServerOrderPostRequest_comment_is_assigned_from_json()
{


    bourne::json input =
    {
        "comment", "hello"
    };

    ServerOrderPostRequest obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getComment().c_str());






}



void test_ServerOrderPostRequest_cpu_is_converted_to_json()
{
    bourne::json input =
    {
        "cpu", 1
    };

    ServerOrderPostRequest obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["cpu"] == output["cpu"]);




}



void test_ServerOrderPostRequest_memory_is_converted_to_json()
{
    bourne::json input =
    {
        "memory", 1
    };

    ServerOrderPostRequest obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["memory"] == output["memory"]);




}


void test_ServerOrderPostRequest_bandwidth_is_converted_to_json()
{
    bourne::json input =
    {
        "bandwidth", 1
    };

    ServerOrderPostRequest obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["bandwidth"] == output["bandwidth"]);




}


void test_ServerOrderPostRequest_ips_is_converted_to_json()
{
    bourne::json input =
    {
        "ips", 1
    };

    ServerOrderPostRequest obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["ips"] == output["ips"]);




}


void test_ServerOrderPostRequest_os_is_converted_to_json()
{
    bourne::json input =
    {
        "os", 1
    };

    ServerOrderPostRequest obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["os"] == output["os"]);




}


void test_ServerOrderPostRequest_cp_is_converted_to_json()
{
    bourne::json input =
    {
        "cp", 1
    };

    ServerOrderPostRequest obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["cp"] == output["cp"]);




}


void test_ServerOrderPostRequest_raid_is_converted_to_json()
{
    bourne::json input =
    {
        "raid", 1
    };

    ServerOrderPostRequest obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["raid"] == output["raid"]);




}


void test_ServerOrderPostRequest_region_is_converted_to_json()
{
    bourne::json input =
    {
        "region", 1
    };

    ServerOrderPostRequest obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["region"] == output["region"]);




}


void test_ServerOrderPostRequest_servername_is_converted_to_json()
{

    bourne::json input =
    {
        "servername", "hello"
    };

    ServerOrderPostRequest obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["servername"] == output["servername"]);



}


void test_ServerOrderPostRequest_rootpass_is_converted_to_json()
{

    bourne::json input =
    {
        "rootpass", "hello"
    };

    ServerOrderPostRequest obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["rootpass"] == output["rootpass"]);



}


void test_ServerOrderPostRequest_tos_is_converted_to_json()
{


    bourne::json input =
    {
        "tos", true
    };

    ServerOrderPostRequest obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["tos"] == output["tos"]);


}


void test_ServerOrderPostRequest_comment_is_converted_to_json()
{

    bourne::json input =
    {
        "comment", "hello"
    };

    ServerOrderPostRequest obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["comment"] == output["comment"]);



}


