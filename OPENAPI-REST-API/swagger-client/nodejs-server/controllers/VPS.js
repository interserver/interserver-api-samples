'use strict';

var utils = require('../utils/writer.js');
var VPS = require('../service/VPSService');

module.exports.addVps = function addVps (req, res, next, body) {
  VPS.addVps(body)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.addVps = function addVps (req, res, next, body) {
  VPS.addVps(body)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.deleteVpsBackup = function deleteVpsBackup (req, res, next, id, file, all) {
  VPS.deleteVpsBackup(id, file, all)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.doVpsBlockSmtp = function doVpsBlockSmtp (req, res, next, id) {
  VPS.doVpsBlockSmtp(id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.doVpsDisableCd = function doVpsDisableCd (req, res, next, id) {
  VPS.doVpsDisableCd(id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.doVpsDisableQuota = function doVpsDisableQuota (req, res, next, id) {
  VPS.doVpsDisableQuota(id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.doVpsEjectCd = function doVpsEjectCd (req, res, next, id) {
  VPS.doVpsEjectCd(id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.doVpsEnableQuota = function doVpsEnableQuota (req, res, next, id) {
  VPS.doVpsEnableQuota(id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.doVpsRestart = function doVpsRestart (req, res, next, id) {
  VPS.doVpsRestart(id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.doVpsStart = function doVpsStart (req, res, next, id) {
  VPS.doVpsStart(id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.doVpsStop = function doVpsStop (req, res, next, id) {
  VPS.doVpsStop(id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.downloadVpsBackup = function downloadVpsBackup (req, res, next, body, all, id) {
  VPS.downloadVpsBackup(body, all, id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.downloadVpsBackup = function downloadVpsBackup (req, res, next, body, all, id) {
  VPS.downloadVpsBackup(body, all, id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.getNewVps = function getNewVps (req, res, next) {
  VPS.getNewVps()
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.getVpsBackup = function getVpsBackup (req, res, next, id) {
  VPS.getVpsBackup(id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.getVpsBackups = function getVpsBackups (req, res, next, id, all) {
  VPS.getVpsBackups(id, all)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.getVpsBuyHdSpace = function getVpsBuyHdSpace (req, res, next, id) {
  VPS.getVpsBuyHdSpace(id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.getVpsBuyIp = function getVpsBuyIp (req, res, next, id) {
  VPS.getVpsBuyIp(id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.getVpsChangeHostname = function getVpsChangeHostname (req, res, next, id) {
  VPS.getVpsChangeHostname(id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.getVpsChangeRootPassword = function getVpsChangeRootPassword (req, res, next, id) {
  VPS.getVpsChangeRootPassword(id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.getVpsChangeTimezone = function getVpsChangeTimezone (req, res, next, id) {
  VPS.getVpsChangeTimezone(id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.getVpsInfo = function getVpsInfo (req, res, next, id) {
  VPS.getVpsInfo(id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.getVpsInsertCd = function getVpsInsertCd (req, res, next, id) {
  VPS.getVpsInsertCd(id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.getVpsInvoices = function getVpsInvoices (req, res, next, id) {
  VPS.getVpsInvoices(id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.getVpsList = function getVpsList (req, res, next) {
  VPS.getVpsList()
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.getVpsReinstallOs = function getVpsReinstallOs (req, res, next, id) {
  VPS.getVpsReinstallOs(id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.getVpsResetPassword = function getVpsResetPassword (req, res, next, id) {
  VPS.getVpsResetPassword(id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.getVpsReverseDns = function getVpsReverseDns (req, res, next, id) {
  VPS.getVpsReverseDns(id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.getVpsSetupVnc = function getVpsSetupVnc (req, res, next, id) {
  VPS.getVpsSetupVnc(id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.getVpsSlices = function getVpsSlices (req, res, next, id) {
  VPS.getVpsSlices(id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.getVpsTrafficUsage = function getVpsTrafficUsage (req, res, next, id) {
  VPS.getVpsTrafficUsage(id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.getVpsViewDesktop = function getVpsViewDesktop (req, res, next, id) {
  VPS.getVpsViewDesktop(id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.getVpsWelcomeEmail = function getVpsWelcomeEmail (req, res, next, id) {
  VPS.getVpsWelcomeEmail(id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.postVpsBuyHdSpace = function postVpsBuyHdSpace (req, res, next, id) {
  VPS.postVpsBuyHdSpace(id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.postVpsBuyIp = function postVpsBuyIp (req, res, next, id) {
  VPS.postVpsBuyIp(id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.postVpsChangeHostname = function postVpsChangeHostname (req, res, next, body, id) {
  VPS.postVpsChangeHostname(body, id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.postVpsChangeHostname = function postVpsChangeHostname (req, res, next, body, id) {
  VPS.postVpsChangeHostname(body, id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.postVpsChangeRootPassword = function postVpsChangeRootPassword (req, res, next, body, id) {
  VPS.postVpsChangeRootPassword(body, id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.postVpsChangeRootPassword = function postVpsChangeRootPassword (req, res, next, body, id) {
  VPS.postVpsChangeRootPassword(body, id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.postVpsChangeTimezone = function postVpsChangeTimezone (req, res, next, body, id) {
  VPS.postVpsChangeTimezone(body, id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.postVpsChangeTimezone = function postVpsChangeTimezone (req, res, next, body, id) {
  VPS.postVpsChangeTimezone(body, id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.postVpsChangeWebuzoPassword = function postVpsChangeWebuzoPassword (req, res, next, body, id) {
  VPS.postVpsChangeWebuzoPassword(body, id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.postVpsChangeWebuzoPassword = function postVpsChangeWebuzoPassword (req, res, next, body, id) {
  VPS.postVpsChangeWebuzoPassword(body, id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.postVpsInsertCd = function postVpsInsertCd (req, res, next, body, id) {
  VPS.postVpsInsertCd(body, id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.postVpsInsertCd = function postVpsInsertCd (req, res, next, body, id) {
  VPS.postVpsInsertCd(body, id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.postVpsReinstallOs = function postVpsReinstallOs (req, res, next, body, id) {
  VPS.postVpsReinstallOs(body, id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.postVpsReinstallOs = function postVpsReinstallOs (req, res, next, body, id) {
  VPS.postVpsReinstallOs(body, id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.postVpsResetPassword = function postVpsResetPassword (req, res, next, id) {
  VPS.postVpsResetPassword(id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.postVpsRestore = function postVpsRestore (req, res, next, body, id) {
  VPS.postVpsRestore(body, id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.postVpsRestore = function postVpsRestore (req, res, next, body, id) {
  VPS.postVpsRestore(body, id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.postVpsReverseDns = function postVpsReverseDns (req, res, next, body, id) {
  VPS.postVpsReverseDns(body, id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.postVpsReverseDns = function postVpsReverseDns (req, res, next, body, id) {
  VPS.postVpsReverseDns(body, id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.postVpsSetupVnc = function postVpsSetupVnc (req, res, next, id) {
  VPS.postVpsSetupVnc(id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.postVpsSlices = function postVpsSlices (req, res, next, id) {
  VPS.postVpsSlices(id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.postVpsTrafficUsage = function postVpsTrafficUsage (req, res, next, id) {
  VPS.postVpsTrafficUsage(id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.postVpsViewDesktop = function postVpsViewDesktop (req, res, next, id) {
  VPS.postVpsViewDesktop(id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.putVps = function putVps (req, res, next, body) {
  VPS.putVps(body)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.putVps = function putVps (req, res, next, body) {
  VPS.putVps(body)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.putVpsBuyHdSpace = function putVpsBuyHdSpace (req, res, next, id) {
  VPS.putVpsBuyHdSpace(id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.updateVpsInfo = function updateVpsInfo (req, res, next, id) {
  VPS.updateVpsInfo(id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.vPSCancel = function vPSCancel (req, res, next, id) {
  VPS.vPSCancel(id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};
