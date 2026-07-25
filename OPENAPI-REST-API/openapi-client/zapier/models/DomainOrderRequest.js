const utils = require('../utils/utils');
const AnyType = require('../models/AnyType');

module.exports = {
    fields: (prefix = '', isInput = true, isArrayChild = false) => {
        const {keyPrefix, labelPrefix} = utils.buildKeyAndLabel(prefix, isInput, isArrayChild)
        return [
            {
                key: `${keyPrefix}hostname`,
                label: `Fully-qualified domain to register or transfer (e.g. example.com). - [${labelPrefix}hostname]`,
                required: true,
                type: 'string',
            },
            {
                key: `${keyPrefix}type`,
                label: `Order type. - [${labelPrefix}type]`,
                type: 'string',
                choices: [
                    'register',
                    'transfer',
                ],
            },
            {
                key: `${keyPrefix}coupon`,
                label: `Coupon code (addDomain only). - [${labelPrefix}coupon]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}whois_privacy`,
                label: `Set to \"enable\" to add Whois privacy (addDomain only). - [${labelPrefix}whois_privacy]`,
                type: 'string',
                choices: [
                    'enable',
                    'disable',
                ],
            },
        ]
    },
    mapping: (bundle, prefix = '') => {
        const {keyPrefix} = utils.buildKeyAndLabel(prefix)
        return {
            'hostname': bundle.inputData?.[`${keyPrefix}hostname`],
            'type': bundle.inputData?.[`${keyPrefix}type`],
            'coupon': bundle.inputData?.[`${keyPrefix}coupon`],
            'whois_privacy': bundle.inputData?.[`${keyPrefix}whois_privacy`],
        }
    },
}
