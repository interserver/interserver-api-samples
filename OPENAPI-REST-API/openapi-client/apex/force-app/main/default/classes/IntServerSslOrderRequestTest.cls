@isTest
private class IntServerSslOrderRequestTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerSslOrderRequest sslOrderRequest1 = IntServerSslOrderRequest.getExample();
        IntServerSslOrderRequest sslOrderRequest2 = sslOrderRequest1;
        IntServerSslOrderRequest sslOrderRequest3 = new IntServerSslOrderRequest();
        IntServerSslOrderRequest sslOrderRequest4 = sslOrderRequest3;

        System.assert(sslOrderRequest1.equals(sslOrderRequest2));
        System.assert(sslOrderRequest2.equals(sslOrderRequest1));
        System.assert(sslOrderRequest1.equals(sslOrderRequest1));
        System.assert(sslOrderRequest3.equals(sslOrderRequest4));
        System.assert(sslOrderRequest4.equals(sslOrderRequest3));
        System.assert(sslOrderRequest3.equals(sslOrderRequest3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerSslOrderRequest sslOrderRequest1 = IntServerSslOrderRequest.getExample();
        IntServerSslOrderRequest sslOrderRequest2 = IntServerSslOrderRequest.getExample();
        IntServerSslOrderRequest sslOrderRequest3 = new IntServerSslOrderRequest();
        IntServerSslOrderRequest sslOrderRequest4 = new IntServerSslOrderRequest();

        System.assert(sslOrderRequest1.equals(sslOrderRequest2));
        System.assert(sslOrderRequest2.equals(sslOrderRequest1));
        System.assert(sslOrderRequest3.equals(sslOrderRequest4));
        System.assert(sslOrderRequest4.equals(sslOrderRequest3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerSslOrderRequest sslOrderRequest1 = IntServerSslOrderRequest.getExample();
        IntServerSslOrderRequest sslOrderRequest2 = new IntServerSslOrderRequest();

        System.assertEquals(false, sslOrderRequest1.equals('foo'));
        System.assertEquals(false, sslOrderRequest2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerSslOrderRequest sslOrderRequest1 = IntServerSslOrderRequest.getExample();
        IntServerSslOrderRequest sslOrderRequest2 = new IntServerSslOrderRequest();
        IntServerSslOrderRequest sslOrderRequest3;

        System.assertEquals(false, sslOrderRequest1.equals(sslOrderRequest3));
        System.assertEquals(false, sslOrderRequest2.equals(sslOrderRequest3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerSslOrderRequest sslOrderRequest1 = IntServerSslOrderRequest.getExample();
        IntServerSslOrderRequest sslOrderRequest2 = new IntServerSslOrderRequest();

        System.assertEquals(sslOrderRequest1.hashCode(), sslOrderRequest1.hashCode());
        System.assertEquals(sslOrderRequest2.hashCode(), sslOrderRequest2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerSslOrderRequest sslOrderRequest1 = IntServerSslOrderRequest.getExample();
        IntServerSslOrderRequest sslOrderRequest2 = IntServerSslOrderRequest.getExample();
        IntServerSslOrderRequest sslOrderRequest3 = new IntServerSslOrderRequest();
        IntServerSslOrderRequest sslOrderRequest4 = new IntServerSslOrderRequest();

        System.assert(sslOrderRequest1.equals(sslOrderRequest2));
        System.assert(sslOrderRequest3.equals(sslOrderRequest4));
        System.assertEquals(sslOrderRequest1.hashCode(), sslOrderRequest2.hashCode());
        System.assertEquals(sslOrderRequest3.hashCode(), sslOrderRequest4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerSslOrderRequest sslOrderRequest = new IntServerSslOrderRequest();
        Map<String, String> x-property-mappings = sslOrderRequest.getx-property-mappings();
        System.assertEquals('approverEmail', x-property-mappings.get('approver_email'));
        System.assertEquals('csrType', x-property-mappings.get('csr_type'));
        System.assertEquals('businessCategory', x-property-mappings.get('business_category'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        IntServerSslOrderRequest sslOrderRequest = new IntServerSslOrderRequest();
        System.assertEquals(12, sslOrderRequest.frequency);
        System.assertEquals('', sslOrderRequest.coupon);
        System.assertEquals(CsrTypeEnum.GENERATED, sslOrderRequest.csrType);
        System.assertEquals('', sslOrderRequest.csr);
        System.assertEquals('Administration', sslOrderRequest.department);
        System.assertEquals(null, sslOrderRequest.ssl);
        System.assertEquals(null, sslOrderRequest.hostname);
        System.assertEquals(null, sslOrderRequest.approverEmail);
        System.assertEquals(null, sslOrderRequest.firstname);
        System.assertEquals(null, sslOrderRequest.lastname);
        System.assertEquals(null, sslOrderRequest.email);
        System.assertEquals(null, sslOrderRequest.address);
        System.assertEquals(null, sslOrderRequest.city);
        System.assertEquals(null, sslOrderRequest.state);
        System.assertEquals(null, sslOrderRequest.zip);
        System.assertEquals(null, sslOrderRequest.country);
        System.assertEquals(null, sslOrderRequest.phone);
        System.assertEquals(null, sslOrderRequest.company);
        System.assertEquals(null, sslOrderRequest.agency);
        System.assertEquals(null, sslOrderRequest.businessCategory);
    }
}
