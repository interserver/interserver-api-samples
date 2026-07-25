@isTest
private class IntServerChargeInvoiceRowsTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerChargeInvoiceRows chargeInvoiceRows1 = IntServerChargeInvoiceRows.getExample();
        IntServerChargeInvoiceRows chargeInvoiceRows2 = chargeInvoiceRows1;
        IntServerChargeInvoiceRows chargeInvoiceRows3 = new IntServerChargeInvoiceRows();
        IntServerChargeInvoiceRows chargeInvoiceRows4 = chargeInvoiceRows3;

        System.assert(chargeInvoiceRows1.equals(chargeInvoiceRows2));
        System.assert(chargeInvoiceRows2.equals(chargeInvoiceRows1));
        System.assert(chargeInvoiceRows1.equals(chargeInvoiceRows1));
        System.assert(chargeInvoiceRows3.equals(chargeInvoiceRows4));
        System.assert(chargeInvoiceRows4.equals(chargeInvoiceRows3));
        System.assert(chargeInvoiceRows3.equals(chargeInvoiceRows3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerChargeInvoiceRows chargeInvoiceRows1 = IntServerChargeInvoiceRows.getExample();
        IntServerChargeInvoiceRows chargeInvoiceRows2 = IntServerChargeInvoiceRows.getExample();
        IntServerChargeInvoiceRows chargeInvoiceRows3 = new IntServerChargeInvoiceRows();
        IntServerChargeInvoiceRows chargeInvoiceRows4 = new IntServerChargeInvoiceRows();

        System.assert(chargeInvoiceRows1.equals(chargeInvoiceRows2));
        System.assert(chargeInvoiceRows2.equals(chargeInvoiceRows1));
        System.assert(chargeInvoiceRows3.equals(chargeInvoiceRows4));
        System.assert(chargeInvoiceRows4.equals(chargeInvoiceRows3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerChargeInvoiceRows chargeInvoiceRows1 = IntServerChargeInvoiceRows.getExample();
        IntServerChargeInvoiceRows chargeInvoiceRows2 = new IntServerChargeInvoiceRows();

        System.assertEquals(false, chargeInvoiceRows1.equals('foo'));
        System.assertEquals(false, chargeInvoiceRows2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerChargeInvoiceRows chargeInvoiceRows1 = IntServerChargeInvoiceRows.getExample();
        IntServerChargeInvoiceRows chargeInvoiceRows2 = new IntServerChargeInvoiceRows();
        IntServerChargeInvoiceRows chargeInvoiceRows3;

        System.assertEquals(false, chargeInvoiceRows1.equals(chargeInvoiceRows3));
        System.assertEquals(false, chargeInvoiceRows2.equals(chargeInvoiceRows3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerChargeInvoiceRows chargeInvoiceRows1 = IntServerChargeInvoiceRows.getExample();
        IntServerChargeInvoiceRows chargeInvoiceRows2 = new IntServerChargeInvoiceRows();

        System.assertEquals(chargeInvoiceRows1.hashCode(), chargeInvoiceRows1.hashCode());
        System.assertEquals(chargeInvoiceRows2.hashCode(), chargeInvoiceRows2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerChargeInvoiceRows chargeInvoiceRows1 = IntServerChargeInvoiceRows.getExample();
        IntServerChargeInvoiceRows chargeInvoiceRows2 = IntServerChargeInvoiceRows.getExample();
        IntServerChargeInvoiceRows chargeInvoiceRows3 = new IntServerChargeInvoiceRows();
        IntServerChargeInvoiceRows chargeInvoiceRows4 = new IntServerChargeInvoiceRows();

        System.assert(chargeInvoiceRows1.equals(chargeInvoiceRows2));
        System.assert(chargeInvoiceRows3.equals(chargeInvoiceRows4));
        System.assertEquals(chargeInvoiceRows1.hashCode(), chargeInvoiceRows2.hashCode());
        System.assertEquals(chargeInvoiceRows3.hashCode(), chargeInvoiceRows4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        IntServerChargeInvoiceRows chargeInvoiceRows = new IntServerChargeInvoiceRows();
        System.assertEquals(new Map<String, IntServerChargeInvoiceRowsInvoicesVa>(), chargeInvoiceRows.invoices);
        System.assertEquals(null, chargeInvoiceRows.success);
    }
}
