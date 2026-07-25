
#include "PatchBillingCreditCardVerify_request.h"

using namespace Tiny;

#include <string>
#include <list>
#include <unity.h>
#include "bourne/json.hpp"



void test_PatchBillingCreditCardVerify_request_cc_ccv2_is_assigned_from_json()
{


    bourne::json input =
    {
        "cc_ccv2", "hello"
    };

    PatchBillingCreditCardVerify_request obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getCcCcv2().c_str());






}



void test_PatchBillingCreditCardVerify_request_cc_ccv2_is_converted_to_json()
{

    bourne::json input =
    {
        "cc_ccv2", "hello"
    };

    PatchBillingCreditCardVerify_request obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["cc_ccv2"] == output["cc_ccv2"]);



}


