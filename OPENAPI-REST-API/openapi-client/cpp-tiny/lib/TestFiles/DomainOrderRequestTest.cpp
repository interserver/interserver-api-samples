
#include "DomainOrderRequest.h"

using namespace Tiny;

#include <string>
#include <list>
#include <unity.h>
#include "bourne/json.hpp"



void test_DomainOrderRequest_hostname_is_assigned_from_json()
{


    bourne::json input =
    {
        "hostname", "hello"
    };

    DomainOrderRequest obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getHostname().c_str());






}


void test_DomainOrderRequest_type_is_assigned_from_json()
{


    bourne::json input =
    {
        "type", "hello"
    };

    DomainOrderRequest obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getType().c_str());






}


void test_DomainOrderRequest_coupon_is_assigned_from_json()
{


    bourne::json input =
    {
        "coupon", "hello"
    };

    DomainOrderRequest obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getCoupon().c_str());






}


void test_DomainOrderRequest_whois_privacy_is_assigned_from_json()
{


    bourne::json input =
    {
        "whois_privacy", "hello"
    };

    DomainOrderRequest obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getWhoisPrivacy().c_str());






}



void test_DomainOrderRequest_hostname_is_converted_to_json()
{

    bourne::json input =
    {
        "hostname", "hello"
    };

    DomainOrderRequest obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["hostname"] == output["hostname"]);



}


void test_DomainOrderRequest_type_is_converted_to_json()
{

    bourne::json input =
    {
        "type", "hello"
    };

    DomainOrderRequest obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["type"] == output["type"]);



}


void test_DomainOrderRequest_coupon_is_converted_to_json()
{

    bourne::json input =
    {
        "coupon", "hello"
    };

    DomainOrderRequest obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["coupon"] == output["coupon"]);



}


void test_DomainOrderRequest_whois_privacy_is_converted_to_json()
{

    bourne::json input =
    {
        "whois_privacy", "hello"
    };

    DomainOrderRequest obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["whois_privacy"] == output["whois_privacy"]);



}


