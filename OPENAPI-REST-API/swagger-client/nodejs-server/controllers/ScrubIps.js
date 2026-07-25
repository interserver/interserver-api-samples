'use strict';

var utils = require('../utils/writer.js');
var ScrubIps = require('../service/ScrubIpsService');

module.exports.cancelScrubIp = function cancelScrubIp (req, res, next, id) {
  ScrubIps.cancelScrubIp(id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.createFilter = function createFilter (req, res, next, body, id) {
  ScrubIps.createFilter(body, id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.createGeoRule = function createGeoRule (req, res, next, body, id) {
  ScrubIps.createGeoRule(body, id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.createRule = function createRule (req, res, next, body, id) {
  ScrubIps.createRule(body, id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.deleteFilter = function deleteFilter (req, res, next, body, id) {
  ScrubIps.deleteFilter(body, id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.disableScrub = function disableScrub (req, res, next, id) {
  ScrubIps.disableScrub(id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.enableScrub = function enableScrub (req, res, next, id) {
  ScrubIps.enableScrub(id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.getOrderDetail = function getOrderDetail (req, res, next) {
  ScrubIps.getOrderDetail()
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.getScrubIpDetails = function getScrubIpDetails (req, res, next, id) {
  ScrubIps.getScrubIpDetails(id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.getScrubIpFilterTypes = function getScrubIpFilterTypes (req, res, next) {
  ScrubIps.getScrubIpFilterTypes()
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.getScrubIpInvoices = function getScrubIpInvoices (req, res, next, id) {
  ScrubIps.getScrubIpInvoices(id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.getScrubIpLogs = function getScrubIpLogs (req, res, next, id) {
  ScrubIps.getScrubIpLogs(id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.getScrubIpsList = function getScrubIpsList (req, res, next) {
  ScrubIps.getScrubIpsList()
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.placeScrubOrder = function placeScrubOrder (req, res, next, body) {
  ScrubIps.placeScrubOrder(body)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.putScrubIps = function putScrubIps (req, res, next, body) {
  ScrubIps.putScrubIps(body)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.scrubIpsDeleteGeoRule = function scrubIpsDeleteGeoRule (req, res, next, body, id) {
  ScrubIps.scrubIpsDeleteGeoRule(body, id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.scrubIpsDeleteRule = function scrubIpsDeleteRule (req, res, next, body, id) {
  ScrubIps.scrubIpsDeleteRule(body, id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};
