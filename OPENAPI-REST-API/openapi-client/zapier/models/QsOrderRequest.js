const utils = require('../utils/utils');

module.exports = {
    fields: (prefix = '', isInput = true, isArrayChild = false) => {
        const {keyPrefix, labelPrefix} = utils.buildKeyAndLabel(prefix, isInput, isArrayChild)
        return [
            {
                key: `${keyPrefix}server`,
                label: `QuickServer plan/server id from getNewQs. - [${labelPrefix}server]`,
                required: true,
                type: 'integer',
            },
            {
                key: `${keyPrefix}password`,
                label: `Root password for the QuickServer. - [${labelPrefix}password]`,
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
                key: `${keyPrefix}os`,
                label: `OS template file name from getNewQs (falls back to a default if unrecognized). - [${labelPrefix}os]`,
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
            'server': bundle.inputData?.[`${keyPrefix}server`],
            'password': bundle.inputData?.[`${keyPrefix}password`],
            'tos': bundle.inputData?.[`${keyPrefix}tos`],
            'os': bundle.inputData?.[`${keyPrefix}os`],
            'comment': bundle.inputData?.[`${keyPrefix}comment`],
        }
    },
}
