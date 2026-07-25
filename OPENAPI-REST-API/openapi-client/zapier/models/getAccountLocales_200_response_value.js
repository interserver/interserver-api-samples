const utils = require('../utils/utils');

module.exports = {
    fields: (prefix = '', isInput = true, isArrayChild = false) => {
        const {keyPrefix, labelPrefix} = utils.buildKeyAndLabel(prefix, isInput, isArrayChild)
        return [
            {
                key: `${keyPrefix}name`,
                label: `English display name of the locale. - [${labelPrefix}name]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}local_name`,
                label: `Display name of the locale in its own language. - [${labelPrefix}local_name]`,
                type: 'string',
            },
        ]
    },
    mapping: (bundle, prefix = '') => {
        const {keyPrefix} = utils.buildKeyAndLabel(prefix)
        return {
            'name': bundle.inputData?.[`${keyPrefix}name`],
            'local_name': bundle.inputData?.[`${keyPrefix}local_name`],
        }
    },
}
