@isTest
private class IntServerPutScrubIps200ResponseTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerPutScrubIps200Response putScrubIps200Response1 = IntServerPutScrubIps200Response.getExample();
        IntServerPutScrubIps200Response putScrubIps200Response2 = putScrubIps200Response1;
        IntServerPutScrubIps200Response putScrubIps200Response3 = new IntServerPutScrubIps200Response();
        IntServerPutScrubIps200Response putScrubIps200Response4 = putScrubIps200Response3;

        System.assert(putScrubIps200Response1.equals(putScrubIps200Response2));
        System.assert(putScrubIps200Response2.equals(putScrubIps200Response1));
        System.assert(putScrubIps200Response1.equals(putScrubIps200Response1));
        System.assert(putScrubIps200Response3.equals(putScrubIps200Response4));
        System.assert(putScrubIps200Response4.equals(putScrubIps200Response3));
        System.assert(putScrubIps200Response3.equals(putScrubIps200Response3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerPutScrubIps200Response putScrubIps200Response1 = IntServerPutScrubIps200Response.getExample();
        IntServerPutScrubIps200Response putScrubIps200Response2 = IntServerPutScrubIps200Response.getExample();
        IntServerPutScrubIps200Response putScrubIps200Response3 = new IntServerPutScrubIps200Response();
        IntServerPutScrubIps200Response putScrubIps200Response4 = new IntServerPutScrubIps200Response();

        System.assert(putScrubIps200Response1.equals(putScrubIps200Response2));
        System.assert(putScrubIps200Response2.equals(putScrubIps200Response1));
        System.assert(putScrubIps200Response3.equals(putScrubIps200Response4));
        System.assert(putScrubIps200Response4.equals(putScrubIps200Response3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerPutScrubIps200Response putScrubIps200Response1 = IntServerPutScrubIps200Response.getExample();
        IntServerPutScrubIps200Response putScrubIps200Response2 = new IntServerPutScrubIps200Response();

        System.assertEquals(false, putScrubIps200Response1.equals('foo'));
        System.assertEquals(false, putScrubIps200Response2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerPutScrubIps200Response putScrubIps200Response1 = IntServerPutScrubIps200Response.getExample();
        IntServerPutScrubIps200Response putScrubIps200Response2 = new IntServerPutScrubIps200Response();
        IntServerPutScrubIps200Response putScrubIps200Response3;

        System.assertEquals(false, putScrubIps200Response1.equals(putScrubIps200Response3));
        System.assertEquals(false, putScrubIps200Response2.equals(putScrubIps200Response3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerPutScrubIps200Response putScrubIps200Response1 = IntServerPutScrubIps200Response.getExample();
        IntServerPutScrubIps200Response putScrubIps200Response2 = new IntServerPutScrubIps200Response();

        System.assertEquals(putScrubIps200Response1.hashCode(), putScrubIps200Response1.hashCode());
        System.assertEquals(putScrubIps200Response2.hashCode(), putScrubIps200Response2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerPutScrubIps200Response putScrubIps200Response1 = IntServerPutScrubIps200Response.getExample();
        IntServerPutScrubIps200Response putScrubIps200Response2 = IntServerPutScrubIps200Response.getExample();
        IntServerPutScrubIps200Response putScrubIps200Response3 = new IntServerPutScrubIps200Response();
        IntServerPutScrubIps200Response putScrubIps200Response4 = new IntServerPutScrubIps200Response();

        System.assert(putScrubIps200Response1.equals(putScrubIps200Response2));
        System.assert(putScrubIps200Response3.equals(putScrubIps200Response4));
        System.assertEquals(putScrubIps200Response1.hashCode(), putScrubIps200Response2.hashCode());
        System.assertEquals(putScrubIps200Response3.hashCode(), putScrubIps200Response4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerPutScrubIps200Response putScrubIps200Response = new IntServerPutScrubIps200Response();
        Map<String, String> x-property-mappings = putScrubIps200Response.getx-property-mappings();
        System.assertEquals('r_continue', x-property-mappings.get('continue'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        IntServerPutScrubIps200Response putScrubIps200Response = new IntServerPutScrubIps200Response();
        System.assertEquals(new List<String>(), putScrubIps200Response.errors);
        System.assertEquals(null, putScrubIps200Response.r_continue);
        System.assertEquals(null, putScrubIps200Response.serviceType);
        System.assertEquals(null, putScrubIps200Response.serviceCost);
        System.assertEquals(null, putScrubIps200Response.originalCost);
        System.assertEquals(null, putScrubIps200Response.repeatServiceCost);
    }
}
