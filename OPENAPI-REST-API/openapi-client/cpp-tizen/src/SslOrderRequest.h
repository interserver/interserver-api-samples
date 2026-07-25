/*
 * SslOrderRequest.h
 *
 * Request body to validate (putSsl) or place (addSsl) an SSL certificate order. Contact fields default from the account if omitted. Package ids come from getNewSsl.serviceTypes.
 */

#ifndef _SslOrderRequest_H_
#define _SslOrderRequest_H_


#include <string>
#include "Object.h"

/** \defgroup Models Data Structures for API
 *  Classes containing all the Data Structures needed for calling/returned by API endpoints
 *
 */

namespace Tizen {
namespace ArtikCloud {


/*! \brief Request body to validate (putSsl) or place (addSsl) an SSL certificate order. Contact fields default from the account if omitted. Package ids come from getNewSsl.serviceTypes.
 *
 *  \ingroup Models
 *
 */

class SslOrderRequest : public Object {
public:
	/*! \brief Constructor.
	 */
	SslOrderRequest();
	SslOrderRequest(char* str);

	/*! \brief Destructor.
	 */
	virtual ~SslOrderRequest();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get SSL package service type id from getNewSsl.serviceTypes.
	 */
	int getSsl();

	/*! \brief Set SSL package service type id from getNewSsl.serviceTypes.
	 */
	void setSsl(int  ssl);
	/*! \brief Get Domain the certificate is issued for. Wildcard certs require *.domain.com format.
	 */
	std::string getHostname();

	/*! \brief Set Domain the certificate is issued for. Wildcard certs require *.domain.com format.
	 */
	void setHostname(std::string  hostname);
	/*! \brief Get Domain-control approver email (required for all SSL orders).
	 */
	std::string getApproverEmail();

	/*! \brief Set Domain-control approver email (required for all SSL orders).
	 */
	void setApproverEmail(std::string  approver_email);
	/*! \brief Get Billing frequency in months (12, 24, or 36).
	 */
	int getFrequency();

	/*! \brief Set Billing frequency in months (12, 24, or 36).
	 */
	void setFrequency(int  frequency);
	/*! \brief Get Coupon code.
	 */
	std::string getCoupon();

	/*! \brief Set Coupon code.
	 */
	void setCoupon(std::string  coupon);
	/*! \brief Get Whether the CSR is server-generated or customer-provided.
	 */
	std::string getCsrType();

	/*! \brief Set Whether the CSR is server-generated or customer-provided.
	 */
	void setCsrType(std::string  csr_type);
	/*! \brief Get PEM-encoded CSR (>= 2048-bit) when csr_type=provided.
	 */
	std::string getCsr();

	/*! \brief Set PEM-encoded CSR (>= 2048-bit) when csr_type=provided.
	 */
	void setCsr(std::string  csr);
	/*! \brief Get Contact first name (defaults from account).
	 */
	std::string getFirstname();

	/*! \brief Set Contact first name (defaults from account).
	 */
	void setFirstname(std::string  firstname);
	/*! \brief Get Contact last name (defaults from account).
	 */
	std::string getLastname();

	/*! \brief Set Contact last name (defaults from account).
	 */
	void setLastname(std::string  lastname);
	/*! \brief Get Contact email (defaults from account).
	 */
	std::string getEmail();

	/*! \brief Set Contact email (defaults from account).
	 */
	void setEmail(std::string  email);
	/*! \brief Get Contact address (defaults from account).
	 */
	std::string getAddress();

	/*! \brief Set Contact address (defaults from account).
	 */
	void setAddress(std::string  address);
	/*! \brief Get Contact city (defaults from account).
	 */
	std::string getCity();

	/*! \brief Set Contact city (defaults from account).
	 */
	void setCity(std::string  city);
	/*! \brief Get Contact state/region (defaults from account).
	 */
	std::string getState();

	/*! \brief Set Contact state/region (defaults from account).
	 */
	void setState(std::string  state);
	/*! \brief Get Contact postal code (defaults from account).
	 */
	std::string getZip();

	/*! \brief Set Contact postal code (defaults from account).
	 */
	void setZip(std::string  zip);
	/*! \brief Get Contact country (defaults from account).
	 */
	std::string getCountry();

	/*! \brief Set Contact country (defaults from account).
	 */
	void setCountry(std::string  country);
	/*! \brief Get Contact phone (defaults from account).
	 */
	std::string getPhone();

	/*! \brief Set Contact phone (defaults from account).
	 */
	void setPhone(std::string  phone);
	/*! \brief Get Contact company/organization (defaults from account).
	 */
	std::string getCompany();

	/*! \brief Set Contact company/organization (defaults from account).
	 */
	void setCompany(std::string  company);
	/*! \brief Get Contact department (defaults to Administration).
	 */
	std::string getDepartment();

	/*! \brief Set Contact department (defaults to Administration).
	 */
	void setDepartment(std::string  department);
	/*! \brief Get EV certificate incorporating agency (only for EV packages).
	 */
	std::string getAgency();

	/*! \brief Set EV certificate incorporating agency (only for EV packages).
	 */
	void setAgency(std::string  agency);
	/*! \brief Get EV certificate business category (only for EV packages).
	 */
	std::string getBusinessCategory();

	/*! \brief Set EV certificate business category (only for EV packages).
	 */
	void setBusinessCategory(std::string  business_category);

private:
	int ssl;
	std::string hostname;
	std::string approver_email;
	int frequency;
	std::string coupon;
	std::string csr_type;
	std::string csr;
	std::string firstname;
	std::string lastname;
	std::string email;
	std::string address;
	std::string city;
	std::string state;
	std::string zip;
	std::string country;
	std::string phone;
	std::string company;
	std::string department;
	std::string agency;
	std::string business_category;
	void __init();
	void __cleanup();

};
}
}

#endif /* _SslOrderRequest_H_ */
