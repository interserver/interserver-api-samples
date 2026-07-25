@isTest
private class IntServerLicenseClientLinkTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerLicenseClientLink licenseClientLink1 = IntServerLicenseClientLink.getExample();
        IntServerLicenseClientLink licenseClientLink2 = licenseClientLink1;
        IntServerLicenseClientLink licenseClientLink3 = new IntServerLicenseClientLink();
        IntServerLicenseClientLink licenseClientLink4 = licenseClientLink3;

        System.assert(licenseClientLink1.equals(licenseClientLink2));
        System.assert(licenseClientLink2.equals(licenseClientLink1));
        System.assert(licenseClientLink1.equals(licenseClientLink1));
        System.assert(licenseClientLink3.equals(licenseClientLink4));
        System.assert(licenseClientLink4.equals(licenseClientLink3));
        System.assert(licenseClientLink3.equals(licenseClientLink3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerLicenseClientLink licenseClientLink1 = IntServerLicenseClientLink.getExample();
        IntServerLicenseClientLink licenseClientLink2 = IntServerLicenseClientLink.getExample();
        IntServerLicenseClientLink licenseClientLink3 = new IntServerLicenseClientLink();
        IntServerLicenseClientLink licenseClientLink4 = new IntServerLicenseClientLink();

        System.assert(licenseClientLink1.equals(licenseClientLink2));
        System.assert(licenseClientLink2.equals(licenseClientLink1));
        System.assert(licenseClientLink3.equals(licenseClientLink4));
        System.assert(licenseClientLink4.equals(licenseClientLink3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerLicenseClientLink licenseClientLink1 = IntServerLicenseClientLink.getExample();
        IntServerLicenseClientLink licenseClientLink2 = new IntServerLicenseClientLink();

        System.assertEquals(false, licenseClientLink1.equals('foo'));
        System.assertEquals(false, licenseClientLink2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerLicenseClientLink licenseClientLink1 = IntServerLicenseClientLink.getExample();
        IntServerLicenseClientLink licenseClientLink2 = new IntServerLicenseClientLink();
        IntServerLicenseClientLink licenseClientLink3;

        System.assertEquals(false, licenseClientLink1.equals(licenseClientLink3));
        System.assertEquals(false, licenseClientLink2.equals(licenseClientLink3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerLicenseClientLink licenseClientLink1 = IntServerLicenseClientLink.getExample();
        IntServerLicenseClientLink licenseClientLink2 = new IntServerLicenseClientLink();

        System.assertEquals(licenseClientLink1.hashCode(), licenseClientLink1.hashCode());
        System.assertEquals(licenseClientLink2.hashCode(), licenseClientLink2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerLicenseClientLink licenseClientLink1 = IntServerLicenseClientLink.getExample();
        IntServerLicenseClientLink licenseClientLink2 = IntServerLicenseClientLink.getExample();
        IntServerLicenseClientLink licenseClientLink3 = new IntServerLicenseClientLink();
        IntServerLicenseClientLink licenseClientLink4 = new IntServerLicenseClientLink();

        System.assert(licenseClientLink1.equals(licenseClientLink2));
        System.assert(licenseClientLink3.equals(licenseClientLink4));
        System.assertEquals(licenseClientLink1.hashCode(), licenseClientLink2.hashCode());
        System.assertEquals(licenseClientLink3.hashCode(), licenseClientLink4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerLicenseClientLink licenseClientLink = new IntServerLicenseClientLink();
        Map<String, String> x-property-mappings = licenseClientLink.getx-property-mappings();
        System.assertEquals('helpText', x-property-mappings.get('help_text'));
        System.assertEquals('iconText', x-property-mappings.get('icon_text'));
        System.assertEquals('otherAttr', x-property-mappings.get('other_attr'));
    }
}
