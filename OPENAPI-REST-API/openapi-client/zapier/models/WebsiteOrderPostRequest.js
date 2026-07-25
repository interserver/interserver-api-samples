const utils = require('../utils/utils');

module.exports = {
    fields: (prefix = '', isInput = true, isArrayChild = false) => {
        const {keyPrefix, labelPrefix} = utils.buildKeyAndLabel(prefix, isInput, isArrayChild)
        return [
            {
                key: `${keyPrefix}hostname`,
                label: `Primary FQDN for the website. Must pass valid_hostname() and the keyword blocklist. - [${labelPrefix}hostname]`,
                required: true,
                type: 'string',
            },
            {
                key: `${keyPrefix}packageId`,
                label: `Plan id from getNewWebsite.serviceTypes[].services_id (must be buyable). - [${labelPrefix}packageId]`,
                required: true,
                type: 'integer',
            },
            {
                key: `${keyPrefix}rootpass`,
                label: `Control-panel admin password. If blank, a random password is generated server-side. - [${labelPrefix}rootpass]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}period`,
                label: `Billing cycle in months (1 / 6 / 12 / 24 / 36). - [${labelPrefix}period]`,
                type: 'integer',
            },
            {
                key: `${keyPrefix}coupon`,
                label: `Coupon code. - [${labelPrefix}coupon]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}serviceOfferId`,
                label: `Promo bundle id from getNewWebsite.serviceOffers. - [${labelPrefix}serviceOfferId]`,
                type: 'integer',
            },
            {
                key: `${keyPrefix}script`,
                label: `Auto-installer id (0 = none). - [${labelPrefix}script]`,
                type: 'integer',
            },
            {
                key: `${keyPrefix}comment`,
                label: `Free-form note saved on the service row. - [${labelPrefix}comment]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}registerDomain`,
                label: `When true and enableDomainRegistering=true from the catalog, also registers/transfers the domain through the order. - [${labelPrefix}registerDomain]`,
                type: 'boolean',
            },
        ]
    },
    mapping: (bundle, prefix = '') => {
        const {keyPrefix} = utils.buildKeyAndLabel(prefix)
        return {
            'hostname': bundle.inputData?.[`${keyPrefix}hostname`],
            'packageId': bundle.inputData?.[`${keyPrefix}packageId`],
            'rootpass': bundle.inputData?.[`${keyPrefix}rootpass`],
            'period': bundle.inputData?.[`${keyPrefix}period`],
            'coupon': bundle.inputData?.[`${keyPrefix}coupon`],
            'serviceOfferId': bundle.inputData?.[`${keyPrefix}serviceOfferId`],
            'script': bundle.inputData?.[`${keyPrefix}script`],
            'comment': bundle.inputData?.[`${keyPrefix}comment`],
            'registerDomain': bundle.inputData?.[`${keyPrefix}registerDomain`],
        }
    },
}
