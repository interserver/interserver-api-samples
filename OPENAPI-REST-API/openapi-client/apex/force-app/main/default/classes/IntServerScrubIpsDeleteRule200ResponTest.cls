@isTest
private class IntServerScrubIpsDeleteRule200ResponTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerScrubIpsDeleteRule200Respon scrubIpsDeleteRule200Response1 = IntServerScrubIpsDeleteRule200Respon.getExample();
        IntServerScrubIpsDeleteRule200Respon scrubIpsDeleteRule200Response2 = scrubIpsDeleteRule200Response1;
        IntServerScrubIpsDeleteRule200Respon scrubIpsDeleteRule200Response3 = new IntServerScrubIpsDeleteRule200Respon();
        IntServerScrubIpsDeleteRule200Respon scrubIpsDeleteRule200Response4 = scrubIpsDeleteRule200Response3;

        System.assert(scrubIpsDeleteRule200Response1.equals(scrubIpsDeleteRule200Response2));
        System.assert(scrubIpsDeleteRule200Response2.equals(scrubIpsDeleteRule200Response1));
        System.assert(scrubIpsDeleteRule200Response1.equals(scrubIpsDeleteRule200Response1));
        System.assert(scrubIpsDeleteRule200Response3.equals(scrubIpsDeleteRule200Response4));
        System.assert(scrubIpsDeleteRule200Response4.equals(scrubIpsDeleteRule200Response3));
        System.assert(scrubIpsDeleteRule200Response3.equals(scrubIpsDeleteRule200Response3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerScrubIpsDeleteRule200Respon scrubIpsDeleteRule200Response1 = IntServerScrubIpsDeleteRule200Respon.getExample();
        IntServerScrubIpsDeleteRule200Respon scrubIpsDeleteRule200Response2 = IntServerScrubIpsDeleteRule200Respon.getExample();
        IntServerScrubIpsDeleteRule200Respon scrubIpsDeleteRule200Response3 = new IntServerScrubIpsDeleteRule200Respon();
        IntServerScrubIpsDeleteRule200Respon scrubIpsDeleteRule200Response4 = new IntServerScrubIpsDeleteRule200Respon();

        System.assert(scrubIpsDeleteRule200Response1.equals(scrubIpsDeleteRule200Response2));
        System.assert(scrubIpsDeleteRule200Response2.equals(scrubIpsDeleteRule200Response1));
        System.assert(scrubIpsDeleteRule200Response3.equals(scrubIpsDeleteRule200Response4));
        System.assert(scrubIpsDeleteRule200Response4.equals(scrubIpsDeleteRule200Response3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerScrubIpsDeleteRule200Respon scrubIpsDeleteRule200Response1 = IntServerScrubIpsDeleteRule200Respon.getExample();
        IntServerScrubIpsDeleteRule200Respon scrubIpsDeleteRule200Response2 = new IntServerScrubIpsDeleteRule200Respon();

        System.assertEquals(false, scrubIpsDeleteRule200Response1.equals('foo'));
        System.assertEquals(false, scrubIpsDeleteRule200Response2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerScrubIpsDeleteRule200Respon scrubIpsDeleteRule200Response1 = IntServerScrubIpsDeleteRule200Respon.getExample();
        IntServerScrubIpsDeleteRule200Respon scrubIpsDeleteRule200Response2 = new IntServerScrubIpsDeleteRule200Respon();
        IntServerScrubIpsDeleteRule200Respon scrubIpsDeleteRule200Response3;

        System.assertEquals(false, scrubIpsDeleteRule200Response1.equals(scrubIpsDeleteRule200Response3));
        System.assertEquals(false, scrubIpsDeleteRule200Response2.equals(scrubIpsDeleteRule200Response3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerScrubIpsDeleteRule200Respon scrubIpsDeleteRule200Response1 = IntServerScrubIpsDeleteRule200Respon.getExample();
        IntServerScrubIpsDeleteRule200Respon scrubIpsDeleteRule200Response2 = new IntServerScrubIpsDeleteRule200Respon();

        System.assertEquals(scrubIpsDeleteRule200Response1.hashCode(), scrubIpsDeleteRule200Response1.hashCode());
        System.assertEquals(scrubIpsDeleteRule200Response2.hashCode(), scrubIpsDeleteRule200Response2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerScrubIpsDeleteRule200Respon scrubIpsDeleteRule200Response1 = IntServerScrubIpsDeleteRule200Respon.getExample();
        IntServerScrubIpsDeleteRule200Respon scrubIpsDeleteRule200Response2 = IntServerScrubIpsDeleteRule200Respon.getExample();
        IntServerScrubIpsDeleteRule200Respon scrubIpsDeleteRule200Response3 = new IntServerScrubIpsDeleteRule200Respon();
        IntServerScrubIpsDeleteRule200Respon scrubIpsDeleteRule200Response4 = new IntServerScrubIpsDeleteRule200Respon();

        System.assert(scrubIpsDeleteRule200Response1.equals(scrubIpsDeleteRule200Response2));
        System.assert(scrubIpsDeleteRule200Response3.equals(scrubIpsDeleteRule200Response4));
        System.assertEquals(scrubIpsDeleteRule200Response1.hashCode(), scrubIpsDeleteRule200Response2.hashCode());
        System.assertEquals(scrubIpsDeleteRule200Response3.hashCode(), scrubIpsDeleteRule200Response4.hashCode());
    }
}
