@isTest
private class IntServerMailStatsTypeVolumeToTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerMailStatsTypeVolumeTo mailStatsTypeVolumeTo1 = IntServerMailStatsTypeVolumeTo.getExample();
        IntServerMailStatsTypeVolumeTo mailStatsTypeVolumeTo2 = mailStatsTypeVolumeTo1;
        IntServerMailStatsTypeVolumeTo mailStatsTypeVolumeTo3 = new IntServerMailStatsTypeVolumeTo();
        IntServerMailStatsTypeVolumeTo mailStatsTypeVolumeTo4 = mailStatsTypeVolumeTo3;

        System.assert(mailStatsTypeVolumeTo1.equals(mailStatsTypeVolumeTo2));
        System.assert(mailStatsTypeVolumeTo2.equals(mailStatsTypeVolumeTo1));
        System.assert(mailStatsTypeVolumeTo1.equals(mailStatsTypeVolumeTo1));
        System.assert(mailStatsTypeVolumeTo3.equals(mailStatsTypeVolumeTo4));
        System.assert(mailStatsTypeVolumeTo4.equals(mailStatsTypeVolumeTo3));
        System.assert(mailStatsTypeVolumeTo3.equals(mailStatsTypeVolumeTo3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerMailStatsTypeVolumeTo mailStatsTypeVolumeTo1 = IntServerMailStatsTypeVolumeTo.getExample();
        IntServerMailStatsTypeVolumeTo mailStatsTypeVolumeTo2 = IntServerMailStatsTypeVolumeTo.getExample();
        IntServerMailStatsTypeVolumeTo mailStatsTypeVolumeTo3 = new IntServerMailStatsTypeVolumeTo();
        IntServerMailStatsTypeVolumeTo mailStatsTypeVolumeTo4 = new IntServerMailStatsTypeVolumeTo();

        System.assert(mailStatsTypeVolumeTo1.equals(mailStatsTypeVolumeTo2));
        System.assert(mailStatsTypeVolumeTo2.equals(mailStatsTypeVolumeTo1));
        System.assert(mailStatsTypeVolumeTo3.equals(mailStatsTypeVolumeTo4));
        System.assert(mailStatsTypeVolumeTo4.equals(mailStatsTypeVolumeTo3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerMailStatsTypeVolumeTo mailStatsTypeVolumeTo1 = IntServerMailStatsTypeVolumeTo.getExample();
        IntServerMailStatsTypeVolumeTo mailStatsTypeVolumeTo2 = new IntServerMailStatsTypeVolumeTo();

        System.assertEquals(false, mailStatsTypeVolumeTo1.equals('foo'));
        System.assertEquals(false, mailStatsTypeVolumeTo2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerMailStatsTypeVolumeTo mailStatsTypeVolumeTo1 = IntServerMailStatsTypeVolumeTo.getExample();
        IntServerMailStatsTypeVolumeTo mailStatsTypeVolumeTo2 = new IntServerMailStatsTypeVolumeTo();
        IntServerMailStatsTypeVolumeTo mailStatsTypeVolumeTo3;

        System.assertEquals(false, mailStatsTypeVolumeTo1.equals(mailStatsTypeVolumeTo3));
        System.assertEquals(false, mailStatsTypeVolumeTo2.equals(mailStatsTypeVolumeTo3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerMailStatsTypeVolumeTo mailStatsTypeVolumeTo1 = IntServerMailStatsTypeVolumeTo.getExample();
        IntServerMailStatsTypeVolumeTo mailStatsTypeVolumeTo2 = new IntServerMailStatsTypeVolumeTo();

        System.assertEquals(mailStatsTypeVolumeTo1.hashCode(), mailStatsTypeVolumeTo1.hashCode());
        System.assertEquals(mailStatsTypeVolumeTo2.hashCode(), mailStatsTypeVolumeTo2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerMailStatsTypeVolumeTo mailStatsTypeVolumeTo1 = IntServerMailStatsTypeVolumeTo.getExample();
        IntServerMailStatsTypeVolumeTo mailStatsTypeVolumeTo2 = IntServerMailStatsTypeVolumeTo.getExample();
        IntServerMailStatsTypeVolumeTo mailStatsTypeVolumeTo3 = new IntServerMailStatsTypeVolumeTo();
        IntServerMailStatsTypeVolumeTo mailStatsTypeVolumeTo4 = new IntServerMailStatsTypeVolumeTo();

        System.assert(mailStatsTypeVolumeTo1.equals(mailStatsTypeVolumeTo2));
        System.assert(mailStatsTypeVolumeTo3.equals(mailStatsTypeVolumeTo4));
        System.assertEquals(mailStatsTypeVolumeTo1.hashCode(), mailStatsTypeVolumeTo2.hashCode());
        System.assertEquals(mailStatsTypeVolumeTo3.hashCode(), mailStatsTypeVolumeTo4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerMailStatsTypeVolumeTo mailStatsTypeVolumeTo = new IntServerMailStatsTypeVolumeTo();
        Map<String, String> x-property-mappings = mailStatsTypeVolumeTo.getx-property-mappings();
        System.assertEquals('clientdomainCom', x-property-mappings.get('client@domain.com'));
        System.assertEquals('usersiteNet', x-property-mappings.get('user@site.net'));
        System.assertEquals('salescompanyCom', x-property-mappings.get('sales@company.com'));
        System.assertEquals('clientanothersiteCom', x-property-mappings.get('client@anothersite.com'));
    }
}
