
#include "WebsiteOrderPostRequest.h"

using namespace Tiny;

#include <string>
#include <list>
#include <unity.h>
#include "bourne/json.hpp"



void test_WebsiteOrderPostRequest_hostname_is_assigned_from_json()
{


    bourne::json input =
    {
        "hostname", "hello"
    };

    WebsiteOrderPostRequest obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getHostname().c_str());






}


void test_WebsiteOrderPostRequest_packageId_is_assigned_from_json()
{
    bourne::json input =
    {
        "packageId", 1
    };

    WebsiteOrderPostRequest obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getPackageId());








}


void test_WebsiteOrderPostRequest_rootpass_is_assigned_from_json()
{


    bourne::json input =
    {
        "rootpass", "hello"
    };

    WebsiteOrderPostRequest obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getRootpass().c_str());






}


void test_WebsiteOrderPostRequest_period_is_assigned_from_json()
{
    bourne::json input =
    {
        "period", 1
    };

    WebsiteOrderPostRequest obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getPeriod());








}


void test_WebsiteOrderPostRequest_coupon_is_assigned_from_json()
{


    bourne::json input =
    {
        "coupon", "hello"
    };

    WebsiteOrderPostRequest obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getCoupon().c_str());






}


void test_WebsiteOrderPostRequest_serviceOfferId_is_assigned_from_json()
{
    bourne::json input =
    {
        "serviceOfferId", 1
    };

    WebsiteOrderPostRequest obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getServiceOfferId());








}


void test_WebsiteOrderPostRequest_script_is_assigned_from_json()
{
    bourne::json input =
    {
        "script", 1
    };

    WebsiteOrderPostRequest obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getScript());








}


void test_WebsiteOrderPostRequest_comment_is_assigned_from_json()
{


    bourne::json input =
    {
        "comment", "hello"
    };

    WebsiteOrderPostRequest obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getComment().c_str());






}


void test_WebsiteOrderPostRequest_registerDomain_is_assigned_from_json()
{




    bourne::json input =
    {
        "registerDomain", true
    };

    WebsiteOrderPostRequest obj(input.dump());

    TEST_ASSERT(true == obj.isRegisterDomain());




}



void test_WebsiteOrderPostRequest_hostname_is_converted_to_json()
{

    bourne::json input =
    {
        "hostname", "hello"
    };

    WebsiteOrderPostRequest obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["hostname"] == output["hostname"]);



}


void test_WebsiteOrderPostRequest_packageId_is_converted_to_json()
{
    bourne::json input =
    {
        "packageId", 1
    };

    WebsiteOrderPostRequest obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["packageId"] == output["packageId"]);




}


void test_WebsiteOrderPostRequest_rootpass_is_converted_to_json()
{

    bourne::json input =
    {
        "rootpass", "hello"
    };

    WebsiteOrderPostRequest obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["rootpass"] == output["rootpass"]);



}


void test_WebsiteOrderPostRequest_period_is_converted_to_json()
{
    bourne::json input =
    {
        "period", 1
    };

    WebsiteOrderPostRequest obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["period"] == output["period"]);




}


void test_WebsiteOrderPostRequest_coupon_is_converted_to_json()
{

    bourne::json input =
    {
        "coupon", "hello"
    };

    WebsiteOrderPostRequest obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["coupon"] == output["coupon"]);



}


void test_WebsiteOrderPostRequest_serviceOfferId_is_converted_to_json()
{
    bourne::json input =
    {
        "serviceOfferId", 1
    };

    WebsiteOrderPostRequest obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["serviceOfferId"] == output["serviceOfferId"]);




}


void test_WebsiteOrderPostRequest_script_is_converted_to_json()
{
    bourne::json input =
    {
        "script", 1
    };

    WebsiteOrderPostRequest obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["script"] == output["script"]);




}


void test_WebsiteOrderPostRequest_comment_is_converted_to_json()
{

    bourne::json input =
    {
        "comment", "hello"
    };

    WebsiteOrderPostRequest obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["comment"] == output["comment"]);



}


void test_WebsiteOrderPostRequest_registerDomain_is_converted_to_json()
{


    bourne::json input =
    {
        "registerDomain", true
    };

    WebsiteOrderPostRequest obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["registerDomain"] == output["registerDomain"]);


}


