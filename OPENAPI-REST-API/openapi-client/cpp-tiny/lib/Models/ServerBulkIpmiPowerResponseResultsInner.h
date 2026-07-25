
/*
 * ServerBulkIpmiPowerResponse_results_inner.h
 *
 * 
 */

#ifndef TINY_CPP_CLIENT_ServerBulkIpmiPowerResponse_results_inner_H_
#define TINY_CPP_CLIENT_ServerBulkIpmiPowerResponse_results_inner_H_


#include <string>
#include "bourne/json.hpp"
#include "Helpers.h"

namespace Tiny {


/*! \brief 
 *
 *  \ingroup Models
 *
 */

class ServerBulkIpmiPowerResponse_results_inner{
public:

    /*! \brief Constructor.
	 */
    ServerBulkIpmiPowerResponse_results_inner();
    ServerBulkIpmiPowerResponse_results_inner(std::string jsonString);


    /*! \brief Destructor.
	 */
    virtual ~ServerBulkIpmiPowerResponse_results_inner();


    /*! \brief Retrieve a bourne JSON representation of this class.
	 */
    bourne::json toJson();


    /*! \brief Fills in members of this class from bourne JSON object representing it.
	 */
    void fromJson(std::string jsonObj);

	/*! \brief Get Server ID this result corresponds to.
	 */
	int getId();

	/*! \brief Set Server ID this result corresponds to.
	 */
	void setId(int id);
	/*! \brief Get Asset ID that was queried for the server (omitted on errors before asset selection).
	 */
	int getAsset();

	/*! \brief Set Asset ID that was queried for the server (omitted on errors before asset selection).
	 */
	void setAsset(int asset);
	/*! \brief Get IPMI power-status output for this server.
	 */
	std::string getText();

	/*! \brief Set IPMI power-status output for this server.
	 */
	void setText(std::string text);
	/*! \brief Get Error message for this server, if processing failed (mutually exclusive with `text`).
	 */
	std::string getError();

	/*! \brief Set Error message for this server, if processing failed (mutually exclusive with `text`).
	 */
	void setError(std::string error);


    private:
    int id{};
    int asset{};
    std::string text{};
    std::string error{};
};
}

#endif /* TINY_CPP_CLIENT_ServerBulkIpmiPowerResponse_results_inner_H_ */
