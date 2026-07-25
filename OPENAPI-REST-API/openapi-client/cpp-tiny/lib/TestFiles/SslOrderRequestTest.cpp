
#include "SslOrderRequest.h"

using namespace Tiny;

#include <string>
#include <list>
#include <unity.h>
#include "bourne/json.hpp"



void test_SslOrderRequest_ssl_is_assigned_from_json()
{
    bourne::json input =
    {
        "ssl", 1
    };

    SslOrderRequest obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getSsl());








}


void test_SslOrderRequest_hostname_is_assigned_from_json()
{


    bourne::json input =
    {
        "hostname", "hello"
    };

    SslOrderRequest obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getHostname().c_str());






}


void test_SslOrderRequest_approver_email_is_assigned_from_json()
{


    bourne::json input =
    {
        "approver_email", "hello"
    };

    SslOrderRequest obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getApproverEmail().c_str());






}


void test_SslOrderRequest_frequency_is_assigned_from_json()
{
    bourne::json input =
    {
        "frequency", 1
    };

    SslOrderRequest obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getFrequency());








}


void test_SslOrderRequest_coupon_is_assigned_from_json()
{


    bourne::json input =
    {
        "coupon", "hello"
    };

    SslOrderRequest obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getCoupon().c_str());






}


void test_SslOrderRequest_csr_type_is_assigned_from_json()
{


    bourne::json input =
    {
        "csr_type", "hello"
    };

    SslOrderRequest obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getCsrType().c_str());






}


void test_SslOrderRequest_csr_is_assigned_from_json()
{


    bourne::json input =
    {
        "csr", "hello"
    };

    SslOrderRequest obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getCsr().c_str());






}


void test_SslOrderRequest_firstname_is_assigned_from_json()
{


    bourne::json input =
    {
        "firstname", "hello"
    };

    SslOrderRequest obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getFirstname().c_str());






}


void test_SslOrderRequest_lastname_is_assigned_from_json()
{


    bourne::json input =
    {
        "lastname", "hello"
    };

    SslOrderRequest obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getLastname().c_str());






}


void test_SslOrderRequest_email_is_assigned_from_json()
{


    bourne::json input =
    {
        "email", "hello"
    };

    SslOrderRequest obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getEmail().c_str());






}


void test_SslOrderRequest_address_is_assigned_from_json()
{


    bourne::json input =
    {
        "address", "hello"
    };

    SslOrderRequest obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getAddress().c_str());






}


void test_SslOrderRequest_city_is_assigned_from_json()
{


    bourne::json input =
    {
        "city", "hello"
    };

    SslOrderRequest obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getCity().c_str());






}


void test_SslOrderRequest_state_is_assigned_from_json()
{


    bourne::json input =
    {
        "state", "hello"
    };

    SslOrderRequest obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getState().c_str());






}


void test_SslOrderRequest_zip_is_assigned_from_json()
{


    bourne::json input =
    {
        "zip", "hello"
    };

    SslOrderRequest obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getZip().c_str());






}


void test_SslOrderRequest_country_is_assigned_from_json()
{


    bourne::json input =
    {
        "country", "hello"
    };

    SslOrderRequest obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getCountry().c_str());






}


void test_SslOrderRequest_phone_is_assigned_from_json()
{


    bourne::json input =
    {
        "phone", "hello"
    };

    SslOrderRequest obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getPhone().c_str());






}


void test_SslOrderRequest_company_is_assigned_from_json()
{


    bourne::json input =
    {
        "company", "hello"
    };

    SslOrderRequest obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getCompany().c_str());






}


void test_SslOrderRequest_department_is_assigned_from_json()
{


    bourne::json input =
    {
        "department", "hello"
    };

    SslOrderRequest obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getDepartment().c_str());






}


void test_SslOrderRequest_agency_is_assigned_from_json()
{


    bourne::json input =
    {
        "agency", "hello"
    };

    SslOrderRequest obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getAgency().c_str());






}


void test_SslOrderRequest_business_category_is_assigned_from_json()
{


    bourne::json input =
    {
        "business_category", "hello"
    };

    SslOrderRequest obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getBusinessCategory().c_str());






}



void test_SslOrderRequest_ssl_is_converted_to_json()
{
    bourne::json input =
    {
        "ssl", 1
    };

    SslOrderRequest obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["ssl"] == output["ssl"]);




}


void test_SslOrderRequest_hostname_is_converted_to_json()
{

    bourne::json input =
    {
        "hostname", "hello"
    };

    SslOrderRequest obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["hostname"] == output["hostname"]);



}


void test_SslOrderRequest_approver_email_is_converted_to_json()
{

    bourne::json input =
    {
        "approver_email", "hello"
    };

    SslOrderRequest obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["approver_email"] == output["approver_email"]);



}


void test_SslOrderRequest_frequency_is_converted_to_json()
{
    bourne::json input =
    {
        "frequency", 1
    };

    SslOrderRequest obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["frequency"] == output["frequency"]);




}


void test_SslOrderRequest_coupon_is_converted_to_json()
{

    bourne::json input =
    {
        "coupon", "hello"
    };

    SslOrderRequest obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["coupon"] == output["coupon"]);



}


void test_SslOrderRequest_csr_type_is_converted_to_json()
{

    bourne::json input =
    {
        "csr_type", "hello"
    };

    SslOrderRequest obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["csr_type"] == output["csr_type"]);



}


void test_SslOrderRequest_csr_is_converted_to_json()
{

    bourne::json input =
    {
        "csr", "hello"
    };

    SslOrderRequest obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["csr"] == output["csr"]);



}


void test_SslOrderRequest_firstname_is_converted_to_json()
{

    bourne::json input =
    {
        "firstname", "hello"
    };

    SslOrderRequest obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["firstname"] == output["firstname"]);



}


void test_SslOrderRequest_lastname_is_converted_to_json()
{

    bourne::json input =
    {
        "lastname", "hello"
    };

    SslOrderRequest obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["lastname"] == output["lastname"]);



}


void test_SslOrderRequest_email_is_converted_to_json()
{

    bourne::json input =
    {
        "email", "hello"
    };

    SslOrderRequest obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["email"] == output["email"]);



}


void test_SslOrderRequest_address_is_converted_to_json()
{

    bourne::json input =
    {
        "address", "hello"
    };

    SslOrderRequest obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["address"] == output["address"]);



}


void test_SslOrderRequest_city_is_converted_to_json()
{

    bourne::json input =
    {
        "city", "hello"
    };

    SslOrderRequest obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["city"] == output["city"]);



}


void test_SslOrderRequest_state_is_converted_to_json()
{

    bourne::json input =
    {
        "state", "hello"
    };

    SslOrderRequest obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["state"] == output["state"]);



}


void test_SslOrderRequest_zip_is_converted_to_json()
{

    bourne::json input =
    {
        "zip", "hello"
    };

    SslOrderRequest obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["zip"] == output["zip"]);



}


void test_SslOrderRequest_country_is_converted_to_json()
{

    bourne::json input =
    {
        "country", "hello"
    };

    SslOrderRequest obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["country"] == output["country"]);



}


void test_SslOrderRequest_phone_is_converted_to_json()
{

    bourne::json input =
    {
        "phone", "hello"
    };

    SslOrderRequest obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["phone"] == output["phone"]);



}


void test_SslOrderRequest_company_is_converted_to_json()
{

    bourne::json input =
    {
        "company", "hello"
    };

    SslOrderRequest obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["company"] == output["company"]);



}


void test_SslOrderRequest_department_is_converted_to_json()
{

    bourne::json input =
    {
        "department", "hello"
    };

    SslOrderRequest obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["department"] == output["department"]);



}


void test_SslOrderRequest_agency_is_converted_to_json()
{

    bourne::json input =
    {
        "agency", "hello"
    };

    SslOrderRequest obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["agency"] == output["agency"]);



}


void test_SslOrderRequest_business_category_is_converted_to_json()
{

    bourne::json input =
    {
        "business_category", "hello"
    };

    SslOrderRequest obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["business_category"] == output["business_category"]);



}


