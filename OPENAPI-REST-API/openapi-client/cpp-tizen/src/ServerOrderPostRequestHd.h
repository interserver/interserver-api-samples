/*
 * ServerOrderPostRequest_hd.h
 *
 * Hard-drive configuration id(s) from config_li.hd_li[cpu]. Accepts a single id or an array of ids.
 */

#ifndef _ServerOrderPostRequest_hd_H_
#define _ServerOrderPostRequest_hd_H_


#include <string>
#include "Object.h"

/** \defgroup Models Data Structures for API
 *  Classes containing all the Data Structures needed for calling/returned by API endpoints
 *
 */

namespace Tizen {
namespace ArtikCloud {


/*! \brief Hard-drive configuration id(s) from config_li.hd_li[cpu]. Accepts a single id or an array of ids.
 *
 *  \ingroup Models
 *
 */

class ServerOrderPostRequest_hd : public Object {
public:
	/*! \brief Constructor.
	 */
	ServerOrderPostRequest_hd();
	ServerOrderPostRequest_hd(char* str);

	/*! \brief Destructor.
	 */
	virtual ~ServerOrderPostRequest_hd();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);


private:
	void __init();
	void __cleanup();

};
}
}

#endif /* _ServerOrderPostRequest_hd_H_ */
