/*
 * DomainOrderRequest.h
 *
 * Request body for the domain order flow: putDomains (returns required fields), patchDomains (validates fields), addDomain (places the order). The TLD is resolved from hostname. Per-TLD registrant/contact fields returned by putDomains may be supplied as additional properties on patchDomains/addDomain.
 */

#ifndef _DomainOrderRequest_H_
#define _DomainOrderRequest_H_


#include <string>
#include "AnyType.h"
#include <map>
#include "Object.h"

/** \defgroup Models Data Structures for API
 *  Classes containing all the Data Structures needed for calling/returned by API endpoints
 *
 */

namespace Tizen {
namespace ArtikCloud {


/*! \brief Request body for the domain order flow: putDomains (returns required fields), patchDomains (validates fields), addDomain (places the order). The TLD is resolved from hostname. Per-TLD registrant/contact fields returned by putDomains may be supplied as additional properties on patchDomains/addDomain.
 *
 *  \ingroup Models
 *
 */

class DomainOrderRequest : public Object {
public:
	/*! \brief Constructor.
	 */
	DomainOrderRequest();
	DomainOrderRequest(char* str);

	/*! \brief Destructor.
	 */
	virtual ~DomainOrderRequest();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get Fully-qualified domain to register or transfer (e.g. example.com).
	 */
	std::string getHostname();

	/*! \brief Set Fully-qualified domain to register or transfer (e.g. example.com).
	 */
	void setHostname(std::string  hostname);
	/*! \brief Get Order type.
	 */
	std::string getType();

	/*! \brief Set Order type.
	 */
	void setType(std::string  type);
	/*! \brief Get Coupon code (addDomain only).
	 */
	std::string getCoupon();

	/*! \brief Set Coupon code (addDomain only).
	 */
	void setCoupon(std::string  coupon);
	/*! \brief Get Set to \"enable\" to add Whois privacy (addDomain only).
	 */
	std::string getWhoisPrivacy();

	/*! \brief Set Set to \"enable\" to add Whois privacy (addDomain only).
	 */
	void setWhoisPrivacy(std::string  whois_privacy);

private:
	std::string hostname;
	std::string type;
	std::string coupon;
	std::string whois_privacy;
	void __init();
	void __cleanup();

};
}
}

#endif /* _DomainOrderRequest_H_ */
