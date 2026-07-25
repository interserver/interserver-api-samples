/*
 * QsOrderRequest.h
 *
 * Request body to validate (putQs) or place (addQs) a QuickServer order. Server and OS template come from getNewQs.
 */

#ifndef _QsOrderRequest_H_
#define _QsOrderRequest_H_


#include <string>
#include "Object.h"

/** \defgroup Models Data Structures for API
 *  Classes containing all the Data Structures needed for calling/returned by API endpoints
 *
 */

namespace Tizen {
namespace ArtikCloud {


/*! \brief Request body to validate (putQs) or place (addQs) a QuickServer order. Server and OS template come from getNewQs.
 *
 *  \ingroup Models
 *
 */

class QsOrderRequest : public Object {
public:
	/*! \brief Constructor.
	 */
	QsOrderRequest();
	QsOrderRequest(char* str);

	/*! \brief Destructor.
	 */
	virtual ~QsOrderRequest();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get QuickServer plan/server id from getNewQs.
	 */
	int getServer();

	/*! \brief Set QuickServer plan/server id from getNewQs.
	 */
	void setServer(int  server);
	/*! \brief Get Root password for the QuickServer.
	 */
	std::string getPassword();

	/*! \brief Set Root password for the QuickServer.
	 */
	void setPassword(std::string  password);
	/*! \brief Get Terms-of-service acceptance. Must be true to place the order.
	 */
	bool getTos();

	/*! \brief Set Terms-of-service acceptance. Must be true to place the order.
	 */
	void setTos(bool  tos);
	/*! \brief Get OS template file name from getNewQs (falls back to a default if unrecognized).
	 */
	std::string getOs();

	/*! \brief Set OS template file name from getNewQs (falls back to a default if unrecognized).
	 */
	void setOs(std::string  os);
	/*! \brief Get Free-form note saved on the service row.
	 */
	std::string getComment();

	/*! \brief Set Free-form note saved on the service row.
	 */
	void setComment(std::string  comment);

private:
	int server;
	std::string password;
	bool tos;
	std::string os;
	std::string comment;
	void __init();
	void __cleanup();

};
}
}

#endif /* _QsOrderRequest_H_ */
