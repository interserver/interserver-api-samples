@isTest
private class IntServerMailStatsTypeVolumeTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerMailStatsTypeVolume mailStatsTypeVolume1 = IntServerMailStatsTypeVolume.getExample();
        IntServerMailStatsTypeVolume mailStatsTypeVolume2 = mailStatsTypeVolume1;
        IntServerMailStatsTypeVolume mailStatsTypeVolume3 = new IntServerMailStatsTypeVolume();
        IntServerMailStatsTypeVolume mailStatsTypeVolume4 = mailStatsTypeVolume3;

        System.assert(mailStatsTypeVolume1.equals(mailStatsTypeVolume2));
        System.assert(mailStatsTypeVolume2.equals(mailStatsTypeVolume1));
        System.assert(mailStatsTypeVolume1.equals(mailStatsTypeVolume1));
        System.assert(mailStatsTypeVolume3.equals(mailStatsTypeVolume4));
        System.assert(mailStatsTypeVolume4.equals(mailStatsTypeVolume3));
        System.assert(mailStatsTypeVolume3.equals(mailStatsTypeVolume3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerMailStatsTypeVolume mailStatsTypeVolume1 = IntServerMailStatsTypeVolume.getExample();
        IntServerMailStatsTypeVolume mailStatsTypeVolume2 = IntServerMailStatsTypeVolume.getExample();
        IntServerMailStatsTypeVolume mailStatsTypeVolume3 = new IntServerMailStatsTypeVolume();
        IntServerMailStatsTypeVolume mailStatsTypeVolume4 = new IntServerMailStatsTypeVolume();

        System.assert(mailStatsTypeVolume1.equals(mailStatsTypeVolume2));
        System.assert(mailStatsTypeVolume2.equals(mailStatsTypeVolume1));
        System.assert(mailStatsTypeVolume3.equals(mailStatsTypeVolume4));
        System.assert(mailStatsTypeVolume4.equals(mailStatsTypeVolume3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerMailStatsTypeVolume mailStatsTypeVolume1 = IntServerMailStatsTypeVolume.getExample();
        IntServerMailStatsTypeVolume mailStatsTypeVolume2 = new IntServerMailStatsTypeVolume();

        System.assertEquals(false, mailStatsTypeVolume1.equals('foo'));
        System.assertEquals(false, mailStatsTypeVolume2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerMailStatsTypeVolume mailStatsTypeVolume1 = IntServerMailStatsTypeVolume.getExample();
        IntServerMailStatsTypeVolume mailStatsTypeVolume2 = new IntServerMailStatsTypeVolume();
        IntServerMailStatsTypeVolume mailStatsTypeVolume3;

        System.assertEquals(false, mailStatsTypeVolume1.equals(mailStatsTypeVolume3));
        System.assertEquals(false, mailStatsTypeVolume2.equals(mailStatsTypeVolume3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerMailStatsTypeVolume mailStatsTypeVolume1 = IntServerMailStatsTypeVolume.getExample();
        IntServerMailStatsTypeVolume mailStatsTypeVolume2 = new IntServerMailStatsTypeVolume();

        System.assertEquals(mailStatsTypeVolume1.hashCode(), mailStatsTypeVolume1.hashCode());
        System.assertEquals(mailStatsTypeVolume2.hashCode(), mailStatsTypeVolume2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerMailStatsTypeVolume mailStatsTypeVolume1 = IntServerMailStatsTypeVolume.getExample();
        IntServerMailStatsTypeVolume mailStatsTypeVolume2 = IntServerMailStatsTypeVolume.getExample();
        IntServerMailStatsTypeVolume mailStatsTypeVolume3 = new IntServerMailStatsTypeVolume();
        IntServerMailStatsTypeVolume mailStatsTypeVolume4 = new IntServerMailStatsTypeVolume();

        System.assert(mailStatsTypeVolume1.equals(mailStatsTypeVolume2));
        System.assert(mailStatsTypeVolume3.equals(mailStatsTypeVolume4));
        System.assertEquals(mailStatsTypeVolume1.hashCode(), mailStatsTypeVolume2.hashCode());
        System.assertEquals(mailStatsTypeVolume3.hashCode(), mailStatsTypeVolume4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerMailStatsTypeVolume mailStatsTypeVolume = new IntServerMailStatsTypeVolume();
        Map<String, String> x-property-mappings = mailStatsTypeVolume.getx-property-mappings();
        System.assertEquals('r_from', x-property-mappings.get('from'));
    }
}
