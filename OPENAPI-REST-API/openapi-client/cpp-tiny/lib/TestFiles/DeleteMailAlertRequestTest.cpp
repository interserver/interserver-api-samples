
#include "DeleteMailAlert_request.h"

using namespace Tiny;

#include <string>
#include <list>
#include <unity.h>
#include "bourne/json.hpp"



void test_DeleteMailAlert_request_alert_id_is_assigned_from_json()
{
    bourne::json input =
    {
        "alert_id", 1
    };

    DeleteMailAlert_request obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getAlertId());








}



void test_DeleteMailAlert_request_alert_id_is_converted_to_json()
{
    bourne::json input =
    {
        "alert_id", 1
    };

    DeleteMailAlert_request obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["alert_id"] == output["alert_id"]);




}


