
/*
 * MailOrderRequest.h
 *
 * Request body to validate (putMail) or place (addMail) a mail order. Service type ids come from getNewMail.serviceTypes.
 */

#ifndef TINY_CPP_CLIENT_MailOrderRequest_H_
#define TINY_CPP_CLIENT_MailOrderRequest_H_


#include <string>
#include "bourne/json.hpp"
#include "Helpers.h"

namespace Tiny {


/*! \brief Request body to validate (putMail) or place (addMail) a mail order. Service type ids come from getNewMail.serviceTypes.
 *
 *  \ingroup Models
 *
 */

class MailOrderRequest{
public:

    /*! \brief Constructor.
	 */
    MailOrderRequest();
    MailOrderRequest(std::string jsonString);


    /*! \brief Destructor.
	 */
    virtual ~MailOrderRequest();


    /*! \brief Retrieve a bourne JSON representation of this class.
	 */
    bourne::json toJson();


    /*! \brief Fills in members of this class from bourne JSON object representing it.
	 */
    void fromJson(std::string jsonObj);

	/*! \brief Get Mail plan service type id from getNewMail.serviceTypes (must be buyable).
	 */
	int getServiceType();

	/*! \brief Set Mail plan service type id from getNewMail.serviceTypes (must be buyable).
	 */
	void setServiceType(int serviceType);
	/*! \brief Get Coupon code.
	 */
	std::string getCoupon();

	/*! \brief Set Coupon code.
	 */
	void setCoupon(std::string coupon);
	/*! \brief Get Free-form note saved on the service row (used on addMail).
	 */
	std::string getComment();

	/*! \brief Set Free-form note saved on the service row (used on addMail).
	 */
	void setComment(std::string comment);


    private:
    int serviceType{};
    std::string coupon{};
    std::string comment{};
};
}

#endif /* TINY_CPP_CLIENT_MailOrderRequest_H_ */
