/*
 * DeleteMailAlert_request.h
 *
 * 
 */

#ifndef _DeleteMailAlert_request_H_
#define _DeleteMailAlert_request_H_


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

class DeleteMailAlert_request : public Object {
public:
	/*! \brief Constructor.
	 */
	DeleteMailAlert_request();
	DeleteMailAlert_request(char* str);

	/*! \brief Destructor.
	 */
	virtual ~DeleteMailAlert_request();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get The ID of the alert to delete.
	 */
	int getAlertId();

	/*! \brief Set The ID of the alert to delete.
	 */
	void setAlertId(int  alert_id);

private:
	int alert_id;
	void __init();
	void __cleanup();

};
}
}

#endif /* _DeleteMailAlert_request_H_ */
