@isTest
private class IntServerGetAccountInfo401ResponseTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerGetAccountInfo401Response getAccountInfo401Response1 = IntServerGetAccountInfo401Response.getExample();
        IntServerGetAccountInfo401Response getAccountInfo401Response2 = getAccountInfo401Response1;
        IntServerGetAccountInfo401Response getAccountInfo401Response3 = new IntServerGetAccountInfo401Response();
        IntServerGetAccountInfo401Response getAccountInfo401Response4 = getAccountInfo401Response3;

        System.assert(getAccountInfo401Response1.equals(getAccountInfo401Response2));
        System.assert(getAccountInfo401Response2.equals(getAccountInfo401Response1));
        System.assert(getAccountInfo401Response1.equals(getAccountInfo401Response1));
        System.assert(getAccountInfo401Response3.equals(getAccountInfo401Response4));
        System.assert(getAccountInfo401Response4.equals(getAccountInfo401Response3));
        System.assert(getAccountInfo401Response3.equals(getAccountInfo401Response3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerGetAccountInfo401Response getAccountInfo401Response1 = IntServerGetAccountInfo401Response.getExample();
        IntServerGetAccountInfo401Response getAccountInfo401Response2 = IntServerGetAccountInfo401Response.getExample();
        IntServerGetAccountInfo401Response getAccountInfo401Response3 = new IntServerGetAccountInfo401Response();
        IntServerGetAccountInfo401Response getAccountInfo401Response4 = new IntServerGetAccountInfo401Response();

        System.assert(getAccountInfo401Response1.equals(getAccountInfo401Response2));
        System.assert(getAccountInfo401Response2.equals(getAccountInfo401Response1));
        System.assert(getAccountInfo401Response3.equals(getAccountInfo401Response4));
        System.assert(getAccountInfo401Response4.equals(getAccountInfo401Response3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerGetAccountInfo401Response getAccountInfo401Response1 = IntServerGetAccountInfo401Response.getExample();
        IntServerGetAccountInfo401Response getAccountInfo401Response2 = new IntServerGetAccountInfo401Response();

        System.assertEquals(false, getAccountInfo401Response1.equals('foo'));
        System.assertEquals(false, getAccountInfo401Response2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerGetAccountInfo401Response getAccountInfo401Response1 = IntServerGetAccountInfo401Response.getExample();
        IntServerGetAccountInfo401Response getAccountInfo401Response2 = new IntServerGetAccountInfo401Response();
        IntServerGetAccountInfo401Response getAccountInfo401Response3;

        System.assertEquals(false, getAccountInfo401Response1.equals(getAccountInfo401Response3));
        System.assertEquals(false, getAccountInfo401Response2.equals(getAccountInfo401Response3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerGetAccountInfo401Response getAccountInfo401Response1 = IntServerGetAccountInfo401Response.getExample();
        IntServerGetAccountInfo401Response getAccountInfo401Response2 = new IntServerGetAccountInfo401Response();

        System.assertEquals(getAccountInfo401Response1.hashCode(), getAccountInfo401Response1.hashCode());
        System.assertEquals(getAccountInfo401Response2.hashCode(), getAccountInfo401Response2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerGetAccountInfo401Response getAccountInfo401Response1 = IntServerGetAccountInfo401Response.getExample();
        IntServerGetAccountInfo401Response getAccountInfo401Response2 = IntServerGetAccountInfo401Response.getExample();
        IntServerGetAccountInfo401Response getAccountInfo401Response3 = new IntServerGetAccountInfo401Response();
        IntServerGetAccountInfo401Response getAccountInfo401Response4 = new IntServerGetAccountInfo401Response();

        System.assert(getAccountInfo401Response1.equals(getAccountInfo401Response2));
        System.assert(getAccountInfo401Response3.equals(getAccountInfo401Response4));
        System.assertEquals(getAccountInfo401Response1.hashCode(), getAccountInfo401Response2.hashCode());
        System.assertEquals(getAccountInfo401Response3.hashCode(), getAccountInfo401Response4.hashCode());
    }
}
