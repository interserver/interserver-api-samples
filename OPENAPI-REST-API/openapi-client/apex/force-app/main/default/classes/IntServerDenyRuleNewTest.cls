@isTest
private class IntServerDenyRuleNewTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerDenyRuleNew denyRuleNew1 = IntServerDenyRuleNew.getExample();
        IntServerDenyRuleNew denyRuleNew2 = denyRuleNew1;
        IntServerDenyRuleNew denyRuleNew3 = new IntServerDenyRuleNew();
        IntServerDenyRuleNew denyRuleNew4 = denyRuleNew3;

        System.assert(denyRuleNew1.equals(denyRuleNew2));
        System.assert(denyRuleNew2.equals(denyRuleNew1));
        System.assert(denyRuleNew1.equals(denyRuleNew1));
        System.assert(denyRuleNew3.equals(denyRuleNew4));
        System.assert(denyRuleNew4.equals(denyRuleNew3));
        System.assert(denyRuleNew3.equals(denyRuleNew3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerDenyRuleNew denyRuleNew1 = IntServerDenyRuleNew.getExample();
        IntServerDenyRuleNew denyRuleNew2 = IntServerDenyRuleNew.getExample();
        IntServerDenyRuleNew denyRuleNew3 = new IntServerDenyRuleNew();
        IntServerDenyRuleNew denyRuleNew4 = new IntServerDenyRuleNew();

        System.assert(denyRuleNew1.equals(denyRuleNew2));
        System.assert(denyRuleNew2.equals(denyRuleNew1));
        System.assert(denyRuleNew3.equals(denyRuleNew4));
        System.assert(denyRuleNew4.equals(denyRuleNew3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerDenyRuleNew denyRuleNew1 = IntServerDenyRuleNew.getExample();
        IntServerDenyRuleNew denyRuleNew2 = new IntServerDenyRuleNew();

        System.assertEquals(false, denyRuleNew1.equals('foo'));
        System.assertEquals(false, denyRuleNew2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerDenyRuleNew denyRuleNew1 = IntServerDenyRuleNew.getExample();
        IntServerDenyRuleNew denyRuleNew2 = new IntServerDenyRuleNew();
        IntServerDenyRuleNew denyRuleNew3;

        System.assertEquals(false, denyRuleNew1.equals(denyRuleNew3));
        System.assertEquals(false, denyRuleNew2.equals(denyRuleNew3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerDenyRuleNew denyRuleNew1 = IntServerDenyRuleNew.getExample();
        IntServerDenyRuleNew denyRuleNew2 = new IntServerDenyRuleNew();

        System.assertEquals(denyRuleNew1.hashCode(), denyRuleNew1.hashCode());
        System.assertEquals(denyRuleNew2.hashCode(), denyRuleNew2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerDenyRuleNew denyRuleNew1 = IntServerDenyRuleNew.getExample();
        IntServerDenyRuleNew denyRuleNew2 = IntServerDenyRuleNew.getExample();
        IntServerDenyRuleNew denyRuleNew3 = new IntServerDenyRuleNew();
        IntServerDenyRuleNew denyRuleNew4 = new IntServerDenyRuleNew();

        System.assert(denyRuleNew1.equals(denyRuleNew2));
        System.assert(denyRuleNew3.equals(denyRuleNew4));
        System.assertEquals(denyRuleNew1.hashCode(), denyRuleNew2.hashCode());
        System.assertEquals(denyRuleNew3.hashCode(), denyRuleNew4.hashCode());
    }
}
