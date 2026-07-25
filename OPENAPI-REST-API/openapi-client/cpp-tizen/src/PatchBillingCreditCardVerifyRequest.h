/*
 * PatchBillingCreditCardVerify_request.h
 *
 * 
 */

#ifndef _PatchBillingCreditCardVerify_request_H_
#define _PatchBillingCreditCardVerify_request_H_


#include <string>
#include "Object.h"

/** \defgroup Models Data Structures for API
 *  Classes containing all the Data Structures needed for calling/returned by API endpoints
 *
 */

namespace Tizen {
namespace ArtikCloud {


/*! \brief 
 *
 *  \ingroup Models
 *
 */

class PatchBillingCreditCardVerify_request : public Object {
public:
	/*! \brief Constructor.
	 */
	PatchBillingCreditCardVerify_request();
	PatchBillingCreditCardVerify_request(char* str);

	/*! \brief Destructor.
	 */
	virtual ~PatchBillingCreditCardVerify_request();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get The CVV/CVC code on the back of the credit card.
	 */
	std::string getCcCcv2();

	/*! \brief Set The CVV/CVC code on the back of the credit card.
	 */
	void setCcCcv2(std::string  cc_ccv2);

private:
	std::string cc_ccv2;
	void __init();
	void __cleanup();

};
}
}

#endif /* _PatchBillingCreditCardVerify_request_H_ */
