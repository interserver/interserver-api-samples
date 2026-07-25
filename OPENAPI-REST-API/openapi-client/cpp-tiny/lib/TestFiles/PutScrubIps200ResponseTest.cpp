
#include "PutScrubIps_200_response.h"

using namespace Tiny;

#include <string>
#include <list>
#include <unity.h>
#include "bourne/json.hpp"



void test_PutScrubIps_200_response_r_continue_is_assigned_from_json()
{




    bourne::json input =
    {
        "r_continue", true
    };

    PutScrubIps_200_response obj(input.dump());

    TEST_ASSERT(true == obj.isRContinue());




}



void test_PutScrubIps_200_response_serviceType_is_assigned_from_json()
{
    bourne::json input =
    {
        "serviceType", 1
    };

    PutScrubIps_200_response obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getServiceType());








}


void test_PutScrubIps_200_response_serviceCost_is_assigned_from_json()
{








}


void test_PutScrubIps_200_response_originalCost_is_assigned_from_json()
{








}


void test_PutScrubIps_200_response_repeatServiceCost_is_assigned_from_json()
{








}



void test_PutScrubIps_200_response_r_continue_is_converted_to_json()
{


    bourne::json input =
    {
        "r_continue", true
    };

    PutScrubIps_200_response obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["r_continue"] == output["r_continue"]);


}



void test_PutScrubIps_200_response_serviceType_is_converted_to_json()
{
    bourne::json input =
    {
        "serviceType", 1
    };

    PutScrubIps_200_response obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["serviceType"] == output["serviceType"]);




}


void test_PutScrubIps_200_response_serviceCost_is_converted_to_json()
{




}


void test_PutScrubIps_200_response_originalCost_is_converted_to_json()
{




}


void test_PutScrubIps_200_response_repeatServiceCost_is_converted_to_json()
{




}


