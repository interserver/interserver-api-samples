'use strict';

var utils = require('../utils/writer.js');
var FloatingIPs = require('../service/FloatingIPsService');

module.exports.addFloatingIp = function addFloatingIp (req, res, next, body) {
  FloatingIPs.addFloatingIp(body)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.floating_ipsCancel = function floating_ipsCancel (req, res, next, id) {
  FloatingIPs.floating_ipsCancel(id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.getFloatingIpInfo = function getFloatingIpInfo (req, res, next, id) {
  FloatingIPs.getFloatingIpInfo(id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.getFloatingIpInvoices = function getFloatingIpInvoices (req, res, next, id) {
  FloatingIPs.getFloatingIpInvoices(id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.getFloatingIpsList = function getFloatingIpsList (req, res, next) {
  FloatingIPs.getFloatingIpsList()
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.getFloatingIpsWelcomeEmail = function getFloatingIpsWelcomeEmail (req, res, next, id) {
  FloatingIPs.getFloatingIpsWelcomeEmail(id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.getNewFloatingIp = function getNewFloatingIp (req, res, next) {
  FloatingIPs.getNewFloatingIp()
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.postFloatingIpsChangeIp = function postFloatingIpsChangeIp (req, res, next, body, id) {
  FloatingIPs.postFloatingIpsChangeIp(body, id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.postFloatingIpsChangeIp = function postFloatingIpsChangeIp (req, res, next, body, id) {
  FloatingIPs.postFloatingIpsChangeIp(body, id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.putFloating_ips = function putFloating_ips (req, res, next, body) {
  FloatingIPs.putFloating_ips(body)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.updateFloatingIpInfo = function updateFloatingIpInfo (req, res, next, id) {
  FloatingIPs.updateFloatingIpInfo(id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};
