@isTest
private class IntServerCreateGeoRule400ResponseTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerCreateGeoRule400Response createGeoRule400Response1 = IntServerCreateGeoRule400Response.getExample();
        IntServerCreateGeoRule400Response createGeoRule400Response2 = createGeoRule400Response1;
        IntServerCreateGeoRule400Response createGeoRule400Response3 = new IntServerCreateGeoRule400Response();
        IntServerCreateGeoRule400Response createGeoRule400Response4 = createGeoRule400Response3;

        System.assert(createGeoRule400Response1.equals(createGeoRule400Response2));
        System.assert(createGeoRule400Response2.equals(createGeoRule400Response1));
        System.assert(createGeoRule400Response1.equals(createGeoRule400Response1));
        System.assert(createGeoRule400Response3.equals(createGeoRule400Response4));
        System.assert(createGeoRule400Response4.equals(createGeoRule400Response3));
        System.assert(createGeoRule400Response3.equals(createGeoRule400Response3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerCreateGeoRule400Response createGeoRule400Response1 = IntServerCreateGeoRule400Response.getExample();
        IntServerCreateGeoRule400Response createGeoRule400Response2 = IntServerCreateGeoRule400Response.getExample();
        IntServerCreateGeoRule400Response createGeoRule400Response3 = new IntServerCreateGeoRule400Response();
        IntServerCreateGeoRule400Response createGeoRule400Response4 = new IntServerCreateGeoRule400Response();

        System.assert(createGeoRule400Response1.equals(createGeoRule400Response2));
        System.assert(createGeoRule400Response2.equals(createGeoRule400Response1));
        System.assert(createGeoRule400Response3.equals(createGeoRule400Response4));
        System.assert(createGeoRule400Response4.equals(createGeoRule400Response3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerCreateGeoRule400Response createGeoRule400Response1 = IntServerCreateGeoRule400Response.getExample();
        IntServerCreateGeoRule400Response createGeoRule400Response2 = new IntServerCreateGeoRule400Response();

        System.assertEquals(false, createGeoRule400Response1.equals('foo'));
        System.assertEquals(false, createGeoRule400Response2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerCreateGeoRule400Response createGeoRule400Response1 = IntServerCreateGeoRule400Response.getExample();
        IntServerCreateGeoRule400Response createGeoRule400Response2 = new IntServerCreateGeoRule400Response();
        IntServerCreateGeoRule400Response createGeoRule400Response3;

        System.assertEquals(false, createGeoRule400Response1.equals(createGeoRule400Response3));
        System.assertEquals(false, createGeoRule400Response2.equals(createGeoRule400Response3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerCreateGeoRule400Response createGeoRule400Response1 = IntServerCreateGeoRule400Response.getExample();
        IntServerCreateGeoRule400Response createGeoRule400Response2 = new IntServerCreateGeoRule400Response();

        System.assertEquals(createGeoRule400Response1.hashCode(), createGeoRule400Response1.hashCode());
        System.assertEquals(createGeoRule400Response2.hashCode(), createGeoRule400Response2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerCreateGeoRule400Response createGeoRule400Response1 = IntServerCreateGeoRule400Response.getExample();
        IntServerCreateGeoRule400Response createGeoRule400Response2 = IntServerCreateGeoRule400Response.getExample();
        IntServerCreateGeoRule400Response createGeoRule400Response3 = new IntServerCreateGeoRule400Response();
        IntServerCreateGeoRule400Response createGeoRule400Response4 = new IntServerCreateGeoRule400Response();

        System.assert(createGeoRule400Response1.equals(createGeoRule400Response2));
        System.assert(createGeoRule400Response3.equals(createGeoRule400Response4));
        System.assertEquals(createGeoRule400Response1.hashCode(), createGeoRule400Response2.hashCode());
        System.assertEquals(createGeoRule400Response3.hashCode(), createGeoRule400Response4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        IntServerCreateGeoRule400Response createGeoRule400Response = new IntServerCreateGeoRule400Response();
        System.assertEquals(new List<String>(), createGeoRule400Response.errors);
        System.assertEquals(null, createGeoRule400Response.success);
        System.assertEquals(null, createGeoRule400Response.text);
    }
}
