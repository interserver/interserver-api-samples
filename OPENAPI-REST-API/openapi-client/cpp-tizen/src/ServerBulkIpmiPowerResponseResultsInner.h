/*
 * ServerBulkIpmiPowerResponse_results_inner.h
 *
 * 
 */

#ifndef _ServerBulkIpmiPowerResponse_results_inner_H_
#define _ServerBulkIpmiPowerResponse_results_inner_H_


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

class ServerBulkIpmiPowerResponse_results_inner : public Object {
public:
	/*! \brief Constructor.
	 */
	ServerBulkIpmiPowerResponse_results_inner();
	ServerBulkIpmiPowerResponse_results_inner(char* str);

	/*! \brief Destructor.
	 */
	virtual ~ServerBulkIpmiPowerResponse_results_inner();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get Server ID this result corresponds to.
	 */
	int getId();

	/*! \brief Set Server ID this result corresponds to.
	 */
	void setId(int  id);
	/*! \brief Get Asset ID that was queried for the server (omitted on errors before asset selection).
	 */
	int getAsset();

	/*! \brief Set Asset ID that was queried for the server (omitted on errors before asset selection).
	 */
	void setAsset(int  asset);
	/*! \brief Get IPMI power-status output for this server.
	 */
	std::string getText();

	/*! \brief Set IPMI power-status output for this server.
	 */
	void setText(std::string  text);
	/*! \brief Get Error message for this server, if processing failed (mutually exclusive with `text`).
	 */
	std::string getError();

	/*! \brief Set Error message for this server, if processing failed (mutually exclusive with `text`).
	 */
	void setError(std::string  error);

private:
	int id;
	int asset;
	std::string text;
	std::string error;
	void __init();
	void __cleanup();

};
}
}

#endif /* _ServerBulkIpmiPowerResponse_results_inner_H_ */
