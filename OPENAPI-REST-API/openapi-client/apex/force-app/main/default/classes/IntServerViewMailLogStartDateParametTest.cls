@isTest
private class IntServerViewMailLogStartDateParametTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerViewMailLogStartDateParamet viewMailLogStartDateParameter1 = IntServerViewMailLogStartDateParamet.getExample();
        IntServerViewMailLogStartDateParamet viewMailLogStartDateParameter2 = viewMailLogStartDateParameter1;
        IntServerViewMailLogStartDateParamet viewMailLogStartDateParameter3 = new IntServerViewMailLogStartDateParamet();
        IntServerViewMailLogStartDateParamet viewMailLogStartDateParameter4 = viewMailLogStartDateParameter3;

        System.assert(viewMailLogStartDateParameter1.equals(viewMailLogStartDateParameter2));
        System.assert(viewMailLogStartDateParameter2.equals(viewMailLogStartDateParameter1));
        System.assert(viewMailLogStartDateParameter1.equals(viewMailLogStartDateParameter1));
        System.assert(viewMailLogStartDateParameter3.equals(viewMailLogStartDateParameter4));
        System.assert(viewMailLogStartDateParameter4.equals(viewMailLogStartDateParameter3));
        System.assert(viewMailLogStartDateParameter3.equals(viewMailLogStartDateParameter3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerViewMailLogStartDateParamet viewMailLogStartDateParameter1 = IntServerViewMailLogStartDateParamet.getExample();
        IntServerViewMailLogStartDateParamet viewMailLogStartDateParameter2 = IntServerViewMailLogStartDateParamet.getExample();
        IntServerViewMailLogStartDateParamet viewMailLogStartDateParameter3 = new IntServerViewMailLogStartDateParamet();
        IntServerViewMailLogStartDateParamet viewMailLogStartDateParameter4 = new IntServerViewMailLogStartDateParamet();

        System.assert(viewMailLogStartDateParameter1.equals(viewMailLogStartDateParameter2));
        System.assert(viewMailLogStartDateParameter2.equals(viewMailLogStartDateParameter1));
        System.assert(viewMailLogStartDateParameter3.equals(viewMailLogStartDateParameter4));
        System.assert(viewMailLogStartDateParameter4.equals(viewMailLogStartDateParameter3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerViewMailLogStartDateParamet viewMailLogStartDateParameter1 = IntServerViewMailLogStartDateParamet.getExample();
        IntServerViewMailLogStartDateParamet viewMailLogStartDateParameter2 = new IntServerViewMailLogStartDateParamet();

        System.assertEquals(false, viewMailLogStartDateParameter1.equals('foo'));
        System.assertEquals(false, viewMailLogStartDateParameter2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerViewMailLogStartDateParamet viewMailLogStartDateParameter1 = IntServerViewMailLogStartDateParamet.getExample();
        IntServerViewMailLogStartDateParamet viewMailLogStartDateParameter2 = new IntServerViewMailLogStartDateParamet();
        IntServerViewMailLogStartDateParamet viewMailLogStartDateParameter3;

        System.assertEquals(false, viewMailLogStartDateParameter1.equals(viewMailLogStartDateParameter3));
        System.assertEquals(false, viewMailLogStartDateParameter2.equals(viewMailLogStartDateParameter3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerViewMailLogStartDateParamet viewMailLogStartDateParameter1 = IntServerViewMailLogStartDateParamet.getExample();
        IntServerViewMailLogStartDateParamet viewMailLogStartDateParameter2 = new IntServerViewMailLogStartDateParamet();

        System.assertEquals(viewMailLogStartDateParameter1.hashCode(), viewMailLogStartDateParameter1.hashCode());
        System.assertEquals(viewMailLogStartDateParameter2.hashCode(), viewMailLogStartDateParameter2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerViewMailLogStartDateParamet viewMailLogStartDateParameter1 = IntServerViewMailLogStartDateParamet.getExample();
        IntServerViewMailLogStartDateParamet viewMailLogStartDateParameter2 = IntServerViewMailLogStartDateParamet.getExample();
        IntServerViewMailLogStartDateParamet viewMailLogStartDateParameter3 = new IntServerViewMailLogStartDateParamet();
        IntServerViewMailLogStartDateParamet viewMailLogStartDateParameter4 = new IntServerViewMailLogStartDateParamet();

        System.assert(viewMailLogStartDateParameter1.equals(viewMailLogStartDateParameter2));
        System.assert(viewMailLogStartDateParameter3.equals(viewMailLogStartDateParameter4));
        System.assertEquals(viewMailLogStartDateParameter1.hashCode(), viewMailLogStartDateParameter2.hashCode());
        System.assertEquals(viewMailLogStartDateParameter3.hashCode(), viewMailLogStartDateParameter4.hashCode());
    }
}
