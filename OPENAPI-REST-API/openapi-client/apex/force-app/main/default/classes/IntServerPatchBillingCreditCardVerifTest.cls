@isTest
private class IntServerPatchBillingCreditCardVerifTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerPatchBillingCreditCardVerif patchBillingCreditCardVerifyRequest1 = IntServerPatchBillingCreditCardVerif.getExample();
        IntServerPatchBillingCreditCardVerif patchBillingCreditCardVerifyRequest2 = patchBillingCreditCardVerifyRequest1;
        IntServerPatchBillingCreditCardVerif patchBillingCreditCardVerifyRequest3 = new IntServerPatchBillingCreditCardVerif();
        IntServerPatchBillingCreditCardVerif patchBillingCreditCardVerifyRequest4 = patchBillingCreditCardVerifyRequest3;

        System.assert(patchBillingCreditCardVerifyRequest1.equals(patchBillingCreditCardVerifyRequest2));
        System.assert(patchBillingCreditCardVerifyRequest2.equals(patchBillingCreditCardVerifyRequest1));
        System.assert(patchBillingCreditCardVerifyRequest1.equals(patchBillingCreditCardVerifyRequest1));
        System.assert(patchBillingCreditCardVerifyRequest3.equals(patchBillingCreditCardVerifyRequest4));
        System.assert(patchBillingCreditCardVerifyRequest4.equals(patchBillingCreditCardVerifyRequest3));
        System.assert(patchBillingCreditCardVerifyRequest3.equals(patchBillingCreditCardVerifyRequest3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerPatchBillingCreditCardVerif patchBillingCreditCardVerifyRequest1 = IntServerPatchBillingCreditCardVerif.getExample();
        IntServerPatchBillingCreditCardVerif patchBillingCreditCardVerifyRequest2 = IntServerPatchBillingCreditCardVerif.getExample();
        IntServerPatchBillingCreditCardVerif patchBillingCreditCardVerifyRequest3 = new IntServerPatchBillingCreditCardVerif();
        IntServerPatchBillingCreditCardVerif patchBillingCreditCardVerifyRequest4 = new IntServerPatchBillingCreditCardVerif();

        System.assert(patchBillingCreditCardVerifyRequest1.equals(patchBillingCreditCardVerifyRequest2));
        System.assert(patchBillingCreditCardVerifyRequest2.equals(patchBillingCreditCardVerifyRequest1));
        System.assert(patchBillingCreditCardVerifyRequest3.equals(patchBillingCreditCardVerifyRequest4));
        System.assert(patchBillingCreditCardVerifyRequest4.equals(patchBillingCreditCardVerifyRequest3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerPatchBillingCreditCardVerif patchBillingCreditCardVerifyRequest1 = IntServerPatchBillingCreditCardVerif.getExample();
        IntServerPatchBillingCreditCardVerif patchBillingCreditCardVerifyRequest2 = new IntServerPatchBillingCreditCardVerif();

        System.assertEquals(false, patchBillingCreditCardVerifyRequest1.equals('foo'));
        System.assertEquals(false, patchBillingCreditCardVerifyRequest2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerPatchBillingCreditCardVerif patchBillingCreditCardVerifyRequest1 = IntServerPatchBillingCreditCardVerif.getExample();
        IntServerPatchBillingCreditCardVerif patchBillingCreditCardVerifyRequest2 = new IntServerPatchBillingCreditCardVerif();
        IntServerPatchBillingCreditCardVerif patchBillingCreditCardVerifyRequest3;

        System.assertEquals(false, patchBillingCreditCardVerifyRequest1.equals(patchBillingCreditCardVerifyRequest3));
        System.assertEquals(false, patchBillingCreditCardVerifyRequest2.equals(patchBillingCreditCardVerifyRequest3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerPatchBillingCreditCardVerif patchBillingCreditCardVerifyRequest1 = IntServerPatchBillingCreditCardVerif.getExample();
        IntServerPatchBillingCreditCardVerif patchBillingCreditCardVerifyRequest2 = new IntServerPatchBillingCreditCardVerif();

        System.assertEquals(patchBillingCreditCardVerifyRequest1.hashCode(), patchBillingCreditCardVerifyRequest1.hashCode());
        System.assertEquals(patchBillingCreditCardVerifyRequest2.hashCode(), patchBillingCreditCardVerifyRequest2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerPatchBillingCreditCardVerif patchBillingCreditCardVerifyRequest1 = IntServerPatchBillingCreditCardVerif.getExample();
        IntServerPatchBillingCreditCardVerif patchBillingCreditCardVerifyRequest2 = IntServerPatchBillingCreditCardVerif.getExample();
        IntServerPatchBillingCreditCardVerif patchBillingCreditCardVerifyRequest3 = new IntServerPatchBillingCreditCardVerif();
        IntServerPatchBillingCreditCardVerif patchBillingCreditCardVerifyRequest4 = new IntServerPatchBillingCreditCardVerif();

        System.assert(patchBillingCreditCardVerifyRequest1.equals(patchBillingCreditCardVerifyRequest2));
        System.assert(patchBillingCreditCardVerifyRequest3.equals(patchBillingCreditCardVerifyRequest4));
        System.assertEquals(patchBillingCreditCardVerifyRequest1.hashCode(), patchBillingCreditCardVerifyRequest2.hashCode());
        System.assertEquals(patchBillingCreditCardVerifyRequest3.hashCode(), patchBillingCreditCardVerifyRequest4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerPatchBillingCreditCardVerif patchBillingCreditCardVerifyRequest = new IntServerPatchBillingCreditCardVerif();
        Map<String, String> x-property-mappings = patchBillingCreditCardVerifyRequest.getx-property-mappings();
        System.assertEquals('ccCcv2', x-property-mappings.get('cc_ccv2'));
    }
}
