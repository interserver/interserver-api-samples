/*
 * FloatingIpOrderRequest.h
 *
 * Request body to validate (putFloating_ips) or place (addFloatingIp) a floating IP order. Service type ids come from getNewFloatingIp.serviceTypes.
 */

#ifndef _FloatingIpOrderRequest_H_
#define _FloatingIpOrderRequest_H_


#include <string>
#include "Object.h"

/** \defgroup Models Data Structures for API
 *  Classes containing all the Data Structures needed for calling/returned by API endpoints
 *
 */

namespace Tizen {
namespace ArtikCloud {


/*! \brief Request body to validate (putFloating_ips) or place (addFloatingIp) a floating IP order. Service type ids come from getNewFloatingIp.serviceTypes.
 *
 *  \ingroup Models
 *
 */

class FloatingIpOrderRequest : public Object {
public:
	/*! \brief Constructor.
	 */
	FloatingIpOrderRequest();
	FloatingIpOrderRequest(char* str);

	/*! \brief Destructor.
	 */
	virtual ~FloatingIpOrderRequest();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get Floating IP plan service type id from getNewFloatingIp.serviceTypes (must be buyable).
	 */
	int getServiceType();

	/*! \brief Set Floating IP plan service type id from getNewFloatingIp.serviceTypes (must be buyable).
	 */
	void setServiceType(int  serviceType);
	/*! \brief Get Coupon code.
	 */
	std::string getCoupon();

	/*! \brief Set Coupon code.
	 */
	void setCoupon(std::string  coupon);
	/*! \brief Get Free-form note saved on the service row (used on addFloatingIp).
	 */
	std::string getComment();

	/*! \brief Set Free-form note saved on the service row (used on addFloatingIp).
	 */
	void setComment(std::string  comment);

private:
	int serviceType;
	std::string coupon;
	std::string comment;
	void __init();
	void __cleanup();

};
}
}

#endif /* _FloatingIpOrderRequest_H_ */
