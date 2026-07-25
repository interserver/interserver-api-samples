'use strict';

var utils = require('../utils/writer.js');
var Account = require('../service/AccountService');

module.exports.deleteAccountOauthName = function deleteAccountOauthName (req, res, next, name) {
  Account.deleteAccountOauthName(name)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.deleteAccountTfa = function deleteAccountTfa (req, res, next) {
  Account.deleteAccountTfa()
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.deleteIpLimit = function deleteIpLimit (req, res, next, body) {
  Account.deleteIpLimit(body)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.getAccountInfo = function getAccountInfo (req, res, next) {
  Account.getAccountInfo()
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.getAccountTfaSetup = function getAccountTfaSetup (req, res, next) {
  Account.getAccountTfaSetup()
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.getHome = function getHome (req, res, next) {
  Account.getHome()
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.getSearch = function getSearch (req, res, next) {
  Account.getSearch()
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.logout = function logout (req, res, next) {
  Account.logout()
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.logoutAccountOauth = function logoutAccountOauth (req, res, next, name) {
  Account.logoutAccountOauth(name)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.updateAccountApiKey = function updateAccountApiKey (req, res, next) {
  Account.updateAccountApiKey()
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.updateAccountFeatures = function updateAccountFeatures (req, res, next, body) {
  Account.updateAccountFeatures(body)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.updateAccountFeatures = function updateAccountFeatures (req, res, next, body) {
  Account.updateAccountFeatures(body)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.updateAccountInfo = function updateAccountInfo (req, res, next, body) {
  Account.updateAccountInfo(body)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.updateAccountInfo = function updateAccountInfo (req, res, next, body) {
  Account.updateAccountInfo(body)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.updateAccountIpLimits = function updateAccountIpLimits (req, res, next, body) {
  Account.updateAccountIpLimits(body)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.updateAccountIpLimits = function updateAccountIpLimits (req, res, next, body) {
  Account.updateAccountIpLimits(body)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.updateAccountPassword = function updateAccountPassword (req, res, next, body) {
  Account.updateAccountPassword(body)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.updateAccountPassword = function updateAccountPassword (req, res, next, body) {
  Account.updateAccountPassword(body)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.updateAccountSshKey = function updateAccountSshKey (req, res, next, body) {
  Account.updateAccountSshKey(body)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.updateAccountSshKey = function updateAccountSshKey (req, res, next, body) {
  Account.updateAccountSshKey(body)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.updateAccountTfa = function updateAccountTfa (req, res, next, body) {
  Account.updateAccountTfa(body)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.updateAccountTfa = function updateAccountTfa (req, res, next, body) {
  Account.updateAccountTfa(body)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};
