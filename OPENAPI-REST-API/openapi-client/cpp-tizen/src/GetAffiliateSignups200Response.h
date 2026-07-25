/*
 * GetAffiliateSignups_200_response.h
 *
 * 
 */

#ifndef _GetAffiliateSignups_200_response_H_
#define _GetAffiliateSignups_200_response_H_


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

class GetAffiliateSignups_200_response : public Object {
public:
	/*! \brief Constructor.
	 */
	GetAffiliateSignups_200_response();
	GetAffiliateSignups_200_response(char* str);

	/*! \brief Destructor.
	 */
	virtual ~GetAffiliateSignups_200_response();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get Affiliate signup statistics and client-side data.
	 */
	std::string getData();

	/*! \brief Set Affiliate signup statistics and client-side data.
	 */
	void setData(std::string  data);

private:
	std::string data;
	void __init();
	void __cleanup();

};
}
}

#endif /* _GetAffiliateSignups_200_response_H_ */
