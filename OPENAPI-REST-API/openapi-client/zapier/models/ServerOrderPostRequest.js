const utils = require('../utils/utils');
const ServerOrderPostRequest_hd = require('../models/ServerOrderPostRequest_hd');

module.exports = {
    fields: (prefix = '', isInput = true, isArrayChild = false) => {
        const {keyPrefix, labelPrefix} = utils.buildKeyAndLabel(prefix, isInput, isArrayChild)
        return [
            {
                key: `${keyPrefix}cpu`,
                label: `CPU configuration id from config_li.cpu_li. Constrains valid hd/memory options. - [${labelPrefix}cpu]`,
                required: true,
                type: 'integer',
            },
            ...ServerOrderPostRequest_hd.fields(`${keyPrefix}hd`, isInput),
            {
                key: `${keyPrefix}memory`,
                label: `Memory configuration id from config_li.memory_li[cpu]. - [${labelPrefix}memory]`,
                required: true,
                type: 'integer',
            },
            {
                key: `${keyPrefix}bandwidth`,
                label: `Bandwidth configuration id from config_li.bandwidth_li. - [${labelPrefix}bandwidth]`,
                required: true,
                type: 'integer',
            },
            {
                key: `${keyPrefix}ips`,
                label: `IP block configuration id from config_li.ips_li. - [${labelPrefix}ips]`,
                required: true,
                type: 'integer',
            },
            {
                key: `${keyPrefix}os`,
                label: `Operating System configuration id from config_li.os_li. - [${labelPrefix}os]`,
                required: true,
                type: 'integer',
            },
            {
                key: `${keyPrefix}cp`,
                label: `Control Panel configuration id from config_li.cp_li. - [${labelPrefix}cp]`,
                required: true,
                type: 'integer',
            },
            {
                key: `${keyPrefix}raid`,
                label: `RAID configuration id from config_li.raid_li. - [${labelPrefix}raid]`,
                required: true,
                type: 'integer',
            },
            {
                key: `${keyPrefix}region`,
                label: `Region id from the regions list. - [${labelPrefix}region]`,
                required: true,
                type: 'integer',
            },
            {
                key: `${keyPrefix}servername`,
                label: `Server hostname. Must pass valid_hostname(). - [${labelPrefix}servername]`,
                required: true,
                type: 'string',
            },
            {
                key: `${keyPrefix}rootpass`,
                label: `Root password for the server. - [${labelPrefix}rootpass]`,
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
                key: `${keyPrefix}comment`,
                label: `Optional free-form order comment. - [${labelPrefix}comment]`,
                type: 'string',
            },
        ]
    },
    mapping: (bundle, prefix = '') => {
        const {keyPrefix} = utils.buildKeyAndLabel(prefix)
        return {
            'cpu': bundle.inputData?.[`${keyPrefix}cpu`],
            'hd': utils.removeIfEmpty(ServerOrderPostRequest_hd.mapping(bundle, `${keyPrefix}hd`)),
            'memory': bundle.inputData?.[`${keyPrefix}memory`],
            'bandwidth': bundle.inputData?.[`${keyPrefix}bandwidth`],
            'ips': bundle.inputData?.[`${keyPrefix}ips`],
            'os': bundle.inputData?.[`${keyPrefix}os`],
            'cp': bundle.inputData?.[`${keyPrefix}cp`],
            'raid': bundle.inputData?.[`${keyPrefix}raid`],
            'region': bundle.inputData?.[`${keyPrefix}region`],
            'servername': bundle.inputData?.[`${keyPrefix}servername`],
            'rootpass': bundle.inputData?.[`${keyPrefix}rootpass`],
            'tos': bundle.inputData?.[`${keyPrefix}tos`],
            'comment': bundle.inputData?.[`${keyPrefix}comment`],
        }
    },
}
