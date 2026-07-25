/*
 * GetAccountLocales_200_response_value.h
 *
 * 
 */

#ifndef _GetAccountLocales_200_response_value_H_
#define _GetAccountLocales_200_response_value_H_


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

class GetAccountLocales_200_response_value : public Object {
public:
	/*! \brief Constructor.
	 */
	GetAccountLocales_200_response_value();
	GetAccountLocales_200_response_value(char* str);

	/*! \brief Destructor.
	 */
	virtual ~GetAccountLocales_200_response_value();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get English display name of the locale.
	 */
	std::string getName();

	/*! \brief Set English display name of the locale.
	 */
	void setName(std::string  name);
	/*! \brief Get Display name of the locale in its own language.
	 */
	std::string getLocalName();

	/*! \brief Set Display name of the locale in its own language.
	 */
	void setLocalName(std::string  local_name);

private:
	std::string name;
	std::string local_name;
	void __init();
	void __cleanup();

};
}
}

#endif /* _GetAccountLocales_200_response_value_H_ */
