const utils = require('../utils/utils');

module.exports = {
    fields: (prefix = '', isInput = true, isArrayChild = false) => {
        const {keyPrefix, labelPrefix} = utils.buildKeyAndLabel(prefix, isInput, isArrayChild)
        return [
            {
                key: `${keyPrefix}id`,
                label: `Server ID this result corresponds to. - [${labelPrefix}id]`,
                type: 'integer',
            },
            {
                key: `${keyPrefix}asset`,
                label: `Asset ID that was queried for the server (omitted on errors before asset selection). - [${labelPrefix}asset]`,
                type: 'integer',
            },
            {
                key: `${keyPrefix}text`,
                label: `IPMI power-status output for this server. - [${labelPrefix}text]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}error`,
                label: `Error message for this server, if processing failed (mutually exclusive with `text`). - [${labelPrefix}error]`,
                type: 'string',
            },
        ]
    },
    mapping: (bundle, prefix = '') => {
        const {keyPrefix} = utils.buildKeyAndLabel(prefix)
        return {
            'id': bundle.inputData?.[`${keyPrefix}id`],
            'asset': bundle.inputData?.[`${keyPrefix}asset`],
            'text': bundle.inputData?.[`${keyPrefix}text`],
            'error': bundle.inputData?.[`${keyPrefix}error`],
        }
    },
}
