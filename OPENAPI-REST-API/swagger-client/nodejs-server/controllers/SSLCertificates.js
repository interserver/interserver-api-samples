'use strict';

var utils = require('../utils/writer.js');
var SSLCertificates = require('../service/SSLCertificatesService');

module.exports.addSsl = function addSsl (req, res, next, body) {
  SSLCertificates.addSsl(body)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.getNewSsl = function getNewSsl (req, res, next) {
  SSLCertificates.getNewSsl()
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.getSslInfo = function getSslInfo (req, res, next, id) {
  SSLCertificates.getSslInfo(id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.getSslInvoices = function getSslInvoices (req, res, next, id) {
  SSLCertificates.getSslInvoices(id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.getSslList = function getSslList (req, res, next) {
  SSLCertificates.getSslList()
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.getSslWelcomeEmail = function getSslWelcomeEmail (req, res, next, id) {
  SSLCertificates.getSslWelcomeEmail(id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.putSsl = function putSsl (req, res, next, body) {
  SSLCertificates.putSsl(body)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.sslCancel = function sslCancel (req, res, next, id) {
  SSLCertificates.sslCancel(id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.updateSslInfo = function updateSslInfo (req, res, next, id) {
  SSLCertificates.updateSslInfo(id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};
