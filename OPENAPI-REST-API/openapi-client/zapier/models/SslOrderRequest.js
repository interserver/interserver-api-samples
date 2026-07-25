const utils = require('../utils/utils');

module.exports = {
    fields: (prefix = '', isInput = true, isArrayChild = false) => {
        const {keyPrefix, labelPrefix} = utils.buildKeyAndLabel(prefix, isInput, isArrayChild)
        return [
            {
                key: `${keyPrefix}ssl`,
                label: `SSL package service type id from getNewSsl.serviceTypes. - [${labelPrefix}ssl]`,
                required: true,
                type: 'integer',
            },
            {
                key: `${keyPrefix}hostname`,
                label: `Domain the certificate is issued for. Wildcard certs require *.domain.com format. - [${labelPrefix}hostname]`,
                required: true,
                type: 'string',
            },
            {
                key: `${keyPrefix}approver_email`,
                label: `Domain-control approver email (required for all SSL orders). - [${labelPrefix}approver_email]`,
                required: true,
                type: 'string',
            },
            {
                key: `${keyPrefix}frequency`,
                label: `Billing frequency in months (12, 24, or 36). - [${labelPrefix}frequency]`,
                type: 'integer',
            },
            {
                key: `${keyPrefix}coupon`,
                label: `Coupon code. - [${labelPrefix}coupon]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}csr_type`,
                label: `Whether the CSR is server-generated or customer-provided. - [${labelPrefix}csr_type]`,
                type: 'string',
                choices: [
                    'generated',
                    'provided',
                ],
            },
            {
                key: `${keyPrefix}csr`,
                label: `PEM-encoded CSR (>= 2048-bit) when csr_type=provided. - [${labelPrefix}csr]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}firstname`,
                label: `Contact first name (defaults from account). - [${labelPrefix}firstname]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}lastname`,
                label: `Contact last name (defaults from account). - [${labelPrefix}lastname]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}email`,
                label: `Contact email (defaults from account). - [${labelPrefix}email]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}address`,
                label: `Contact address (defaults from account). - [${labelPrefix}address]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}city`,
                label: `Contact city (defaults from account). - [${labelPrefix}city]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}state`,
                label: `Contact state/region (defaults from account). - [${labelPrefix}state]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}zip`,
                label: `Contact postal code (defaults from account). - [${labelPrefix}zip]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}country`,
                label: `Contact country (defaults from account). - [${labelPrefix}country]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}phone`,
                label: `Contact phone (defaults from account). - [${labelPrefix}phone]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}company`,
                label: `Contact company/organization (defaults from account). - [${labelPrefix}company]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}department`,
                label: `Contact department (defaults to Administration). - [${labelPrefix}department]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}agency`,
                label: `EV certificate incorporating agency (only for EV packages). - [${labelPrefix}agency]`,
                type: 'string',
            },
            {
                key: `${keyPrefix}business_category`,
                label: `EV certificate business category (only for EV packages). - [${labelPrefix}business_category]`,
                type: 'string',
            },
        ]
    },
    mapping: (bundle, prefix = '') => {
        const {keyPrefix} = utils.buildKeyAndLabel(prefix)
        return {
            'ssl': bundle.inputData?.[`${keyPrefix}ssl`],
            'hostname': bundle.inputData?.[`${keyPrefix}hostname`],
            'approver_email': bundle.inputData?.[`${keyPrefix}approver_email`],
            'frequency': bundle.inputData?.[`${keyPrefix}frequency`],
            'coupon': bundle.inputData?.[`${keyPrefix}coupon`],
            'csr_type': bundle.inputData?.[`${keyPrefix}csr_type`],
            'csr': bundle.inputData?.[`${keyPrefix}csr`],
            'firstname': bundle.inputData?.[`${keyPrefix}firstname`],
            'lastname': bundle.inputData?.[`${keyPrefix}lastname`],
            'email': bundle.inputData?.[`${keyPrefix}email`],
            'address': bundle.inputData?.[`${keyPrefix}address`],
            'city': bundle.inputData?.[`${keyPrefix}city`],
            'state': bundle.inputData?.[`${keyPrefix}state`],
            'zip': bundle.inputData?.[`${keyPrefix}zip`],
            'country': bundle.inputData?.[`${keyPrefix}country`],
            'phone': bundle.inputData?.[`${keyPrefix}phone`],
            'company': bundle.inputData?.[`${keyPrefix}company`],
            'department': bundle.inputData?.[`${keyPrefix}department`],
            'agency': bundle.inputData?.[`${keyPrefix}agency`],
            'business_category': bundle.inputData?.[`${keyPrefix}business_category`],
        }
    },
}
