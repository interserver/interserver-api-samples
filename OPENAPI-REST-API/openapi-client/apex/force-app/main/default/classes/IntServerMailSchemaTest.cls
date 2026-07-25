@isTest
private class IntServerMailSchemaTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerMailSchema mailSchema1 = IntServerMailSchema.getExample();
        IntServerMailSchema mailSchema2 = mailSchema1;
        IntServerMailSchema mailSchema3 = new IntServerMailSchema();
        IntServerMailSchema mailSchema4 = mailSchema3;

        System.assert(mailSchema1.equals(mailSchema2));
        System.assert(mailSchema2.equals(mailSchema1));
        System.assert(mailSchema1.equals(mailSchema1));
        System.assert(mailSchema3.equals(mailSchema4));
        System.assert(mailSchema4.equals(mailSchema3));
        System.assert(mailSchema3.equals(mailSchema3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerMailSchema mailSchema1 = IntServerMailSchema.getExample();
        IntServerMailSchema mailSchema2 = IntServerMailSchema.getExample();
        IntServerMailSchema mailSchema3 = new IntServerMailSchema();
        IntServerMailSchema mailSchema4 = new IntServerMailSchema();

        System.assert(mailSchema1.equals(mailSchema2));
        System.assert(mailSchema2.equals(mailSchema1));
        System.assert(mailSchema3.equals(mailSchema4));
        System.assert(mailSchema4.equals(mailSchema3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerMailSchema mailSchema1 = IntServerMailSchema.getExample();
        IntServerMailSchema mailSchema2 = new IntServerMailSchema();

        System.assertEquals(false, mailSchema1.equals('foo'));
        System.assertEquals(false, mailSchema2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerMailSchema mailSchema1 = IntServerMailSchema.getExample();
        IntServerMailSchema mailSchema2 = new IntServerMailSchema();
        IntServerMailSchema mailSchema3;

        System.assertEquals(false, mailSchema1.equals(mailSchema3));
        System.assertEquals(false, mailSchema2.equals(mailSchema3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerMailSchema mailSchema1 = IntServerMailSchema.getExample();
        IntServerMailSchema mailSchema2 = new IntServerMailSchema();

        System.assertEquals(mailSchema1.hashCode(), mailSchema1.hashCode());
        System.assertEquals(mailSchema2.hashCode(), mailSchema2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerMailSchema mailSchema1 = IntServerMailSchema.getExample();
        IntServerMailSchema mailSchema2 = IntServerMailSchema.getExample();
        IntServerMailSchema mailSchema3 = new IntServerMailSchema();
        IntServerMailSchema mailSchema4 = new IntServerMailSchema();

        System.assert(mailSchema1.equals(mailSchema2));
        System.assert(mailSchema3.equals(mailSchema4));
        System.assertEquals(mailSchema1.hashCode(), mailSchema2.hashCode());
        System.assertEquals(mailSchema3.hashCode(), mailSchema4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerMailSchema mailSchema = new IntServerMailSchema();
        Map<String, String> x-property-mappings = mailSchema.getx-property-mappings();
        System.assertEquals('clientLinks', x-property-mappings.get('client_links'));
        System.assertEquals('r_package', x-property-mappings.get('package'));
        System.assertEquals('usageCount', x-property-mappings.get('usage_count'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        IntServerMailSchema mailSchema = new IntServerMailSchema();
        System.assertEquals(new List<IntServerMailClientLink>(), mailSchema.clientLinks);
        System.assertEquals(new List<String>(), mailSchema.serviceExtra);
        System.assertEquals(null, mailSchema.serviceInfo);
        System.assertEquals(null, mailSchema.billingDetails);
        System.assertEquals(null, mailSchema.custCurrency);
        System.assertEquals(null, mailSchema.custCurrencySymbol);
        System.assertEquals(null, mailSchema.r_package);
        System.assertEquals(null, mailSchema.extraInfoTables);
        System.assertEquals(null, mailSchema.serviceType);
        System.assertEquals(null, mailSchema.usageCount);
    }
}
