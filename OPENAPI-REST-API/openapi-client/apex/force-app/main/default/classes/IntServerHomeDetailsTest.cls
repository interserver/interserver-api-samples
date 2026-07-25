@isTest
private class IntServerHomeDetailsTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerHomeDetails homeDetails1 = IntServerHomeDetails.getExample();
        IntServerHomeDetails homeDetails2 = homeDetails1;
        IntServerHomeDetails homeDetails3 = new IntServerHomeDetails();
        IntServerHomeDetails homeDetails4 = homeDetails3;

        System.assert(homeDetails1.equals(homeDetails2));
        System.assert(homeDetails2.equals(homeDetails1));
        System.assert(homeDetails1.equals(homeDetails1));
        System.assert(homeDetails3.equals(homeDetails4));
        System.assert(homeDetails4.equals(homeDetails3));
        System.assert(homeDetails3.equals(homeDetails3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerHomeDetails homeDetails1 = IntServerHomeDetails.getExample();
        IntServerHomeDetails homeDetails2 = IntServerHomeDetails.getExample();
        IntServerHomeDetails homeDetails3 = new IntServerHomeDetails();
        IntServerHomeDetails homeDetails4 = new IntServerHomeDetails();

        System.assert(homeDetails1.equals(homeDetails2));
        System.assert(homeDetails2.equals(homeDetails1));
        System.assert(homeDetails3.equals(homeDetails4));
        System.assert(homeDetails4.equals(homeDetails3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerHomeDetails homeDetails1 = IntServerHomeDetails.getExample();
        IntServerHomeDetails homeDetails2 = new IntServerHomeDetails();

        System.assertEquals(false, homeDetails1.equals('foo'));
        System.assertEquals(false, homeDetails2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerHomeDetails homeDetails1 = IntServerHomeDetails.getExample();
        IntServerHomeDetails homeDetails2 = new IntServerHomeDetails();
        IntServerHomeDetails homeDetails3;

        System.assertEquals(false, homeDetails1.equals(homeDetails3));
        System.assertEquals(false, homeDetails2.equals(homeDetails3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerHomeDetails homeDetails1 = IntServerHomeDetails.getExample();
        IntServerHomeDetails homeDetails2 = new IntServerHomeDetails();

        System.assertEquals(homeDetails1.hashCode(), homeDetails1.hashCode());
        System.assertEquals(homeDetails2.hashCode(), homeDetails2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerHomeDetails homeDetails1 = IntServerHomeDetails.getExample();
        IntServerHomeDetails homeDetails2 = IntServerHomeDetails.getExample();
        IntServerHomeDetails homeDetails3 = new IntServerHomeDetails();
        IntServerHomeDetails homeDetails4 = new IntServerHomeDetails();

        System.assert(homeDetails1.equals(homeDetails2));
        System.assert(homeDetails3.equals(homeDetails4));
        System.assertEquals(homeDetails1.hashCode(), homeDetails2.hashCode());
        System.assertEquals(homeDetails3.hashCode(), homeDetails4.hashCode());
    }
}
