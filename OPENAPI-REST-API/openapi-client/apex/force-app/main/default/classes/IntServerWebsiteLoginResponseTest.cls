@isTest
private class IntServerWebsiteLoginResponseTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerWebsiteLoginResponse websiteLoginResponse1 = IntServerWebsiteLoginResponse.getExample();
        IntServerWebsiteLoginResponse websiteLoginResponse2 = websiteLoginResponse1;
        IntServerWebsiteLoginResponse websiteLoginResponse3 = new IntServerWebsiteLoginResponse();
        IntServerWebsiteLoginResponse websiteLoginResponse4 = websiteLoginResponse3;

        System.assert(websiteLoginResponse1.equals(websiteLoginResponse2));
        System.assert(websiteLoginResponse2.equals(websiteLoginResponse1));
        System.assert(websiteLoginResponse1.equals(websiteLoginResponse1));
        System.assert(websiteLoginResponse3.equals(websiteLoginResponse4));
        System.assert(websiteLoginResponse4.equals(websiteLoginResponse3));
        System.assert(websiteLoginResponse3.equals(websiteLoginResponse3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerWebsiteLoginResponse websiteLoginResponse1 = IntServerWebsiteLoginResponse.getExample();
        IntServerWebsiteLoginResponse websiteLoginResponse2 = IntServerWebsiteLoginResponse.getExample();
        IntServerWebsiteLoginResponse websiteLoginResponse3 = new IntServerWebsiteLoginResponse();
        IntServerWebsiteLoginResponse websiteLoginResponse4 = new IntServerWebsiteLoginResponse();

        System.assert(websiteLoginResponse1.equals(websiteLoginResponse2));
        System.assert(websiteLoginResponse2.equals(websiteLoginResponse1));
        System.assert(websiteLoginResponse3.equals(websiteLoginResponse4));
        System.assert(websiteLoginResponse4.equals(websiteLoginResponse3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerWebsiteLoginResponse websiteLoginResponse1 = IntServerWebsiteLoginResponse.getExample();
        IntServerWebsiteLoginResponse websiteLoginResponse2 = new IntServerWebsiteLoginResponse();

        System.assertEquals(false, websiteLoginResponse1.equals('foo'));
        System.assertEquals(false, websiteLoginResponse2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerWebsiteLoginResponse websiteLoginResponse1 = IntServerWebsiteLoginResponse.getExample();
        IntServerWebsiteLoginResponse websiteLoginResponse2 = new IntServerWebsiteLoginResponse();
        IntServerWebsiteLoginResponse websiteLoginResponse3;

        System.assertEquals(false, websiteLoginResponse1.equals(websiteLoginResponse3));
        System.assertEquals(false, websiteLoginResponse2.equals(websiteLoginResponse3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerWebsiteLoginResponse websiteLoginResponse1 = IntServerWebsiteLoginResponse.getExample();
        IntServerWebsiteLoginResponse websiteLoginResponse2 = new IntServerWebsiteLoginResponse();

        System.assertEquals(websiteLoginResponse1.hashCode(), websiteLoginResponse1.hashCode());
        System.assertEquals(websiteLoginResponse2.hashCode(), websiteLoginResponse2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerWebsiteLoginResponse websiteLoginResponse1 = IntServerWebsiteLoginResponse.getExample();
        IntServerWebsiteLoginResponse websiteLoginResponse2 = IntServerWebsiteLoginResponse.getExample();
        IntServerWebsiteLoginResponse websiteLoginResponse3 = new IntServerWebsiteLoginResponse();
        IntServerWebsiteLoginResponse websiteLoginResponse4 = new IntServerWebsiteLoginResponse();

        System.assert(websiteLoginResponse1.equals(websiteLoginResponse2));
        System.assert(websiteLoginResponse3.equals(websiteLoginResponse4));
        System.assertEquals(websiteLoginResponse1.hashCode(), websiteLoginResponse2.hashCode());
        System.assertEquals(websiteLoginResponse3.hashCode(), websiteLoginResponse4.hashCode());
    }
}
