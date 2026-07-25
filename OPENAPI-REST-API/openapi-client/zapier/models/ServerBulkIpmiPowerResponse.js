const utils = require('../utils/utils');
const ServerBulkIpmiPowerResponse_results_inner = require('../models/ServerBulkIpmiPowerResponse_results_inner');

module.exports = {
    fields: (prefix = '', isInput = true, isArrayChild = false) => {
        const {keyPrefix, labelPrefix} = utils.buildKeyAndLabel(prefix, isInput, isArrayChild)
        return [
            {
                key: `${keyPrefix}results`,
                label: `[${labelPrefix}results]`,
                children: ServerBulkIpmiPowerResponse_results_inner.fields(`${keyPrefix}results${!isInput ? '[]' : ''}`, isInput, true), 
            },
        ]
    },
    mapping: (bundle, prefix = '') => {
        const {keyPrefix} = utils.buildKeyAndLabel(prefix)
        return {
            'results': utils.childMapping(bundle.inputData?.[`${keyPrefix}results`], `${keyPrefix}results`, ServerBulkIpmiPowerResponse_results_inner),
        }
    },
}
