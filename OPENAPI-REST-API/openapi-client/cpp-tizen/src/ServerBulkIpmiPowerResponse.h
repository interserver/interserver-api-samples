/*
 * ServerBulkIpmiPowerResponse.h
 *
 * Per-server IPMI power-status results for a bulk lookup.
 */

#ifndef _ServerBulkIpmiPowerResponse_H_
#define _ServerBulkIpmiPowerResponse_H_


#include <string>
#include "ServerBulkIpmiPowerResponse_results_inner.h"
#include <list>
#include "Object.h"

/** \defgroup Models Data Structures for API
 *  Classes containing all the Data Structures needed for calling/returned by API endpoints
 *
 */

namespace Tizen {
namespace ArtikCloud {


/*! \brief Per-server IPMI power-status results for a bulk lookup.
 *
 *  \ingroup Models
 *
 */

class ServerBulkIpmiPowerResponse : public Object {
public:
	/*! \brief Constructor.
	 */
	ServerBulkIpmiPowerResponse();
	ServerBulkIpmiPowerResponse(char* str);

	/*! \brief Destructor.
	 */
	virtual ~ServerBulkIpmiPowerResponse();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	std::list<ServerBulkIpmiPowerResponse_results_inner> getResults();

	/*! \brief Set 
	 */
	void setResults(std::list <ServerBulkIpmiPowerResponse_results_inner> results);

private:
	std::list <ServerBulkIpmiPowerResponse_results_inner>results;
	void __init();
	void __cleanup();

};
}
}

#endif /* _ServerBulkIpmiPowerResponse_H_ */
