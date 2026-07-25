@isTest
private class IntServerAddServer200ResponseTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerAddServer200Response addServer200Response1 = IntServerAddServer200Response.getExample();
        IntServerAddServer200Response addServer200Response2 = addServer200Response1;
        IntServerAddServer200Response addServer200Response3 = new IntServerAddServer200Response();
        IntServerAddServer200Response addServer200Response4 = addServer200Response3;

        System.assert(addServer200Response1.equals(addServer200Response2));
        System.assert(addServer200Response2.equals(addServer200Response1));
        System.assert(addServer200Response1.equals(addServer200Response1));
        System.assert(addServer200Response3.equals(addServer200Response4));
        System.assert(addServer200Response4.equals(addServer200Response3));
        System.assert(addServer200Response3.equals(addServer200Response3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerAddServer200Response addServer200Response1 = IntServerAddServer200Response.getExample();
        IntServerAddServer200Response addServer200Response2 = IntServerAddServer200Response.getExample();
        IntServerAddServer200Response addServer200Response3 = new IntServerAddServer200Response();
        IntServerAddServer200Response addServer200Response4 = new IntServerAddServer200Response();

        System.assert(addServer200Response1.equals(addServer200Response2));
        System.assert(addServer200Response2.equals(addServer200Response1));
        System.assert(addServer200Response3.equals(addServer200Response4));
        System.assert(addServer200Response4.equals(addServer200Response3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerAddServer200Response addServer200Response1 = IntServerAddServer200Response.getExample();
        IntServerAddServer200Response addServer200Response2 = new IntServerAddServer200Response();

        System.assertEquals(false, addServer200Response1.equals('foo'));
        System.assertEquals(false, addServer200Response2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerAddServer200Response addServer200Response1 = IntServerAddServer200Response.getExample();
        IntServerAddServer200Response addServer200Response2 = new IntServerAddServer200Response();
        IntServerAddServer200Response addServer200Response3;

        System.assertEquals(false, addServer200Response1.equals(addServer200Response3));
        System.assertEquals(false, addServer200Response2.equals(addServer200Response3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerAddServer200Response addServer200Response1 = IntServerAddServer200Response.getExample();
        IntServerAddServer200Response addServer200Response2 = new IntServerAddServer200Response();

        System.assertEquals(addServer200Response1.hashCode(), addServer200Response1.hashCode());
        System.assertEquals(addServer200Response2.hashCode(), addServer200Response2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerAddServer200Response addServer200Response1 = IntServerAddServer200Response.getExample();
        IntServerAddServer200Response addServer200Response2 = IntServerAddServer200Response.getExample();
        IntServerAddServer200Response addServer200Response3 = new IntServerAddServer200Response();
        IntServerAddServer200Response addServer200Response4 = new IntServerAddServer200Response();

        System.assert(addServer200Response1.equals(addServer200Response2));
        System.assert(addServer200Response3.equals(addServer200Response4));
        System.assertEquals(addServer200Response1.hashCode(), addServer200Response2.hashCode());
        System.assertEquals(addServer200Response3.hashCode(), addServer200Response4.hashCode());
    }
}
