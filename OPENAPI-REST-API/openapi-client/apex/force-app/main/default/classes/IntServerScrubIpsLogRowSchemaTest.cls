@isTest
private class IntServerScrubIpsLogRowSchemaTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerScrubIpsLogRowSchema scrubIpsLogRowSchema1 = IntServerScrubIpsLogRowSchema.getExample();
        IntServerScrubIpsLogRowSchema scrubIpsLogRowSchema2 = scrubIpsLogRowSchema1;
        IntServerScrubIpsLogRowSchema scrubIpsLogRowSchema3 = new IntServerScrubIpsLogRowSchema();
        IntServerScrubIpsLogRowSchema scrubIpsLogRowSchema4 = scrubIpsLogRowSchema3;

        System.assert(scrubIpsLogRowSchema1.equals(scrubIpsLogRowSchema2));
        System.assert(scrubIpsLogRowSchema2.equals(scrubIpsLogRowSchema1));
        System.assert(scrubIpsLogRowSchema1.equals(scrubIpsLogRowSchema1));
        System.assert(scrubIpsLogRowSchema3.equals(scrubIpsLogRowSchema4));
        System.assert(scrubIpsLogRowSchema4.equals(scrubIpsLogRowSchema3));
        System.assert(scrubIpsLogRowSchema3.equals(scrubIpsLogRowSchema3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerScrubIpsLogRowSchema scrubIpsLogRowSchema1 = IntServerScrubIpsLogRowSchema.getExample();
        IntServerScrubIpsLogRowSchema scrubIpsLogRowSchema2 = IntServerScrubIpsLogRowSchema.getExample();
        IntServerScrubIpsLogRowSchema scrubIpsLogRowSchema3 = new IntServerScrubIpsLogRowSchema();
        IntServerScrubIpsLogRowSchema scrubIpsLogRowSchema4 = new IntServerScrubIpsLogRowSchema();

        System.assert(scrubIpsLogRowSchema1.equals(scrubIpsLogRowSchema2));
        System.assert(scrubIpsLogRowSchema2.equals(scrubIpsLogRowSchema1));
        System.assert(scrubIpsLogRowSchema3.equals(scrubIpsLogRowSchema4));
        System.assert(scrubIpsLogRowSchema4.equals(scrubIpsLogRowSchema3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerScrubIpsLogRowSchema scrubIpsLogRowSchema1 = IntServerScrubIpsLogRowSchema.getExample();
        IntServerScrubIpsLogRowSchema scrubIpsLogRowSchema2 = new IntServerScrubIpsLogRowSchema();

        System.assertEquals(false, scrubIpsLogRowSchema1.equals('foo'));
        System.assertEquals(false, scrubIpsLogRowSchema2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerScrubIpsLogRowSchema scrubIpsLogRowSchema1 = IntServerScrubIpsLogRowSchema.getExample();
        IntServerScrubIpsLogRowSchema scrubIpsLogRowSchema2 = new IntServerScrubIpsLogRowSchema();
        IntServerScrubIpsLogRowSchema scrubIpsLogRowSchema3;

        System.assertEquals(false, scrubIpsLogRowSchema1.equals(scrubIpsLogRowSchema3));
        System.assertEquals(false, scrubIpsLogRowSchema2.equals(scrubIpsLogRowSchema3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerScrubIpsLogRowSchema scrubIpsLogRowSchema1 = IntServerScrubIpsLogRowSchema.getExample();
        IntServerScrubIpsLogRowSchema scrubIpsLogRowSchema2 = new IntServerScrubIpsLogRowSchema();

        System.assertEquals(scrubIpsLogRowSchema1.hashCode(), scrubIpsLogRowSchema1.hashCode());
        System.assertEquals(scrubIpsLogRowSchema2.hashCode(), scrubIpsLogRowSchema2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerScrubIpsLogRowSchema scrubIpsLogRowSchema1 = IntServerScrubIpsLogRowSchema.getExample();
        IntServerScrubIpsLogRowSchema scrubIpsLogRowSchema2 = IntServerScrubIpsLogRowSchema.getExample();
        IntServerScrubIpsLogRowSchema scrubIpsLogRowSchema3 = new IntServerScrubIpsLogRowSchema();
        IntServerScrubIpsLogRowSchema scrubIpsLogRowSchema4 = new IntServerScrubIpsLogRowSchema();

        System.assert(scrubIpsLogRowSchema1.equals(scrubIpsLogRowSchema2));
        System.assert(scrubIpsLogRowSchema3.equals(scrubIpsLogRowSchema4));
        System.assertEquals(scrubIpsLogRowSchema1.hashCode(), scrubIpsLogRowSchema2.hashCode());
        System.assertEquals(scrubIpsLogRowSchema3.hashCode(), scrubIpsLogRowSchema4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerScrubIpsLogRowSchema scrubIpsLogRowSchema = new IntServerScrubIpsLogRowSchema();
        Map<String, String> x-property-mappings = scrubIpsLogRowSchema.getx-property-mappings();
        System.assertEquals('r_date', x-property-mappings.get('date'));
        System.assertEquals('blockedIp', x-property-mappings.get('blocked_ip'));
        System.assertEquals('targetIp', x-property-mappings.get('target_ip'));
        System.assertEquals('targetPort', x-property-mappings.get('target_port'));
        System.assertEquals('byteCount', x-property-mappings.get('byte_count'));
        System.assertEquals('xdpAction', x-property-mappings.get('xdp_action'));
    }
}
