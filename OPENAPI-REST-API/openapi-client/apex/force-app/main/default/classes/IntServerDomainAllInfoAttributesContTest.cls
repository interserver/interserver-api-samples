@isTest
private class IntServerDomainAllInfoAttributesContTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerDomainAllInfoAttributesCont domainAllInfoAttributesContactSet1 = IntServerDomainAllInfoAttributesCont.getExample();
        IntServerDomainAllInfoAttributesCont domainAllInfoAttributesContactSet2 = domainAllInfoAttributesContactSet1;
        IntServerDomainAllInfoAttributesCont domainAllInfoAttributesContactSet3 = new IntServerDomainAllInfoAttributesCont();
        IntServerDomainAllInfoAttributesCont domainAllInfoAttributesContactSet4 = domainAllInfoAttributesContactSet3;

        System.assert(domainAllInfoAttributesContactSet1.equals(domainAllInfoAttributesContactSet2));
        System.assert(domainAllInfoAttributesContactSet2.equals(domainAllInfoAttributesContactSet1));
        System.assert(domainAllInfoAttributesContactSet1.equals(domainAllInfoAttributesContactSet1));
        System.assert(domainAllInfoAttributesContactSet3.equals(domainAllInfoAttributesContactSet4));
        System.assert(domainAllInfoAttributesContactSet4.equals(domainAllInfoAttributesContactSet3));
        System.assert(domainAllInfoAttributesContactSet3.equals(domainAllInfoAttributesContactSet3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerDomainAllInfoAttributesCont domainAllInfoAttributesContactSet1 = IntServerDomainAllInfoAttributesCont.getExample();
        IntServerDomainAllInfoAttributesCont domainAllInfoAttributesContactSet2 = IntServerDomainAllInfoAttributesCont.getExample();
        IntServerDomainAllInfoAttributesCont domainAllInfoAttributesContactSet3 = new IntServerDomainAllInfoAttributesCont();
        IntServerDomainAllInfoAttributesCont domainAllInfoAttributesContactSet4 = new IntServerDomainAllInfoAttributesCont();

        System.assert(domainAllInfoAttributesContactSet1.equals(domainAllInfoAttributesContactSet2));
        System.assert(domainAllInfoAttributesContactSet2.equals(domainAllInfoAttributesContactSet1));
        System.assert(domainAllInfoAttributesContactSet3.equals(domainAllInfoAttributesContactSet4));
        System.assert(domainAllInfoAttributesContactSet4.equals(domainAllInfoAttributesContactSet3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerDomainAllInfoAttributesCont domainAllInfoAttributesContactSet1 = IntServerDomainAllInfoAttributesCont.getExample();
        IntServerDomainAllInfoAttributesCont domainAllInfoAttributesContactSet2 = new IntServerDomainAllInfoAttributesCont();

        System.assertEquals(false, domainAllInfoAttributesContactSet1.equals('foo'));
        System.assertEquals(false, domainAllInfoAttributesContactSet2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerDomainAllInfoAttributesCont domainAllInfoAttributesContactSet1 = IntServerDomainAllInfoAttributesCont.getExample();
        IntServerDomainAllInfoAttributesCont domainAllInfoAttributesContactSet2 = new IntServerDomainAllInfoAttributesCont();
        IntServerDomainAllInfoAttributesCont domainAllInfoAttributesContactSet3;

        System.assertEquals(false, domainAllInfoAttributesContactSet1.equals(domainAllInfoAttributesContactSet3));
        System.assertEquals(false, domainAllInfoAttributesContactSet2.equals(domainAllInfoAttributesContactSet3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerDomainAllInfoAttributesCont domainAllInfoAttributesContactSet1 = IntServerDomainAllInfoAttributesCont.getExample();
        IntServerDomainAllInfoAttributesCont domainAllInfoAttributesContactSet2 = new IntServerDomainAllInfoAttributesCont();

        System.assertEquals(domainAllInfoAttributesContactSet1.hashCode(), domainAllInfoAttributesContactSet1.hashCode());
        System.assertEquals(domainAllInfoAttributesContactSet2.hashCode(), domainAllInfoAttributesContactSet2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerDomainAllInfoAttributesCont domainAllInfoAttributesContactSet1 = IntServerDomainAllInfoAttributesCont.getExample();
        IntServerDomainAllInfoAttributesCont domainAllInfoAttributesContactSet2 = IntServerDomainAllInfoAttributesCont.getExample();
        IntServerDomainAllInfoAttributesCont domainAllInfoAttributesContactSet3 = new IntServerDomainAllInfoAttributesCont();
        IntServerDomainAllInfoAttributesCont domainAllInfoAttributesContactSet4 = new IntServerDomainAllInfoAttributesCont();

        System.assert(domainAllInfoAttributesContactSet1.equals(domainAllInfoAttributesContactSet2));
        System.assert(domainAllInfoAttributesContactSet3.equals(domainAllInfoAttributesContactSet4));
        System.assertEquals(domainAllInfoAttributesContactSet1.hashCode(), domainAllInfoAttributesContactSet2.hashCode());
        System.assertEquals(domainAllInfoAttributesContactSet3.hashCode(), domainAllInfoAttributesContactSet4.hashCode());
    }
}
