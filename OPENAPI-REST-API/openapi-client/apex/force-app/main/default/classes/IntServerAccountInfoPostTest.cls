@isTest
private class IntServerAccountInfoPostTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerAccountInfoPost accountInfoPost1 = IntServerAccountInfoPost.getExample();
        IntServerAccountInfoPost accountInfoPost2 = accountInfoPost1;
        IntServerAccountInfoPost accountInfoPost3 = new IntServerAccountInfoPost();
        IntServerAccountInfoPost accountInfoPost4 = accountInfoPost3;

        System.assert(accountInfoPost1.equals(accountInfoPost2));
        System.assert(accountInfoPost2.equals(accountInfoPost1));
        System.assert(accountInfoPost1.equals(accountInfoPost1));
        System.assert(accountInfoPost3.equals(accountInfoPost4));
        System.assert(accountInfoPost4.equals(accountInfoPost3));
        System.assert(accountInfoPost3.equals(accountInfoPost3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerAccountInfoPost accountInfoPost1 = IntServerAccountInfoPost.getExample();
        IntServerAccountInfoPost accountInfoPost2 = IntServerAccountInfoPost.getExample();
        IntServerAccountInfoPost accountInfoPost3 = new IntServerAccountInfoPost();
        IntServerAccountInfoPost accountInfoPost4 = new IntServerAccountInfoPost();

        System.assert(accountInfoPost1.equals(accountInfoPost2));
        System.assert(accountInfoPost2.equals(accountInfoPost1));
        System.assert(accountInfoPost3.equals(accountInfoPost4));
        System.assert(accountInfoPost4.equals(accountInfoPost3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerAccountInfoPost accountInfoPost1 = IntServerAccountInfoPost.getExample();
        IntServerAccountInfoPost accountInfoPost2 = new IntServerAccountInfoPost();

        System.assertEquals(false, accountInfoPost1.equals('foo'));
        System.assertEquals(false, accountInfoPost2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerAccountInfoPost accountInfoPost1 = IntServerAccountInfoPost.getExample();
        IntServerAccountInfoPost accountInfoPost2 = new IntServerAccountInfoPost();
        IntServerAccountInfoPost accountInfoPost3;

        System.assertEquals(false, accountInfoPost1.equals(accountInfoPost3));
        System.assertEquals(false, accountInfoPost2.equals(accountInfoPost3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerAccountInfoPost accountInfoPost1 = IntServerAccountInfoPost.getExample();
        IntServerAccountInfoPost accountInfoPost2 = new IntServerAccountInfoPost();

        System.assertEquals(accountInfoPost1.hashCode(), accountInfoPost1.hashCode());
        System.assertEquals(accountInfoPost2.hashCode(), accountInfoPost2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerAccountInfoPost accountInfoPost1 = IntServerAccountInfoPost.getExample();
        IntServerAccountInfoPost accountInfoPost2 = IntServerAccountInfoPost.getExample();
        IntServerAccountInfoPost accountInfoPost3 = new IntServerAccountInfoPost();
        IntServerAccountInfoPost accountInfoPost4 = new IntServerAccountInfoPost();

        System.assert(accountInfoPost1.equals(accountInfoPost2));
        System.assert(accountInfoPost3.equals(accountInfoPost4));
        System.assertEquals(accountInfoPost1.hashCode(), accountInfoPost2.hashCode());
        System.assertEquals(accountInfoPost3.hashCode(), accountInfoPost4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerAccountInfoPost accountInfoPost = new IntServerAccountInfoPost();
        Map<String, String> x-property-mappings = accountInfoPost.getx-property-mappings();
        System.assertEquals('emailInvoices', x-property-mappings.get('email_invoices'));
        System.assertEquals('emailAbuse', x-property-mappings.get('email_abuse'));
        System.assertEquals('disableReset', x-property-mappings.get('disable_reset'));
        System.assertEquals('disableReinstall', x-property-mappings.get('disable_reinstall'));
        System.assertEquals('disableServerNotifications', x-property-mappings.get('disable_server_notifications'));
        System.assertEquals('disableEmailNotifications', x-property-mappings.get('disable_email_notifications'));
    }
}
