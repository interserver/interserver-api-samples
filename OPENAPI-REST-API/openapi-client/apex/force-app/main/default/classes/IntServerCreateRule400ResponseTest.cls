@isTest
private class IntServerCreateRule400ResponseTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerCreateRule400Response createRule400Response1 = IntServerCreateRule400Response.getExample();
        IntServerCreateRule400Response createRule400Response2 = createRule400Response1;
        IntServerCreateRule400Response createRule400Response3 = new IntServerCreateRule400Response();
        IntServerCreateRule400Response createRule400Response4 = createRule400Response3;

        System.assert(createRule400Response1.equals(createRule400Response2));
        System.assert(createRule400Response2.equals(createRule400Response1));
        System.assert(createRule400Response1.equals(createRule400Response1));
        System.assert(createRule400Response3.equals(createRule400Response4));
        System.assert(createRule400Response4.equals(createRule400Response3));
        System.assert(createRule400Response3.equals(createRule400Response3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerCreateRule400Response createRule400Response1 = IntServerCreateRule400Response.getExample();
        IntServerCreateRule400Response createRule400Response2 = IntServerCreateRule400Response.getExample();
        IntServerCreateRule400Response createRule400Response3 = new IntServerCreateRule400Response();
        IntServerCreateRule400Response createRule400Response4 = new IntServerCreateRule400Response();

        System.assert(createRule400Response1.equals(createRule400Response2));
        System.assert(createRule400Response2.equals(createRule400Response1));
        System.assert(createRule400Response3.equals(createRule400Response4));
        System.assert(createRule400Response4.equals(createRule400Response3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerCreateRule400Response createRule400Response1 = IntServerCreateRule400Response.getExample();
        IntServerCreateRule400Response createRule400Response2 = new IntServerCreateRule400Response();

        System.assertEquals(false, createRule400Response1.equals('foo'));
        System.assertEquals(false, createRule400Response2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerCreateRule400Response createRule400Response1 = IntServerCreateRule400Response.getExample();
        IntServerCreateRule400Response createRule400Response2 = new IntServerCreateRule400Response();
        IntServerCreateRule400Response createRule400Response3;

        System.assertEquals(false, createRule400Response1.equals(createRule400Response3));
        System.assertEquals(false, createRule400Response2.equals(createRule400Response3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerCreateRule400Response createRule400Response1 = IntServerCreateRule400Response.getExample();
        IntServerCreateRule400Response createRule400Response2 = new IntServerCreateRule400Response();

        System.assertEquals(createRule400Response1.hashCode(), createRule400Response1.hashCode());
        System.assertEquals(createRule400Response2.hashCode(), createRule400Response2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerCreateRule400Response createRule400Response1 = IntServerCreateRule400Response.getExample();
        IntServerCreateRule400Response createRule400Response2 = IntServerCreateRule400Response.getExample();
        IntServerCreateRule400Response createRule400Response3 = new IntServerCreateRule400Response();
        IntServerCreateRule400Response createRule400Response4 = new IntServerCreateRule400Response();

        System.assert(createRule400Response1.equals(createRule400Response2));
        System.assert(createRule400Response3.equals(createRule400Response4));
        System.assertEquals(createRule400Response1.hashCode(), createRule400Response2.hashCode());
        System.assertEquals(createRule400Response3.hashCode(), createRule400Response4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        IntServerCreateRule400Response createRule400Response = new IntServerCreateRule400Response();
        System.assertEquals(new List<String>(), createRule400Response.errors);
        System.assertEquals(null, createRule400Response.success);
        System.assertEquals(null, createRule400Response.text);
    }
}
