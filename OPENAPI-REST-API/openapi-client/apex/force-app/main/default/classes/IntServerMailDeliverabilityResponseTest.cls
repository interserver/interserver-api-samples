@isTest
private class IntServerMailDeliverabilityResponseTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerMailDeliverabilityResponse mailDeliverabilityResponse1 = IntServerMailDeliverabilityResponse.getExample();
        IntServerMailDeliverabilityResponse mailDeliverabilityResponse2 = mailDeliverabilityResponse1;
        IntServerMailDeliverabilityResponse mailDeliverabilityResponse3 = new IntServerMailDeliverabilityResponse();
        IntServerMailDeliverabilityResponse mailDeliverabilityResponse4 = mailDeliverabilityResponse3;

        System.assert(mailDeliverabilityResponse1.equals(mailDeliverabilityResponse2));
        System.assert(mailDeliverabilityResponse2.equals(mailDeliverabilityResponse1));
        System.assert(mailDeliverabilityResponse1.equals(mailDeliverabilityResponse1));
        System.assert(mailDeliverabilityResponse3.equals(mailDeliverabilityResponse4));
        System.assert(mailDeliverabilityResponse4.equals(mailDeliverabilityResponse3));
        System.assert(mailDeliverabilityResponse3.equals(mailDeliverabilityResponse3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerMailDeliverabilityResponse mailDeliverabilityResponse1 = IntServerMailDeliverabilityResponse.getExample();
        IntServerMailDeliverabilityResponse mailDeliverabilityResponse2 = IntServerMailDeliverabilityResponse.getExample();
        IntServerMailDeliverabilityResponse mailDeliverabilityResponse3 = new IntServerMailDeliverabilityResponse();
        IntServerMailDeliverabilityResponse mailDeliverabilityResponse4 = new IntServerMailDeliverabilityResponse();

        System.assert(mailDeliverabilityResponse1.equals(mailDeliverabilityResponse2));
        System.assert(mailDeliverabilityResponse2.equals(mailDeliverabilityResponse1));
        System.assert(mailDeliverabilityResponse3.equals(mailDeliverabilityResponse4));
        System.assert(mailDeliverabilityResponse4.equals(mailDeliverabilityResponse3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerMailDeliverabilityResponse mailDeliverabilityResponse1 = IntServerMailDeliverabilityResponse.getExample();
        IntServerMailDeliverabilityResponse mailDeliverabilityResponse2 = new IntServerMailDeliverabilityResponse();

        System.assertEquals(false, mailDeliverabilityResponse1.equals('foo'));
        System.assertEquals(false, mailDeliverabilityResponse2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerMailDeliverabilityResponse mailDeliverabilityResponse1 = IntServerMailDeliverabilityResponse.getExample();
        IntServerMailDeliverabilityResponse mailDeliverabilityResponse2 = new IntServerMailDeliverabilityResponse();
        IntServerMailDeliverabilityResponse mailDeliverabilityResponse3;

        System.assertEquals(false, mailDeliverabilityResponse1.equals(mailDeliverabilityResponse3));
        System.assertEquals(false, mailDeliverabilityResponse2.equals(mailDeliverabilityResponse3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerMailDeliverabilityResponse mailDeliverabilityResponse1 = IntServerMailDeliverabilityResponse.getExample();
        IntServerMailDeliverabilityResponse mailDeliverabilityResponse2 = new IntServerMailDeliverabilityResponse();

        System.assertEquals(mailDeliverabilityResponse1.hashCode(), mailDeliverabilityResponse1.hashCode());
        System.assertEquals(mailDeliverabilityResponse2.hashCode(), mailDeliverabilityResponse2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerMailDeliverabilityResponse mailDeliverabilityResponse1 = IntServerMailDeliverabilityResponse.getExample();
        IntServerMailDeliverabilityResponse mailDeliverabilityResponse2 = IntServerMailDeliverabilityResponse.getExample();
        IntServerMailDeliverabilityResponse mailDeliverabilityResponse3 = new IntServerMailDeliverabilityResponse();
        IntServerMailDeliverabilityResponse mailDeliverabilityResponse4 = new IntServerMailDeliverabilityResponse();

        System.assert(mailDeliverabilityResponse1.equals(mailDeliverabilityResponse2));
        System.assert(mailDeliverabilityResponse3.equals(mailDeliverabilityResponse4));
        System.assertEquals(mailDeliverabilityResponse1.hashCode(), mailDeliverabilityResponse2.hashCode());
        System.assertEquals(mailDeliverabilityResponse3.hashCode(), mailDeliverabilityResponse4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerMailDeliverabilityResponse mailDeliverabilityResponse = new IntServerMailDeliverabilityResponse();
        Map<String, String> x-property-mappings = mailDeliverabilityResponse.getx-property-mappings();
        System.assertEquals('tableData', x-property-mappings.get('table_data'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        IntServerMailDeliverabilityResponse mailDeliverabilityResponse = new IntServerMailDeliverabilityResponse();
        System.assertEquals(new List<List<String>>(), mailDeliverabilityResponse.tableData);
        System.assertEquals(null, mailDeliverabilityResponse.stat);
        System.assertEquals(null, mailDeliverabilityResponse.percent);
    }
}
