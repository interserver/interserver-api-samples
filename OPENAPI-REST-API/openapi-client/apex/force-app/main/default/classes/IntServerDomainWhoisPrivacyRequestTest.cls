@isTest
private class IntServerDomainWhoisPrivacyRequestTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerDomainWhoisPrivacyRequest domainWhoisPrivacyRequest1 = IntServerDomainWhoisPrivacyRequest.getExample();
        IntServerDomainWhoisPrivacyRequest domainWhoisPrivacyRequest2 = domainWhoisPrivacyRequest1;
        IntServerDomainWhoisPrivacyRequest domainWhoisPrivacyRequest3 = new IntServerDomainWhoisPrivacyRequest();
        IntServerDomainWhoisPrivacyRequest domainWhoisPrivacyRequest4 = domainWhoisPrivacyRequest3;

        System.assert(domainWhoisPrivacyRequest1.equals(domainWhoisPrivacyRequest2));
        System.assert(domainWhoisPrivacyRequest2.equals(domainWhoisPrivacyRequest1));
        System.assert(domainWhoisPrivacyRequest1.equals(domainWhoisPrivacyRequest1));
        System.assert(domainWhoisPrivacyRequest3.equals(domainWhoisPrivacyRequest4));
        System.assert(domainWhoisPrivacyRequest4.equals(domainWhoisPrivacyRequest3));
        System.assert(domainWhoisPrivacyRequest3.equals(domainWhoisPrivacyRequest3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerDomainWhoisPrivacyRequest domainWhoisPrivacyRequest1 = IntServerDomainWhoisPrivacyRequest.getExample();
        IntServerDomainWhoisPrivacyRequest domainWhoisPrivacyRequest2 = IntServerDomainWhoisPrivacyRequest.getExample();
        IntServerDomainWhoisPrivacyRequest domainWhoisPrivacyRequest3 = new IntServerDomainWhoisPrivacyRequest();
        IntServerDomainWhoisPrivacyRequest domainWhoisPrivacyRequest4 = new IntServerDomainWhoisPrivacyRequest();

        System.assert(domainWhoisPrivacyRequest1.equals(domainWhoisPrivacyRequest2));
        System.assert(domainWhoisPrivacyRequest2.equals(domainWhoisPrivacyRequest1));
        System.assert(domainWhoisPrivacyRequest3.equals(domainWhoisPrivacyRequest4));
        System.assert(domainWhoisPrivacyRequest4.equals(domainWhoisPrivacyRequest3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerDomainWhoisPrivacyRequest domainWhoisPrivacyRequest1 = IntServerDomainWhoisPrivacyRequest.getExample();
        IntServerDomainWhoisPrivacyRequest domainWhoisPrivacyRequest2 = new IntServerDomainWhoisPrivacyRequest();

        System.assertEquals(false, domainWhoisPrivacyRequest1.equals('foo'));
        System.assertEquals(false, domainWhoisPrivacyRequest2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerDomainWhoisPrivacyRequest domainWhoisPrivacyRequest1 = IntServerDomainWhoisPrivacyRequest.getExample();
        IntServerDomainWhoisPrivacyRequest domainWhoisPrivacyRequest2 = new IntServerDomainWhoisPrivacyRequest();
        IntServerDomainWhoisPrivacyRequest domainWhoisPrivacyRequest3;

        System.assertEquals(false, domainWhoisPrivacyRequest1.equals(domainWhoisPrivacyRequest3));
        System.assertEquals(false, domainWhoisPrivacyRequest2.equals(domainWhoisPrivacyRequest3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerDomainWhoisPrivacyRequest domainWhoisPrivacyRequest1 = IntServerDomainWhoisPrivacyRequest.getExample();
        IntServerDomainWhoisPrivacyRequest domainWhoisPrivacyRequest2 = new IntServerDomainWhoisPrivacyRequest();

        System.assertEquals(domainWhoisPrivacyRequest1.hashCode(), domainWhoisPrivacyRequest1.hashCode());
        System.assertEquals(domainWhoisPrivacyRequest2.hashCode(), domainWhoisPrivacyRequest2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerDomainWhoisPrivacyRequest domainWhoisPrivacyRequest1 = IntServerDomainWhoisPrivacyRequest.getExample();
        IntServerDomainWhoisPrivacyRequest domainWhoisPrivacyRequest2 = IntServerDomainWhoisPrivacyRequest.getExample();
        IntServerDomainWhoisPrivacyRequest domainWhoisPrivacyRequest3 = new IntServerDomainWhoisPrivacyRequest();
        IntServerDomainWhoisPrivacyRequest domainWhoisPrivacyRequest4 = new IntServerDomainWhoisPrivacyRequest();

        System.assert(domainWhoisPrivacyRequest1.equals(domainWhoisPrivacyRequest2));
        System.assert(domainWhoisPrivacyRequest3.equals(domainWhoisPrivacyRequest4));
        System.assertEquals(domainWhoisPrivacyRequest1.hashCode(), domainWhoisPrivacyRequest2.hashCode());
        System.assertEquals(domainWhoisPrivacyRequest3.hashCode(), domainWhoisPrivacyRequest4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerDomainWhoisPrivacyRequest domainWhoisPrivacyRequest = new IntServerDomainWhoisPrivacyRequest();
        Map<String, String> x-property-mappings = domainWhoisPrivacyRequest.getx-property-mappings();
        System.assertEquals('csrfToken', x-property-mappings.get('csrf_token'));
        System.assertEquals('domainFirstname', x-property-mappings.get('domain_firstname'));
        System.assertEquals('domainLastname', x-property-mappings.get('domain_lastname'));
        System.assertEquals('domainEmail', x-property-mappings.get('domain_email'));
        System.assertEquals('domainAddress', x-property-mappings.get('domain_address'));
        System.assertEquals('domainAddress2', x-property-mappings.get('domain_address2'));
        System.assertEquals('domainAddress3', x-property-mappings.get('domain_address3'));
        System.assertEquals('domainCity', x-property-mappings.get('domain_city'));
        System.assertEquals('domainState', x-property-mappings.get('domain_state'));
        System.assertEquals('domainZip', x-property-mappings.get('domain_zip'));
        System.assertEquals('domainCountry', x-property-mappings.get('domain_country'));
        System.assertEquals('domainPhone', x-property-mappings.get('domain_phone'));
        System.assertEquals('domainFax', x-property-mappings.get('domain_fax'));
        System.assertEquals('domainCompany', x-property-mappings.get('domain_company'));
        System.assertEquals('domainExtra', x-property-mappings.get('domain_extra'));
    }
}
