@isTest
private class IntServerServerIpmiLiveInfoTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerServerIpmiLiveInfo serverIpmiLiveInfo1 = IntServerServerIpmiLiveInfo.getExample();
        IntServerServerIpmiLiveInfo serverIpmiLiveInfo2 = serverIpmiLiveInfo1;
        IntServerServerIpmiLiveInfo serverIpmiLiveInfo3 = new IntServerServerIpmiLiveInfo();
        IntServerServerIpmiLiveInfo serverIpmiLiveInfo4 = serverIpmiLiveInfo3;

        System.assert(serverIpmiLiveInfo1.equals(serverIpmiLiveInfo2));
        System.assert(serverIpmiLiveInfo2.equals(serverIpmiLiveInfo1));
        System.assert(serverIpmiLiveInfo1.equals(serverIpmiLiveInfo1));
        System.assert(serverIpmiLiveInfo3.equals(serverIpmiLiveInfo4));
        System.assert(serverIpmiLiveInfo4.equals(serverIpmiLiveInfo3));
        System.assert(serverIpmiLiveInfo3.equals(serverIpmiLiveInfo3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerServerIpmiLiveInfo serverIpmiLiveInfo1 = IntServerServerIpmiLiveInfo.getExample();
        IntServerServerIpmiLiveInfo serverIpmiLiveInfo2 = IntServerServerIpmiLiveInfo.getExample();
        IntServerServerIpmiLiveInfo serverIpmiLiveInfo3 = new IntServerServerIpmiLiveInfo();
        IntServerServerIpmiLiveInfo serverIpmiLiveInfo4 = new IntServerServerIpmiLiveInfo();

        System.assert(serverIpmiLiveInfo1.equals(serverIpmiLiveInfo2));
        System.assert(serverIpmiLiveInfo2.equals(serverIpmiLiveInfo1));
        System.assert(serverIpmiLiveInfo3.equals(serverIpmiLiveInfo4));
        System.assert(serverIpmiLiveInfo4.equals(serverIpmiLiveInfo3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerServerIpmiLiveInfo serverIpmiLiveInfo1 = IntServerServerIpmiLiveInfo.getExample();
        IntServerServerIpmiLiveInfo serverIpmiLiveInfo2 = new IntServerServerIpmiLiveInfo();

        System.assertEquals(false, serverIpmiLiveInfo1.equals('foo'));
        System.assertEquals(false, serverIpmiLiveInfo2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerServerIpmiLiveInfo serverIpmiLiveInfo1 = IntServerServerIpmiLiveInfo.getExample();
        IntServerServerIpmiLiveInfo serverIpmiLiveInfo2 = new IntServerServerIpmiLiveInfo();
        IntServerServerIpmiLiveInfo serverIpmiLiveInfo3;

        System.assertEquals(false, serverIpmiLiveInfo1.equals(serverIpmiLiveInfo3));
        System.assertEquals(false, serverIpmiLiveInfo2.equals(serverIpmiLiveInfo3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerServerIpmiLiveInfo serverIpmiLiveInfo1 = IntServerServerIpmiLiveInfo.getExample();
        IntServerServerIpmiLiveInfo serverIpmiLiveInfo2 = new IntServerServerIpmiLiveInfo();

        System.assertEquals(serverIpmiLiveInfo1.hashCode(), serverIpmiLiveInfo1.hashCode());
        System.assertEquals(serverIpmiLiveInfo2.hashCode(), serverIpmiLiveInfo2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerServerIpmiLiveInfo serverIpmiLiveInfo1 = IntServerServerIpmiLiveInfo.getExample();
        IntServerServerIpmiLiveInfo serverIpmiLiveInfo2 = IntServerServerIpmiLiveInfo.getExample();
        IntServerServerIpmiLiveInfo serverIpmiLiveInfo3 = new IntServerServerIpmiLiveInfo();
        IntServerServerIpmiLiveInfo serverIpmiLiveInfo4 = new IntServerServerIpmiLiveInfo();

        System.assert(serverIpmiLiveInfo1.equals(serverIpmiLiveInfo2));
        System.assert(serverIpmiLiveInfo3.equals(serverIpmiLiveInfo4));
        System.assertEquals(serverIpmiLiveInfo1.hashCode(), serverIpmiLiveInfo2.hashCode());
        System.assertEquals(serverIpmiLiveInfo3.hashCode(), serverIpmiLiveInfo4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerServerIpmiLiveInfo serverIpmiLiveInfo = new IntServerServerIpmiLiveInfo();
        Map<String, String> x-property-mappings = serverIpmiLiveInfo.getx-property-mappings();
        System.assertEquals('publicIp', x-property-mappings.get('public_ip'));
        System.assertEquals('allowedIp', x-property-mappings.get('allowed_ip'));
        System.assertEquals('clientUsername', x-property-mappings.get('client_username'));
        System.assertEquals('clientPassword', x-property-mappings.get('client_password'));
    }
}
