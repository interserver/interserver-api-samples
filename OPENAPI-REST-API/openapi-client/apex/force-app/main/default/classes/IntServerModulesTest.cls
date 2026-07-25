@isTest
private class IntServerModulesTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerModules modules1 = IntServerModules.getExample();
        IntServerModules modules2 = modules1;
        IntServerModules modules3 = new IntServerModules();
        IntServerModules modules4 = modules3;

        System.assert(modules1.equals(modules2));
        System.assert(modules2.equals(modules1));
        System.assert(modules1.equals(modules1));
        System.assert(modules3.equals(modules4));
        System.assert(modules4.equals(modules3));
        System.assert(modules3.equals(modules3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerModules modules1 = IntServerModules.getExample();
        IntServerModules modules2 = IntServerModules.getExample();
        IntServerModules modules3 = new IntServerModules();
        IntServerModules modules4 = new IntServerModules();

        System.assert(modules1.equals(modules2));
        System.assert(modules2.equals(modules1));
        System.assert(modules3.equals(modules4));
        System.assert(modules4.equals(modules3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerModules modules1 = IntServerModules.getExample();
        IntServerModules modules2 = new IntServerModules();

        System.assertEquals(false, modules1.equals('foo'));
        System.assertEquals(false, modules2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerModules modules1 = IntServerModules.getExample();
        IntServerModules modules2 = new IntServerModules();
        IntServerModules modules3;

        System.assertEquals(false, modules1.equals(modules3));
        System.assertEquals(false, modules2.equals(modules3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerModules modules1 = IntServerModules.getExample();
        IntServerModules modules2 = new IntServerModules();

        System.assertEquals(modules1.hashCode(), modules1.hashCode());
        System.assertEquals(modules2.hashCode(), modules2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerModules modules1 = IntServerModules.getExample();
        IntServerModules modules2 = IntServerModules.getExample();
        IntServerModules modules3 = new IntServerModules();
        IntServerModules modules4 = new IntServerModules();

        System.assert(modules1.equals(modules2));
        System.assert(modules3.equals(modules4));
        System.assertEquals(modules1.hashCode(), modules2.hashCode());
        System.assertEquals(modules3.hashCode(), modules4.hashCode());
    }
}
