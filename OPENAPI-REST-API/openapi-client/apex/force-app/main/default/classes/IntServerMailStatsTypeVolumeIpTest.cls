@isTest
private class IntServerMailStatsTypeVolumeIpTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerMailStatsTypeVolumeIp mailStatsTypeVolumeIp1 = IntServerMailStatsTypeVolumeIp.getExample();
        IntServerMailStatsTypeVolumeIp mailStatsTypeVolumeIp2 = mailStatsTypeVolumeIp1;
        IntServerMailStatsTypeVolumeIp mailStatsTypeVolumeIp3 = new IntServerMailStatsTypeVolumeIp();
        IntServerMailStatsTypeVolumeIp mailStatsTypeVolumeIp4 = mailStatsTypeVolumeIp3;

        System.assert(mailStatsTypeVolumeIp1.equals(mailStatsTypeVolumeIp2));
        System.assert(mailStatsTypeVolumeIp2.equals(mailStatsTypeVolumeIp1));
        System.assert(mailStatsTypeVolumeIp1.equals(mailStatsTypeVolumeIp1));
        System.assert(mailStatsTypeVolumeIp3.equals(mailStatsTypeVolumeIp4));
        System.assert(mailStatsTypeVolumeIp4.equals(mailStatsTypeVolumeIp3));
        System.assert(mailStatsTypeVolumeIp3.equals(mailStatsTypeVolumeIp3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerMailStatsTypeVolumeIp mailStatsTypeVolumeIp1 = IntServerMailStatsTypeVolumeIp.getExample();
        IntServerMailStatsTypeVolumeIp mailStatsTypeVolumeIp2 = IntServerMailStatsTypeVolumeIp.getExample();
        IntServerMailStatsTypeVolumeIp mailStatsTypeVolumeIp3 = new IntServerMailStatsTypeVolumeIp();
        IntServerMailStatsTypeVolumeIp mailStatsTypeVolumeIp4 = new IntServerMailStatsTypeVolumeIp();

        System.assert(mailStatsTypeVolumeIp1.equals(mailStatsTypeVolumeIp2));
        System.assert(mailStatsTypeVolumeIp2.equals(mailStatsTypeVolumeIp1));
        System.assert(mailStatsTypeVolumeIp3.equals(mailStatsTypeVolumeIp4));
        System.assert(mailStatsTypeVolumeIp4.equals(mailStatsTypeVolumeIp3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerMailStatsTypeVolumeIp mailStatsTypeVolumeIp1 = IntServerMailStatsTypeVolumeIp.getExample();
        IntServerMailStatsTypeVolumeIp mailStatsTypeVolumeIp2 = new IntServerMailStatsTypeVolumeIp();

        System.assertEquals(false, mailStatsTypeVolumeIp1.equals('foo'));
        System.assertEquals(false, mailStatsTypeVolumeIp2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerMailStatsTypeVolumeIp mailStatsTypeVolumeIp1 = IntServerMailStatsTypeVolumeIp.getExample();
        IntServerMailStatsTypeVolumeIp mailStatsTypeVolumeIp2 = new IntServerMailStatsTypeVolumeIp();
        IntServerMailStatsTypeVolumeIp mailStatsTypeVolumeIp3;

        System.assertEquals(false, mailStatsTypeVolumeIp1.equals(mailStatsTypeVolumeIp3));
        System.assertEquals(false, mailStatsTypeVolumeIp2.equals(mailStatsTypeVolumeIp3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerMailStatsTypeVolumeIp mailStatsTypeVolumeIp1 = IntServerMailStatsTypeVolumeIp.getExample();
        IntServerMailStatsTypeVolumeIp mailStatsTypeVolumeIp2 = new IntServerMailStatsTypeVolumeIp();

        System.assertEquals(mailStatsTypeVolumeIp1.hashCode(), mailStatsTypeVolumeIp1.hashCode());
        System.assertEquals(mailStatsTypeVolumeIp2.hashCode(), mailStatsTypeVolumeIp2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerMailStatsTypeVolumeIp mailStatsTypeVolumeIp1 = IntServerMailStatsTypeVolumeIp.getExample();
        IntServerMailStatsTypeVolumeIp mailStatsTypeVolumeIp2 = IntServerMailStatsTypeVolumeIp.getExample();
        IntServerMailStatsTypeVolumeIp mailStatsTypeVolumeIp3 = new IntServerMailStatsTypeVolumeIp();
        IntServerMailStatsTypeVolumeIp mailStatsTypeVolumeIp4 = new IntServerMailStatsTypeVolumeIp();

        System.assert(mailStatsTypeVolumeIp1.equals(mailStatsTypeVolumeIp2));
        System.assert(mailStatsTypeVolumeIp3.equals(mailStatsTypeVolumeIp4));
        System.assertEquals(mailStatsTypeVolumeIp1.hashCode(), mailStatsTypeVolumeIp2.hashCode());
        System.assertEquals(mailStatsTypeVolumeIp3.hashCode(), mailStatsTypeVolumeIp4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerMailStatsTypeVolumeIp mailStatsTypeVolumeIp = new IntServerMailStatsTypeVolumeIp();
        Map<String, String> x-property-mappings = mailStatsTypeVolumeIp.getx-property-mappings();
        System.assertEquals('', x-property-mappings.get('1.1.1.1'));
        System.assertEquals('', x-property-mappings.get('2.2.2.2'));
        System.assertEquals('', x-property-mappings.get('3.3.3.3'));
        System.assertEquals('', x-property-mappings.get('4.4.4.4'));
    }
}
