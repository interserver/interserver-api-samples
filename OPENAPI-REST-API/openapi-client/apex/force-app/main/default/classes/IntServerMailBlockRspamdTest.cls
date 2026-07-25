@isTest
private class IntServerMailBlockRspamdTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerMailBlockRspamd mailBlockRspamd1 = IntServerMailBlockRspamd.getExample();
        IntServerMailBlockRspamd mailBlockRspamd2 = mailBlockRspamd1;
        IntServerMailBlockRspamd mailBlockRspamd3 = new IntServerMailBlockRspamd();
        IntServerMailBlockRspamd mailBlockRspamd4 = mailBlockRspamd3;

        System.assert(mailBlockRspamd1.equals(mailBlockRspamd2));
        System.assert(mailBlockRspamd2.equals(mailBlockRspamd1));
        System.assert(mailBlockRspamd1.equals(mailBlockRspamd1));
        System.assert(mailBlockRspamd3.equals(mailBlockRspamd4));
        System.assert(mailBlockRspamd4.equals(mailBlockRspamd3));
        System.assert(mailBlockRspamd3.equals(mailBlockRspamd3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerMailBlockRspamd mailBlockRspamd1 = IntServerMailBlockRspamd.getExample();
        IntServerMailBlockRspamd mailBlockRspamd2 = IntServerMailBlockRspamd.getExample();
        IntServerMailBlockRspamd mailBlockRspamd3 = new IntServerMailBlockRspamd();
        IntServerMailBlockRspamd mailBlockRspamd4 = new IntServerMailBlockRspamd();

        System.assert(mailBlockRspamd1.equals(mailBlockRspamd2));
        System.assert(mailBlockRspamd2.equals(mailBlockRspamd1));
        System.assert(mailBlockRspamd3.equals(mailBlockRspamd4));
        System.assert(mailBlockRspamd4.equals(mailBlockRspamd3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerMailBlockRspamd mailBlockRspamd1 = IntServerMailBlockRspamd.getExample();
        IntServerMailBlockRspamd mailBlockRspamd2 = new IntServerMailBlockRspamd();

        System.assertEquals(false, mailBlockRspamd1.equals('foo'));
        System.assertEquals(false, mailBlockRspamd2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerMailBlockRspamd mailBlockRspamd1 = IntServerMailBlockRspamd.getExample();
        IntServerMailBlockRspamd mailBlockRspamd2 = new IntServerMailBlockRspamd();
        IntServerMailBlockRspamd mailBlockRspamd3;

        System.assertEquals(false, mailBlockRspamd1.equals(mailBlockRspamd3));
        System.assertEquals(false, mailBlockRspamd2.equals(mailBlockRspamd3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerMailBlockRspamd mailBlockRspamd1 = IntServerMailBlockRspamd.getExample();
        IntServerMailBlockRspamd mailBlockRspamd2 = new IntServerMailBlockRspamd();

        System.assertEquals(mailBlockRspamd1.hashCode(), mailBlockRspamd1.hashCode());
        System.assertEquals(mailBlockRspamd2.hashCode(), mailBlockRspamd2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerMailBlockRspamd mailBlockRspamd1 = IntServerMailBlockRspamd.getExample();
        IntServerMailBlockRspamd mailBlockRspamd2 = IntServerMailBlockRspamd.getExample();
        IntServerMailBlockRspamd mailBlockRspamd3 = new IntServerMailBlockRspamd();
        IntServerMailBlockRspamd mailBlockRspamd4 = new IntServerMailBlockRspamd();

        System.assert(mailBlockRspamd1.equals(mailBlockRspamd2));
        System.assert(mailBlockRspamd3.equals(mailBlockRspamd4));
        System.assertEquals(mailBlockRspamd1.hashCode(), mailBlockRspamd2.hashCode());
        System.assertEquals(mailBlockRspamd3.hashCode(), mailBlockRspamd4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerMailBlockRspamd mailBlockRspamd = new IntServerMailBlockRspamd();
        Map<String, String> x-property-mappings = mailBlockRspamd.getx-property-mappings();
        System.assertEquals('r_from', x-property-mappings.get('from'));
    }
}
