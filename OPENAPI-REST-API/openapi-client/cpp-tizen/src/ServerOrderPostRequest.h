/*
 * ServerOrderPostRequest.h
 *
 * Request body to place a custom dedicated server order. All ids come from getNewServer&#39;s config_li / regions.
 */

#ifndef _ServerOrderPostRequest_H_
#define _ServerOrderPostRequest_H_


#include <string>
#include "ServerOrderPostRequest_hd.h"
#include "Object.h"

/** \defgroup Models Data Structures for API
 *  Classes containing all the Data Structures needed for calling/returned by API endpoints
 *
 */

namespace Tizen {
namespace ArtikCloud {


/*! \brief Request body to place a custom dedicated server order. All ids come from getNewServer's config_li / regions.
 *
 *  \ingroup Models
 *
 */

class ServerOrderPostRequest : public Object {
public:
	/*! \brief Constructor.
	 */
	ServerOrderPostRequest();
	ServerOrderPostRequest(char* str);

	/*! \brief Destructor.
	 */
	virtual ~ServerOrderPostRequest();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get CPU configuration id from config_li.cpu_li. Constrains valid hd/memory options.
	 */
	int getCpu();

	/*! \brief Set CPU configuration id from config_li.cpu_li. Constrains valid hd/memory options.
	 */
	void setCpu(int  cpu);
	/*! \brief Get 
	 */
	ServerOrderPostRequest_hd getHd();

	/*! \brief Set 
	 */
	void setHd(ServerOrderPostRequest_hd  hd);
	/*! \brief Get Memory configuration id from config_li.memory_li[cpu].
	 */
	int getMemory();

	/*! \brief Set Memory configuration id from config_li.memory_li[cpu].
	 */
	void setMemory(int  memory);
	/*! \brief Get Bandwidth configuration id from config_li.bandwidth_li.
	 */
	int getBandwidth();

	/*! \brief Set Bandwidth configuration id from config_li.bandwidth_li.
	 */
	void setBandwidth(int  bandwidth);
	/*! \brief Get IP block configuration id from config_li.ips_li.
	 */
	int getIps();

	/*! \brief Set IP block configuration id from config_li.ips_li.
	 */
	void setIps(int  ips);
	/*! \brief Get Operating System configuration id from config_li.os_li.
	 */
	int getOs();

	/*! \brief Set Operating System configuration id from config_li.os_li.
	 */
	void setOs(int  os);
	/*! \brief Get Control Panel configuration id from config_li.cp_li.
	 */
	int getCp();

	/*! \brief Set Control Panel configuration id from config_li.cp_li.
	 */
	void setCp(int  cp);
	/*! \brief Get RAID configuration id from config_li.raid_li.
	 */
	int getRaid();

	/*! \brief Set RAID configuration id from config_li.raid_li.
	 */
	void setRaid(int  raid);
	/*! \brief Get Region id from the regions list.
	 */
	int getRegion();

	/*! \brief Set Region id from the regions list.
	 */
	void setRegion(int  region);
	/*! \brief Get Server hostname. Must pass valid_hostname().
	 */
	std::string getServername();

	/*! \brief Set Server hostname. Must pass valid_hostname().
	 */
	void setServername(std::string  servername);
	/*! \brief Get Root password for the server.
	 */
	std::string getRootpass();

	/*! \brief Set Root password for the server.
	 */
	void setRootpass(std::string  rootpass);
	/*! \brief Get Terms-of-service acceptance. Must be true to place the order.
	 */
	bool getTos();

	/*! \brief Set Terms-of-service acceptance. Must be true to place the order.
	 */
	void setTos(bool  tos);
	/*! \brief Get Optional free-form order comment.
	 */
	std::string getComment();

	/*! \brief Set Optional free-form order comment.
	 */
	void setComment(std::string  comment);

private:
	int cpu;
	ServerOrderPostRequest_hd hd;
	int memory;
	int bandwidth;
	int ips;
	int os;
	int cp;
	int raid;
	int region;
	std::string servername;
	std::string rootpass;
	bool tos;
	std::string comment;
	void __init();
	void __cleanup();

};
}
}

#endif /* _ServerOrderPostRequest_H_ */
