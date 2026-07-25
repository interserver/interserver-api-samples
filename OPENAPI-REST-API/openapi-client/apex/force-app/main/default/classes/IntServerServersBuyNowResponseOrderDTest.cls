@isTest
private class IntServerServersBuyNowResponseOrderDTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerServersBuyNowResponseOrderD serversBuyNowResponseOrderDetails1 = IntServerServersBuyNowResponseOrderD.getExample();
        IntServerServersBuyNowResponseOrderD serversBuyNowResponseOrderDetails2 = serversBuyNowResponseOrderDetails1;
        IntServerServersBuyNowResponseOrderD serversBuyNowResponseOrderDetails3 = new IntServerServersBuyNowResponseOrderD();
        IntServerServersBuyNowResponseOrderD serversBuyNowResponseOrderDetails4 = serversBuyNowResponseOrderDetails3;

        System.assert(serversBuyNowResponseOrderDetails1.equals(serversBuyNowResponseOrderDetails2));
        System.assert(serversBuyNowResponseOrderDetails2.equals(serversBuyNowResponseOrderDetails1));
        System.assert(serversBuyNowResponseOrderDetails1.equals(serversBuyNowResponseOrderDetails1));
        System.assert(serversBuyNowResponseOrderDetails3.equals(serversBuyNowResponseOrderDetails4));
        System.assert(serversBuyNowResponseOrderDetails4.equals(serversBuyNowResponseOrderDetails3));
        System.assert(serversBuyNowResponseOrderDetails3.equals(serversBuyNowResponseOrderDetails3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerServersBuyNowResponseOrderD serversBuyNowResponseOrderDetails1 = IntServerServersBuyNowResponseOrderD.getExample();
        IntServerServersBuyNowResponseOrderD serversBuyNowResponseOrderDetails2 = IntServerServersBuyNowResponseOrderD.getExample();
        IntServerServersBuyNowResponseOrderD serversBuyNowResponseOrderDetails3 = new IntServerServersBuyNowResponseOrderD();
        IntServerServersBuyNowResponseOrderD serversBuyNowResponseOrderDetails4 = new IntServerServersBuyNowResponseOrderD();

        System.assert(serversBuyNowResponseOrderDetails1.equals(serversBuyNowResponseOrderDetails2));
        System.assert(serversBuyNowResponseOrderDetails2.equals(serversBuyNowResponseOrderDetails1));
        System.assert(serversBuyNowResponseOrderDetails3.equals(serversBuyNowResponseOrderDetails4));
        System.assert(serversBuyNowResponseOrderDetails4.equals(serversBuyNowResponseOrderDetails3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerServersBuyNowResponseOrderD serversBuyNowResponseOrderDetails1 = IntServerServersBuyNowResponseOrderD.getExample();
        IntServerServersBuyNowResponseOrderD serversBuyNowResponseOrderDetails2 = new IntServerServersBuyNowResponseOrderD();

        System.assertEquals(false, serversBuyNowResponseOrderDetails1.equals('foo'));
        System.assertEquals(false, serversBuyNowResponseOrderDetails2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerServersBuyNowResponseOrderD serversBuyNowResponseOrderDetails1 = IntServerServersBuyNowResponseOrderD.getExample();
        IntServerServersBuyNowResponseOrderD serversBuyNowResponseOrderDetails2 = new IntServerServersBuyNowResponseOrderD();
        IntServerServersBuyNowResponseOrderD serversBuyNowResponseOrderDetails3;

        System.assertEquals(false, serversBuyNowResponseOrderDetails1.equals(serversBuyNowResponseOrderDetails3));
        System.assertEquals(false, serversBuyNowResponseOrderDetails2.equals(serversBuyNowResponseOrderDetails3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerServersBuyNowResponseOrderD serversBuyNowResponseOrderDetails1 = IntServerServersBuyNowResponseOrderD.getExample();
        IntServerServersBuyNowResponseOrderD serversBuyNowResponseOrderDetails2 = new IntServerServersBuyNowResponseOrderD();

        System.assertEquals(serversBuyNowResponseOrderDetails1.hashCode(), serversBuyNowResponseOrderDetails1.hashCode());
        System.assertEquals(serversBuyNowResponseOrderDetails2.hashCode(), serversBuyNowResponseOrderDetails2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerServersBuyNowResponseOrderD serversBuyNowResponseOrderDetails1 = IntServerServersBuyNowResponseOrderD.getExample();
        IntServerServersBuyNowResponseOrderD serversBuyNowResponseOrderDetails2 = IntServerServersBuyNowResponseOrderD.getExample();
        IntServerServersBuyNowResponseOrderD serversBuyNowResponseOrderDetails3 = new IntServerServersBuyNowResponseOrderD();
        IntServerServersBuyNowResponseOrderD serversBuyNowResponseOrderDetails4 = new IntServerServersBuyNowResponseOrderD();

        System.assert(serversBuyNowResponseOrderDetails1.equals(serversBuyNowResponseOrderDetails2));
        System.assert(serversBuyNowResponseOrderDetails3.equals(serversBuyNowResponseOrderDetails4));
        System.assertEquals(serversBuyNowResponseOrderDetails1.hashCode(), serversBuyNowResponseOrderDetails2.hashCode());
        System.assertEquals(serversBuyNowResponseOrderDetails3.hashCode(), serversBuyNowResponseOrderDetails4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerServersBuyNowResponseOrderD serversBuyNowResponseOrderDetails = new IntServerServersBuyNowResponseOrderD();
        Map<String, String> x-property-mappings = serversBuyNowResponseOrderDetails.getx-property-mappings();
        System.assertEquals('serviceId', x-property-mappings.get('service_id'));
        System.assertEquals('invoiceId', x-property-mappings.get('invoice_id'));
    }
}
