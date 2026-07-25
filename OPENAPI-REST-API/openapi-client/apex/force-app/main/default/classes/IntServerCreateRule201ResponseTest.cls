@isTest
private class IntServerCreateRule201ResponseTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerCreateRule201Response createRule201Response1 = IntServerCreateRule201Response.getExample();
        IntServerCreateRule201Response createRule201Response2 = createRule201Response1;
        IntServerCreateRule201Response createRule201Response3 = new IntServerCreateRule201Response();
        IntServerCreateRule201Response createRule201Response4 = createRule201Response3;

        System.assert(createRule201Response1.equals(createRule201Response2));
        System.assert(createRule201Response2.equals(createRule201Response1));
        System.assert(createRule201Response1.equals(createRule201Response1));
        System.assert(createRule201Response3.equals(createRule201Response4));
        System.assert(createRule201Response4.equals(createRule201Response3));
        System.assert(createRule201Response3.equals(createRule201Response3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerCreateRule201Response createRule201Response1 = IntServerCreateRule201Response.getExample();
        IntServerCreateRule201Response createRule201Response2 = IntServerCreateRule201Response.getExample();
        IntServerCreateRule201Response createRule201Response3 = new IntServerCreateRule201Response();
        IntServerCreateRule201Response createRule201Response4 = new IntServerCreateRule201Response();

        System.assert(createRule201Response1.equals(createRule201Response2));
        System.assert(createRule201Response2.equals(createRule201Response1));
        System.assert(createRule201Response3.equals(createRule201Response4));
        System.assert(createRule201Response4.equals(createRule201Response3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerCreateRule201Response createRule201Response1 = IntServerCreateRule201Response.getExample();
        IntServerCreateRule201Response createRule201Response2 = new IntServerCreateRule201Response();

        System.assertEquals(false, createRule201Response1.equals('foo'));
        System.assertEquals(false, createRule201Response2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerCreateRule201Response createRule201Response1 = IntServerCreateRule201Response.getExample();
        IntServerCreateRule201Response createRule201Response2 = new IntServerCreateRule201Response();
        IntServerCreateRule201Response createRule201Response3;

        System.assertEquals(false, createRule201Response1.equals(createRule201Response3));
        System.assertEquals(false, createRule201Response2.equals(createRule201Response3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerCreateRule201Response createRule201Response1 = IntServerCreateRule201Response.getExample();
        IntServerCreateRule201Response createRule201Response2 = new IntServerCreateRule201Response();

        System.assertEquals(createRule201Response1.hashCode(), createRule201Response1.hashCode());
        System.assertEquals(createRule201Response2.hashCode(), createRule201Response2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerCreateRule201Response createRule201Response1 = IntServerCreateRule201Response.getExample();
        IntServerCreateRule201Response createRule201Response2 = IntServerCreateRule201Response.getExample();
        IntServerCreateRule201Response createRule201Response3 = new IntServerCreateRule201Response();
        IntServerCreateRule201Response createRule201Response4 = new IntServerCreateRule201Response();

        System.assert(createRule201Response1.equals(createRule201Response2));
        System.assert(createRule201Response3.equals(createRule201Response4));
        System.assertEquals(createRule201Response1.hashCode(), createRule201Response2.hashCode());
        System.assertEquals(createRule201Response3.hashCode(), createRule201Response4.hashCode());
    }
}
