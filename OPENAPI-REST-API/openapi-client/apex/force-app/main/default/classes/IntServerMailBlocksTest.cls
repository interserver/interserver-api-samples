@isTest
private class IntServerMailBlocksTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerMailBlocks mailBlocks1 = IntServerMailBlocks.getExample();
        IntServerMailBlocks mailBlocks2 = mailBlocks1;
        IntServerMailBlocks mailBlocks3 = new IntServerMailBlocks();
        IntServerMailBlocks mailBlocks4 = mailBlocks3;

        System.assert(mailBlocks1.equals(mailBlocks2));
        System.assert(mailBlocks2.equals(mailBlocks1));
        System.assert(mailBlocks1.equals(mailBlocks1));
        System.assert(mailBlocks3.equals(mailBlocks4));
        System.assert(mailBlocks4.equals(mailBlocks3));
        System.assert(mailBlocks3.equals(mailBlocks3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerMailBlocks mailBlocks1 = IntServerMailBlocks.getExample();
        IntServerMailBlocks mailBlocks2 = IntServerMailBlocks.getExample();
        IntServerMailBlocks mailBlocks3 = new IntServerMailBlocks();
        IntServerMailBlocks mailBlocks4 = new IntServerMailBlocks();

        System.assert(mailBlocks1.equals(mailBlocks2));
        System.assert(mailBlocks2.equals(mailBlocks1));
        System.assert(mailBlocks3.equals(mailBlocks4));
        System.assert(mailBlocks4.equals(mailBlocks3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerMailBlocks mailBlocks1 = IntServerMailBlocks.getExample();
        IntServerMailBlocks mailBlocks2 = new IntServerMailBlocks();

        System.assertEquals(false, mailBlocks1.equals('foo'));
        System.assertEquals(false, mailBlocks2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerMailBlocks mailBlocks1 = IntServerMailBlocks.getExample();
        IntServerMailBlocks mailBlocks2 = new IntServerMailBlocks();
        IntServerMailBlocks mailBlocks3;

        System.assertEquals(false, mailBlocks1.equals(mailBlocks3));
        System.assertEquals(false, mailBlocks2.equals(mailBlocks3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerMailBlocks mailBlocks1 = IntServerMailBlocks.getExample();
        IntServerMailBlocks mailBlocks2 = new IntServerMailBlocks();

        System.assertEquals(mailBlocks1.hashCode(), mailBlocks1.hashCode());
        System.assertEquals(mailBlocks2.hashCode(), mailBlocks2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerMailBlocks mailBlocks1 = IntServerMailBlocks.getExample();
        IntServerMailBlocks mailBlocks2 = IntServerMailBlocks.getExample();
        IntServerMailBlocks mailBlocks3 = new IntServerMailBlocks();
        IntServerMailBlocks mailBlocks4 = new IntServerMailBlocks();

        System.assert(mailBlocks1.equals(mailBlocks2));
        System.assert(mailBlocks3.equals(mailBlocks4));
        System.assertEquals(mailBlocks1.hashCode(), mailBlocks2.hashCode());
        System.assertEquals(mailBlocks3.hashCode(), mailBlocks4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        IntServerMailBlocks mailBlocks = new IntServerMailBlocks();
        System.assertEquals(new List<IntServerMailBlockClickHouse>(), mailBlocks.local);
        System.assertEquals(new List<IntServerMailBlockClickHouse>(), mailBlocks.mbtrap);
        System.assertEquals(new List<IntServerMailBlockRspamd>(), mailBlocks.subject);
    }
}
