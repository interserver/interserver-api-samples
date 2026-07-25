#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "SslOrderRequest.h"

using namespace std;
using namespace Tizen::ArtikCloud;

SslOrderRequest::SslOrderRequest()
{
	//__init();
}

SslOrderRequest::~SslOrderRequest()
{
	//__cleanup();
}

void
SslOrderRequest::__init()
{
	//ssl = int(0);
	//hostname = std::string();
	//approver_email = std::string();
	//frequency = int(0);
	//coupon = std::string();
	//csr_type = std::string();
	//csr = std::string();
	//firstname = std::string();
	//lastname = std::string();
	//email = std::string();
	//address = std::string();
	//city = std::string();
	//state = std::string();
	//zip = std::string();
	//country = std::string();
	//phone = std::string();
	//company = std::string();
	//department = std::string();
	//agency = std::string();
	//business_category = std::string();
}

void
SslOrderRequest::__cleanup()
{
	//if(ssl != NULL) {
	//
	//delete ssl;
	//ssl = NULL;
	//}
	//if(hostname != NULL) {
	//
	//delete hostname;
	//hostname = NULL;
	//}
	//if(approver_email != NULL) {
	//
	//delete approver_email;
	//approver_email = NULL;
	//}
	//if(frequency != NULL) {
	//
	//delete frequency;
	//frequency = NULL;
	//}
	//if(coupon != NULL) {
	//
	//delete coupon;
	//coupon = NULL;
	//}
	//if(csr_type != NULL) {
	//
	//delete csr_type;
	//csr_type = NULL;
	//}
	//if(csr != NULL) {
	//
	//delete csr;
	//csr = NULL;
	//}
	//if(firstname != NULL) {
	//
	//delete firstname;
	//firstname = NULL;
	//}
	//if(lastname != NULL) {
	//
	//delete lastname;
	//lastname = NULL;
	//}
	//if(email != NULL) {
	//
	//delete email;
	//email = NULL;
	//}
	//if(address != NULL) {
	//
	//delete address;
	//address = NULL;
	//}
	//if(city != NULL) {
	//
	//delete city;
	//city = NULL;
	//}
	//if(state != NULL) {
	//
	//delete state;
	//state = NULL;
	//}
	//if(zip != NULL) {
	//
	//delete zip;
	//zip = NULL;
	//}
	//if(country != NULL) {
	//
	//delete country;
	//country = NULL;
	//}
	//if(phone != NULL) {
	//
	//delete phone;
	//phone = NULL;
	//}
	//if(company != NULL) {
	//
	//delete company;
	//company = NULL;
	//}
	//if(department != NULL) {
	//
	//delete department;
	//department = NULL;
	//}
	//if(agency != NULL) {
	//
	//delete agency;
	//agency = NULL;
	//}
	//if(business_category != NULL) {
	//
	//delete business_category;
	//business_category = NULL;
	//}
	//
}

void
SslOrderRequest::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *sslKey = "ssl";
	node = json_object_get_member(pJsonObject, sslKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&ssl, node, "int", "");
		} else {
			
		}
	}
	const gchar *hostnameKey = "hostname";
	node = json_object_get_member(pJsonObject, hostnameKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&hostname, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *approver_emailKey = "approver_email";
	node = json_object_get_member(pJsonObject, approver_emailKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&approver_email, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *frequencyKey = "frequency";
	node = json_object_get_member(pJsonObject, frequencyKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&frequency, node, "int", "");
		} else {
			
		}
	}
	const gchar *couponKey = "coupon";
	node = json_object_get_member(pJsonObject, couponKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&coupon, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *csr_typeKey = "csr_type";
	node = json_object_get_member(pJsonObject, csr_typeKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&csr_type, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *csrKey = "csr";
	node = json_object_get_member(pJsonObject, csrKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&csr, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *firstnameKey = "firstname";
	node = json_object_get_member(pJsonObject, firstnameKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&firstname, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *lastnameKey = "lastname";
	node = json_object_get_member(pJsonObject, lastnameKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&lastname, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *emailKey = "email";
	node = json_object_get_member(pJsonObject, emailKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&email, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *addressKey = "address";
	node = json_object_get_member(pJsonObject, addressKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&address, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *cityKey = "city";
	node = json_object_get_member(pJsonObject, cityKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&city, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *stateKey = "state";
	node = json_object_get_member(pJsonObject, stateKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&state, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *zipKey = "zip";
	node = json_object_get_member(pJsonObject, zipKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&zip, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *countryKey = "country";
	node = json_object_get_member(pJsonObject, countryKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&country, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *phoneKey = "phone";
	node = json_object_get_member(pJsonObject, phoneKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&phone, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *companyKey = "company";
	node = json_object_get_member(pJsonObject, companyKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&company, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *departmentKey = "department";
	node = json_object_get_member(pJsonObject, departmentKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&department, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *agencyKey = "agency";
	node = json_object_get_member(pJsonObject, agencyKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&agency, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *business_categoryKey = "business_category";
	node = json_object_get_member(pJsonObject, business_categoryKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&business_category, node, "std::string", "");
		} else {
			
		}
	}
}

SslOrderRequest::SslOrderRequest(char* json)
{
	this->fromJson(json);
}

char*
SslOrderRequest::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("int")) {
		int obj = getSsl();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *sslKey = "ssl";
	json_object_set_member(pJsonObject, sslKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getHostname();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *hostnameKey = "hostname";
	json_object_set_member(pJsonObject, hostnameKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getApproverEmail();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *approver_emailKey = "approver_email";
	json_object_set_member(pJsonObject, approver_emailKey, node);
	if (isprimitive("int")) {
		int obj = getFrequency();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *frequencyKey = "frequency";
	json_object_set_member(pJsonObject, frequencyKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getCoupon();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *couponKey = "coupon";
	json_object_set_member(pJsonObject, couponKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getCsrType();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *csr_typeKey = "csr_type";
	json_object_set_member(pJsonObject, csr_typeKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getCsr();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *csrKey = "csr";
	json_object_set_member(pJsonObject, csrKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getFirstname();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *firstnameKey = "firstname";
	json_object_set_member(pJsonObject, firstnameKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getLastname();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *lastnameKey = "lastname";
	json_object_set_member(pJsonObject, lastnameKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getEmail();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *emailKey = "email";
	json_object_set_member(pJsonObject, emailKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getAddress();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *addressKey = "address";
	json_object_set_member(pJsonObject, addressKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getCity();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *cityKey = "city";
	json_object_set_member(pJsonObject, cityKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getState();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *stateKey = "state";
	json_object_set_member(pJsonObject, stateKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getZip();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *zipKey = "zip";
	json_object_set_member(pJsonObject, zipKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getCountry();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *countryKey = "country";
	json_object_set_member(pJsonObject, countryKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getPhone();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *phoneKey = "phone";
	json_object_set_member(pJsonObject, phoneKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getCompany();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *companyKey = "company";
	json_object_set_member(pJsonObject, companyKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getDepartment();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *departmentKey = "department";
	json_object_set_member(pJsonObject, departmentKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getAgency();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *agencyKey = "agency";
	json_object_set_member(pJsonObject, agencyKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getBusinessCategory();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *business_categoryKey = "business_category";
	json_object_set_member(pJsonObject, business_categoryKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

int
SslOrderRequest::getSsl()
{
	return ssl;
}

void
SslOrderRequest::setSsl(int  ssl)
{
	this->ssl = ssl;
}

std::string
SslOrderRequest::getHostname()
{
	return hostname;
}

void
SslOrderRequest::setHostname(std::string  hostname)
{
	this->hostname = hostname;
}

std::string
SslOrderRequest::getApproverEmail()
{
	return approver_email;
}

void
SslOrderRequest::setApproverEmail(std::string  approver_email)
{
	this->approver_email = approver_email;
}

int
SslOrderRequest::getFrequency()
{
	return frequency;
}

void
SslOrderRequest::setFrequency(int  frequency)
{
	this->frequency = frequency;
}

std::string
SslOrderRequest::getCoupon()
{
	return coupon;
}

void
SslOrderRequest::setCoupon(std::string  coupon)
{
	this->coupon = coupon;
}

std::string
SslOrderRequest::getCsrType()
{
	return csr_type;
}

void
SslOrderRequest::setCsrType(std::string  csr_type)
{
	this->csr_type = csr_type;
}

std::string
SslOrderRequest::getCsr()
{
	return csr;
}

void
SslOrderRequest::setCsr(std::string  csr)
{
	this->csr = csr;
}

std::string
SslOrderRequest::getFirstname()
{
	return firstname;
}

void
SslOrderRequest::setFirstname(std::string  firstname)
{
	this->firstname = firstname;
}

std::string
SslOrderRequest::getLastname()
{
	return lastname;
}

void
SslOrderRequest::setLastname(std::string  lastname)
{
	this->lastname = lastname;
}

std::string
SslOrderRequest::getEmail()
{
	return email;
}

void
SslOrderRequest::setEmail(std::string  email)
{
	this->email = email;
}

std::string
SslOrderRequest::getAddress()
{
	return address;
}

void
SslOrderRequest::setAddress(std::string  address)
{
	this->address = address;
}

std::string
SslOrderRequest::getCity()
{
	return city;
}

void
SslOrderRequest::setCity(std::string  city)
{
	this->city = city;
}

std::string
SslOrderRequest::getState()
{
	return state;
}

void
SslOrderRequest::setState(std::string  state)
{
	this->state = state;
}

std::string
SslOrderRequest::getZip()
{
	return zip;
}

void
SslOrderRequest::setZip(std::string  zip)
{
	this->zip = zip;
}

std::string
SslOrderRequest::getCountry()
{
	return country;
}

void
SslOrderRequest::setCountry(std::string  country)
{
	this->country = country;
}

std::string
SslOrderRequest::getPhone()
{
	return phone;
}

void
SslOrderRequest::setPhone(std::string  phone)
{
	this->phone = phone;
}

std::string
SslOrderRequest::getCompany()
{
	return company;
}

void
SslOrderRequest::setCompany(std::string  company)
{
	this->company = company;
}

std::string
SslOrderRequest::getDepartment()
{
	return department;
}

void
SslOrderRequest::setDepartment(std::string  department)
{
	this->department = department;
}

std::string
SslOrderRequest::getAgency()
{
	return agency;
}

void
SslOrderRequest::setAgency(std::string  agency)
{
	this->agency = agency;
}

std::string
SslOrderRequest::getBusinessCategory()
{
	return business_category;
}

void
SslOrderRequest::setBusinessCategory(std::string  business_category)
{
	this->business_category = business_category;
}


