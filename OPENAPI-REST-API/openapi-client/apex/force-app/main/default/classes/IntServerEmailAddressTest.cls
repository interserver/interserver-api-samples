@isTest
private class IntServerEmailAddressTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerEmailAddress emailAddress1 = IntServerEmailAddress.getExample();
        IntServerEmailAddress emailAddress2 = emailAddress1;
        IntServerEmailAddress emailAddress3 = new IntServerEmailAddress();
        IntServerEmailAddress emailAddress4 = emailAddress3;

        System.assert(emailAddress1.equals(emailAddress2));
        System.assert(emailAddress2.equals(emailAddress1));
        System.assert(emailAddress1.equals(emailAddress1));
        System.assert(emailAddress3.equals(emailAddress4));
        System.assert(emailAddress4.equals(emailAddress3));
        System.assert(emailAddress3.equals(emailAddress3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerEmailAddress emailAddress1 = IntServerEmailAddress.getExample();
        IntServerEmailAddress emailAddress2 = IntServerEmailAddress.getExample();
        IntServerEmailAddress emailAddress3 = new IntServerEmailAddress();
        IntServerEmailAddress emailAddress4 = new IntServerEmailAddress();

        System.assert(emailAddress1.equals(emailAddress2));
        System.assert(emailAddress2.equals(emailAddress1));
        System.assert(emailAddress3.equals(emailAddress4));
        System.assert(emailAddress4.equals(emailAddress3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerEmailAddress emailAddress1 = IntServerEmailAddress.getExample();
        IntServerEmailAddress emailAddress2 = new IntServerEmailAddress();

        System.assertEquals(false, emailAddress1.equals('foo'));
        System.assertEquals(false, emailAddress2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerEmailAddress emailAddress1 = IntServerEmailAddress.getExample();
        IntServerEmailAddress emailAddress2 = new IntServerEmailAddress();
        IntServerEmailAddress emailAddress3;

        System.assertEquals(false, emailAddress1.equals(emailAddress3));
        System.assertEquals(false, emailAddress2.equals(emailAddress3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerEmailAddress emailAddress1 = IntServerEmailAddress.getExample();
        IntServerEmailAddress emailAddress2 = new IntServerEmailAddress();

        System.assertEquals(emailAddress1.hashCode(), emailAddress1.hashCode());
        System.assertEquals(emailAddress2.hashCode(), emailAddress2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerEmailAddress emailAddress1 = IntServerEmailAddress.getExample();
        IntServerEmailAddress emailAddress2 = IntServerEmailAddress.getExample();
        IntServerEmailAddress emailAddress3 = new IntServerEmailAddress();
        IntServerEmailAddress emailAddress4 = new IntServerEmailAddress();

        System.assert(emailAddress1.equals(emailAddress2));
        System.assert(emailAddress3.equals(emailAddress4));
        System.assertEquals(emailAddress1.hashCode(), emailAddress2.hashCode());
        System.assertEquals(emailAddress3.hashCode(), emailAddress4.hashCode());
    }
}
