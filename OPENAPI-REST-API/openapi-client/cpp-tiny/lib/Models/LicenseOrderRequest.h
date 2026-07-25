
/*
 * LicenseOrderRequest.h
 *
 * Request body to validate (putLicenses) or place (addLicense) a license order. Package ids come from getNewLicense.serviceTypes.
 */

#ifndef TINY_CPP_CLIENT_LicenseOrderRequest_H_
#define TINY_CPP_CLIENT_LicenseOrderRequest_H_


#include <string>
#include "bourne/json.hpp"
#include "Helpers.h"

namespace Tiny {


/*! \brief Request body to validate (putLicenses) or place (addLicense) a license order. Package ids come from getNewLicense.serviceTypes.
 *
 *  \ingroup Models
 *
 */

class LicenseOrderRequest{
public:

    /*! \brief Constructor.
	 */
    LicenseOrderRequest();
    LicenseOrderRequest(std::string jsonString);


    /*! \brief Destructor.
	 */
    virtual ~LicenseOrderRequest();


    /*! \brief Retrieve a bourne JSON representation of this class.
	 */
    bourne::json toJson();


    /*! \brief Fills in members of this class from bourne JSON object representing it.
	 */
    void fromJson(std::string jsonObj);

	/*! \brief Get License service type id from getNewLicense.serviceTypes (must be buyable).
	 */
	int getPackage();

	/*! \brief Set License service type id from getNewLicense.serviceTypes (must be buyable).
	 */
	void setPackage(int package);
	/*! \brief Get IP address the license is bound to.
	 */
	std::string getIp();

	/*! \brief Set IP address the license is bound to.
	 */
	void setIp(std::string ip);
	/*! \brief Get Terms-of-service acceptance. Must be true to place the order.
	 */
	bool isTos();

	/*! \brief Set Terms-of-service acceptance. Must be true to place the order.
	 */
	void setTos(bool tos);
	/*! \brief Get Billing frequency in months.
	 */
	int getFrequency();

	/*! \brief Set Billing frequency in months.
	 */
	void setFrequency(int frequency);
	/*! \brief Get Coupon code.
	 */
	std::string getCoupon();

	/*! \brief Set Coupon code.
	 */
	void setCoupon(std::string coupon);
	/*! \brief Get Free-form note saved on the service row.
	 */
	std::string getComment();

	/*! \brief Set Free-form note saved on the service row.
	 */
	void setComment(std::string comment);


    private:
    int package{};
    std::string ip{};
    bool tos{};
    int frequency{};
    std::string coupon{};
    std::string comment{};
};
}

#endif /* TINY_CPP_CLIENT_LicenseOrderRequest_H_ */
