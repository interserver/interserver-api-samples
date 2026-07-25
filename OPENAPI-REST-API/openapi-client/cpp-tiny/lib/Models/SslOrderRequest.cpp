

#include "SslOrderRequest.h"

using namespace Tiny;

SslOrderRequest::SslOrderRequest()
{
	ssl = int(0);
	hostname = std::string();
	approver_email = std::string();
	frequency = int(0);
	coupon = std::string();
	csr_type = std::string();
	csr = std::string();
	firstname = std::string();
	lastname = std::string();
	email = std::string();
	address = std::string();
	city = std::string();
	state = std::string();
	zip = std::string();
	country = std::string();
	phone = std::string();
	company = std::string();
	department = std::string();
	agency = std::string();
	business_category = std::string();
}

SslOrderRequest::SslOrderRequest(std::string jsonString)
{
	this->fromJson(jsonString);
}

SslOrderRequest::~SslOrderRequest()
{

}

void
SslOrderRequest::fromJson(std::string jsonObj)
{
    bourne::json object = bourne::json::parse(jsonObj);

    const char *sslKey = "ssl";

    if(object.has_key(sslKey))
    {
        bourne::json value = object[sslKey];



        jsonToValue(&ssl, value, "int");


    }

    const char *hostnameKey = "hostname";

    if(object.has_key(hostnameKey))
    {
        bourne::json value = object[hostnameKey];



        jsonToValue(&hostname, value, "std::string");


    }

    const char *approver_emailKey = "approver_email";

    if(object.has_key(approver_emailKey))
    {
        bourne::json value = object[approver_emailKey];



        jsonToValue(&approver_email, value, "std::string");


    }

    const char *frequencyKey = "frequency";

    if(object.has_key(frequencyKey))
    {
        bourne::json value = object[frequencyKey];



        jsonToValue(&frequency, value, "int");


    }

    const char *couponKey = "coupon";

    if(object.has_key(couponKey))
    {
        bourne::json value = object[couponKey];



        jsonToValue(&coupon, value, "std::string");


    }

    const char *csr_typeKey = "csr_type";

    if(object.has_key(csr_typeKey))
    {
        bourne::json value = object[csr_typeKey];



        jsonToValue(&csr_type, value, "std::string");


    }

    const char *csrKey = "csr";

    if(object.has_key(csrKey))
    {
        bourne::json value = object[csrKey];



        jsonToValue(&csr, value, "std::string");


    }

    const char *firstnameKey = "firstname";

    if(object.has_key(firstnameKey))
    {
        bourne::json value = object[firstnameKey];



        jsonToValue(&firstname, value, "std::string");


    }

    const char *lastnameKey = "lastname";

    if(object.has_key(lastnameKey))
    {
        bourne::json value = object[lastnameKey];



        jsonToValue(&lastname, value, "std::string");


    }

    const char *emailKey = "email";

    if(object.has_key(emailKey))
    {
        bourne::json value = object[emailKey];



        jsonToValue(&email, value, "std::string");


    }

    const char *addressKey = "address";

    if(object.has_key(addressKey))
    {
        bourne::json value = object[addressKey];



        jsonToValue(&address, value, "std::string");


    }

    const char *cityKey = "city";

    if(object.has_key(cityKey))
    {
        bourne::json value = object[cityKey];



        jsonToValue(&city, value, "std::string");


    }

    const char *stateKey = "state";

    if(object.has_key(stateKey))
    {
        bourne::json value = object[stateKey];



        jsonToValue(&state, value, "std::string");


    }

    const char *zipKey = "zip";

    if(object.has_key(zipKey))
    {
        bourne::json value = object[zipKey];



        jsonToValue(&zip, value, "std::string");


    }

    const char *countryKey = "country";

    if(object.has_key(countryKey))
    {
        bourne::json value = object[countryKey];



        jsonToValue(&country, value, "std::string");


    }

    const char *phoneKey = "phone";

    if(object.has_key(phoneKey))
    {
        bourne::json value = object[phoneKey];



        jsonToValue(&phone, value, "std::string");


    }

    const char *companyKey = "company";

    if(object.has_key(companyKey))
    {
        bourne::json value = object[companyKey];



        jsonToValue(&company, value, "std::string");


    }

    const char *departmentKey = "department";

    if(object.has_key(departmentKey))
    {
        bourne::json value = object[departmentKey];



        jsonToValue(&department, value, "std::string");


    }

    const char *agencyKey = "agency";

    if(object.has_key(agencyKey))
    {
        bourne::json value = object[agencyKey];



        jsonToValue(&agency, value, "std::string");


    }

    const char *business_categoryKey = "business_category";

    if(object.has_key(business_categoryKey))
    {
        bourne::json value = object[business_categoryKey];



        jsonToValue(&business_category, value, "std::string");


    }


}

bourne::json
SslOrderRequest::toJson()
{
    bourne::json object = bourne::json::object();





    object["ssl"] = getSsl();






    object["hostname"] = getHostname();






    object["approver_email"] = getApproverEmail();






    object["frequency"] = getFrequency();






    object["coupon"] = getCoupon();






    object["csr_type"] = getCsrType();






    object["csr"] = getCsr();






    object["firstname"] = getFirstname();






    object["lastname"] = getLastname();






    object["email"] = getEmail();






    object["address"] = getAddress();






    object["city"] = getCity();






    object["state"] = getState();






    object["zip"] = getZip();






    object["country"] = getCountry();






    object["phone"] = getPhone();






    object["company"] = getCompany();






    object["department"] = getDepartment();






    object["agency"] = getAgency();






    object["business_category"] = getBusinessCategory();



    return object;

}

int
SslOrderRequest::getSsl()
{
	return ssl;
}

void
SslOrderRequest::setSsl(int ssl)
{
	this->ssl = ssl;
}

std::string
SslOrderRequest::getHostname()
{
	return hostname;
}

void
SslOrderRequest::setHostname(std::string hostname)
{
	this->hostname = hostname;
}

std::string
SslOrderRequest::getApproverEmail()
{
	return approver_email;
}

void
SslOrderRequest::setApproverEmail(std::string approver_email)
{
	this->approver_email = approver_email;
}

int
SslOrderRequest::getFrequency()
{
	return frequency;
}

void
SslOrderRequest::setFrequency(int frequency)
{
	this->frequency = frequency;
}

std::string
SslOrderRequest::getCoupon()
{
	return coupon;
}

void
SslOrderRequest::setCoupon(std::string coupon)
{
	this->coupon = coupon;
}

std::string
SslOrderRequest::getCsrType()
{
	return csr_type;
}

void
SslOrderRequest::setCsrType(std::string csr_type)
{
	this->csr_type = csr_type;
}

std::string
SslOrderRequest::getCsr()
{
	return csr;
}

void
SslOrderRequest::setCsr(std::string csr)
{
	this->csr = csr;
}

std::string
SslOrderRequest::getFirstname()
{
	return firstname;
}

void
SslOrderRequest::setFirstname(std::string firstname)
{
	this->firstname = firstname;
}

std::string
SslOrderRequest::getLastname()
{
	return lastname;
}

void
SslOrderRequest::setLastname(std::string lastname)
{
	this->lastname = lastname;
}

std::string
SslOrderRequest::getEmail()
{
	return email;
}

void
SslOrderRequest::setEmail(std::string email)
{
	this->email = email;
}

std::string
SslOrderRequest::getAddress()
{
	return address;
}

void
SslOrderRequest::setAddress(std::string address)
{
	this->address = address;
}

std::string
SslOrderRequest::getCity()
{
	return city;
}

void
SslOrderRequest::setCity(std::string city)
{
	this->city = city;
}

std::string
SslOrderRequest::getState()
{
	return state;
}

void
SslOrderRequest::setState(std::string state)
{
	this->state = state;
}

std::string
SslOrderRequest::getZip()
{
	return zip;
}

void
SslOrderRequest::setZip(std::string zip)
{
	this->zip = zip;
}

std::string
SslOrderRequest::getCountry()
{
	return country;
}

void
SslOrderRequest::setCountry(std::string country)
{
	this->country = country;
}

std::string
SslOrderRequest::getPhone()
{
	return phone;
}

void
SslOrderRequest::setPhone(std::string phone)
{
	this->phone = phone;
}

std::string
SslOrderRequest::getCompany()
{
	return company;
}

void
SslOrderRequest::setCompany(std::string company)
{
	this->company = company;
}

std::string
SslOrderRequest::getDepartment()
{
	return department;
}

void
SslOrderRequest::setDepartment(std::string department)
{
	this->department = department;
}

std::string
SslOrderRequest::getAgency()
{
	return agency;
}

void
SslOrderRequest::setAgency(std::string agency)
{
	this->agency = agency;
}

std::string
SslOrderRequest::getBusinessCategory()
{
	return business_category;
}

void
SslOrderRequest::setBusinessCategory(std::string business_category)
{
	this->business_category = business_category;
}



