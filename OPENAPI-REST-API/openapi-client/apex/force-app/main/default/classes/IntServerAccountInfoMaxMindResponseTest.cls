@isTest
private class IntServerAccountInfoMaxMindResponseTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerAccountInfoMaxMindResponse accountInfoMaxMindResponse1 = IntServerAccountInfoMaxMindResponse.getExample();
        IntServerAccountInfoMaxMindResponse accountInfoMaxMindResponse2 = accountInfoMaxMindResponse1;
        IntServerAccountInfoMaxMindResponse accountInfoMaxMindResponse3 = new IntServerAccountInfoMaxMindResponse();
        IntServerAccountInfoMaxMindResponse accountInfoMaxMindResponse4 = accountInfoMaxMindResponse3;

        System.assert(accountInfoMaxMindResponse1.equals(accountInfoMaxMindResponse2));
        System.assert(accountInfoMaxMindResponse2.equals(accountInfoMaxMindResponse1));
        System.assert(accountInfoMaxMindResponse1.equals(accountInfoMaxMindResponse1));
        System.assert(accountInfoMaxMindResponse3.equals(accountInfoMaxMindResponse4));
        System.assert(accountInfoMaxMindResponse4.equals(accountInfoMaxMindResponse3));
        System.assert(accountInfoMaxMindResponse3.equals(accountInfoMaxMindResponse3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerAccountInfoMaxMindResponse accountInfoMaxMindResponse1 = IntServerAccountInfoMaxMindResponse.getExample();
        IntServerAccountInfoMaxMindResponse accountInfoMaxMindResponse2 = IntServerAccountInfoMaxMindResponse.getExample();
        IntServerAccountInfoMaxMindResponse accountInfoMaxMindResponse3 = new IntServerAccountInfoMaxMindResponse();
        IntServerAccountInfoMaxMindResponse accountInfoMaxMindResponse4 = new IntServerAccountInfoMaxMindResponse();

        System.assert(accountInfoMaxMindResponse1.equals(accountInfoMaxMindResponse2));
        System.assert(accountInfoMaxMindResponse2.equals(accountInfoMaxMindResponse1));
        System.assert(accountInfoMaxMindResponse3.equals(accountInfoMaxMindResponse4));
        System.assert(accountInfoMaxMindResponse4.equals(accountInfoMaxMindResponse3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerAccountInfoMaxMindResponse accountInfoMaxMindResponse1 = IntServerAccountInfoMaxMindResponse.getExample();
        IntServerAccountInfoMaxMindResponse accountInfoMaxMindResponse2 = new IntServerAccountInfoMaxMindResponse();

        System.assertEquals(false, accountInfoMaxMindResponse1.equals('foo'));
        System.assertEquals(false, accountInfoMaxMindResponse2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerAccountInfoMaxMindResponse accountInfoMaxMindResponse1 = IntServerAccountInfoMaxMindResponse.getExample();
        IntServerAccountInfoMaxMindResponse accountInfoMaxMindResponse2 = new IntServerAccountInfoMaxMindResponse();
        IntServerAccountInfoMaxMindResponse accountInfoMaxMindResponse3;

        System.assertEquals(false, accountInfoMaxMindResponse1.equals(accountInfoMaxMindResponse3));
        System.assertEquals(false, accountInfoMaxMindResponse2.equals(accountInfoMaxMindResponse3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerAccountInfoMaxMindResponse accountInfoMaxMindResponse1 = IntServerAccountInfoMaxMindResponse.getExample();
        IntServerAccountInfoMaxMindResponse accountInfoMaxMindResponse2 = new IntServerAccountInfoMaxMindResponse();

        System.assertEquals(accountInfoMaxMindResponse1.hashCode(), accountInfoMaxMindResponse1.hashCode());
        System.assertEquals(accountInfoMaxMindResponse2.hashCode(), accountInfoMaxMindResponse2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerAccountInfoMaxMindResponse accountInfoMaxMindResponse1 = IntServerAccountInfoMaxMindResponse.getExample();
        IntServerAccountInfoMaxMindResponse accountInfoMaxMindResponse2 = IntServerAccountInfoMaxMindResponse.getExample();
        IntServerAccountInfoMaxMindResponse accountInfoMaxMindResponse3 = new IntServerAccountInfoMaxMindResponse();
        IntServerAccountInfoMaxMindResponse accountInfoMaxMindResponse4 = new IntServerAccountInfoMaxMindResponse();

        System.assert(accountInfoMaxMindResponse1.equals(accountInfoMaxMindResponse2));
        System.assert(accountInfoMaxMindResponse3.equals(accountInfoMaxMindResponse4));
        System.assertEquals(accountInfoMaxMindResponse1.hashCode(), accountInfoMaxMindResponse2.hashCode());
        System.assertEquals(accountInfoMaxMindResponse3.hashCode(), accountInfoMaxMindResponse4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerAccountInfoMaxMindResponse accountInfoMaxMindResponse = new IntServerAccountInfoMaxMindResponse();
        Map<String, String> x-property-mappings = accountInfoMaxMindResponse.getx-property-mappings();
        System.assertEquals('ipRegion', x-property-mappings.get('ip_region'));
        System.assertEquals('ipCity', x-property-mappings.get('ip_city'));
        System.assertEquals('ipLatitude', x-property-mappings.get('ip_latitude'));
        System.assertEquals('ipLongitude', x-property-mappings.get('ip_longitude'));
        System.assertEquals('ipIsp', x-property-mappings.get('ip_isp'));
        System.assertEquals('ipOrg', x-property-mappings.get('ip_org'));
        System.assertEquals('ipAsnum', x-property-mappings.get('ip_asnum'));
        System.assertEquals('ipUserType', x-property-mappings.get('ip_userType'));
        System.assertEquals('ipCountryConf', x-property-mappings.get('ip_countryConf'));
        System.assertEquals('ipRegionConf', x-property-mappings.get('ip_regionConf'));
        System.assertEquals('ipCityConf', x-property-mappings.get('ip_cityConf'));
        System.assertEquals('ipPostalCode', x-property-mappings.get('ip_postalCode'));
        System.assertEquals('ipPostalConf', x-property-mappings.get('ip_postalConf'));
        System.assertEquals('ipAccuracyRadius', x-property-mappings.get('ip_accuracyRadius'));
        System.assertEquals('ipNetSpeedCell', x-property-mappings.get('ip_netSpeedCell'));
        System.assertEquals('ipMetroCode', x-property-mappings.get('ip_metroCode'));
        System.assertEquals('ipAreaCode', x-property-mappings.get('ip_areaCode'));
        System.assertEquals('ipTimeZone', x-property-mappings.get('ip_timeZone'));
        System.assertEquals('ipRegionName', x-property-mappings.get('ip_regionName'));
        System.assertEquals('ipDomain', x-property-mappings.get('ip_domain'));
        System.assertEquals('ipCountryName', x-property-mappings.get('ip_countryName'));
        System.assertEquals('ipContinentCode', x-property-mappings.get('ip_continentCode'));
        System.assertEquals('ipCorporateProxy', x-property-mappings.get('ip_corporateProxy'));
        System.assertEquals('minfraudVersion', x-property-mappings.get('minfraud_version'));
        System.assertEquals('serviceLevel', x-property-mappings.get('service_level'));
        System.assertEquals('femaleName', x-property-mappings.get('female_name'));
    }
}
