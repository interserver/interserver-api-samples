
/*
 * QsOrderRequest.h
 *
 * Request body to validate (putQs) or place (addQs) a QuickServer order. Server and OS template come from getNewQs.
 */

#ifndef TINY_CPP_CLIENT_QsOrderRequest_H_
#define TINY_CPP_CLIENT_QsOrderRequest_H_


#include <string>
#include "bourne/json.hpp"
#include "Helpers.h"

namespace Tiny {


/*! \brief Request body to validate (putQs) or place (addQs) a QuickServer order. Server and OS template come from getNewQs.
 *
 *  \ingroup Models
 *
 */

class QsOrderRequest{
public:

    /*! \brief Constructor.
	 */
    QsOrderRequest();
    QsOrderRequest(std::string jsonString);


    /*! \brief Destructor.
	 */
    virtual ~QsOrderRequest();


    /*! \brief Retrieve a bourne JSON representation of this class.
	 */
    bourne::json toJson();


    /*! \brief Fills in members of this class from bourne JSON object representing it.
	 */
    void fromJson(std::string jsonObj);

	/*! \brief Get QuickServer plan/server id from getNewQs.
	 */
	int getServer();

	/*! \brief Set QuickServer plan/server id from getNewQs.
	 */
	void setServer(int server);
	/*! \brief Get Root password for the QuickServer.
	 */
	std::string getPassword();

	/*! \brief Set Root password for the QuickServer.
	 */
	void setPassword(std::string password);
	/*! \brief Get Terms-of-service acceptance. Must be true to place the order.
	 */
	bool isTos();

	/*! \brief Set Terms-of-service acceptance. Must be true to place the order.
	 */
	void setTos(bool tos);
	/*! \brief Get OS template file name from getNewQs (falls back to a default if unrecognized).
	 */
	std::string getOs();

	/*! \brief Set OS template file name from getNewQs (falls back to a default if unrecognized).
	 */
	void setOs(std::string os);
	/*! \brief Get Free-form note saved on the service row.
	 */
	std::string getComment();

	/*! \brief Set Free-form note saved on the service row.
	 */
	void setComment(std::string comment);


    private:
    int server{};
    std::string password{};
    bool tos{};
    std::string os{};
    std::string comment{};
};
}

#endif /* TINY_CPP_CLIENT_QsOrderRequest_H_ */
