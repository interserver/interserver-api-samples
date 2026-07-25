const utils = require('../utils/utils');

module.exports = {
    fields: (prefix = '', isInput = true, isArrayChild = false) => {
        const {keyPrefix, labelPrefix} = utils.buildKeyAndLabel(prefix, isInput, isArrayChild)
        return [
            {
                key: `${keyPrefix}cc_ccv2`,
                label: `The CVV/CVC code on the back of the credit card. - [${labelPrefix}cc_ccv2]`,
                required: true,
                type: 'string',
            },
        ]
    },
    mapping: (bundle, prefix = '') => {
        const {keyPrefix} = utils.buildKeyAndLabel(prefix)
        return {
            'cc_ccv2': bundle.inputData?.[`${keyPrefix}cc_ccv2`],
        }
    },
}
