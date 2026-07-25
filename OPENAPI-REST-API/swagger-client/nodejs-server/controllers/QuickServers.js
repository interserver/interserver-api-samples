'use strict';

var utils = require('../utils/writer.js');
var QuickServers = require('../service/QuickServersService');

module.exports.addQs = function addQs (req, res, next, body) {
  QuickServers.addQs(body)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.deleteQsBackup = function deleteQsBackup (req, res, next, id, file, all) {
  QuickServers.deleteQsBackup(id, file, all)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.doQsBlockSmtp = function doQsBlockSmtp (req, res, next, id) {
  QuickServers.doQsBlockSmtp(id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.doQsDisableCd = function doQsDisableCd (req, res, next, id) {
  QuickServers.doQsDisableCd(id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.doQsDisableQuota = function doQsDisableQuota (req, res, next, id) {
  QuickServers.doQsDisableQuota(id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.doQsEjectCd = function doQsEjectCd (req, res, next, id) {
  QuickServers.doQsEjectCd(id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.doQsEnableQuota = function doQsEnableQuota (req, res, next, id) {
  QuickServers.doQsEnableQuota(id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.doQsRestart = function doQsRestart (req, res, next, id) {
  QuickServers.doQsRestart(id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.doQsStart = function doQsStart (req, res, next, id) {
  QuickServers.doQsStart(id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.doQsStop = function doQsStop (req, res, next, id) {
  QuickServers.doQsStop(id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.downloadQsBackup = function downloadQsBackup (req, res, next, body, all, id) {
  QuickServers.downloadQsBackup(body, all, id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.downloadQsBackup = function downloadQsBackup (req, res, next, body, all, id) {
  QuickServers.downloadQsBackup(body, all, id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.getNewQs = function getNewQs (req, res, next) {
  QuickServers.getNewQs()
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.getQsBackup = function getQsBackup (req, res, next, id) {
  QuickServers.getQsBackup(id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.getQsBackups = function getQsBackups (req, res, next, id, all) {
  QuickServers.getQsBackups(id, all)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.getQsChangeHostname = function getQsChangeHostname (req, res, next, id) {
  QuickServers.getQsChangeHostname(id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.getQsChangeRootPassword = function getQsChangeRootPassword (req, res, next, id) {
  QuickServers.getQsChangeRootPassword(id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.getQsChangeTimezone = function getQsChangeTimezone (req, res, next, id) {
  QuickServers.getQsChangeTimezone(id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.getQsChangeWebuzoPassword = function getQsChangeWebuzoPassword (req, res, next, id) {
  QuickServers.getQsChangeWebuzoPassword(id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.getQsInfo = function getQsInfo (req, res, next, id) {
  QuickServers.getQsInfo(id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.getQsInsertCd = function getQsInsertCd (req, res, next, id) {
  QuickServers.getQsInsertCd(id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.getQsInvoices = function getQsInvoices (req, res, next, id) {
  QuickServers.getQsInvoices(id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.getQsList = function getQsList (req, res, next) {
  QuickServers.getQsList()
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.getQsReinstallOs = function getQsReinstallOs (req, res, next, id) {
  QuickServers.getQsReinstallOs(id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.getQsResetPassword = function getQsResetPassword (req, res, next, id) {
  QuickServers.getQsResetPassword(id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.getQsReverseDns = function getQsReverseDns (req, res, next, id) {
  QuickServers.getQsReverseDns(id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.getQsSetupVnc = function getQsSetupVnc (req, res, next, id) {
  QuickServers.getQsSetupVnc(id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.getQsTrafficUsage = function getQsTrafficUsage (req, res, next, id) {
  QuickServers.getQsTrafficUsage(id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.getQsViewDesktop = function getQsViewDesktop (req, res, next, id) {
  QuickServers.getQsViewDesktop(id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.getQsWelcomeEmail = function getQsWelcomeEmail (req, res, next, id) {
  QuickServers.getQsWelcomeEmail(id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.postQsChangeHostname = function postQsChangeHostname (req, res, next, id) {
  QuickServers.postQsChangeHostname(id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.postQsChangeRootPassword = function postQsChangeRootPassword (req, res, next, id) {
  QuickServers.postQsChangeRootPassword(id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.postQsChangeTimezone = function postQsChangeTimezone (req, res, next, body, id) {
  QuickServers.postQsChangeTimezone(body, id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.postQsChangeTimezone = function postQsChangeTimezone (req, res, next, body, id) {
  QuickServers.postQsChangeTimezone(body, id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.postQsChangeWebuzoPassword = function postQsChangeWebuzoPassword (req, res, next, id) {
  QuickServers.postQsChangeWebuzoPassword(id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.postQsInsertCd = function postQsInsertCd (req, res, next, id) {
  QuickServers.postQsInsertCd(id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.postQsReinstallOs = function postQsReinstallOs (req, res, next, id) {
  QuickServers.postQsReinstallOs(id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.postQsResetPassword = function postQsResetPassword (req, res, next, id) {
  QuickServers.postQsResetPassword(id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.postQsReverseDns = function postQsReverseDns (req, res, next, body, id) {
  QuickServers.postQsReverseDns(body, id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.postQsReverseDns = function postQsReverseDns (req, res, next, body, id) {
  QuickServers.postQsReverseDns(body, id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.postQsSetupVnc = function postQsSetupVnc (req, res, next, id) {
  QuickServers.postQsSetupVnc(id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.postQsTrafficUsage = function postQsTrafficUsage (req, res, next, id) {
  QuickServers.postQsTrafficUsage(id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.postQsViewDesktop = function postQsViewDesktop (req, res, next, id) {
  QuickServers.postQsViewDesktop(id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.postQuickServerRestore = function postQuickServerRestore (req, res, next, body, id) {
  QuickServers.postQuickServerRestore(body, id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.postQuickServerRestore = function postQuickServerRestore (req, res, next, body, id) {
  QuickServers.postQuickServerRestore(body, id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.putQs = function putQs (req, res, next, body) {
  QuickServers.putQs(body)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.quickserversCancel = function quickserversCancel (req, res, next, id) {
  QuickServers.quickserversCancel(id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.updateQsInfo = function updateQsInfo (req, res, next, id) {
  QuickServers.updateQsInfo(id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};
