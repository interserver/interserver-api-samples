@isTest
private class IntServerScrubIpsDeleteRule400ResponTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerScrubIpsDeleteRule400Respon scrubIpsDeleteRule400Response1 = IntServerScrubIpsDeleteRule400Respon.getExample();
        IntServerScrubIpsDeleteRule400Respon scrubIpsDeleteRule400Response2 = scrubIpsDeleteRule400Response1;
        IntServerScrubIpsDeleteRule400Respon scrubIpsDeleteRule400Response3 = new IntServerScrubIpsDeleteRule400Respon();
        IntServerScrubIpsDeleteRule400Respon scrubIpsDeleteRule400Response4 = scrubIpsDeleteRule400Response3;

        System.assert(scrubIpsDeleteRule400Response1.equals(scrubIpsDeleteRule400Response2));
        System.assert(scrubIpsDeleteRule400Response2.equals(scrubIpsDeleteRule400Response1));
        System.assert(scrubIpsDeleteRule400Response1.equals(scrubIpsDeleteRule400Response1));
        System.assert(scrubIpsDeleteRule400Response3.equals(scrubIpsDeleteRule400Response4));
        System.assert(scrubIpsDeleteRule400Response4.equals(scrubIpsDeleteRule400Response3));
        System.assert(scrubIpsDeleteRule400Response3.equals(scrubIpsDeleteRule400Response3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerScrubIpsDeleteRule400Respon scrubIpsDeleteRule400Response1 = IntServerScrubIpsDeleteRule400Respon.getExample();
        IntServerScrubIpsDeleteRule400Respon scrubIpsDeleteRule400Response2 = IntServerScrubIpsDeleteRule400Respon.getExample();
        IntServerScrubIpsDeleteRule400Respon scrubIpsDeleteRule400Response3 = new IntServerScrubIpsDeleteRule400Respon();
        IntServerScrubIpsDeleteRule400Respon scrubIpsDeleteRule400Response4 = new IntServerScrubIpsDeleteRule400Respon();

        System.assert(scrubIpsDeleteRule400Response1.equals(scrubIpsDeleteRule400Response2));
        System.assert(scrubIpsDeleteRule400Response2.equals(scrubIpsDeleteRule400Response1));
        System.assert(scrubIpsDeleteRule400Response3.equals(scrubIpsDeleteRule400Response4));
        System.assert(scrubIpsDeleteRule400Response4.equals(scrubIpsDeleteRule400Response3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerScrubIpsDeleteRule400Respon scrubIpsDeleteRule400Response1 = IntServerScrubIpsDeleteRule400Respon.getExample();
        IntServerScrubIpsDeleteRule400Respon scrubIpsDeleteRule400Response2 = new IntServerScrubIpsDeleteRule400Respon();

        System.assertEquals(false, scrubIpsDeleteRule400Response1.equals('foo'));
        System.assertEquals(false, scrubIpsDeleteRule400Response2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerScrubIpsDeleteRule400Respon scrubIpsDeleteRule400Response1 = IntServerScrubIpsDeleteRule400Respon.getExample();
        IntServerScrubIpsDeleteRule400Respon scrubIpsDeleteRule400Response2 = new IntServerScrubIpsDeleteRule400Respon();
        IntServerScrubIpsDeleteRule400Respon scrubIpsDeleteRule400Response3;

        System.assertEquals(false, scrubIpsDeleteRule400Response1.equals(scrubIpsDeleteRule400Response3));
        System.assertEquals(false, scrubIpsDeleteRule400Response2.equals(scrubIpsDeleteRule400Response3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerScrubIpsDeleteRule400Respon scrubIpsDeleteRule400Response1 = IntServerScrubIpsDeleteRule400Respon.getExample();
        IntServerScrubIpsDeleteRule400Respon scrubIpsDeleteRule400Response2 = new IntServerScrubIpsDeleteRule400Respon();

        System.assertEquals(scrubIpsDeleteRule400Response1.hashCode(), scrubIpsDeleteRule400Response1.hashCode());
        System.assertEquals(scrubIpsDeleteRule400Response2.hashCode(), scrubIpsDeleteRule400Response2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerScrubIpsDeleteRule400Respon scrubIpsDeleteRule400Response1 = IntServerScrubIpsDeleteRule400Respon.getExample();
        IntServerScrubIpsDeleteRule400Respon scrubIpsDeleteRule400Response2 = IntServerScrubIpsDeleteRule400Respon.getExample();
        IntServerScrubIpsDeleteRule400Respon scrubIpsDeleteRule400Response3 = new IntServerScrubIpsDeleteRule400Respon();
        IntServerScrubIpsDeleteRule400Respon scrubIpsDeleteRule400Response4 = new IntServerScrubIpsDeleteRule400Respon();

        System.assert(scrubIpsDeleteRule400Response1.equals(scrubIpsDeleteRule400Response2));
        System.assert(scrubIpsDeleteRule400Response3.equals(scrubIpsDeleteRule400Response4));
        System.assertEquals(scrubIpsDeleteRule400Response1.hashCode(), scrubIpsDeleteRule400Response2.hashCode());
        System.assertEquals(scrubIpsDeleteRule400Response3.hashCode(), scrubIpsDeleteRule400Response4.hashCode());
    }
}
