/*
 * PutScrubIps_200_response.h
 *
 * 
 */

#ifndef _PutScrubIps_200_response_H_
#define _PutScrubIps_200_response_H_


#include <string>
#include <list>
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

class PutScrubIps_200_response : public Object {
public:
	/*! \brief Constructor.
	 */
	PutScrubIps_200_response();
	PutScrubIps_200_response(char* str);

	/*! \brief Destructor.
	 */
	virtual ~PutScrubIps_200_response();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	bool getRContinue();

	/*! \brief Set 
	 */
	void setRContinue(bool  r_continue);
	/*! \brief Get 
	 */
	std::list<std::string> getErrors();

	/*! \brief Set 
	 */
	void setErrors(std::list <std::string> errors);
	/*! \brief Get 
	 */
	int getServiceType();

	/*! \brief Set 
	 */
	void setServiceType(int  serviceType);
	/*! \brief Get 
	 */
	long long getServiceCost();

	/*! \brief Set 
	 */
	void setServiceCost(long long  serviceCost);
	/*! \brief Get 
	 */
	long long getOriginalCost();

	/*! \brief Set 
	 */
	void setOriginalCost(long long  originalCost);
	/*! \brief Get 
	 */
	long long getRepeatServiceCost();

	/*! \brief Set 
	 */
	void setRepeatServiceCost(long long  repeatServiceCost);

private:
	bool r_continue;
	std::list <std::string>errors;
	int serviceType;
	long long serviceCost;
	long long originalCost;
	long long repeatServiceCost;
	void __init();
	void __cleanup();

};
}
}

#endif /* _PutScrubIps_200_response_H_ */
