@isTest
private class IntServerBillingInvoiceDetailTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerBillingInvoiceDetail billingInvoiceDetail1 = IntServerBillingInvoiceDetail.getExample();
        IntServerBillingInvoiceDetail billingInvoiceDetail2 = billingInvoiceDetail1;
        IntServerBillingInvoiceDetail billingInvoiceDetail3 = new IntServerBillingInvoiceDetail();
        IntServerBillingInvoiceDetail billingInvoiceDetail4 = billingInvoiceDetail3;

        System.assert(billingInvoiceDetail1.equals(billingInvoiceDetail2));
        System.assert(billingInvoiceDetail2.equals(billingInvoiceDetail1));
        System.assert(billingInvoiceDetail1.equals(billingInvoiceDetail1));
        System.assert(billingInvoiceDetail3.equals(billingInvoiceDetail4));
        System.assert(billingInvoiceDetail4.equals(billingInvoiceDetail3));
        System.assert(billingInvoiceDetail3.equals(billingInvoiceDetail3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerBillingInvoiceDetail billingInvoiceDetail1 = IntServerBillingInvoiceDetail.getExample();
        IntServerBillingInvoiceDetail billingInvoiceDetail2 = IntServerBillingInvoiceDetail.getExample();
        IntServerBillingInvoiceDetail billingInvoiceDetail3 = new IntServerBillingInvoiceDetail();
        IntServerBillingInvoiceDetail billingInvoiceDetail4 = new IntServerBillingInvoiceDetail();

        System.assert(billingInvoiceDetail1.equals(billingInvoiceDetail2));
        System.assert(billingInvoiceDetail2.equals(billingInvoiceDetail1));
        System.assert(billingInvoiceDetail3.equals(billingInvoiceDetail4));
        System.assert(billingInvoiceDetail4.equals(billingInvoiceDetail3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerBillingInvoiceDetail billingInvoiceDetail1 = IntServerBillingInvoiceDetail.getExample();
        IntServerBillingInvoiceDetail billingInvoiceDetail2 = new IntServerBillingInvoiceDetail();

        System.assertEquals(false, billingInvoiceDetail1.equals('foo'));
        System.assertEquals(false, billingInvoiceDetail2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerBillingInvoiceDetail billingInvoiceDetail1 = IntServerBillingInvoiceDetail.getExample();
        IntServerBillingInvoiceDetail billingInvoiceDetail2 = new IntServerBillingInvoiceDetail();
        IntServerBillingInvoiceDetail billingInvoiceDetail3;

        System.assertEquals(false, billingInvoiceDetail1.equals(billingInvoiceDetail3));
        System.assertEquals(false, billingInvoiceDetail2.equals(billingInvoiceDetail3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerBillingInvoiceDetail billingInvoiceDetail1 = IntServerBillingInvoiceDetail.getExample();
        IntServerBillingInvoiceDetail billingInvoiceDetail2 = new IntServerBillingInvoiceDetail();

        System.assertEquals(billingInvoiceDetail1.hashCode(), billingInvoiceDetail1.hashCode());
        System.assertEquals(billingInvoiceDetail2.hashCode(), billingInvoiceDetail2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerBillingInvoiceDetail billingInvoiceDetail1 = IntServerBillingInvoiceDetail.getExample();
        IntServerBillingInvoiceDetail billingInvoiceDetail2 = IntServerBillingInvoiceDetail.getExample();
        IntServerBillingInvoiceDetail billingInvoiceDetail3 = new IntServerBillingInvoiceDetail();
        IntServerBillingInvoiceDetail billingInvoiceDetail4 = new IntServerBillingInvoiceDetail();

        System.assert(billingInvoiceDetail1.equals(billingInvoiceDetail2));
        System.assert(billingInvoiceDetail3.equals(billingInvoiceDetail4));
        System.assertEquals(billingInvoiceDetail1.hashCode(), billingInvoiceDetail2.hashCode());
        System.assertEquals(billingInvoiceDetail3.hashCode(), billingInvoiceDetail4.hashCode());
    }
}
