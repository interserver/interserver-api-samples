
/*
 * GetAccountLocales_200_response_value.h
 *
 * 
 */

#ifndef TINY_CPP_CLIENT_GetAccountLocales_200_response_value_H_
#define TINY_CPP_CLIENT_GetAccountLocales_200_response_value_H_


#include <string>
#include "bourne/json.hpp"
#include "Helpers.h"

namespace Tiny {


/*! \brief 
 *
 *  \ingroup Models
 *
 */

class GetAccountLocales_200_response_value{
public:

    /*! \brief Constructor.
	 */
    GetAccountLocales_200_response_value();
    GetAccountLocales_200_response_value(std::string jsonString);


    /*! \brief Destructor.
	 */
    virtual ~GetAccountLocales_200_response_value();


    /*! \brief Retrieve a bourne JSON representation of this class.
	 */
    bourne::json toJson();


    /*! \brief Fills in members of this class from bourne JSON object representing it.
	 */
    void fromJson(std::string jsonObj);

	/*! \brief Get English display name of the locale.
	 */
	std::string getName();

	/*! \brief Set English display name of the locale.
	 */
	void setName(std::string name);
	/*! \brief Get Display name of the locale in its own language.
	 */
	std::string getLocalName();

	/*! \brief Set Display name of the locale in its own language.
	 */
	void setLocalName(std::string local_name);


    private:
    std::string name{};
    std::string local_name{};
};
}

#endif /* TINY_CPP_CLIENT_GetAccountLocales_200_response_value_H_ */
