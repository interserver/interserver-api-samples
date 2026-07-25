@isTest
private class IntServerLicenseIpInfoTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerLicenseIpInfo licenseIpInfo1 = IntServerLicenseIpInfo.getExample();
        IntServerLicenseIpInfo licenseIpInfo2 = licenseIpInfo1;
        IntServerLicenseIpInfo licenseIpInfo3 = new IntServerLicenseIpInfo();
        IntServerLicenseIpInfo licenseIpInfo4 = licenseIpInfo3;

        System.assert(licenseIpInfo1.equals(licenseIpInfo2));
        System.assert(licenseIpInfo2.equals(licenseIpInfo1));
        System.assert(licenseIpInfo1.equals(licenseIpInfo1));
        System.assert(licenseIpInfo3.equals(licenseIpInfo4));
        System.assert(licenseIpInfo4.equals(licenseIpInfo3));
        System.assert(licenseIpInfo3.equals(licenseIpInfo3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerLicenseIpInfo licenseIpInfo1 = IntServerLicenseIpInfo.getExample();
        IntServerLicenseIpInfo licenseIpInfo2 = IntServerLicenseIpInfo.getExample();
        IntServerLicenseIpInfo licenseIpInfo3 = new IntServerLicenseIpInfo();
        IntServerLicenseIpInfo licenseIpInfo4 = new IntServerLicenseIpInfo();

        System.assert(licenseIpInfo1.equals(licenseIpInfo2));
        System.assert(licenseIpInfo2.equals(licenseIpInfo1));
        System.assert(licenseIpInfo3.equals(licenseIpInfo4));
        System.assert(licenseIpInfo4.equals(licenseIpInfo3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerLicenseIpInfo licenseIpInfo1 = IntServerLicenseIpInfo.getExample();
        IntServerLicenseIpInfo licenseIpInfo2 = new IntServerLicenseIpInfo();

        System.assertEquals(false, licenseIpInfo1.equals('foo'));
        System.assertEquals(false, licenseIpInfo2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerLicenseIpInfo licenseIpInfo1 = IntServerLicenseIpInfo.getExample();
        IntServerLicenseIpInfo licenseIpInfo2 = new IntServerLicenseIpInfo();
        IntServerLicenseIpInfo licenseIpInfo3;

        System.assertEquals(false, licenseIpInfo1.equals(licenseIpInfo3));
        System.assertEquals(false, licenseIpInfo2.equals(licenseIpInfo3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerLicenseIpInfo licenseIpInfo1 = IntServerLicenseIpInfo.getExample();
        IntServerLicenseIpInfo licenseIpInfo2 = new IntServerLicenseIpInfo();

        System.assertEquals(licenseIpInfo1.hashCode(), licenseIpInfo1.hashCode());
        System.assertEquals(licenseIpInfo2.hashCode(), licenseIpInfo2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerLicenseIpInfo licenseIpInfo1 = IntServerLicenseIpInfo.getExample();
        IntServerLicenseIpInfo licenseIpInfo2 = IntServerLicenseIpInfo.getExample();
        IntServerLicenseIpInfo licenseIpInfo3 = new IntServerLicenseIpInfo();
        IntServerLicenseIpInfo licenseIpInfo4 = new IntServerLicenseIpInfo();

        System.assert(licenseIpInfo1.equals(licenseIpInfo2));
        System.assert(licenseIpInfo3.equals(licenseIpInfo4));
        System.assertEquals(licenseIpInfo1.hashCode(), licenseIpInfo2.hashCode());
        System.assertEquals(licenseIpInfo3.hashCode(), licenseIpInfo4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        IntServerLicenseIpInfo licenseIpInfo = new IntServerLicenseIpInfo();
        System.assertEquals(new List<IntServerLicenseIpInfoRow>(), licenseIpInfo.rows);
        System.assertEquals(null, licenseIpInfo.title);
    }
}
