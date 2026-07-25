'use strict';

var utils = require('../utils/writer.js');
var Mail = require('../service/MailService');

module.exports.addMail = function addMail (req, res, next, body) {
  Mail.addMail(body)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.addRule = function addRule (req, res, next, body, id) {
  Mail.addRule(body, id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.addRule = function addRule (req, res, next, body, id) {
  Mail.addRule(body, id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.createMailAlert = function createMailAlert (req, res, next, body, id) {
  Mail.createMailAlert(body, id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.createMailAlert = function createMailAlert (req, res, next, body, id) {
  Mail.createMailAlert(body, id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.deleteMailAlert = function deleteMailAlert (req, res, next, body, id) {
  Mail.deleteMailAlert(body, id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.deleteMailAlert = function deleteMailAlert (req, res, next, body, id) {
  Mail.deleteMailAlert(body, id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.deleteRule = function deleteRule (req, res, next, id, rule) {
  Mail.deleteRule(id, rule)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.delistBlock = function delistBlock (req, res, next, body, id) {
  Mail.delistBlock(body, id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.delistBlock = function delistBlock (req, res, next, body, id) {
  Mail.delistBlock(body, id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.getMailAlerts = function getMailAlerts (req, res, next, id) {
  Mail.getMailAlerts(id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.getMailBlocks = function getMailBlocks (req, res, next, id) {
  Mail.getMailBlocks(id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.getMailDelist = function getMailDelist (req, res, next, id) {
  Mail.getMailDelist(id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.getMailDeliverability = function getMailDeliverability (req, res, next, id) {
  Mail.getMailDeliverability(id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.getMailInfo = function getMailInfo (req, res, next, id) {
  Mail.getMailInfo(id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.getMailInvoices = function getMailInvoices (req, res, next, id) {
  Mail.getMailInvoices(id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.getMailList = function getMailList (req, res, next) {
  Mail.getMailList()
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.getMailWelcomeEmail = function getMailWelcomeEmail (req, res, next, id) {
  Mail.getMailWelcomeEmail(id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.getNewMail = function getNewMail (req, res, next) {
  Mail.getNewMail()
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.getRules = function getRules (req, res, next, id) {
  Mail.getRules(id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.getStats = function getStats (req, res, next, id, time) {
  Mail.getStats(id, time)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.mailCancel = function mailCancel (req, res, next, id) {
  Mail.mailCancel(id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.postMailDelist = function postMailDelist (req, res, next, body, id) {
  Mail.postMailDelist(body, id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.postMailDelist = function postMailDelist (req, res, next, body, id) {
  Mail.postMailDelist(body, id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.putMail = function putMail (req, res, next, body) {
  Mail.putMail(body)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.resetMailPassword = function resetMailPassword (req, res, next, id) {
  Mail.resetMailPassword(id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.sendAdvMail = function sendAdvMail (req, res, next, body, id) {
  Mail.sendAdvMail(body, id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.sendAdvMail = function sendAdvMail (req, res, next, body, id) {
  Mail.sendAdvMail(body, id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.sendMail = function sendMail (req, res, next, body, id) {
  Mail.sendMail(body, id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.sendMail = function sendMail (req, res, next, body, id) {
  Mail.sendMail(body, id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.updateMailAlert = function updateMailAlert (req, res, next, body, id) {
  Mail.updateMailAlert(body, id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.updateMailAlert = function updateMailAlert (req, res, next, body, id) {
  Mail.updateMailAlert(body, id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.updateMailInfo = function updateMailInfo (req, res, next, id) {
  Mail.updateMailInfo(id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.updateRule = function updateRule (req, res, next, body, id, rule) {
  Mail.updateRule(body, id, rule)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.updateRule = function updateRule (req, res, next, body, id, rule) {
  Mail.updateRule(body, id, rule)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.viewMailLog = function viewMailLog (req, res, next, id, id, origin, mx, from, to, subject, mailid, messageId, replyto, headerfrom, delivered, skip, limit, startDate, endDate, sort, dir, groupby) {
  Mail.viewMailLog(id, id, origin, mx, from, to, subject, mailid, messageId, replyto, headerfrom, delivered, skip, limit, startDate, endDate, sort, dir, groupby)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};
