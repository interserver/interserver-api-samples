
#include "MailOrderRequest.h"

using namespace Tiny;

#include <string>
#include <list>
#include <unity.h>
#include "bourne/json.hpp"



void test_MailOrderRequest_serviceType_is_assigned_from_json()
{
    bourne::json input =
    {
        "serviceType", 1
    };

    MailOrderRequest obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getServiceType());








}


void test_MailOrderRequest_coupon_is_assigned_from_json()
{


    bourne::json input =
    {
        "coupon", "hello"
    };

    MailOrderRequest obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getCoupon().c_str());






}


void test_MailOrderRequest_comment_is_assigned_from_json()
{


    bourne::json input =
    {
        "comment", "hello"
    };

    MailOrderRequest obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getComment().c_str());






}



void test_MailOrderRequest_serviceType_is_converted_to_json()
{
    bourne::json input =
    {
        "serviceType", 1
    };

    MailOrderRequest obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["serviceType"] == output["serviceType"]);




}


void test_MailOrderRequest_coupon_is_converted_to_json()
{

    bourne::json input =
    {
        "coupon", "hello"
    };

    MailOrderRequest obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["coupon"] == output["coupon"]);



}


void test_MailOrderRequest_comment_is_converted_to_json()
{

    bourne::json input =
    {
        "comment", "hello"
    };

    MailOrderRequest obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["comment"] == output["comment"]);



}


