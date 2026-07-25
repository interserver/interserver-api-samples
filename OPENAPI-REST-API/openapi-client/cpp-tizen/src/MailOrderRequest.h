/*
 * MailOrderRequest.h
 *
 * Request body to validate (putMail) or place (addMail) a mail order. Service type ids come from getNewMail.serviceTypes.
 */

#ifndef _MailOrderRequest_H_
#define _MailOrderRequest_H_


#include <string>
#include "Object.h"

/** \defgroup Models Data Structures for API
 *  Classes containing all the Data Structures needed for calling/returned by API endpoints
 *
 */

namespace Tizen {
namespace ArtikCloud {


/*! \brief Request body to validate (putMail) or place (addMail) a mail order. Service type ids come from getNewMail.serviceTypes.
 *
 *  \ingroup Models
 *
 */

class MailOrderRequest : public Object {
public:
	/*! \brief Constructor.
	 */
	MailOrderRequest();
	MailOrderRequest(char* str);

	/*! \brief Destructor.
	 */
	virtual ~MailOrderRequest();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get Mail plan service type id from getNewMail.serviceTypes (must be buyable).
	 */
	int getServiceType();

	/*! \brief Set Mail plan service type id from getNewMail.serviceTypes (must be buyable).
	 */
	void setServiceType(int  serviceType);
	/*! \brief Get Coupon code.
	 */
	std::string getCoupon();

	/*! \brief Set Coupon code.
	 */
	void setCoupon(std::string  coupon);
	/*! \brief Get Free-form note saved on the service row (used on addMail).
	 */
	std::string getComment();

	/*! \brief Set Free-form note saved on the service row (used on addMail).
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

#endif /* _MailOrderRequest_H_ */
