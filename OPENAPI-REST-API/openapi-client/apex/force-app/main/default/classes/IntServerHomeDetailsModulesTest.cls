@isTest
private class IntServerHomeDetailsModulesTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerHomeDetailsModules homeDetailsModules1 = IntServerHomeDetailsModules.getExample();
        IntServerHomeDetailsModules homeDetailsModules2 = homeDetailsModules1;
        IntServerHomeDetailsModules homeDetailsModules3 = new IntServerHomeDetailsModules();
        IntServerHomeDetailsModules homeDetailsModules4 = homeDetailsModules3;

        System.assert(homeDetailsModules1.equals(homeDetailsModules2));
        System.assert(homeDetailsModules2.equals(homeDetailsModules1));
        System.assert(homeDetailsModules1.equals(homeDetailsModules1));
        System.assert(homeDetailsModules3.equals(homeDetailsModules4));
        System.assert(homeDetailsModules4.equals(homeDetailsModules3));
        System.assert(homeDetailsModules3.equals(homeDetailsModules3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerHomeDetailsModules homeDetailsModules1 = IntServerHomeDetailsModules.getExample();
        IntServerHomeDetailsModules homeDetailsModules2 = IntServerHomeDetailsModules.getExample();
        IntServerHomeDetailsModules homeDetailsModules3 = new IntServerHomeDetailsModules();
        IntServerHomeDetailsModules homeDetailsModules4 = new IntServerHomeDetailsModules();

        System.assert(homeDetailsModules1.equals(homeDetailsModules2));
        System.assert(homeDetailsModules2.equals(homeDetailsModules1));
        System.assert(homeDetailsModules3.equals(homeDetailsModules4));
        System.assert(homeDetailsModules4.equals(homeDetailsModules3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerHomeDetailsModules homeDetailsModules1 = IntServerHomeDetailsModules.getExample();
        IntServerHomeDetailsModules homeDetailsModules2 = new IntServerHomeDetailsModules();

        System.assertEquals(false, homeDetailsModules1.equals('foo'));
        System.assertEquals(false, homeDetailsModules2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerHomeDetailsModules homeDetailsModules1 = IntServerHomeDetailsModules.getExample();
        IntServerHomeDetailsModules homeDetailsModules2 = new IntServerHomeDetailsModules();
        IntServerHomeDetailsModules homeDetailsModules3;

        System.assertEquals(false, homeDetailsModules1.equals(homeDetailsModules3));
        System.assertEquals(false, homeDetailsModules2.equals(homeDetailsModules3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerHomeDetailsModules homeDetailsModules1 = IntServerHomeDetailsModules.getExample();
        IntServerHomeDetailsModules homeDetailsModules2 = new IntServerHomeDetailsModules();

        System.assertEquals(homeDetailsModules1.hashCode(), homeDetailsModules1.hashCode());
        System.assertEquals(homeDetailsModules2.hashCode(), homeDetailsModules2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerHomeDetailsModules homeDetailsModules1 = IntServerHomeDetailsModules.getExample();
        IntServerHomeDetailsModules homeDetailsModules2 = IntServerHomeDetailsModules.getExample();
        IntServerHomeDetailsModules homeDetailsModules3 = new IntServerHomeDetailsModules();
        IntServerHomeDetailsModules homeDetailsModules4 = new IntServerHomeDetailsModules();

        System.assert(homeDetailsModules1.equals(homeDetailsModules2));
        System.assert(homeDetailsModules3.equals(homeDetailsModules4));
        System.assertEquals(homeDetailsModules1.hashCode(), homeDetailsModules2.hashCode());
        System.assertEquals(homeDetailsModules3.hashCode(), homeDetailsModules4.hashCode());
    }
}
