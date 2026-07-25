'use strict';

var utils = require('../utils/writer.js');
var Domains = require('../service/DomainsService');

module.exports.addDomain = function addDomain (req, res, next, body) {
  Domains.addDomain(body)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.addDomainDnssec = function addDomainDnssec (req, res, next, body, id) {
  Domains.addDomainDnssec(body, id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.addDomainDnssec = function addDomainDnssec (req, res, next, body, id) {
  Domains.addDomainDnssec(body, id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.addDomainNameserver = function addDomainNameserver (req, res, next, body, id) {
  Domains.addDomainNameserver(body, id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.addDomainNameserver = function addDomainNameserver (req, res, next, body, id) {
  Domains.addDomainNameserver(body, id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.cancelDomain = function cancelDomain (req, res, next, id) {
  Domains.cancelDomain(id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.deleteDomainDnssec = function deleteDomainDnssec (req, res, next, id) {
  Domains.deleteDomainDnssec(id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.deleteDomainNameserver = function deleteDomainNameserver (req, res, next, id, index) {
  Domains.deleteDomainNameserver(id, index)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.getDomainContact = function getDomainContact (req, res, next, id) {
  Domains.getDomainContact(id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.getDomainDnssec = function getDomainDnssec (req, res, next, id) {
  Domains.getDomainDnssec(id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.getDomainInfo = function getDomainInfo (req, res, next, id) {
  Domains.getDomainInfo(id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.getDomainInvoices = function getDomainInvoices (req, res, next, id) {
  Domains.getDomainInvoices(id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.getDomainLookup = function getDomainLookup (req, res, next, name) {
  Domains.getDomainLookup(name)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.getDomainNameservers = function getDomainNameservers (req, res, next, id) {
  Domains.getDomainNameservers(id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.getDomainRenewal = function getDomainRenewal (req, res, next, id) {
  Domains.getDomainRenewal(id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.getDomainSearch = function getDomainSearch (req, res, next, name) {
  Domains.getDomainSearch(name)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.getDomainTransfer = function getDomainTransfer (req, res, next, id) {
  Domains.getDomainTransfer(id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.getDomainWhoisPrivacy = function getDomainWhoisPrivacy (req, res, next, id) {
  Domains.getDomainWhoisPrivacy(id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.getDomainsList = function getDomainsList (req, res, next) {
  Domains.getDomainsList()
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.getDomainsWelcomeEmail = function getDomainsWelcomeEmail (req, res, next, id) {
  Domains.getDomainsWelcomeEmail(id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.getNewDomain = function getNewDomain (req, res, next) {
  Domains.getNewDomain()
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.patchDomains = function patchDomains (req, res, next, body) {
  Domains.patchDomains(body)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.postDomainRenewal = function postDomainRenewal (req, res, next, id) {
  Domains.postDomainRenewal(id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.postDomainSearch = function postDomainSearch (req, res, next, name) {
  Domains.postDomainSearch(name)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.postDomainTransfer = function postDomainTransfer (req, res, next, id) {
  Domains.postDomainTransfer(id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.putDomains = function putDomains (req, res, next, body) {
  Domains.putDomains(body)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.updateDomainContact = function updateDomainContact (req, res, next, body, id) {
  Domains.updateDomainContact(body, id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.updateDomainContact = function updateDomainContact (req, res, next, body, id) {
  Domains.updateDomainContact(body, id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.updateDomainInfo = function updateDomainInfo (req, res, next, id) {
  Domains.updateDomainInfo(id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.updateDomainNameservers = function updateDomainNameservers (req, res, next, body, id) {
  Domains.updateDomainNameservers(body, id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.updateDomainNameservers = function updateDomainNameservers (req, res, next, body, id) {
  Domains.updateDomainNameservers(body, id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.updateDomainWhoisPrivacy = function updateDomainWhoisPrivacy (req, res, next, body, id) {
  Domains.updateDomainWhoisPrivacy(body, id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.updateDomainWhoisPrivacy = function updateDomainWhoisPrivacy (req, res, next, body, id) {
  Domains.updateDomainWhoisPrivacy(body, id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};
