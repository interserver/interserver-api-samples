@isTest
private class IntServerPatchOauthTwoFactorRequestTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerPatchOauthTwoFactorRequest patchOauthTwoFactorRequest1 = IntServerPatchOauthTwoFactorRequest.getExample();
        IntServerPatchOauthTwoFactorRequest patchOauthTwoFactorRequest2 = patchOauthTwoFactorRequest1;
        IntServerPatchOauthTwoFactorRequest patchOauthTwoFactorRequest3 = new IntServerPatchOauthTwoFactorRequest();
        IntServerPatchOauthTwoFactorRequest patchOauthTwoFactorRequest4 = patchOauthTwoFactorRequest3;

        System.assert(patchOauthTwoFactorRequest1.equals(patchOauthTwoFactorRequest2));
        System.assert(patchOauthTwoFactorRequest2.equals(patchOauthTwoFactorRequest1));
        System.assert(patchOauthTwoFactorRequest1.equals(patchOauthTwoFactorRequest1));
        System.assert(patchOauthTwoFactorRequest3.equals(patchOauthTwoFactorRequest4));
        System.assert(patchOauthTwoFactorRequest4.equals(patchOauthTwoFactorRequest3));
        System.assert(patchOauthTwoFactorRequest3.equals(patchOauthTwoFactorRequest3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerPatchOauthTwoFactorRequest patchOauthTwoFactorRequest1 = IntServerPatchOauthTwoFactorRequest.getExample();
        IntServerPatchOauthTwoFactorRequest patchOauthTwoFactorRequest2 = IntServerPatchOauthTwoFactorRequest.getExample();
        IntServerPatchOauthTwoFactorRequest patchOauthTwoFactorRequest3 = new IntServerPatchOauthTwoFactorRequest();
        IntServerPatchOauthTwoFactorRequest patchOauthTwoFactorRequest4 = new IntServerPatchOauthTwoFactorRequest();

        System.assert(patchOauthTwoFactorRequest1.equals(patchOauthTwoFactorRequest2));
        System.assert(patchOauthTwoFactorRequest2.equals(patchOauthTwoFactorRequest1));
        System.assert(patchOauthTwoFactorRequest3.equals(patchOauthTwoFactorRequest4));
        System.assert(patchOauthTwoFactorRequest4.equals(patchOauthTwoFactorRequest3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerPatchOauthTwoFactorRequest patchOauthTwoFactorRequest1 = IntServerPatchOauthTwoFactorRequest.getExample();
        IntServerPatchOauthTwoFactorRequest patchOauthTwoFactorRequest2 = new IntServerPatchOauthTwoFactorRequest();

        System.assertEquals(false, patchOauthTwoFactorRequest1.equals('foo'));
        System.assertEquals(false, patchOauthTwoFactorRequest2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerPatchOauthTwoFactorRequest patchOauthTwoFactorRequest1 = IntServerPatchOauthTwoFactorRequest.getExample();
        IntServerPatchOauthTwoFactorRequest patchOauthTwoFactorRequest2 = new IntServerPatchOauthTwoFactorRequest();
        IntServerPatchOauthTwoFactorRequest patchOauthTwoFactorRequest3;

        System.assertEquals(false, patchOauthTwoFactorRequest1.equals(patchOauthTwoFactorRequest3));
        System.assertEquals(false, patchOauthTwoFactorRequest2.equals(patchOauthTwoFactorRequest3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerPatchOauthTwoFactorRequest patchOauthTwoFactorRequest1 = IntServerPatchOauthTwoFactorRequest.getExample();
        IntServerPatchOauthTwoFactorRequest patchOauthTwoFactorRequest2 = new IntServerPatchOauthTwoFactorRequest();

        System.assertEquals(patchOauthTwoFactorRequest1.hashCode(), patchOauthTwoFactorRequest1.hashCode());
        System.assertEquals(patchOauthTwoFactorRequest2.hashCode(), patchOauthTwoFactorRequest2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerPatchOauthTwoFactorRequest patchOauthTwoFactorRequest1 = IntServerPatchOauthTwoFactorRequest.getExample();
        IntServerPatchOauthTwoFactorRequest patchOauthTwoFactorRequest2 = IntServerPatchOauthTwoFactorRequest.getExample();
        IntServerPatchOauthTwoFactorRequest patchOauthTwoFactorRequest3 = new IntServerPatchOauthTwoFactorRequest();
        IntServerPatchOauthTwoFactorRequest patchOauthTwoFactorRequest4 = new IntServerPatchOauthTwoFactorRequest();

        System.assert(patchOauthTwoFactorRequest1.equals(patchOauthTwoFactorRequest2));
        System.assert(patchOauthTwoFactorRequest3.equals(patchOauthTwoFactorRequest4));
        System.assertEquals(patchOauthTwoFactorRequest1.hashCode(), patchOauthTwoFactorRequest2.hashCode());
        System.assertEquals(patchOauthTwoFactorRequest3.hashCode(), patchOauthTwoFactorRequest4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerPatchOauthTwoFactorRequest patchOauthTwoFactorRequest = new IntServerPatchOauthTwoFactorRequest();
        Map<String, String> x-property-mappings = patchOauthTwoFactorRequest.getx-property-mappings();
        System.assertEquals('accountId', x-property-mappings.get('account_id'));
    }
}
