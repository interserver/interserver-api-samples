@isTest
private class IntServerMailLogTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerMailLog mailLog1 = IntServerMailLog.getExample();
        IntServerMailLog mailLog2 = mailLog1;
        IntServerMailLog mailLog3 = new IntServerMailLog();
        IntServerMailLog mailLog4 = mailLog3;

        System.assert(mailLog1.equals(mailLog2));
        System.assert(mailLog2.equals(mailLog1));
        System.assert(mailLog1.equals(mailLog1));
        System.assert(mailLog3.equals(mailLog4));
        System.assert(mailLog4.equals(mailLog3));
        System.assert(mailLog3.equals(mailLog3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerMailLog mailLog1 = IntServerMailLog.getExample();
        IntServerMailLog mailLog2 = IntServerMailLog.getExample();
        IntServerMailLog mailLog3 = new IntServerMailLog();
        IntServerMailLog mailLog4 = new IntServerMailLog();

        System.assert(mailLog1.equals(mailLog2));
        System.assert(mailLog2.equals(mailLog1));
        System.assert(mailLog3.equals(mailLog4));
        System.assert(mailLog4.equals(mailLog3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerMailLog mailLog1 = IntServerMailLog.getExample();
        IntServerMailLog mailLog2 = new IntServerMailLog();

        System.assertEquals(false, mailLog1.equals('foo'));
        System.assertEquals(false, mailLog2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerMailLog mailLog1 = IntServerMailLog.getExample();
        IntServerMailLog mailLog2 = new IntServerMailLog();
        IntServerMailLog mailLog3;

        System.assertEquals(false, mailLog1.equals(mailLog3));
        System.assertEquals(false, mailLog2.equals(mailLog3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerMailLog mailLog1 = IntServerMailLog.getExample();
        IntServerMailLog mailLog2 = new IntServerMailLog();

        System.assertEquals(mailLog1.hashCode(), mailLog1.hashCode());
        System.assertEquals(mailLog2.hashCode(), mailLog2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerMailLog mailLog1 = IntServerMailLog.getExample();
        IntServerMailLog mailLog2 = IntServerMailLog.getExample();
        IntServerMailLog mailLog3 = new IntServerMailLog();
        IntServerMailLog mailLog4 = new IntServerMailLog();

        System.assert(mailLog1.equals(mailLog2));
        System.assert(mailLog3.equals(mailLog4));
        System.assertEquals(mailLog1.hashCode(), mailLog2.hashCode());
        System.assertEquals(mailLog3.hashCode(), mailLog4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerMailLog mailLog = new IntServerMailLog();
        Map<String, String> x-property-mappings = mailLog.getx-property-mappings();
        System.assertEquals('r_limit', x-property-mappings.get('limit'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        IntServerMailLog mailLog = new IntServerMailLog();
        System.assertEquals(new List<IntServerMailLogEntry>(), mailLog.emails);
        System.assertEquals(null, mailLog.total);
        System.assertEquals(null, mailLog.skip);
        System.assertEquals(null, mailLog.r_limit);
    }
}
