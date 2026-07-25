@isTest
private class IntServerPatchOauthTwoFactor200RespoTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerPatchOauthTwoFactor200Respo patchOauthTwoFactor200Response1 = IntServerPatchOauthTwoFactor200Respo.getExample();
        IntServerPatchOauthTwoFactor200Respo patchOauthTwoFactor200Response2 = patchOauthTwoFactor200Response1;
        IntServerPatchOauthTwoFactor200Respo patchOauthTwoFactor200Response3 = new IntServerPatchOauthTwoFactor200Respo();
        IntServerPatchOauthTwoFactor200Respo patchOauthTwoFactor200Response4 = patchOauthTwoFactor200Response3;

        System.assert(patchOauthTwoFactor200Response1.equals(patchOauthTwoFactor200Response2));
        System.assert(patchOauthTwoFactor200Response2.equals(patchOauthTwoFactor200Response1));
        System.assert(patchOauthTwoFactor200Response1.equals(patchOauthTwoFactor200Response1));
        System.assert(patchOauthTwoFactor200Response3.equals(patchOauthTwoFactor200Response4));
        System.assert(patchOauthTwoFactor200Response4.equals(patchOauthTwoFactor200Response3));
        System.assert(patchOauthTwoFactor200Response3.equals(patchOauthTwoFactor200Response3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerPatchOauthTwoFactor200Respo patchOauthTwoFactor200Response1 = IntServerPatchOauthTwoFactor200Respo.getExample();
        IntServerPatchOauthTwoFactor200Respo patchOauthTwoFactor200Response2 = IntServerPatchOauthTwoFactor200Respo.getExample();
        IntServerPatchOauthTwoFactor200Respo patchOauthTwoFactor200Response3 = new IntServerPatchOauthTwoFactor200Respo();
        IntServerPatchOauthTwoFactor200Respo patchOauthTwoFactor200Response4 = new IntServerPatchOauthTwoFactor200Respo();

        System.assert(patchOauthTwoFactor200Response1.equals(patchOauthTwoFactor200Response2));
        System.assert(patchOauthTwoFactor200Response2.equals(patchOauthTwoFactor200Response1));
        System.assert(patchOauthTwoFactor200Response3.equals(patchOauthTwoFactor200Response4));
        System.assert(patchOauthTwoFactor200Response4.equals(patchOauthTwoFactor200Response3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerPatchOauthTwoFactor200Respo patchOauthTwoFactor200Response1 = IntServerPatchOauthTwoFactor200Respo.getExample();
        IntServerPatchOauthTwoFactor200Respo patchOauthTwoFactor200Response2 = new IntServerPatchOauthTwoFactor200Respo();

        System.assertEquals(false, patchOauthTwoFactor200Response1.equals('foo'));
        System.assertEquals(false, patchOauthTwoFactor200Response2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerPatchOauthTwoFactor200Respo patchOauthTwoFactor200Response1 = IntServerPatchOauthTwoFactor200Respo.getExample();
        IntServerPatchOauthTwoFactor200Respo patchOauthTwoFactor200Response2 = new IntServerPatchOauthTwoFactor200Respo();
        IntServerPatchOauthTwoFactor200Respo patchOauthTwoFactor200Response3;

        System.assertEquals(false, patchOauthTwoFactor200Response1.equals(patchOauthTwoFactor200Response3));
        System.assertEquals(false, patchOauthTwoFactor200Response2.equals(patchOauthTwoFactor200Response3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerPatchOauthTwoFactor200Respo patchOauthTwoFactor200Response1 = IntServerPatchOauthTwoFactor200Respo.getExample();
        IntServerPatchOauthTwoFactor200Respo patchOauthTwoFactor200Response2 = new IntServerPatchOauthTwoFactor200Respo();

        System.assertEquals(patchOauthTwoFactor200Response1.hashCode(), patchOauthTwoFactor200Response1.hashCode());
        System.assertEquals(patchOauthTwoFactor200Response2.hashCode(), patchOauthTwoFactor200Response2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerPatchOauthTwoFactor200Respo patchOauthTwoFactor200Response1 = IntServerPatchOauthTwoFactor200Respo.getExample();
        IntServerPatchOauthTwoFactor200Respo patchOauthTwoFactor200Response2 = IntServerPatchOauthTwoFactor200Respo.getExample();
        IntServerPatchOauthTwoFactor200Respo patchOauthTwoFactor200Response3 = new IntServerPatchOauthTwoFactor200Respo();
        IntServerPatchOauthTwoFactor200Respo patchOauthTwoFactor200Response4 = new IntServerPatchOauthTwoFactor200Respo();

        System.assert(patchOauthTwoFactor200Response1.equals(patchOauthTwoFactor200Response2));
        System.assert(patchOauthTwoFactor200Response3.equals(patchOauthTwoFactor200Response4));
        System.assertEquals(patchOauthTwoFactor200Response1.hashCode(), patchOauthTwoFactor200Response2.hashCode());
        System.assertEquals(patchOauthTwoFactor200Response3.hashCode(), patchOauthTwoFactor200Response4.hashCode());
    }
}
