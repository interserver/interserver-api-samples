@isTest
private class IntServerDomainOrderServicesTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerDomainOrderServices domainOrderServices1 = IntServerDomainOrderServices.getExample();
        IntServerDomainOrderServices domainOrderServices2 = domainOrderServices1;
        IntServerDomainOrderServices domainOrderServices3 = new IntServerDomainOrderServices();
        IntServerDomainOrderServices domainOrderServices4 = domainOrderServices3;

        System.assert(domainOrderServices1.equals(domainOrderServices2));
        System.assert(domainOrderServices2.equals(domainOrderServices1));
        System.assert(domainOrderServices1.equals(domainOrderServices1));
        System.assert(domainOrderServices3.equals(domainOrderServices4));
        System.assert(domainOrderServices4.equals(domainOrderServices3));
        System.assert(domainOrderServices3.equals(domainOrderServices3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerDomainOrderServices domainOrderServices1 = IntServerDomainOrderServices.getExample();
        IntServerDomainOrderServices domainOrderServices2 = IntServerDomainOrderServices.getExample();
        IntServerDomainOrderServices domainOrderServices3 = new IntServerDomainOrderServices();
        IntServerDomainOrderServices domainOrderServices4 = new IntServerDomainOrderServices();

        System.assert(domainOrderServices1.equals(domainOrderServices2));
        System.assert(domainOrderServices2.equals(domainOrderServices1));
        System.assert(domainOrderServices3.equals(domainOrderServices4));
        System.assert(domainOrderServices4.equals(domainOrderServices3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerDomainOrderServices domainOrderServices1 = IntServerDomainOrderServices.getExample();
        IntServerDomainOrderServices domainOrderServices2 = new IntServerDomainOrderServices();

        System.assertEquals(false, domainOrderServices1.equals('foo'));
        System.assertEquals(false, domainOrderServices2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerDomainOrderServices domainOrderServices1 = IntServerDomainOrderServices.getExample();
        IntServerDomainOrderServices domainOrderServices2 = new IntServerDomainOrderServices();
        IntServerDomainOrderServices domainOrderServices3;

        System.assertEquals(false, domainOrderServices1.equals(domainOrderServices3));
        System.assertEquals(false, domainOrderServices2.equals(domainOrderServices3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerDomainOrderServices domainOrderServices1 = IntServerDomainOrderServices.getExample();
        IntServerDomainOrderServices domainOrderServices2 = new IntServerDomainOrderServices();

        System.assertEquals(domainOrderServices1.hashCode(), domainOrderServices1.hashCode());
        System.assertEquals(domainOrderServices2.hashCode(), domainOrderServices2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerDomainOrderServices domainOrderServices1 = IntServerDomainOrderServices.getExample();
        IntServerDomainOrderServices domainOrderServices2 = IntServerDomainOrderServices.getExample();
        IntServerDomainOrderServices domainOrderServices3 = new IntServerDomainOrderServices();
        IntServerDomainOrderServices domainOrderServices4 = new IntServerDomainOrderServices();

        System.assert(domainOrderServices1.equals(domainOrderServices2));
        System.assert(domainOrderServices3.equals(domainOrderServices4));
        System.assertEquals(domainOrderServices1.hashCode(), domainOrderServices2.hashCode());
        System.assertEquals(domainOrderServices3.hashCode(), domainOrderServices4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerDomainOrderServices domainOrderServices = new IntServerDomainOrderServices();
        Map<String, String> x-property-mappings = domainOrderServices.getx-property-mappings();
        System.assertEquals('domainOrderServices10001', x-property-mappings.get('DomainOrderServices10001'));
    }
}
