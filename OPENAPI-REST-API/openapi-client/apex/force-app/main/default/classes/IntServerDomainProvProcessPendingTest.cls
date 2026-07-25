@isTest
private class IntServerDomainProvProcessPendingTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerDomainProvProcessPending domainProvProcessPending1 = IntServerDomainProvProcessPending.getExample();
        IntServerDomainProvProcessPending domainProvProcessPending2 = domainProvProcessPending1;
        IntServerDomainProvProcessPending domainProvProcessPending3 = new IntServerDomainProvProcessPending();
        IntServerDomainProvProcessPending domainProvProcessPending4 = domainProvProcessPending3;

        System.assert(domainProvProcessPending1.equals(domainProvProcessPending2));
        System.assert(domainProvProcessPending2.equals(domainProvProcessPending1));
        System.assert(domainProvProcessPending1.equals(domainProvProcessPending1));
        System.assert(domainProvProcessPending3.equals(domainProvProcessPending4));
        System.assert(domainProvProcessPending4.equals(domainProvProcessPending3));
        System.assert(domainProvProcessPending3.equals(domainProvProcessPending3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerDomainProvProcessPending domainProvProcessPending1 = IntServerDomainProvProcessPending.getExample();
        IntServerDomainProvProcessPending domainProvProcessPending2 = IntServerDomainProvProcessPending.getExample();
        IntServerDomainProvProcessPending domainProvProcessPending3 = new IntServerDomainProvProcessPending();
        IntServerDomainProvProcessPending domainProvProcessPending4 = new IntServerDomainProvProcessPending();

        System.assert(domainProvProcessPending1.equals(domainProvProcessPending2));
        System.assert(domainProvProcessPending2.equals(domainProvProcessPending1));
        System.assert(domainProvProcessPending3.equals(domainProvProcessPending4));
        System.assert(domainProvProcessPending4.equals(domainProvProcessPending3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerDomainProvProcessPending domainProvProcessPending1 = IntServerDomainProvProcessPending.getExample();
        IntServerDomainProvProcessPending domainProvProcessPending2 = new IntServerDomainProvProcessPending();

        System.assertEquals(false, domainProvProcessPending1.equals('foo'));
        System.assertEquals(false, domainProvProcessPending2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerDomainProvProcessPending domainProvProcessPending1 = IntServerDomainProvProcessPending.getExample();
        IntServerDomainProvProcessPending domainProvProcessPending2 = new IntServerDomainProvProcessPending();
        IntServerDomainProvProcessPending domainProvProcessPending3;

        System.assertEquals(false, domainProvProcessPending1.equals(domainProvProcessPending3));
        System.assertEquals(false, domainProvProcessPending2.equals(domainProvProcessPending3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerDomainProvProcessPending domainProvProcessPending1 = IntServerDomainProvProcessPending.getExample();
        IntServerDomainProvProcessPending domainProvProcessPending2 = new IntServerDomainProvProcessPending();

        System.assertEquals(domainProvProcessPending1.hashCode(), domainProvProcessPending1.hashCode());
        System.assertEquals(domainProvProcessPending2.hashCode(), domainProvProcessPending2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerDomainProvProcessPending domainProvProcessPending1 = IntServerDomainProvProcessPending.getExample();
        IntServerDomainProvProcessPending domainProvProcessPending2 = IntServerDomainProvProcessPending.getExample();
        IntServerDomainProvProcessPending domainProvProcessPending3 = new IntServerDomainProvProcessPending();
        IntServerDomainProvProcessPending domainProvProcessPending4 = new IntServerDomainProvProcessPending();

        System.assert(domainProvProcessPending1.equals(domainProvProcessPending2));
        System.assert(domainProvProcessPending3.equals(domainProvProcessPending4));
        System.assertEquals(domainProvProcessPending1.hashCode(), domainProvProcessPending2.hashCode());
        System.assertEquals(domainProvProcessPending3.hashCode(), domainProvProcessPending4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerDomainProvProcessPending domainProvProcessPending = new IntServerDomainProvProcessPending();
        Map<String, String> x-property-mappings = domainProvProcessPending.getx-property-mappings();
        System.assertEquals('oPSVersion', x-property-mappings.get('_OPS_version'));
        System.assertEquals('responseText', x-property-mappings.get('response_text'));
        System.assertEquals('responseCode', x-property-mappings.get('response_code'));
        System.assertEquals('r_object', x-property-mappings.get('object'));
        System.assertEquals('isSuccess', x-property-mappings.get('is_success'));
    }
}
