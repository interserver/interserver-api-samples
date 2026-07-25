const utils = require('../utils/utils');

module.exports = {
    fields: (prefix = '', isInput = true, isArrayChild = false) => {
        const {keyPrefix, labelPrefix} = utils.buildKeyAndLabel(prefix, isInput, isArrayChild)
        return [
            {
                key: `${keyPrefix}serviceType`,
                label: `Floating IP plan service type id from getNewFloatingIp.serviceTypes (must be buyable). - [${labelPrefix}serviceType]`,
                required: true,
                type: 'integer',
            },
            {
                key: `${keyPrefix}coupon`,
                label: `Coupon code. - [${labelPrefix}coupon]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}comment`,
                label: `Free-form note saved on the service row (used on addFloatingIp). - [${labelPrefix}comment]`,
                type: 'string',
            },
        ]
    },
    mapping: (bundle, prefix = '') => {
        const {keyPrefix} = utils.buildKeyAndLabel(prefix)
        return {
            'serviceType': bundle.inputData?.[`${keyPrefix}serviceType`],
            'coupon': bundle.inputData?.[`${keyPrefix}coupon`],
            'comment': bundle.inputData?.[`${keyPrefix}comment`],
        }
    },
}
