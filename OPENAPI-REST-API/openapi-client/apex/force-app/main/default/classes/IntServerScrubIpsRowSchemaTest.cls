@isTest
private class IntServerScrubIpsRowSchemaTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerScrubIpsRowSchema scrubIpsRowSchema1 = IntServerScrubIpsRowSchema.getExample();
        IntServerScrubIpsRowSchema scrubIpsRowSchema2 = scrubIpsRowSchema1;
        IntServerScrubIpsRowSchema scrubIpsRowSchema3 = new IntServerScrubIpsRowSchema();
        IntServerScrubIpsRowSchema scrubIpsRowSchema4 = scrubIpsRowSchema3;

        System.assert(scrubIpsRowSchema1.equals(scrubIpsRowSchema2));
        System.assert(scrubIpsRowSchema2.equals(scrubIpsRowSchema1));
        System.assert(scrubIpsRowSchema1.equals(scrubIpsRowSchema1));
        System.assert(scrubIpsRowSchema3.equals(scrubIpsRowSchema4));
        System.assert(scrubIpsRowSchema4.equals(scrubIpsRowSchema3));
        System.assert(scrubIpsRowSchema3.equals(scrubIpsRowSchema3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerScrubIpsRowSchema scrubIpsRowSchema1 = IntServerScrubIpsRowSchema.getExample();
        IntServerScrubIpsRowSchema scrubIpsRowSchema2 = IntServerScrubIpsRowSchema.getExample();
        IntServerScrubIpsRowSchema scrubIpsRowSchema3 = new IntServerScrubIpsRowSchema();
        IntServerScrubIpsRowSchema scrubIpsRowSchema4 = new IntServerScrubIpsRowSchema();

        System.assert(scrubIpsRowSchema1.equals(scrubIpsRowSchema2));
        System.assert(scrubIpsRowSchema2.equals(scrubIpsRowSchema1));
        System.assert(scrubIpsRowSchema3.equals(scrubIpsRowSchema4));
        System.assert(scrubIpsRowSchema4.equals(scrubIpsRowSchema3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerScrubIpsRowSchema scrubIpsRowSchema1 = IntServerScrubIpsRowSchema.getExample();
        IntServerScrubIpsRowSchema scrubIpsRowSchema2 = new IntServerScrubIpsRowSchema();

        System.assertEquals(false, scrubIpsRowSchema1.equals('foo'));
        System.assertEquals(false, scrubIpsRowSchema2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerScrubIpsRowSchema scrubIpsRowSchema1 = IntServerScrubIpsRowSchema.getExample();
        IntServerScrubIpsRowSchema scrubIpsRowSchema2 = new IntServerScrubIpsRowSchema();
        IntServerScrubIpsRowSchema scrubIpsRowSchema3;

        System.assertEquals(false, scrubIpsRowSchema1.equals(scrubIpsRowSchema3));
        System.assertEquals(false, scrubIpsRowSchema2.equals(scrubIpsRowSchema3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerScrubIpsRowSchema scrubIpsRowSchema1 = IntServerScrubIpsRowSchema.getExample();
        IntServerScrubIpsRowSchema scrubIpsRowSchema2 = new IntServerScrubIpsRowSchema();

        System.assertEquals(scrubIpsRowSchema1.hashCode(), scrubIpsRowSchema1.hashCode());
        System.assertEquals(scrubIpsRowSchema2.hashCode(), scrubIpsRowSchema2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerScrubIpsRowSchema scrubIpsRowSchema1 = IntServerScrubIpsRowSchema.getExample();
        IntServerScrubIpsRowSchema scrubIpsRowSchema2 = IntServerScrubIpsRowSchema.getExample();
        IntServerScrubIpsRowSchema scrubIpsRowSchema3 = new IntServerScrubIpsRowSchema();
        IntServerScrubIpsRowSchema scrubIpsRowSchema4 = new IntServerScrubIpsRowSchema();

        System.assert(scrubIpsRowSchema1.equals(scrubIpsRowSchema2));
        System.assert(scrubIpsRowSchema3.equals(scrubIpsRowSchema4));
        System.assertEquals(scrubIpsRowSchema1.hashCode(), scrubIpsRowSchema2.hashCode());
        System.assertEquals(scrubIpsRowSchema3.hashCode(), scrubIpsRowSchema4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerScrubIpsRowSchema scrubIpsRowSchema = new IntServerScrubIpsRowSchema();
        Map<String, String> x-property-mappings = scrubIpsRowSchema.getx-property-mappings();
        System.assertEquals('scrubIpId', x-property-mappings.get('scrub_ip_id'));
        System.assertEquals('repeatInvoicesCost', x-property-mappings.get('repeat_invoices_cost'));
        System.assertEquals('scrubIpIp', x-property-mappings.get('scrub_ip_ip'));
        System.assertEquals('scrubIpStatus', x-property-mappings.get('scrub_ip_status'));
        System.assertEquals('servicesName', x-property-mappings.get('services_name'));
    }
}
