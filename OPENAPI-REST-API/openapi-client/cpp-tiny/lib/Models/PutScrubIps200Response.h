
/*
 * PutScrubIps_200_response.h
 *
 * 
 */

#ifndef TINY_CPP_CLIENT_PutScrubIps_200_response_H_
#define TINY_CPP_CLIENT_PutScrubIps_200_response_H_


#include <string>
#include "bourne/json.hpp"
#include "Helpers.h"
#include <list>

namespace Tiny {


/*! \brief 
 *
 *  \ingroup Models
 *
 */

class PutScrubIps_200_response{
public:

    /*! \brief Constructor.
	 */
    PutScrubIps_200_response();
    PutScrubIps_200_response(std::string jsonString);


    /*! \brief Destructor.
	 */
    virtual ~PutScrubIps_200_response();


    /*! \brief Retrieve a bourne JSON representation of this class.
	 */
    bourne::json toJson();


    /*! \brief Fills in members of this class from bourne JSON object representing it.
	 */
    void fromJson(std::string jsonObj);

	/*! \brief Get 
	 */
	bool isRContinue();

	/*! \brief Set 
	 */
	void setRContinue(bool r_continue);
	/*! \brief Get 
	 */
	std::list<std::string> getErrors();

	/*! \brief Set 
	 */
	void setErrors(std::list<std::string> errors);
	/*! \brief Get 
	 */
	int getServiceType();

	/*! \brief Set 
	 */
	void setServiceType(int serviceType);
	/*! \brief Get 
	 */
	long getServiceCost();

	/*! \brief Set 
	 */
	void setServiceCost(long serviceCost);
	/*! \brief Get 
	 */
	long getOriginalCost();

	/*! \brief Set 
	 */
	void setOriginalCost(long originalCost);
	/*! \brief Get 
	 */
	long getRepeatServiceCost();

	/*! \brief Set 
	 */
	void setRepeatServiceCost(long repeatServiceCost);


    private:
    bool r_continue{};
    std::list<std::string> errors;
    int serviceType{};
    long serviceCost{};
    long originalCost{};
    long repeatServiceCost{};
};
}

#endif /* TINY_CPP_CLIENT_PutScrubIps_200_response_H_ */
