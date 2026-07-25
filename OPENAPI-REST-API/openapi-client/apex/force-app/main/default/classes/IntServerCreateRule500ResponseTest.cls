@isTest
private class IntServerCreateRule500ResponseTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerCreateRule500Response createRule500Response1 = IntServerCreateRule500Response.getExample();
        IntServerCreateRule500Response createRule500Response2 = createRule500Response1;
        IntServerCreateRule500Response createRule500Response3 = new IntServerCreateRule500Response();
        IntServerCreateRule500Response createRule500Response4 = createRule500Response3;

        System.assert(createRule500Response1.equals(createRule500Response2));
        System.assert(createRule500Response2.equals(createRule500Response1));
        System.assert(createRule500Response1.equals(createRule500Response1));
        System.assert(createRule500Response3.equals(createRule500Response4));
        System.assert(createRule500Response4.equals(createRule500Response3));
        System.assert(createRule500Response3.equals(createRule500Response3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerCreateRule500Response createRule500Response1 = IntServerCreateRule500Response.getExample();
        IntServerCreateRule500Response createRule500Response2 = IntServerCreateRule500Response.getExample();
        IntServerCreateRule500Response createRule500Response3 = new IntServerCreateRule500Response();
        IntServerCreateRule500Response createRule500Response4 = new IntServerCreateRule500Response();

        System.assert(createRule500Response1.equals(createRule500Response2));
        System.assert(createRule500Response2.equals(createRule500Response1));
        System.assert(createRule500Response3.equals(createRule500Response4));
        System.assert(createRule500Response4.equals(createRule500Response3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerCreateRule500Response createRule500Response1 = IntServerCreateRule500Response.getExample();
        IntServerCreateRule500Response createRule500Response2 = new IntServerCreateRule500Response();

        System.assertEquals(false, createRule500Response1.equals('foo'));
        System.assertEquals(false, createRule500Response2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerCreateRule500Response createRule500Response1 = IntServerCreateRule500Response.getExample();
        IntServerCreateRule500Response createRule500Response2 = new IntServerCreateRule500Response();
        IntServerCreateRule500Response createRule500Response3;

        System.assertEquals(false, createRule500Response1.equals(createRule500Response3));
        System.assertEquals(false, createRule500Response2.equals(createRule500Response3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerCreateRule500Response createRule500Response1 = IntServerCreateRule500Response.getExample();
        IntServerCreateRule500Response createRule500Response2 = new IntServerCreateRule500Response();

        System.assertEquals(createRule500Response1.hashCode(), createRule500Response1.hashCode());
        System.assertEquals(createRule500Response2.hashCode(), createRule500Response2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerCreateRule500Response createRule500Response1 = IntServerCreateRule500Response.getExample();
        IntServerCreateRule500Response createRule500Response2 = IntServerCreateRule500Response.getExample();
        IntServerCreateRule500Response createRule500Response3 = new IntServerCreateRule500Response();
        IntServerCreateRule500Response createRule500Response4 = new IntServerCreateRule500Response();

        System.assert(createRule500Response1.equals(createRule500Response2));
        System.assert(createRule500Response3.equals(createRule500Response4));
        System.assertEquals(createRule500Response1.hashCode(), createRule500Response2.hashCode());
        System.assertEquals(createRule500Response3.hashCode(), createRule500Response4.hashCode());
    }
}
