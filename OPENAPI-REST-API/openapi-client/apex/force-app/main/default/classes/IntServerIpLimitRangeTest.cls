@isTest
private class IntServerIpLimitRangeTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerIpLimitRange ipLimitRange1 = IntServerIpLimitRange.getExample();
        IntServerIpLimitRange ipLimitRange2 = ipLimitRange1;
        IntServerIpLimitRange ipLimitRange3 = new IntServerIpLimitRange();
        IntServerIpLimitRange ipLimitRange4 = ipLimitRange3;

        System.assert(ipLimitRange1.equals(ipLimitRange2));
        System.assert(ipLimitRange2.equals(ipLimitRange1));
        System.assert(ipLimitRange1.equals(ipLimitRange1));
        System.assert(ipLimitRange3.equals(ipLimitRange4));
        System.assert(ipLimitRange4.equals(ipLimitRange3));
        System.assert(ipLimitRange3.equals(ipLimitRange3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerIpLimitRange ipLimitRange1 = IntServerIpLimitRange.getExample();
        IntServerIpLimitRange ipLimitRange2 = IntServerIpLimitRange.getExample();
        IntServerIpLimitRange ipLimitRange3 = new IntServerIpLimitRange();
        IntServerIpLimitRange ipLimitRange4 = new IntServerIpLimitRange();

        System.assert(ipLimitRange1.equals(ipLimitRange2));
        System.assert(ipLimitRange2.equals(ipLimitRange1));
        System.assert(ipLimitRange3.equals(ipLimitRange4));
        System.assert(ipLimitRange4.equals(ipLimitRange3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerIpLimitRange ipLimitRange1 = IntServerIpLimitRange.getExample();
        IntServerIpLimitRange ipLimitRange2 = new IntServerIpLimitRange();

        System.assertEquals(false, ipLimitRange1.equals('foo'));
        System.assertEquals(false, ipLimitRange2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerIpLimitRange ipLimitRange1 = IntServerIpLimitRange.getExample();
        IntServerIpLimitRange ipLimitRange2 = new IntServerIpLimitRange();
        IntServerIpLimitRange ipLimitRange3;

        System.assertEquals(false, ipLimitRange1.equals(ipLimitRange3));
        System.assertEquals(false, ipLimitRange2.equals(ipLimitRange3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerIpLimitRange ipLimitRange1 = IntServerIpLimitRange.getExample();
        IntServerIpLimitRange ipLimitRange2 = new IntServerIpLimitRange();

        System.assertEquals(ipLimitRange1.hashCode(), ipLimitRange1.hashCode());
        System.assertEquals(ipLimitRange2.hashCode(), ipLimitRange2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerIpLimitRange ipLimitRange1 = IntServerIpLimitRange.getExample();
        IntServerIpLimitRange ipLimitRange2 = IntServerIpLimitRange.getExample();
        IntServerIpLimitRange ipLimitRange3 = new IntServerIpLimitRange();
        IntServerIpLimitRange ipLimitRange4 = new IntServerIpLimitRange();

        System.assert(ipLimitRange1.equals(ipLimitRange2));
        System.assert(ipLimitRange3.equals(ipLimitRange4));
        System.assertEquals(ipLimitRange1.hashCode(), ipLimitRange2.hashCode());
        System.assertEquals(ipLimitRange3.hashCode(), ipLimitRange4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerIpLimitRange ipLimitRange = new IntServerIpLimitRange();
        Map<String, String> x-property-mappings = ipLimitRange.getx-property-mappings();
        System.assertEquals('r_end', x-property-mappings.get('end'));
    }
}
