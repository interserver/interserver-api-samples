@isTest
private class IntServerScrubIpsDeleteRule500ResponTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerScrubIpsDeleteRule500Respon scrubIpsDeleteRule500Response1 = IntServerScrubIpsDeleteRule500Respon.getExample();
        IntServerScrubIpsDeleteRule500Respon scrubIpsDeleteRule500Response2 = scrubIpsDeleteRule500Response1;
        IntServerScrubIpsDeleteRule500Respon scrubIpsDeleteRule500Response3 = new IntServerScrubIpsDeleteRule500Respon();
        IntServerScrubIpsDeleteRule500Respon scrubIpsDeleteRule500Response4 = scrubIpsDeleteRule500Response3;

        System.assert(scrubIpsDeleteRule500Response1.equals(scrubIpsDeleteRule500Response2));
        System.assert(scrubIpsDeleteRule500Response2.equals(scrubIpsDeleteRule500Response1));
        System.assert(scrubIpsDeleteRule500Response1.equals(scrubIpsDeleteRule500Response1));
        System.assert(scrubIpsDeleteRule500Response3.equals(scrubIpsDeleteRule500Response4));
        System.assert(scrubIpsDeleteRule500Response4.equals(scrubIpsDeleteRule500Response3));
        System.assert(scrubIpsDeleteRule500Response3.equals(scrubIpsDeleteRule500Response3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerScrubIpsDeleteRule500Respon scrubIpsDeleteRule500Response1 = IntServerScrubIpsDeleteRule500Respon.getExample();
        IntServerScrubIpsDeleteRule500Respon scrubIpsDeleteRule500Response2 = IntServerScrubIpsDeleteRule500Respon.getExample();
        IntServerScrubIpsDeleteRule500Respon scrubIpsDeleteRule500Response3 = new IntServerScrubIpsDeleteRule500Respon();
        IntServerScrubIpsDeleteRule500Respon scrubIpsDeleteRule500Response4 = new IntServerScrubIpsDeleteRule500Respon();

        System.assert(scrubIpsDeleteRule500Response1.equals(scrubIpsDeleteRule500Response2));
        System.assert(scrubIpsDeleteRule500Response2.equals(scrubIpsDeleteRule500Response1));
        System.assert(scrubIpsDeleteRule500Response3.equals(scrubIpsDeleteRule500Response4));
        System.assert(scrubIpsDeleteRule500Response4.equals(scrubIpsDeleteRule500Response3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerScrubIpsDeleteRule500Respon scrubIpsDeleteRule500Response1 = IntServerScrubIpsDeleteRule500Respon.getExample();
        IntServerScrubIpsDeleteRule500Respon scrubIpsDeleteRule500Response2 = new IntServerScrubIpsDeleteRule500Respon();

        System.assertEquals(false, scrubIpsDeleteRule500Response1.equals('foo'));
        System.assertEquals(false, scrubIpsDeleteRule500Response2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerScrubIpsDeleteRule500Respon scrubIpsDeleteRule500Response1 = IntServerScrubIpsDeleteRule500Respon.getExample();
        IntServerScrubIpsDeleteRule500Respon scrubIpsDeleteRule500Response2 = new IntServerScrubIpsDeleteRule500Respon();
        IntServerScrubIpsDeleteRule500Respon scrubIpsDeleteRule500Response3;

        System.assertEquals(false, scrubIpsDeleteRule500Response1.equals(scrubIpsDeleteRule500Response3));
        System.assertEquals(false, scrubIpsDeleteRule500Response2.equals(scrubIpsDeleteRule500Response3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerScrubIpsDeleteRule500Respon scrubIpsDeleteRule500Response1 = IntServerScrubIpsDeleteRule500Respon.getExample();
        IntServerScrubIpsDeleteRule500Respon scrubIpsDeleteRule500Response2 = new IntServerScrubIpsDeleteRule500Respon();

        System.assertEquals(scrubIpsDeleteRule500Response1.hashCode(), scrubIpsDeleteRule500Response1.hashCode());
        System.assertEquals(scrubIpsDeleteRule500Response2.hashCode(), scrubIpsDeleteRule500Response2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerScrubIpsDeleteRule500Respon scrubIpsDeleteRule500Response1 = IntServerScrubIpsDeleteRule500Respon.getExample();
        IntServerScrubIpsDeleteRule500Respon scrubIpsDeleteRule500Response2 = IntServerScrubIpsDeleteRule500Respon.getExample();
        IntServerScrubIpsDeleteRule500Respon scrubIpsDeleteRule500Response3 = new IntServerScrubIpsDeleteRule500Respon();
        IntServerScrubIpsDeleteRule500Respon scrubIpsDeleteRule500Response4 = new IntServerScrubIpsDeleteRule500Respon();

        System.assert(scrubIpsDeleteRule500Response1.equals(scrubIpsDeleteRule500Response2));
        System.assert(scrubIpsDeleteRule500Response3.equals(scrubIpsDeleteRule500Response4));
        System.assertEquals(scrubIpsDeleteRule500Response1.hashCode(), scrubIpsDeleteRule500Response2.hashCode());
        System.assertEquals(scrubIpsDeleteRule500Response3.hashCode(), scrubIpsDeleteRule500Response4.hashCode());
    }
}
