
/*
 * FloatingIpOrderRequest.h
 *
 * Request body to validate (putFloating_ips) or place (addFloatingIp) a floating IP order. Service type ids come from getNewFloatingIp.serviceTypes.
 */

#ifndef TINY_CPP_CLIENT_FloatingIpOrderRequest_H_
#define TINY_CPP_CLIENT_FloatingIpOrderRequest_H_


#include <string>
#include "bourne/json.hpp"
#include "Helpers.h"

namespace Tiny {


/*! \brief Request body to validate (putFloating_ips) or place (addFloatingIp) a floating IP order. Service type ids come from getNewFloatingIp.serviceTypes.
 *
 *  \ingroup Models
 *
 */

class FloatingIpOrderRequest{
public:

    /*! \brief Constructor.
	 */
    FloatingIpOrderRequest();
    FloatingIpOrderRequest(std::string jsonString);


    /*! \brief Destructor.
	 */
    virtual ~FloatingIpOrderRequest();


    /*! \brief Retrieve a bourne JSON representation of this class.
	 */
    bourne::json toJson();


    /*! \brief Fills in members of this class from bourne JSON object representing it.
	 */
    void fromJson(std::string jsonObj);

	/*! \brief Get Floating IP plan service type id from getNewFloatingIp.serviceTypes (must be buyable).
	 */
	int getServiceType();

	/*! \brief Set Floating IP plan service type id from getNewFloatingIp.serviceTypes (must be buyable).
	 */
	void setServiceType(int serviceType);
	/*! \brief Get Coupon code.
	 */
	std::string getCoupon();

	/*! \brief Set Coupon code.
	 */
	void setCoupon(std::string coupon);
	/*! \brief Get Free-form note saved on the service row (used on addFloatingIp).
	 */
	std::string getComment();

	/*! \brief Set Free-form note saved on the service row (used on addFloatingIp).
	 */
	void setComment(std::string comment);


    private:
    int serviceType{};
    std::string coupon{};
    std::string comment{};
};
}

#endif /* TINY_CPP_CLIENT_FloatingIpOrderRequest_H_ */
