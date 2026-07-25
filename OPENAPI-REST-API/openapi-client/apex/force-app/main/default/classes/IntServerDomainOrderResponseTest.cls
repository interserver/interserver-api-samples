@isTest
private class IntServerDomainOrderResponseTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerDomainOrderResponse domainOrderResponse1 = IntServerDomainOrderResponse.getExample();
        IntServerDomainOrderResponse domainOrderResponse2 = domainOrderResponse1;
        IntServerDomainOrderResponse domainOrderResponse3 = new IntServerDomainOrderResponse();
        IntServerDomainOrderResponse domainOrderResponse4 = domainOrderResponse3;

        System.assert(domainOrderResponse1.equals(domainOrderResponse2));
        System.assert(domainOrderResponse2.equals(domainOrderResponse1));
        System.assert(domainOrderResponse1.equals(domainOrderResponse1));
        System.assert(domainOrderResponse3.equals(domainOrderResponse4));
        System.assert(domainOrderResponse4.equals(domainOrderResponse3));
        System.assert(domainOrderResponse3.equals(domainOrderResponse3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerDomainOrderResponse domainOrderResponse1 = IntServerDomainOrderResponse.getExample();
        IntServerDomainOrderResponse domainOrderResponse2 = IntServerDomainOrderResponse.getExample();
        IntServerDomainOrderResponse domainOrderResponse3 = new IntServerDomainOrderResponse();
        IntServerDomainOrderResponse domainOrderResponse4 = new IntServerDomainOrderResponse();

        System.assert(domainOrderResponse1.equals(domainOrderResponse2));
        System.assert(domainOrderResponse2.equals(domainOrderResponse1));
        System.assert(domainOrderResponse3.equals(domainOrderResponse4));
        System.assert(domainOrderResponse4.equals(domainOrderResponse3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerDomainOrderResponse domainOrderResponse1 = IntServerDomainOrderResponse.getExample();
        IntServerDomainOrderResponse domainOrderResponse2 = new IntServerDomainOrderResponse();

        System.assertEquals(false, domainOrderResponse1.equals('foo'));
        System.assertEquals(false, domainOrderResponse2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerDomainOrderResponse domainOrderResponse1 = IntServerDomainOrderResponse.getExample();
        IntServerDomainOrderResponse domainOrderResponse2 = new IntServerDomainOrderResponse();
        IntServerDomainOrderResponse domainOrderResponse3;

        System.assertEquals(false, domainOrderResponse1.equals(domainOrderResponse3));
        System.assertEquals(false, domainOrderResponse2.equals(domainOrderResponse3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerDomainOrderResponse domainOrderResponse1 = IntServerDomainOrderResponse.getExample();
        IntServerDomainOrderResponse domainOrderResponse2 = new IntServerDomainOrderResponse();

        System.assertEquals(domainOrderResponse1.hashCode(), domainOrderResponse1.hashCode());
        System.assertEquals(domainOrderResponse2.hashCode(), domainOrderResponse2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerDomainOrderResponse domainOrderResponse1 = IntServerDomainOrderResponse.getExample();
        IntServerDomainOrderResponse domainOrderResponse2 = IntServerDomainOrderResponse.getExample();
        IntServerDomainOrderResponse domainOrderResponse3 = new IntServerDomainOrderResponse();
        IntServerDomainOrderResponse domainOrderResponse4 = new IntServerDomainOrderResponse();

        System.assert(domainOrderResponse1.equals(domainOrderResponse2));
        System.assert(domainOrderResponse3.equals(domainOrderResponse4));
        System.assertEquals(domainOrderResponse1.hashCode(), domainOrderResponse2.hashCode());
        System.assertEquals(domainOrderResponse3.hashCode(), domainOrderResponse4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerDomainOrderResponse domainOrderResponse = new IntServerDomainOrderResponse();
        Map<String, String> x-property-mappings = domainOrderResponse.getx-property-mappings();
        System.assertEquals('oPSVersion', x-property-mappings.get('_OPS_version'));
        System.assertEquals('isSuccess', x-property-mappings.get('is_success'));
        System.assertEquals('responseText', x-property-mappings.get('response_text'));
        System.assertEquals('r_object', x-property-mappings.get('object'));
        System.assertEquals('responseCode', x-property-mappings.get('response_code'));
    }
}
