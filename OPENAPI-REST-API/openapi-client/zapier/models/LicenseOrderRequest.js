const utils = require('../utils/utils');

module.exports = {
    fields: (prefix = '', isInput = true, isArrayChild = false) => {
        const {keyPrefix, labelPrefix} = utils.buildKeyAndLabel(prefix, isInput, isArrayChild)
        return [
            {
                key: `${keyPrefix}package`,
                label: `License service type id from getNewLicense.serviceTypes (must be buyable). - [${labelPrefix}package]`,
                required: true,
                type: 'integer',
            },
            {
                key: `${keyPrefix}ip`,
                label: `IP address the license is bound to. - [${labelPrefix}ip]`,
                required: true,
                type: 'string',
            },
            {
                key: `${keyPrefix}tos`,
                label: `Terms-of-service acceptance. Must be true to place the order. - [${labelPrefix}tos]`,
                required: true,
                type: 'boolean',
            },
            {
                key: `${keyPrefix}frequency`,
                label: `Billing frequency in months. - [${labelPrefix}frequency]`,
                type: 'integer',
            },
            {
                key: `${keyPrefix}coupon`,
                label: `Coupon code. - [${labelPrefix}coupon]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}comment`,
                label: `Free-form note saved on the service row. - [${labelPrefix}comment]`,
                type: 'string',
            },
        ]
    },
    mapping: (bundle, prefix = '') => {
        const {keyPrefix} = utils.buildKeyAndLabel(prefix)
        return {
            'package': bundle.inputData?.[`${keyPrefix}package`],
            'ip': bundle.inputData?.[`${keyPrefix}ip`],
            'tos': bundle.inputData?.[`${keyPrefix}tos`],
            'frequency': bundle.inputData?.[`${keyPrefix}frequency`],
            'coupon': bundle.inputData?.[`${keyPrefix}coupon`],
            'comment': bundle.inputData?.[`${keyPrefix}comment`],
        }
    },
}
