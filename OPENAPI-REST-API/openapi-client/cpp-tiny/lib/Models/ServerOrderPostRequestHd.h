
/*
 * ServerOrderPostRequest_hd.h
 *
 * Hard-drive configuration id(s) from config_li.hd_li[cpu]. Accepts a single id or an array of ids.
 */

#ifndef TINY_CPP_CLIENT_ServerOrderPostRequest_hd_H_
#define TINY_CPP_CLIENT_ServerOrderPostRequest_hd_H_


#include <string>
#include "bourne/json.hpp"
#include "Helpers.h"

namespace Tiny {


/*! \brief Hard-drive configuration id(s) from config_li.hd_li[cpu]. Accepts a single id or an array of ids.
 *
 *  \ingroup Models
 *
 */

class ServerOrderPostRequest_hd{
public:

    /*! \brief Constructor.
	 */
    ServerOrderPostRequest_hd();
    ServerOrderPostRequest_hd(std::string jsonString);


    /*! \brief Destructor.
	 */
    virtual ~ServerOrderPostRequest_hd();


    /*! \brief Retrieve a bourne JSON representation of this class.
	 */
    bourne::json toJson();


    /*! \brief Fills in members of this class from bourne JSON object representing it.
	 */
    void fromJson(std::string jsonObj);



    private:
};
}

#endif /* TINY_CPP_CLIENT_ServerOrderPostRequest_hd_H_ */
