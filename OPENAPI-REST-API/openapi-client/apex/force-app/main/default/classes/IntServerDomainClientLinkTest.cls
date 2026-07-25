@isTest
private class IntServerDomainClientLinkTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerDomainClientLink domainClientLink1 = IntServerDomainClientLink.getExample();
        IntServerDomainClientLink domainClientLink2 = domainClientLink1;
        IntServerDomainClientLink domainClientLink3 = new IntServerDomainClientLink();
        IntServerDomainClientLink domainClientLink4 = domainClientLink3;

        System.assert(domainClientLink1.equals(domainClientLink2));
        System.assert(domainClientLink2.equals(domainClientLink1));
        System.assert(domainClientLink1.equals(domainClientLink1));
        System.assert(domainClientLink3.equals(domainClientLink4));
        System.assert(domainClientLink4.equals(domainClientLink3));
        System.assert(domainClientLink3.equals(domainClientLink3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerDomainClientLink domainClientLink1 = IntServerDomainClientLink.getExample();
        IntServerDomainClientLink domainClientLink2 = IntServerDomainClientLink.getExample();
        IntServerDomainClientLink domainClientLink3 = new IntServerDomainClientLink();
        IntServerDomainClientLink domainClientLink4 = new IntServerDomainClientLink();

        System.assert(domainClientLink1.equals(domainClientLink2));
        System.assert(domainClientLink2.equals(domainClientLink1));
        System.assert(domainClientLink3.equals(domainClientLink4));
        System.assert(domainClientLink4.equals(domainClientLink3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerDomainClientLink domainClientLink1 = IntServerDomainClientLink.getExample();
        IntServerDomainClientLink domainClientLink2 = new IntServerDomainClientLink();

        System.assertEquals(false, domainClientLink1.equals('foo'));
        System.assertEquals(false, domainClientLink2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerDomainClientLink domainClientLink1 = IntServerDomainClientLink.getExample();
        IntServerDomainClientLink domainClientLink2 = new IntServerDomainClientLink();
        IntServerDomainClientLink domainClientLink3;

        System.assertEquals(false, domainClientLink1.equals(domainClientLink3));
        System.assertEquals(false, domainClientLink2.equals(domainClientLink3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerDomainClientLink domainClientLink1 = IntServerDomainClientLink.getExample();
        IntServerDomainClientLink domainClientLink2 = new IntServerDomainClientLink();

        System.assertEquals(domainClientLink1.hashCode(), domainClientLink1.hashCode());
        System.assertEquals(domainClientLink2.hashCode(), domainClientLink2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerDomainClientLink domainClientLink1 = IntServerDomainClientLink.getExample();
        IntServerDomainClientLink domainClientLink2 = IntServerDomainClientLink.getExample();
        IntServerDomainClientLink domainClientLink3 = new IntServerDomainClientLink();
        IntServerDomainClientLink domainClientLink4 = new IntServerDomainClientLink();

        System.assert(domainClientLink1.equals(domainClientLink2));
        System.assert(domainClientLink3.equals(domainClientLink4));
        System.assertEquals(domainClientLink1.hashCode(), domainClientLink2.hashCode());
        System.assertEquals(domainClientLink3.hashCode(), domainClientLink4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerDomainClientLink domainClientLink = new IntServerDomainClientLink();
        Map<String, String> x-property-mappings = domainClientLink.getx-property-mappings();
        System.assertEquals('iconText', x-property-mappings.get('icon_text'));
        System.assertEquals('helpText', x-property-mappings.get('help_text'));
    }
}
