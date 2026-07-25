@isTest
private class IntServerBillingInvoiceListTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerBillingInvoiceList billingInvoiceList1 = IntServerBillingInvoiceList.getExample();
        IntServerBillingInvoiceList billingInvoiceList2 = billingInvoiceList1;
        IntServerBillingInvoiceList billingInvoiceList3 = new IntServerBillingInvoiceList();
        IntServerBillingInvoiceList billingInvoiceList4 = billingInvoiceList3;

        System.assert(billingInvoiceList1.equals(billingInvoiceList2));
        System.assert(billingInvoiceList2.equals(billingInvoiceList1));
        System.assert(billingInvoiceList1.equals(billingInvoiceList1));
        System.assert(billingInvoiceList3.equals(billingInvoiceList4));
        System.assert(billingInvoiceList4.equals(billingInvoiceList3));
        System.assert(billingInvoiceList3.equals(billingInvoiceList3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerBillingInvoiceList billingInvoiceList1 = IntServerBillingInvoiceList.getExample();
        IntServerBillingInvoiceList billingInvoiceList2 = IntServerBillingInvoiceList.getExample();
        IntServerBillingInvoiceList billingInvoiceList3 = new IntServerBillingInvoiceList();
        IntServerBillingInvoiceList billingInvoiceList4 = new IntServerBillingInvoiceList();

        System.assert(billingInvoiceList1.equals(billingInvoiceList2));
        System.assert(billingInvoiceList2.equals(billingInvoiceList1));
        System.assert(billingInvoiceList3.equals(billingInvoiceList4));
        System.assert(billingInvoiceList4.equals(billingInvoiceList3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerBillingInvoiceList billingInvoiceList1 = IntServerBillingInvoiceList.getExample();
        IntServerBillingInvoiceList billingInvoiceList2 = new IntServerBillingInvoiceList();

        System.assertEquals(false, billingInvoiceList1.equals('foo'));
        System.assertEquals(false, billingInvoiceList2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerBillingInvoiceList billingInvoiceList1 = IntServerBillingInvoiceList.getExample();
        IntServerBillingInvoiceList billingInvoiceList2 = new IntServerBillingInvoiceList();
        IntServerBillingInvoiceList billingInvoiceList3;

        System.assertEquals(false, billingInvoiceList1.equals(billingInvoiceList3));
        System.assertEquals(false, billingInvoiceList2.equals(billingInvoiceList3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerBillingInvoiceList billingInvoiceList1 = IntServerBillingInvoiceList.getExample();
        IntServerBillingInvoiceList billingInvoiceList2 = new IntServerBillingInvoiceList();

        System.assertEquals(billingInvoiceList1.hashCode(), billingInvoiceList1.hashCode());
        System.assertEquals(billingInvoiceList2.hashCode(), billingInvoiceList2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerBillingInvoiceList billingInvoiceList1 = IntServerBillingInvoiceList.getExample();
        IntServerBillingInvoiceList billingInvoiceList2 = IntServerBillingInvoiceList.getExample();
        IntServerBillingInvoiceList billingInvoiceList3 = new IntServerBillingInvoiceList();
        IntServerBillingInvoiceList billingInvoiceList4 = new IntServerBillingInvoiceList();

        System.assert(billingInvoiceList1.equals(billingInvoiceList2));
        System.assert(billingInvoiceList3.equals(billingInvoiceList4));
        System.assertEquals(billingInvoiceList1.hashCode(), billingInvoiceList2.hashCode());
        System.assertEquals(billingInvoiceList3.hashCode(), billingInvoiceList4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        IntServerBillingInvoiceList billingInvoiceList = new IntServerBillingInvoiceList();
        System.assertEquals(new List<Object>(), billingInvoiceList.rows);
        System.assertEquals(null, billingInvoiceList.summary);
    }
}
