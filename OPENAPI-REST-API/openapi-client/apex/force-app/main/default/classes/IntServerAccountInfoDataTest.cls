@isTest
private class IntServerAccountInfoDataTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerAccountInfoData accountInfoData1 = IntServerAccountInfoData.getExample();
        IntServerAccountInfoData accountInfoData2 = accountInfoData1;
        IntServerAccountInfoData accountInfoData3 = new IntServerAccountInfoData();
        IntServerAccountInfoData accountInfoData4 = accountInfoData3;

        System.assert(accountInfoData1.equals(accountInfoData2));
        System.assert(accountInfoData2.equals(accountInfoData1));
        System.assert(accountInfoData1.equals(accountInfoData1));
        System.assert(accountInfoData3.equals(accountInfoData4));
        System.assert(accountInfoData4.equals(accountInfoData3));
        System.assert(accountInfoData3.equals(accountInfoData3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerAccountInfoData accountInfoData1 = IntServerAccountInfoData.getExample();
        IntServerAccountInfoData accountInfoData2 = IntServerAccountInfoData.getExample();
        IntServerAccountInfoData accountInfoData3 = new IntServerAccountInfoData();
        IntServerAccountInfoData accountInfoData4 = new IntServerAccountInfoData();

        System.assert(accountInfoData1.equals(accountInfoData2));
        System.assert(accountInfoData2.equals(accountInfoData1));
        System.assert(accountInfoData3.equals(accountInfoData4));
        System.assert(accountInfoData4.equals(accountInfoData3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerAccountInfoData accountInfoData1 = IntServerAccountInfoData.getExample();
        IntServerAccountInfoData accountInfoData2 = new IntServerAccountInfoData();

        System.assertEquals(false, accountInfoData1.equals('foo'));
        System.assertEquals(false, accountInfoData2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerAccountInfoData accountInfoData1 = IntServerAccountInfoData.getExample();
        IntServerAccountInfoData accountInfoData2 = new IntServerAccountInfoData();
        IntServerAccountInfoData accountInfoData3;

        System.assertEquals(false, accountInfoData1.equals(accountInfoData3));
        System.assertEquals(false, accountInfoData2.equals(accountInfoData3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerAccountInfoData accountInfoData1 = IntServerAccountInfoData.getExample();
        IntServerAccountInfoData accountInfoData2 = new IntServerAccountInfoData();

        System.assertEquals(accountInfoData1.hashCode(), accountInfoData1.hashCode());
        System.assertEquals(accountInfoData2.hashCode(), accountInfoData2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerAccountInfoData accountInfoData1 = IntServerAccountInfoData.getExample();
        IntServerAccountInfoData accountInfoData2 = IntServerAccountInfoData.getExample();
        IntServerAccountInfoData accountInfoData3 = new IntServerAccountInfoData();
        IntServerAccountInfoData accountInfoData4 = new IntServerAccountInfoData();

        System.assert(accountInfoData1.equals(accountInfoData2));
        System.assert(accountInfoData3.equals(accountInfoData4));
        System.assertEquals(accountInfoData1.hashCode(), accountInfoData2.hashCode());
        System.assertEquals(accountInfoData3.hashCode(), accountInfoData4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerAccountInfoData accountInfoData = new IntServerAccountInfoData();
        Map<String, String> x-property-mappings = accountInfoData.getx-property-mappings();
        System.assertEquals('r_group', x-property-mappings.get('group'));
        System.assertEquals('disableCc', x-property-mappings.get('disable_cc'));
        System.assertEquals('fraudrecordScore', x-property-mappings.get('fraudrecord_score'));
        System.assertEquals('paymentMethod', x-property-mappings.get('payment_method'));
        System.assertEquals('accountId', x-property-mappings.get('account_id'));
        System.assertEquals('accountLid', x-property-mappings.get('account_lid'));
        System.assertEquals('affiliateDockDescription', x-property-mappings.get('affiliate_dock_description'));
        System.assertEquals('affiliateDockTitle', x-property-mappings.get('affiliate_dock_title'));
        System.assertEquals('affiliatePaymentMethod', x-property-mappings.get('affiliate_payment_method'));
        System.assertEquals('affiliatePaypal', x-property-mappings.get('affiliate_paypal'));
        System.assertEquals('ccAuto', x-property-mappings.get('cc_auto'));
        System.assertEquals('ccExp', x-property-mappings.get('cc_exp'));
        System.assertEquals('ccType', x-property-mappings.get('cc_type'));
        System.assertEquals('ccWhitelist', x-property-mappings.get('cc_whitelist'));
        System.assertEquals('ccsAdded', x-property-mappings.get('ccs_added'));
        System.assertEquals('r_currency', x-property-mappings.get('currency'));
        System.assertEquals('disableReinstall', x-property-mappings.get('disable_reinstall'));
        System.assertEquals('disableReset', x-property-mappings.get('disable_reset'));
        System.assertEquals('emailAbuse', x-property-mappings.get('email_abuse'));
        System.assertEquals('emailSettings', x-property-mappings.get('email_settings'));
        System.assertEquals('facebookId', x-property-mappings.get('facebook_id'));
        System.assertEquals('facebookUrl', x-property-mappings.get('facebook_url'));
        System.assertEquals('githubId', x-property-mappings.get('github_id'));
        System.assertEquals('githubUrl', x-property-mappings.get('github_url'));
        System.assertEquals('googleId', x-property-mappings.get('google_id'));
        System.assertEquals('googleUrl', x-property-mappings.get('google_url'));
        System.assertEquals('innertellId', x-property-mappings.get('innertell_id'));
        System.assertEquals('maxmindScore', x-property-mappings.get('maxmind_score'));
        System.assertEquals('mbId', x-property-mappings.get('mb_id'));
        System.assertEquals('modernbillId', x-property-mappings.get('modernbill_id'));
        System.assertEquals('referrerCoupon', x-property-mappings.get('referrer_coupon'));
        System.assertEquals('resellerMarkup', x-property-mappings.get('reseller_markup'));
        System.assertEquals('sshKey', x-property-mappings.get('ssh_key'));
        System.assertEquals('sshKeyWrapped', x-property-mappings.get('ssh_key_wrapped'));
        System.assertEquals('apiKey', x-property-mappings.get('api_key'));
        System.assertEquals('apiKeyWrapped', x-property-mappings.get('api_key_wrapped'));
        System.assertEquals('', x-property-mappings.get('2fa_google_key'));
        System.assertEquals('', x-property-mappings.get('2fa_google_enabled'));
        System.assertEquals('', x-property-mappings.get('2fa_google'));
        System.assertEquals('', x-property-mappings.get('2fa_google_split'));
        System.assertEquals('', x-property-mappings.get('2fa_google_qr'));
    }
}
