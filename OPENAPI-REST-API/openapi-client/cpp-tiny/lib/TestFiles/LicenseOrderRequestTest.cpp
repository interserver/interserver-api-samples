
#include "LicenseOrderRequest.h"

using namespace Tiny;

#include <string>
#include <list>
#include <unity.h>
#include "bourne/json.hpp"



void test_LicenseOrderRequest_package_is_assigned_from_json()
{
    bourne::json input =
    {
        "package", 1
    };

    LicenseOrderRequest obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getPackage());








}


void test_LicenseOrderRequest_ip_is_assigned_from_json()
{


    bourne::json input =
    {
        "ip", "hello"
    };

    LicenseOrderRequest obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getIp().c_str());






}


void test_LicenseOrderRequest_tos_is_assigned_from_json()
{




    bourne::json input =
    {
        "tos", true
    };

    LicenseOrderRequest obj(input.dump());

    TEST_ASSERT(true == obj.isTos());




}


void test_LicenseOrderRequest_frequency_is_assigned_from_json()
{
    bourne::json input =
    {
        "frequency", 1
    };

    LicenseOrderRequest obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getFrequency());








}


void test_LicenseOrderRequest_coupon_is_assigned_from_json()
{


    bourne::json input =
    {
        "coupon", "hello"
    };

    LicenseOrderRequest obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getCoupon().c_str());






}


void test_LicenseOrderRequest_comment_is_assigned_from_json()
{


    bourne::json input =
    {
        "comment", "hello"
    };

    LicenseOrderRequest obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getComment().c_str());






}



void test_LicenseOrderRequest_package_is_converted_to_json()
{
    bourne::json input =
    {
        "package", 1
    };

    LicenseOrderRequest obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["package"] == output["package"]);




}


void test_LicenseOrderRequest_ip_is_converted_to_json()
{

    bourne::json input =
    {
        "ip", "hello"
    };

    LicenseOrderRequest obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["ip"] == output["ip"]);



}


void test_LicenseOrderRequest_tos_is_converted_to_json()
{


    bourne::json input =
    {
        "tos", true
    };

    LicenseOrderRequest obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["tos"] == output["tos"]);


}


void test_LicenseOrderRequest_frequency_is_converted_to_json()
{
    bourne::json input =
    {
        "frequency", 1
    };

    LicenseOrderRequest obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["frequency"] == output["frequency"]);




}


void test_LicenseOrderRequest_coupon_is_converted_to_json()
{

    bourne::json input =
    {
        "coupon", "hello"
    };

    LicenseOrderRequest obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["coupon"] == output["coupon"]);



}


void test_LicenseOrderRequest_comment_is_converted_to_json()
{

    bourne::json input =
    {
        "comment", "hello"
    };

    LicenseOrderRequest obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["comment"] == output["comment"]);



}


