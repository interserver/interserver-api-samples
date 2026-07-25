@isTest
private class IntServerMailStatsTypeTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerMailStatsType mailStatsType1 = IntServerMailStatsType.getExample();
        IntServerMailStatsType mailStatsType2 = mailStatsType1;
        IntServerMailStatsType mailStatsType3 = new IntServerMailStatsType();
        IntServerMailStatsType mailStatsType4 = mailStatsType3;

        System.assert(mailStatsType1.equals(mailStatsType2));
        System.assert(mailStatsType2.equals(mailStatsType1));
        System.assert(mailStatsType1.equals(mailStatsType1));
        System.assert(mailStatsType3.equals(mailStatsType4));
        System.assert(mailStatsType4.equals(mailStatsType3));
        System.assert(mailStatsType3.equals(mailStatsType3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerMailStatsType mailStatsType1 = IntServerMailStatsType.getExample();
        IntServerMailStatsType mailStatsType2 = IntServerMailStatsType.getExample();
        IntServerMailStatsType mailStatsType3 = new IntServerMailStatsType();
        IntServerMailStatsType mailStatsType4 = new IntServerMailStatsType();

        System.assert(mailStatsType1.equals(mailStatsType2));
        System.assert(mailStatsType2.equals(mailStatsType1));
        System.assert(mailStatsType3.equals(mailStatsType4));
        System.assert(mailStatsType4.equals(mailStatsType3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerMailStatsType mailStatsType1 = IntServerMailStatsType.getExample();
        IntServerMailStatsType mailStatsType2 = new IntServerMailStatsType();

        System.assertEquals(false, mailStatsType1.equals('foo'));
        System.assertEquals(false, mailStatsType2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerMailStatsType mailStatsType1 = IntServerMailStatsType.getExample();
        IntServerMailStatsType mailStatsType2 = new IntServerMailStatsType();
        IntServerMailStatsType mailStatsType3;

        System.assertEquals(false, mailStatsType1.equals(mailStatsType3));
        System.assertEquals(false, mailStatsType2.equals(mailStatsType3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerMailStatsType mailStatsType1 = IntServerMailStatsType.getExample();
        IntServerMailStatsType mailStatsType2 = new IntServerMailStatsType();

        System.assertEquals(mailStatsType1.hashCode(), mailStatsType1.hashCode());
        System.assertEquals(mailStatsType2.hashCode(), mailStatsType2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerMailStatsType mailStatsType1 = IntServerMailStatsType.getExample();
        IntServerMailStatsType mailStatsType2 = IntServerMailStatsType.getExample();
        IntServerMailStatsType mailStatsType3 = new IntServerMailStatsType();
        IntServerMailStatsType mailStatsType4 = new IntServerMailStatsType();

        System.assert(mailStatsType1.equals(mailStatsType2));
        System.assert(mailStatsType3.equals(mailStatsType4));
        System.assertEquals(mailStatsType1.hashCode(), mailStatsType2.hashCode());
        System.assertEquals(mailStatsType3.hashCode(), mailStatsType4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerMailStatsType mailStatsType = new IntServerMailStatsType();
        Map<String, String> x-property-mappings = mailStatsType.getx-property-mappings();
        System.assertEquals('r_time', x-property-mappings.get('time'));
        System.assertEquals('r_currency', x-property-mappings.get('currency'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        IntServerMailStatsType mailStatsType = new IntServerMailStatsType();
        System.assertEquals(RTimeEnum._1H, mailStatsType.r_time);
        System.assertEquals(null, mailStatsType.usage);
        System.assertEquals(null, mailStatsType.r_currency);
        System.assertEquals(null, mailStatsType.currencySymbol);
        System.assertEquals(null, mailStatsType.cost);
        System.assertEquals(null, mailStatsType.received);
        System.assertEquals(null, mailStatsType.sent);
        System.assertEquals(null, mailStatsType.volume);
    }
}
