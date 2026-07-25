
/*
 * ServerBulkIpmiPowerResponse.h
 *
 * Per-server IPMI power-status results for a bulk lookup.
 */

#ifndef TINY_CPP_CLIENT_ServerBulkIpmiPowerResponse_H_
#define TINY_CPP_CLIENT_ServerBulkIpmiPowerResponse_H_


#include <string>
#include "bourne/json.hpp"
#include "Helpers.h"
#include "ServerBulkIpmiPowerResponse_results_inner.h"
#include <list>

namespace Tiny {


/*! \brief Per-server IPMI power-status results for a bulk lookup.
 *
 *  \ingroup Models
 *
 */

class ServerBulkIpmiPowerResponse{
public:

    /*! \brief Constructor.
	 */
    ServerBulkIpmiPowerResponse();
    ServerBulkIpmiPowerResponse(std::string jsonString);


    /*! \brief Destructor.
	 */
    virtual ~ServerBulkIpmiPowerResponse();


    /*! \brief Retrieve a bourne JSON representation of this class.
	 */
    bourne::json toJson();


    /*! \brief Fills in members of this class from bourne JSON object representing it.
	 */
    void fromJson(std::string jsonObj);

	/*! \brief Get 
	 */
	std::list<ServerBulkIpmiPowerResponse_results_inner> getResults();

	/*! \brief Set 
	 */
	void setResults(std::list<ServerBulkIpmiPowerResponse_results_inner> results);


    private:
    std::list<ServerBulkIpmiPowerResponse_results_inner> results;
};
}

#endif /* TINY_CPP_CLIENT_ServerBulkIpmiPowerResponse_H_ */
