@isTest
private class IntServerMailServiceTypeTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerMailServiceType mailServiceType1 = IntServerMailServiceType.getExample();
        IntServerMailServiceType mailServiceType2 = mailServiceType1;
        IntServerMailServiceType mailServiceType3 = new IntServerMailServiceType();
        IntServerMailServiceType mailServiceType4 = mailServiceType3;

        System.assert(mailServiceType1.equals(mailServiceType2));
        System.assert(mailServiceType2.equals(mailServiceType1));
        System.assert(mailServiceType1.equals(mailServiceType1));
        System.assert(mailServiceType3.equals(mailServiceType4));
        System.assert(mailServiceType4.equals(mailServiceType3));
        System.assert(mailServiceType3.equals(mailServiceType3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerMailServiceType mailServiceType1 = IntServerMailServiceType.getExample();
        IntServerMailServiceType mailServiceType2 = IntServerMailServiceType.getExample();
        IntServerMailServiceType mailServiceType3 = new IntServerMailServiceType();
        IntServerMailServiceType mailServiceType4 = new IntServerMailServiceType();

        System.assert(mailServiceType1.equals(mailServiceType2));
        System.assert(mailServiceType2.equals(mailServiceType1));
        System.assert(mailServiceType3.equals(mailServiceType4));
        System.assert(mailServiceType4.equals(mailServiceType3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerMailServiceType mailServiceType1 = IntServerMailServiceType.getExample();
        IntServerMailServiceType mailServiceType2 = new IntServerMailServiceType();

        System.assertEquals(false, mailServiceType1.equals('foo'));
        System.assertEquals(false, mailServiceType2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerMailServiceType mailServiceType1 = IntServerMailServiceType.getExample();
        IntServerMailServiceType mailServiceType2 = new IntServerMailServiceType();
        IntServerMailServiceType mailServiceType3;

        System.assertEquals(false, mailServiceType1.equals(mailServiceType3));
        System.assertEquals(false, mailServiceType2.equals(mailServiceType3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerMailServiceType mailServiceType1 = IntServerMailServiceType.getExample();
        IntServerMailServiceType mailServiceType2 = new IntServerMailServiceType();

        System.assertEquals(mailServiceType1.hashCode(), mailServiceType1.hashCode());
        System.assertEquals(mailServiceType2.hashCode(), mailServiceType2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerMailServiceType mailServiceType1 = IntServerMailServiceType.getExample();
        IntServerMailServiceType mailServiceType2 = IntServerMailServiceType.getExample();
        IntServerMailServiceType mailServiceType3 = new IntServerMailServiceType();
        IntServerMailServiceType mailServiceType4 = new IntServerMailServiceType();

        System.assert(mailServiceType1.equals(mailServiceType2));
        System.assert(mailServiceType3.equals(mailServiceType4));
        System.assertEquals(mailServiceType1.hashCode(), mailServiceType2.hashCode());
        System.assertEquals(mailServiceType3.hashCode(), mailServiceType4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerMailServiceType mailServiceType = new IntServerMailServiceType();
        Map<String, String> x-property-mappings = mailServiceType.getx-property-mappings();
        System.assertEquals('servicesId', x-property-mappings.get('services_id'));
        System.assertEquals('servicesName', x-property-mappings.get('services_name'));
        System.assertEquals('servicesCost', x-property-mappings.get('services_cost'));
        System.assertEquals('servicesCategory', x-property-mappings.get('services_category'));
        System.assertEquals('servicesBuyable', x-property-mappings.get('services_buyable'));
        System.assertEquals('servicesType', x-property-mappings.get('services_type'));
        System.assertEquals('servicesField1', x-property-mappings.get('services_field1'));
        System.assertEquals('servicesField2', x-property-mappings.get('services_field2'));
        System.assertEquals('servicesModule', x-property-mappings.get('services_module'));
    }
}
