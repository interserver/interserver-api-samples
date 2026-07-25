
/*
 * PatchBillingCreditCardVerify_request.h
 *
 * 
 */

#ifndef TINY_CPP_CLIENT_PatchBillingCreditCardVerify_request_H_
#define TINY_CPP_CLIENT_PatchBillingCreditCardVerify_request_H_


#include <string>
#include "bourne/json.hpp"
#include "Helpers.h"

namespace Tiny {


/*! \brief 
 *
 *  \ingroup Models
 *
 */

class PatchBillingCreditCardVerify_request{
public:

    /*! \brief Constructor.
	 */
    PatchBillingCreditCardVerify_request();
    PatchBillingCreditCardVerify_request(std::string jsonString);


    /*! \brief Destructor.
	 */
    virtual ~PatchBillingCreditCardVerify_request();


    /*! \brief Retrieve a bourne JSON representation of this class.
	 */
    bourne::json toJson();


    /*! \brief Fills in members of this class from bourne JSON object representing it.
	 */
    void fromJson(std::string jsonObj);

	/*! \brief Get The CVV/CVC code on the back of the credit card.
	 */
	std::string getCcCcv2();

	/*! \brief Set The CVV/CVC code on the back of the credit card.
	 */
	void setCcCcv2(std::string cc_ccv2);


    private:
    std::string cc_ccv2{};
};
}

#endif /* TINY_CPP_CLIENT_PatchBillingCreditCardVerify_request_H_ */
