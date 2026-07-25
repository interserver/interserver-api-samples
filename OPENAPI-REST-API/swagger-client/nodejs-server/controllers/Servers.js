'use strict';

var utils = require('../utils/writer.js');
var Servers = require('../service/ServersService');

module.exports.addServer = function addServer (req, res, next, body) {
  Servers.addServer(body)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.buyItNowServerOrder = function buyItNowServerOrder (req, res, next) {
  Servers.buyItNowServerOrder()
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.getMPServers = function getMPServers (req, res, next) {
  Servers.getMPServers()
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.getNewServer = function getNewServer (req, res, next) {
  Servers.getNewServer()
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.getServerInfo = function getServerInfo (req, res, next, id) {
  Servers.getServerInfo(id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.getServerInvoices = function getServerInvoices (req, res, next, id) {
  Servers.getServerInvoices(id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.getServerList = function getServerList (req, res, next) {
  Servers.getServerList()
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.getServerReverseDns = function getServerReverseDns (req, res, next, id) {
  Servers.getServerReverseDns(id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.getServersWelcomeEmail = function getServersWelcomeEmail (req, res, next, id) {
  Servers.getServersWelcomeEmail(id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.placeBuyNowServer = function placeBuyNowServer (req, res, next, body) {
  Servers.placeBuyNowServer(body)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.postServerReverseDns = function postServerReverseDns (req, res, next, body, id) {
  Servers.postServerReverseDns(body, id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.postServerReverseDns = function postServerReverseDns (req, res, next, body, id) {
  Servers.postServerReverseDns(body, id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.serverBulkIpmiPowerGet = function serverBulkIpmiPowerGet (req, res, next, ids) {
  Servers.serverBulkIpmiPowerGet(ids)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.serverIpmiLiveGet = function serverIpmiLiveGet (req, res, next, id) {
  Servers.serverIpmiLiveGet(id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.serverIpmiLivePost = function serverIpmiLivePost (req, res, next, body, id) {
  Servers.serverIpmiLivePost(body, id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.serverIpmiLivePost = function serverIpmiLivePost (req, res, next, body, id) {
  Servers.serverIpmiLivePost(body, id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.serverIpmiPowerGet = function serverIpmiPowerGet (req, res, next, id) {
  Servers.serverIpmiPowerGet(id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.serverIpmiPowerPost = function serverIpmiPowerPost (req, res, next, body, id) {
  Servers.serverIpmiPowerPost(body, id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.serverIpmiPowerPost = function serverIpmiPowerPost (req, res, next, body, id) {
  Servers.serverIpmiPowerPost(body, id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.serversCancel = function serversCancel (req, res, next, id) {
  Servers.serversCancel(id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.updateServerInfo = function updateServerInfo (req, res, next, id) {
  Servers.updateServerInfo(id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};
