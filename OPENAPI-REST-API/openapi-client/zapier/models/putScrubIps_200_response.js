const utils = require('../utils/utils');

module.exports = {
    fields: (prefix = '', isInput = true, isArrayChild = false) => {
        const {keyPrefix, labelPrefix} = utils.buildKeyAndLabel(prefix, isInput, isArrayChild)
        return [
            {
                key: `${keyPrefix}continue`,
                label: `[${labelPrefix}continue]`,
                type: 'boolean',
            },
            {
                key: `${keyPrefix}errors`,
                label: `[${labelPrefix}errors]`,
                list: true,
                type: 'string',
            },
            {
                key: `${keyPrefix}serviceType`,
                label: `[${labelPrefix}serviceType]`,
                type: 'integer',
            },
            {
                key: `${keyPrefix}serviceCost`,
                label: `[${labelPrefix}serviceCost]`,
                type: 'number',
            },
            {
                key: `${keyPrefix}originalCost`,
                label: `[${labelPrefix}originalCost]`,
                type: 'number',
            },
            {
                key: `${keyPrefix}repeatServiceCost`,
                label: `[${labelPrefix}repeatServiceCost]`,
                type: 'number',
            },
        ]
    },
    mapping: (bundle, prefix = '') => {
        const {keyPrefix} = utils.buildKeyAndLabel(prefix)
        return {
            'continue': bundle.inputData?.[`${keyPrefix}continue`],
            'errors': bundle.inputData?.[`${keyPrefix}errors`],
            'serviceType': bundle.inputData?.[`${keyPrefix}serviceType`],
            'serviceCost': bundle.inputData?.[`${keyPrefix}serviceCost`],
            'originalCost': bundle.inputData?.[`${keyPrefix}originalCost`],
            'repeatServiceCost': bundle.inputData?.[`${keyPrefix}repeatServiceCost`],
        }
    },
}
