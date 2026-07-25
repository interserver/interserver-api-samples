
/*
 * WebsiteOrderPutRequest.h
 *
 * request to validate a webhosting order
 */

#ifndef TINY_CPP_CLIENT_WebsiteOrderPutRequest_H_
#define TINY_CPP_CLIENT_WebsiteOrderPutRequest_H_


#include <string>
#include "bourne/json.hpp"
#include "Helpers.h"

namespace Tiny {


/*! \brief request to validate a webhosting order
 *
 *  \ingroup Models
 *
 */

class WebsiteOrderPutRequest{
public:

    /*! \brief Constructor.
	 */
    WebsiteOrderPutRequest();
    WebsiteOrderPutRequest(std::string jsonString);


    /*! \brief Destructor.
	 */
    virtual ~WebsiteOrderPutRequest();


    /*! \brief Retrieve a bourne JSON representation of this class.
	 */
    bourne::json toJson();


    /*! \brief Fills in members of this class from bourne JSON object representing it.
	 */
    void fromJson(std::string jsonObj);

	/*! \brief Get Primary FQDN for the website. Must pass valid_hostname() and the keyword blocklist.
	 */
	std::string getHostname();

	/*! \brief Set Primary FQDN for the website. Must pass valid_hostname() and the keyword blocklist.
	 */
	void setHostname(std::string hostname);
	/*! \brief Get Plan id from getNewWebsite.serviceTypes[].services_id (must be buyable).
	 */
	int getPackageId();

	/*! \brief Set Plan id from getNewWebsite.serviceTypes[].services_id (must be buyable).
	 */
	void setPackageId(int packageId);
	/*! \brief Get Control-panel admin password. If blank, a random password is generated server-side.
	 */
	std::string getRootpass();

	/*! \brief Set Control-panel admin password. If blank, a random password is generated server-side.
	 */
	void setRootpass(std::string rootpass);
	/*! \brief Get Billing cycle in months (1 / 6 / 12 / 24 / 36).
	 */
	int getPeriod();

	/*! \brief Set Billing cycle in months (1 / 6 / 12 / 24 / 36).
	 */
	void setPeriod(int period);
	/*! \brief Get Coupon code.
	 */
	std::string getCoupon();

	/*! \brief Set Coupon code.
	 */
	void setCoupon(std::string coupon);
	/*! \brief Get Promo bundle id from getNewWebsite.serviceOffers.
	 */
	int getServiceOfferId();

	/*! \brief Set Promo bundle id from getNewWebsite.serviceOffers.
	 */
	void setServiceOfferId(int serviceOfferId);
	/*! \brief Get Auto-installer id (0 = none).
	 */
	int getScript();

	/*! \brief Set Auto-installer id (0 = none).
	 */
	void setScript(int script);
	/*! \brief Get Free-form note saved on the service row.
	 */
	std::string getComment();

	/*! \brief Set Free-form note saved on the service row.
	 */
	void setComment(std::string comment);
	/*! \brief Get When true and enableDomainRegistering=true from the catalog, also registers/transfers the domain through the order.
	 */
	bool isRegisterDomain();

	/*! \brief Set When true and enableDomainRegistering=true from the catalog, also registers/transfers the domain through the order.
	 */
	void setRegisterDomain(bool registerDomain);


    private:
    std::string hostname{};
    int packageId{};
    std::string rootpass{};
    int period{};
    std::string coupon{};
    int serviceOfferId{};
    int script{};
    std::string comment{};
    bool registerDomain{};
};
}

#endif /* TINY_CPP_CLIENT_WebsiteOrderPutRequest_H_ */
