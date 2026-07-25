@isTest
private class IntServerEmailAddressNameTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerEmailAddressName emailAddressName1 = IntServerEmailAddressName.getExample();
        IntServerEmailAddressName emailAddressName2 = emailAddressName1;
        IntServerEmailAddressName emailAddressName3 = new IntServerEmailAddressName();
        IntServerEmailAddressName emailAddressName4 = emailAddressName3;

        System.assert(emailAddressName1.equals(emailAddressName2));
        System.assert(emailAddressName2.equals(emailAddressName1));
        System.assert(emailAddressName1.equals(emailAddressName1));
        System.assert(emailAddressName3.equals(emailAddressName4));
        System.assert(emailAddressName4.equals(emailAddressName3));
        System.assert(emailAddressName3.equals(emailAddressName3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerEmailAddressName emailAddressName1 = IntServerEmailAddressName.getExample();
        IntServerEmailAddressName emailAddressName2 = IntServerEmailAddressName.getExample();
        IntServerEmailAddressName emailAddressName3 = new IntServerEmailAddressName();
        IntServerEmailAddressName emailAddressName4 = new IntServerEmailAddressName();

        System.assert(emailAddressName1.equals(emailAddressName2));
        System.assert(emailAddressName2.equals(emailAddressName1));
        System.assert(emailAddressName3.equals(emailAddressName4));
        System.assert(emailAddressName4.equals(emailAddressName3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerEmailAddressName emailAddressName1 = IntServerEmailAddressName.getExample();
        IntServerEmailAddressName emailAddressName2 = new IntServerEmailAddressName();

        System.assertEquals(false, emailAddressName1.equals('foo'));
        System.assertEquals(false, emailAddressName2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerEmailAddressName emailAddressName1 = IntServerEmailAddressName.getExample();
        IntServerEmailAddressName emailAddressName2 = new IntServerEmailAddressName();
        IntServerEmailAddressName emailAddressName3;

        System.assertEquals(false, emailAddressName1.equals(emailAddressName3));
        System.assertEquals(false, emailAddressName2.equals(emailAddressName3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerEmailAddressName emailAddressName1 = IntServerEmailAddressName.getExample();
        IntServerEmailAddressName emailAddressName2 = new IntServerEmailAddressName();

        System.assertEquals(emailAddressName1.hashCode(), emailAddressName1.hashCode());
        System.assertEquals(emailAddressName2.hashCode(), emailAddressName2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerEmailAddressName emailAddressName1 = IntServerEmailAddressName.getExample();
        IntServerEmailAddressName emailAddressName2 = IntServerEmailAddressName.getExample();
        IntServerEmailAddressName emailAddressName3 = new IntServerEmailAddressName();
        IntServerEmailAddressName emailAddressName4 = new IntServerEmailAddressName();

        System.assert(emailAddressName1.equals(emailAddressName2));
        System.assert(emailAddressName3.equals(emailAddressName4));
        System.assertEquals(emailAddressName1.hashCode(), emailAddressName2.hashCode());
        System.assertEquals(emailAddressName3.hashCode(), emailAddressName4.hashCode());
    }
}
