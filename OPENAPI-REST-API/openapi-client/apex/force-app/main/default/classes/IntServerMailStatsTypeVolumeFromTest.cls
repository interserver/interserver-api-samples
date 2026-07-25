@isTest
private class IntServerMailStatsTypeVolumeFromTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerMailStatsTypeVolumeFrom mailStatsTypeVolumeFrom1 = IntServerMailStatsTypeVolumeFrom.getExample();
        IntServerMailStatsTypeVolumeFrom mailStatsTypeVolumeFrom2 = mailStatsTypeVolumeFrom1;
        IntServerMailStatsTypeVolumeFrom mailStatsTypeVolumeFrom3 = new IntServerMailStatsTypeVolumeFrom();
        IntServerMailStatsTypeVolumeFrom mailStatsTypeVolumeFrom4 = mailStatsTypeVolumeFrom3;

        System.assert(mailStatsTypeVolumeFrom1.equals(mailStatsTypeVolumeFrom2));
        System.assert(mailStatsTypeVolumeFrom2.equals(mailStatsTypeVolumeFrom1));
        System.assert(mailStatsTypeVolumeFrom1.equals(mailStatsTypeVolumeFrom1));
        System.assert(mailStatsTypeVolumeFrom3.equals(mailStatsTypeVolumeFrom4));
        System.assert(mailStatsTypeVolumeFrom4.equals(mailStatsTypeVolumeFrom3));
        System.assert(mailStatsTypeVolumeFrom3.equals(mailStatsTypeVolumeFrom3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerMailStatsTypeVolumeFrom mailStatsTypeVolumeFrom1 = IntServerMailStatsTypeVolumeFrom.getExample();
        IntServerMailStatsTypeVolumeFrom mailStatsTypeVolumeFrom2 = IntServerMailStatsTypeVolumeFrom.getExample();
        IntServerMailStatsTypeVolumeFrom mailStatsTypeVolumeFrom3 = new IntServerMailStatsTypeVolumeFrom();
        IntServerMailStatsTypeVolumeFrom mailStatsTypeVolumeFrom4 = new IntServerMailStatsTypeVolumeFrom();

        System.assert(mailStatsTypeVolumeFrom1.equals(mailStatsTypeVolumeFrom2));
        System.assert(mailStatsTypeVolumeFrom2.equals(mailStatsTypeVolumeFrom1));
        System.assert(mailStatsTypeVolumeFrom3.equals(mailStatsTypeVolumeFrom4));
        System.assert(mailStatsTypeVolumeFrom4.equals(mailStatsTypeVolumeFrom3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerMailStatsTypeVolumeFrom mailStatsTypeVolumeFrom1 = IntServerMailStatsTypeVolumeFrom.getExample();
        IntServerMailStatsTypeVolumeFrom mailStatsTypeVolumeFrom2 = new IntServerMailStatsTypeVolumeFrom();

        System.assertEquals(false, mailStatsTypeVolumeFrom1.equals('foo'));
        System.assertEquals(false, mailStatsTypeVolumeFrom2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerMailStatsTypeVolumeFrom mailStatsTypeVolumeFrom1 = IntServerMailStatsTypeVolumeFrom.getExample();
        IntServerMailStatsTypeVolumeFrom mailStatsTypeVolumeFrom2 = new IntServerMailStatsTypeVolumeFrom();
        IntServerMailStatsTypeVolumeFrom mailStatsTypeVolumeFrom3;

        System.assertEquals(false, mailStatsTypeVolumeFrom1.equals(mailStatsTypeVolumeFrom3));
        System.assertEquals(false, mailStatsTypeVolumeFrom2.equals(mailStatsTypeVolumeFrom3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerMailStatsTypeVolumeFrom mailStatsTypeVolumeFrom1 = IntServerMailStatsTypeVolumeFrom.getExample();
        IntServerMailStatsTypeVolumeFrom mailStatsTypeVolumeFrom2 = new IntServerMailStatsTypeVolumeFrom();

        System.assertEquals(mailStatsTypeVolumeFrom1.hashCode(), mailStatsTypeVolumeFrom1.hashCode());
        System.assertEquals(mailStatsTypeVolumeFrom2.hashCode(), mailStatsTypeVolumeFrom2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerMailStatsTypeVolumeFrom mailStatsTypeVolumeFrom1 = IntServerMailStatsTypeVolumeFrom.getExample();
        IntServerMailStatsTypeVolumeFrom mailStatsTypeVolumeFrom2 = IntServerMailStatsTypeVolumeFrom.getExample();
        IntServerMailStatsTypeVolumeFrom mailStatsTypeVolumeFrom3 = new IntServerMailStatsTypeVolumeFrom();
        IntServerMailStatsTypeVolumeFrom mailStatsTypeVolumeFrom4 = new IntServerMailStatsTypeVolumeFrom();

        System.assert(mailStatsTypeVolumeFrom1.equals(mailStatsTypeVolumeFrom2));
        System.assert(mailStatsTypeVolumeFrom3.equals(mailStatsTypeVolumeFrom4));
        System.assertEquals(mailStatsTypeVolumeFrom1.hashCode(), mailStatsTypeVolumeFrom2.hashCode());
        System.assertEquals(mailStatsTypeVolumeFrom3.hashCode(), mailStatsTypeVolumeFrom4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerMailStatsTypeVolumeFrom mailStatsTypeVolumeFrom = new IntServerMailStatsTypeVolumeFrom();
        Map<String, String> x-property-mappings = mailStatsTypeVolumeFrom.getx-property-mappings();
        System.assertEquals('billingsomedomainCom', x-property-mappings.get('billing@somedomain.com'));
        System.assertEquals('salessomedomainCom', x-property-mappings.get('sales@somedomain.com'));
    }
}
