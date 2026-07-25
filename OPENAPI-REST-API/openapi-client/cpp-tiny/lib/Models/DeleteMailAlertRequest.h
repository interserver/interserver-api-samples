
/*
 * DeleteMailAlert_request.h
 *
 * 
 */

#ifndef TINY_CPP_CLIENT_DeleteMailAlert_request_H_
#define TINY_CPP_CLIENT_DeleteMailAlert_request_H_


#include <string>
#include "bourne/json.hpp"
#include "Helpers.h"

namespace Tiny {


/*! \brief 
 *
 *  \ingroup Models
 *
 */

class DeleteMailAlert_request{
public:

    /*! \brief Constructor.
	 */
    DeleteMailAlert_request();
    DeleteMailAlert_request(std::string jsonString);


    /*! \brief Destructor.
	 */
    virtual ~DeleteMailAlert_request();


    /*! \brief Retrieve a bourne JSON representation of this class.
	 */
    bourne::json toJson();


    /*! \brief Fills in members of this class from bourne JSON object representing it.
	 */
    void fromJson(std::string jsonObj);

	/*! \brief Get The ID of the alert to delete.
	 */
	int getAlertId();

	/*! \brief Set The ID of the alert to delete.
	 */
	void setAlertId(int alert_id);


    private:
    int alert_id{};
};
}

#endif /* TINY_CPP_CLIENT_DeleteMailAlert_request_H_ */
