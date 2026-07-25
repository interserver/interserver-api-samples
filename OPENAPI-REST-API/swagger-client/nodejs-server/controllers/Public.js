'use strict';

var utils = require('../utils/writer.js');
var Public = require('../service/PublicService');

module.exports.getAccountCurrencies = function getAccountCurrencies (req, res, next) {
  Public.getAccountCurrencies()
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.getAccountLocales = function getAccountLocales (req, res, next) {
  Public.getAccountLocales()
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.getCaptcha = function getCaptcha (req, res, next) {
  Public.getCaptcha()
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.getCountries = function getCountries (req, res, next, fetch_by) {
  Public.getCountries(fetch_by)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.getInfo = function getInfo (req, res, next) {
  Public.getInfo()
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.getLoginInfo = function getLoginInfo (req, res, next) {
  Public.getLoginInfo()
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.getMPServers = function getMPServers (req, res, next) {
  Public.getMPServers()
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.getOauthRedirect = function getOauthRedirect (req, res, next, provider) {
  Public.getOauthRedirect(provider)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.getTimezones = function getTimezones (req, res, next) {
  Public.getTimezones()
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.patchOauthTwoFactor = function patchOauthTwoFactor (req, res, next, body) {
  Public.patchOauthTwoFactor(body)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.patchOauthTwoFactor = function patchOauthTwoFactor (req, res, next, body) {
  Public.patchOauthTwoFactor(body)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.pingServer = function pingServer (req, res, next) {
  Public.pingServer()
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.postOauthCallback = function postOauthCallback (req, res, next, body, provider) {
  Public.postOauthCallback(body, provider)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.postOauthCallback = function postOauthCallback (req, res, next, body, provider) {
  Public.postOauthCallback(body, provider)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.submitLogin = function submitLogin (req, res, next, body) {
  Public.submitLogin(body)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.submitLogin = function submitLogin (req, res, next, body) {
  Public.submitLogin(body)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.submitSignup = function submitSignup (req, res, next, body) {
  Public.submitSignup(body)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};
