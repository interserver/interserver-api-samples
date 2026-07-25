@isTest
private class IntServerCreateFilter500ResponseTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerCreateFilter500Response createFilter500Response1 = IntServerCreateFilter500Response.getExample();
        IntServerCreateFilter500Response createFilter500Response2 = createFilter500Response1;
        IntServerCreateFilter500Response createFilter500Response3 = new IntServerCreateFilter500Response();
        IntServerCreateFilter500Response createFilter500Response4 = createFilter500Response3;

        System.assert(createFilter500Response1.equals(createFilter500Response2));
        System.assert(createFilter500Response2.equals(createFilter500Response1));
        System.assert(createFilter500Response1.equals(createFilter500Response1));
        System.assert(createFilter500Response3.equals(createFilter500Response4));
        System.assert(createFilter500Response4.equals(createFilter500Response3));
        System.assert(createFilter500Response3.equals(createFilter500Response3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerCreateFilter500Response createFilter500Response1 = IntServerCreateFilter500Response.getExample();
        IntServerCreateFilter500Response createFilter500Response2 = IntServerCreateFilter500Response.getExample();
        IntServerCreateFilter500Response createFilter500Response3 = new IntServerCreateFilter500Response();
        IntServerCreateFilter500Response createFilter500Response4 = new IntServerCreateFilter500Response();

        System.assert(createFilter500Response1.equals(createFilter500Response2));
        System.assert(createFilter500Response2.equals(createFilter500Response1));
        System.assert(createFilter500Response3.equals(createFilter500Response4));
        System.assert(createFilter500Response4.equals(createFilter500Response3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerCreateFilter500Response createFilter500Response1 = IntServerCreateFilter500Response.getExample();
        IntServerCreateFilter500Response createFilter500Response2 = new IntServerCreateFilter500Response();

        System.assertEquals(false, createFilter500Response1.equals('foo'));
        System.assertEquals(false, createFilter500Response2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerCreateFilter500Response createFilter500Response1 = IntServerCreateFilter500Response.getExample();
        IntServerCreateFilter500Response createFilter500Response2 = new IntServerCreateFilter500Response();
        IntServerCreateFilter500Response createFilter500Response3;

        System.assertEquals(false, createFilter500Response1.equals(createFilter500Response3));
        System.assertEquals(false, createFilter500Response2.equals(createFilter500Response3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerCreateFilter500Response createFilter500Response1 = IntServerCreateFilter500Response.getExample();
        IntServerCreateFilter500Response createFilter500Response2 = new IntServerCreateFilter500Response();

        System.assertEquals(createFilter500Response1.hashCode(), createFilter500Response1.hashCode());
        System.assertEquals(createFilter500Response2.hashCode(), createFilter500Response2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerCreateFilter500Response createFilter500Response1 = IntServerCreateFilter500Response.getExample();
        IntServerCreateFilter500Response createFilter500Response2 = IntServerCreateFilter500Response.getExample();
        IntServerCreateFilter500Response createFilter500Response3 = new IntServerCreateFilter500Response();
        IntServerCreateFilter500Response createFilter500Response4 = new IntServerCreateFilter500Response();

        System.assert(createFilter500Response1.equals(createFilter500Response2));
        System.assert(createFilter500Response3.equals(createFilter500Response4));
        System.assertEquals(createFilter500Response1.hashCode(), createFilter500Response2.hashCode());
        System.assertEquals(createFilter500Response3.hashCode(), createFilter500Response4.hashCode());
    }
}
