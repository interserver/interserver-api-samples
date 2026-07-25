@isTest
private class IntServerServiceOrderPostResponseTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerServiceOrderPostResponse serviceOrderPostResponse1 = IntServerServiceOrderPostResponse.getExample();
        IntServerServiceOrderPostResponse serviceOrderPostResponse2 = serviceOrderPostResponse1;
        IntServerServiceOrderPostResponse serviceOrderPostResponse3 = new IntServerServiceOrderPostResponse();
        IntServerServiceOrderPostResponse serviceOrderPostResponse4 = serviceOrderPostResponse3;

        System.assert(serviceOrderPostResponse1.equals(serviceOrderPostResponse2));
        System.assert(serviceOrderPostResponse2.equals(serviceOrderPostResponse1));
        System.assert(serviceOrderPostResponse1.equals(serviceOrderPostResponse1));
        System.assert(serviceOrderPostResponse3.equals(serviceOrderPostResponse4));
        System.assert(serviceOrderPostResponse4.equals(serviceOrderPostResponse3));
        System.assert(serviceOrderPostResponse3.equals(serviceOrderPostResponse3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerServiceOrderPostResponse serviceOrderPostResponse1 = IntServerServiceOrderPostResponse.getExample();
        IntServerServiceOrderPostResponse serviceOrderPostResponse2 = IntServerServiceOrderPostResponse.getExample();
        IntServerServiceOrderPostResponse serviceOrderPostResponse3 = new IntServerServiceOrderPostResponse();
        IntServerServiceOrderPostResponse serviceOrderPostResponse4 = new IntServerServiceOrderPostResponse();

        System.assert(serviceOrderPostResponse1.equals(serviceOrderPostResponse2));
        System.assert(serviceOrderPostResponse2.equals(serviceOrderPostResponse1));
        System.assert(serviceOrderPostResponse3.equals(serviceOrderPostResponse4));
        System.assert(serviceOrderPostResponse4.equals(serviceOrderPostResponse3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerServiceOrderPostResponse serviceOrderPostResponse1 = IntServerServiceOrderPostResponse.getExample();
        IntServerServiceOrderPostResponse serviceOrderPostResponse2 = new IntServerServiceOrderPostResponse();

        System.assertEquals(false, serviceOrderPostResponse1.equals('foo'));
        System.assertEquals(false, serviceOrderPostResponse2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerServiceOrderPostResponse serviceOrderPostResponse1 = IntServerServiceOrderPostResponse.getExample();
        IntServerServiceOrderPostResponse serviceOrderPostResponse2 = new IntServerServiceOrderPostResponse();
        IntServerServiceOrderPostResponse serviceOrderPostResponse3;

        System.assertEquals(false, serviceOrderPostResponse1.equals(serviceOrderPostResponse3));
        System.assertEquals(false, serviceOrderPostResponse2.equals(serviceOrderPostResponse3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerServiceOrderPostResponse serviceOrderPostResponse1 = IntServerServiceOrderPostResponse.getExample();
        IntServerServiceOrderPostResponse serviceOrderPostResponse2 = new IntServerServiceOrderPostResponse();

        System.assertEquals(serviceOrderPostResponse1.hashCode(), serviceOrderPostResponse1.hashCode());
        System.assertEquals(serviceOrderPostResponse2.hashCode(), serviceOrderPostResponse2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerServiceOrderPostResponse serviceOrderPostResponse1 = IntServerServiceOrderPostResponse.getExample();
        IntServerServiceOrderPostResponse serviceOrderPostResponse2 = IntServerServiceOrderPostResponse.getExample();
        IntServerServiceOrderPostResponse serviceOrderPostResponse3 = new IntServerServiceOrderPostResponse();
        IntServerServiceOrderPostResponse serviceOrderPostResponse4 = new IntServerServiceOrderPostResponse();

        System.assert(serviceOrderPostResponse1.equals(serviceOrderPostResponse2));
        System.assert(serviceOrderPostResponse3.equals(serviceOrderPostResponse4));
        System.assertEquals(serviceOrderPostResponse1.hashCode(), serviceOrderPostResponse2.hashCode());
        System.assertEquals(serviceOrderPostResponse3.hashCode(), serviceOrderPostResponse4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerServiceOrderPostResponse serviceOrderPostResponse = new IntServerServiceOrderPostResponse();
        Map<String, String> x-property-mappings = serviceOrderPostResponse.getx-property-mappings();
        System.assertEquals('r_continue', x-property-mappings.get('continue'));
        System.assertEquals('totalCost', x-property-mappings.get('total_cost'));
        System.assertEquals('realIids', x-property-mappings.get('real_iids'));
        System.assertEquals('invoiceDescription', x-property-mappings.get('invoice_description'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        IntServerServiceOrderPostResponse serviceOrderPostResponse = new IntServerServiceOrderPostResponse();
        System.assertEquals(new List<String>(), serviceOrderPostResponse.errors);
        System.assertEquals(new List<String>(), serviceOrderPostResponse.iids);
        System.assertEquals(new List<String>(), serviceOrderPostResponse.realIids);
        System.assertEquals(null, serviceOrderPostResponse.r_continue);
        System.assertEquals(null, serviceOrderPostResponse.totalCost);
        System.assertEquals(null, serviceOrderPostResponse.iid);
        System.assertEquals(null, serviceOrderPostResponse.serviceId);
        System.assertEquals(null, serviceOrderPostResponse.invoiceDescription);
    }
}
