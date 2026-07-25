
/*
 * ServerOrderPostRequest.h
 *
 * Request body to place a custom dedicated server order. All ids come from getNewServer&#39;s config_li / regions.
 */

#ifndef TINY_CPP_CLIENT_ServerOrderPostRequest_H_
#define TINY_CPP_CLIENT_ServerOrderPostRequest_H_


#include <string>
#include "bourne/json.hpp"
#include "Helpers.h"
#include "ServerOrderPostRequest_hd.h"

namespace Tiny {


/*! \brief Request body to place a custom dedicated server order. All ids come from getNewServer's config_li / regions.
 *
 *  \ingroup Models
 *
 */

class ServerOrderPostRequest{
public:

    /*! \brief Constructor.
	 */
    ServerOrderPostRequest();
    ServerOrderPostRequest(std::string jsonString);


    /*! \brief Destructor.
	 */
    virtual ~ServerOrderPostRequest();


    /*! \brief Retrieve a bourne JSON representation of this class.
	 */
    bourne::json toJson();


    /*! \brief Fills in members of this class from bourne JSON object representing it.
	 */
    void fromJson(std::string jsonObj);

	/*! \brief Get CPU configuration id from config_li.cpu_li. Constrains valid hd/memory options.
	 */
	int getCpu();

	/*! \brief Set CPU configuration id from config_li.cpu_li. Constrains valid hd/memory options.
	 */
	void setCpu(int cpu);
	/*! \brief Get 
	 */
	ServerOrderPostRequest_hd getHd();

	/*! \brief Set 
	 */
	void setHd(ServerOrderPostRequest_hd hd);
	/*! \brief Get Memory configuration id from config_li.memory_li[cpu].
	 */
	int getMemory();

	/*! \brief Set Memory configuration id from config_li.memory_li[cpu].
	 */
	void setMemory(int memory);
	/*! \brief Get Bandwidth configuration id from config_li.bandwidth_li.
	 */
	int getBandwidth();

	/*! \brief Set Bandwidth configuration id from config_li.bandwidth_li.
	 */
	void setBandwidth(int bandwidth);
	/*! \brief Get IP block configuration id from config_li.ips_li.
	 */
	int getIps();

	/*! \brief Set IP block configuration id from config_li.ips_li.
	 */
	void setIps(int ips);
	/*! \brief Get Operating System configuration id from config_li.os_li.
	 */
	int getOs();

	/*! \brief Set Operating System configuration id from config_li.os_li.
	 */
	void setOs(int os);
	/*! \brief Get Control Panel configuration id from config_li.cp_li.
	 */
	int getCp();

	/*! \brief Set Control Panel configuration id from config_li.cp_li.
	 */
	void setCp(int cp);
	/*! \brief Get RAID configuration id from config_li.raid_li.
	 */
	int getRaid();

	/*! \brief Set RAID configuration id from config_li.raid_li.
	 */
	void setRaid(int raid);
	/*! \brief Get Region id from the regions list.
	 */
	int getRegion();

	/*! \brief Set Region id from the regions list.
	 */
	void setRegion(int region);
	/*! \brief Get Server hostname. Must pass valid_hostname().
	 */
	std::string getServername();

	/*! \brief Set Server hostname. Must pass valid_hostname().
	 */
	void setServername(std::string servername);
	/*! \brief Get Root password for the server.
	 */
	std::string getRootpass();

	/*! \brief Set Root password for the server.
	 */
	void setRootpass(std::string rootpass);
	/*! \brief Get Terms-of-service acceptance. Must be true to place the order.
	 */
	bool isTos();

	/*! \brief Set Terms-of-service acceptance. Must be true to place the order.
	 */
	void setTos(bool tos);
	/*! \brief Get Optional free-form order comment.
	 */
	std::string getComment();

	/*! \brief Set Optional free-form order comment.
	 */
	void setComment(std::string comment);


    private:
    int cpu{};
    ServerOrderPostRequest_hd hd;
    int memory{};
    int bandwidth{};
    int ips{};
    int os{};
    int cp{};
    int raid{};
    int region{};
    std::string servername{};
    std::string rootpass{};
    bool tos{};
    std::string comment{};
};
}

#endif /* TINY_CPP_CLIENT_ServerOrderPostRequest_H_ */
