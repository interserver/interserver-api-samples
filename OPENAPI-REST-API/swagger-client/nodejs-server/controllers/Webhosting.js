'use strict';

var utils = require('../utils/writer.js');
var Webhosting = require('../service/WebhostingService');

module.exports.addWebsite = function addWebsite (req, res, next, body) {
  Webhosting.addWebsite(body)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.getNewWebsite = function getNewWebsite (req, res, next) {
  Webhosting.getNewWebsite()
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.getWebsiteBuyIp = function getWebsiteBuyIp (req, res, next, id) {
  Webhosting.getWebsiteBuyIp(id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.getWebsiteInfo = function getWebsiteInfo (req, res, next, id) {
  Webhosting.getWebsiteInfo(id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.getWebsiteInvoices = function getWebsiteInvoices (req, res, next, id) {
  Webhosting.getWebsiteInvoices(id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.getWebsiteList = function getWebsiteList (req, res, next) {
  Webhosting.getWebsiteList()
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.getWebsitesBackups = function getWebsitesBackups (req, res, next, id) {
  Webhosting.getWebsitesBackups(id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.getWebsitesLogin = function getWebsitesLogin (req, res, next, id) {
  Webhosting.getWebsitesLogin(id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.getWebsitesWelcomeEmail = function getWebsitesWelcomeEmail (req, res, next, id) {
  Webhosting.getWebsitesWelcomeEmail(id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.gettWebsiteReverseDns = function gettWebsiteReverseDns (req, res, next, id) {
  Webhosting.gettWebsiteReverseDns(id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.postWebsiteBuyIp = function postWebsiteBuyIp (req, res, next, body, id) {
  Webhosting.postWebsiteBuyIp(body, id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.postWebsiteBuyIp = function postWebsiteBuyIp (req, res, next, body, id) {
  Webhosting.postWebsiteBuyIp(body, id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.postWebsiteMigration = function postWebsiteMigration (req, res, next, body, id) {
  Webhosting.postWebsiteMigration(body, id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.postWebsiteMigration = function postWebsiteMigration (req, res, next, body, id) {
  Webhosting.postWebsiteMigration(body, id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.postWebsitesReverseDns = function postWebsitesReverseDns (req, res, next, body, id) {
  Webhosting.postWebsitesReverseDns(body, id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.postWebsitesReverseDns = function postWebsitesReverseDns (req, res, next, body, id) {
  Webhosting.postWebsitesReverseDns(body, id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.putWebsites = function putWebsites (req, res, next, body) {
  Webhosting.putWebsites(body)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.updateWebsiteInfo = function updateWebsiteInfo (req, res, next, id) {
  Webhosting.updateWebsiteInfo(id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.webhostingCancel = function webhostingCancel (req, res, next, id) {
  Webhosting.webhostingCancel(id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};
