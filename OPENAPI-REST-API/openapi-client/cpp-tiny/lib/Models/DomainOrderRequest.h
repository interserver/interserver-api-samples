
/*
 * DomainOrderRequest.h
 *
 * Request body for the domain order flow: putDomains (returns required fields), patchDomains (validates fields), addDomain (places the order). The TLD is resolved from hostname. Per-TLD registrant/contact fields returned by putDomains may be supplied as additional properties on patchDomains/addDomain.
 */

#ifndef TINY_CPP_CLIENT_DomainOrderRequest_H_
#define TINY_CPP_CLIENT_DomainOrderRequest_H_


#include <string>
#include "bourne/json.hpp"
#include "Helpers.h"
#include "AnyType.h"
#include <map>

namespace Tiny {


/*! \brief Request body for the domain order flow: putDomains (returns required fields), patchDomains (validates fields), addDomain (places the order). The TLD is resolved from hostname. Per-TLD registrant/contact fields returned by putDomains may be supplied as additional properties on patchDomains/addDomain.
 *
 *  \ingroup Models
 *
 */

class DomainOrderRequest{
public:

    /*! \brief Constructor.
	 */
    DomainOrderRequest();
    DomainOrderRequest(std::string jsonString);


    /*! \brief Destructor.
	 */
    virtual ~DomainOrderRequest();


    /*! \brief Retrieve a bourne JSON representation of this class.
	 */
    bourne::json toJson();


    /*! \brief Fills in members of this class from bourne JSON object representing it.
	 */
    void fromJson(std::string jsonObj);

	/*! \brief Get Fully-qualified domain to register or transfer (e.g. example.com).
	 */
	std::string getHostname();

	/*! \brief Set Fully-qualified domain to register or transfer (e.g. example.com).
	 */
	void setHostname(std::string hostname);
	/*! \brief Get Order type.
	 */
	std::string getType();

	/*! \brief Set Order type.
	 */
	void setType(std::string type);
	/*! \brief Get Coupon code (addDomain only).
	 */
	std::string getCoupon();

	/*! \brief Set Coupon code (addDomain only).
	 */
	void setCoupon(std::string coupon);
	/*! \brief Get Set to \"enable\" to add Whois privacy (addDomain only).
	 */
	std::string getWhoisPrivacy();

	/*! \brief Set Set to \"enable\" to add Whois privacy (addDomain only).
	 */
	void setWhoisPrivacy(std::string whois_privacy);


    private:
    std::string hostname{};
    std::string type{};
    std::string coupon{};
    std::string whois_privacy{};
};
}

#endif /* TINY_CPP_CLIENT_DomainOrderRequest_H_ */
