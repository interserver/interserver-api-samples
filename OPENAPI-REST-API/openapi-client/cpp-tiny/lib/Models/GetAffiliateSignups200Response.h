
/*
 * GetAffiliateSignups_200_response.h
 *
 * 
 */

#ifndef TINY_CPP_CLIENT_GetAffiliateSignups_200_response_H_
#define TINY_CPP_CLIENT_GetAffiliateSignups_200_response_H_


#include <string>
#include "bourne/json.hpp"
#include "Helpers.h"
#include "Object.h"

namespace Tiny {


/*! \brief 
 *
 *  \ingroup Models
 *
 */

class GetAffiliateSignups_200_response{
public:

    /*! \brief Constructor.
	 */
    GetAffiliateSignups_200_response();
    GetAffiliateSignups_200_response(std::string jsonString);


    /*! \brief Destructor.
	 */
    virtual ~GetAffiliateSignups_200_response();


    /*! \brief Retrieve a bourne JSON representation of this class.
	 */
    bourne::json toJson();


    /*! \brief Fills in members of this class from bourne JSON object representing it.
	 */
    void fromJson(std::string jsonObj);

	/*! \brief Get Affiliate signup statistics and client-side data.
	 */
	Object getData();

	/*! \brief Set Affiliate signup statistics and client-side data.
	 */
	void setData(Object data);


    private:
    Object data;
};
}

#endif /* TINY_CPP_CLIENT_GetAffiliateSignups_200_response_H_ */
