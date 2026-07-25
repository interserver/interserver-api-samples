/*
 * LicenseOrderRequest.h
 *
 * Request body to validate (putLicenses) or place (addLicense) a license order. Package ids come from getNewLicense.serviceTypes.
 */

#ifndef _LicenseOrderRequest_H_
#define _LicenseOrderRequest_H_


#include <string>
#include "Object.h"

/** \defgroup Models Data Structures for API
 *  Classes containing all the Data Structures needed for calling/returned by API endpoints
 *
 */

namespace Tizen {
namespace ArtikCloud {


/*! \brief Request body to validate (putLicenses) or place (addLicense) a license order. Package ids come from getNewLicense.serviceTypes.
 *
 *  \ingroup Models
 *
 */

class LicenseOrderRequest : public Object {
public:
	/*! \brief Constructor.
	 */
	LicenseOrderRequest();
	LicenseOrderRequest(char* str);

	/*! \brief Destructor.
	 */
	virtual ~LicenseOrderRequest();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get License service type id from getNewLicense.serviceTypes (must be buyable).
	 */
	int getPackage();

	/*! \brief Set License service type id from getNewLicense.serviceTypes (must be buyable).
	 */
	void setPackage(int  package);
	/*! \brief Get IP address the license is bound to.
	 */
	std::string getIp();

	/*! \brief Set IP address the license is bound to.
	 */
	void setIp(std::string  ip);
	/*! \brief Get Terms-of-service acceptance. Must be true to place the order.
	 */
	bool getTos();

	/*! \brief Set Terms-of-service acceptance. Must be true to place the order.
	 */
	void setTos(bool  tos);
	/*! \brief Get Billing frequency in months.
	 */
	int getFrequency();

	/*! \brief Set Billing frequency in months.
	 */
	void setFrequency(int  frequency);
	/*! \brief Get Coupon code.
	 */
	std::string getCoupon();

	/*! \brief Set Coupon code.
	 */
	void setCoupon(std::string  coupon);
	/*! \brief Get Free-form note saved on the service row.
	 */
	std::string getComment();

	/*! \brief Set Free-form note saved on the service row.
	 */
	void setComment(std::string  comment);

private:
	int package;
	std::string ip;
	bool tos;
	int frequency;
	std::string coupon;
	std::string comment;
	void __init();
	void __cleanup();

};
}
}

#endif /* _LicenseOrderRequest_H_ */
