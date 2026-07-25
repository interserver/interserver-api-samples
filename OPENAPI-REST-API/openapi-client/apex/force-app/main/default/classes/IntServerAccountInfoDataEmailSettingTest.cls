@isTest
private class IntServerAccountInfoDataEmailSettingTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerAccountInfoDataEmailSetting accountInfoDataEmailSettings1 = IntServerAccountInfoDataEmailSetting.getExample();
        IntServerAccountInfoDataEmailSetting accountInfoDataEmailSettings2 = accountInfoDataEmailSettings1;
        IntServerAccountInfoDataEmailSetting accountInfoDataEmailSettings3 = new IntServerAccountInfoDataEmailSetting();
        IntServerAccountInfoDataEmailSetting accountInfoDataEmailSettings4 = accountInfoDataEmailSettings3;

        System.assert(accountInfoDataEmailSettings1.equals(accountInfoDataEmailSettings2));
        System.assert(accountInfoDataEmailSettings2.equals(accountInfoDataEmailSettings1));
        System.assert(accountInfoDataEmailSettings1.equals(accountInfoDataEmailSettings1));
        System.assert(accountInfoDataEmailSettings3.equals(accountInfoDataEmailSettings4));
        System.assert(accountInfoDataEmailSettings4.equals(accountInfoDataEmailSettings3));
        System.assert(accountInfoDataEmailSettings3.equals(accountInfoDataEmailSettings3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerAccountInfoDataEmailSetting accountInfoDataEmailSettings1 = IntServerAccountInfoDataEmailSetting.getExample();
        IntServerAccountInfoDataEmailSetting accountInfoDataEmailSettings2 = IntServerAccountInfoDataEmailSetting.getExample();
        IntServerAccountInfoDataEmailSetting accountInfoDataEmailSettings3 = new IntServerAccountInfoDataEmailSetting();
        IntServerAccountInfoDataEmailSetting accountInfoDataEmailSettings4 = new IntServerAccountInfoDataEmailSetting();

        System.assert(accountInfoDataEmailSettings1.equals(accountInfoDataEmailSettings2));
        System.assert(accountInfoDataEmailSettings2.equals(accountInfoDataEmailSettings1));
        System.assert(accountInfoDataEmailSettings3.equals(accountInfoDataEmailSettings4));
        System.assert(accountInfoDataEmailSettings4.equals(accountInfoDataEmailSettings3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerAccountInfoDataEmailSetting accountInfoDataEmailSettings1 = IntServerAccountInfoDataEmailSetting.getExample();
        IntServerAccountInfoDataEmailSetting accountInfoDataEmailSettings2 = new IntServerAccountInfoDataEmailSetting();

        System.assertEquals(false, accountInfoDataEmailSettings1.equals('foo'));
        System.assertEquals(false, accountInfoDataEmailSettings2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerAccountInfoDataEmailSetting accountInfoDataEmailSettings1 = IntServerAccountInfoDataEmailSetting.getExample();
        IntServerAccountInfoDataEmailSetting accountInfoDataEmailSettings2 = new IntServerAccountInfoDataEmailSetting();
        IntServerAccountInfoDataEmailSetting accountInfoDataEmailSettings3;

        System.assertEquals(false, accountInfoDataEmailSettings1.equals(accountInfoDataEmailSettings3));
        System.assertEquals(false, accountInfoDataEmailSettings2.equals(accountInfoDataEmailSettings3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerAccountInfoDataEmailSetting accountInfoDataEmailSettings1 = IntServerAccountInfoDataEmailSetting.getExample();
        IntServerAccountInfoDataEmailSetting accountInfoDataEmailSettings2 = new IntServerAccountInfoDataEmailSetting();

        System.assertEquals(accountInfoDataEmailSettings1.hashCode(), accountInfoDataEmailSettings1.hashCode());
        System.assertEquals(accountInfoDataEmailSettings2.hashCode(), accountInfoDataEmailSettings2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerAccountInfoDataEmailSetting accountInfoDataEmailSettings1 = IntServerAccountInfoDataEmailSetting.getExample();
        IntServerAccountInfoDataEmailSetting accountInfoDataEmailSettings2 = IntServerAccountInfoDataEmailSetting.getExample();
        IntServerAccountInfoDataEmailSetting accountInfoDataEmailSettings3 = new IntServerAccountInfoDataEmailSetting();
        IntServerAccountInfoDataEmailSetting accountInfoDataEmailSettings4 = new IntServerAccountInfoDataEmailSetting();

        System.assert(accountInfoDataEmailSettings1.equals(accountInfoDataEmailSettings2));
        System.assert(accountInfoDataEmailSettings3.equals(accountInfoDataEmailSettings4));
        System.assertEquals(accountInfoDataEmailSettings1.hashCode(), accountInfoDataEmailSettings2.hashCode());
        System.assertEquals(accountInfoDataEmailSettings3.hashCode(), accountInfoDataEmailSettings4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerAccountInfoDataEmailSetting accountInfoDataEmailSettings = new IntServerAccountInfoDataEmailSetting();
        Map<String, String> x-property-mappings = accountInfoDataEmailSettings.getx-property-mappings();
        System.assertEquals('adminCcBadResponse', x-property-mappings.get('admin/cc_bad_response'));
        System.assertEquals('adminMassCommunicationsTpl', x-property-mappings.get('admin/mass_communications.tpl'));
    }
}
