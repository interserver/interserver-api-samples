@isTest
private class IntServerTemplateRequestTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerTemplateRequest templateRequest1 = IntServerTemplateRequest.getExample();
        IntServerTemplateRequest templateRequest2 = templateRequest1;
        IntServerTemplateRequest templateRequest3 = new IntServerTemplateRequest();
        IntServerTemplateRequest templateRequest4 = templateRequest3;

        System.assert(templateRequest1.equals(templateRequest2));
        System.assert(templateRequest2.equals(templateRequest1));
        System.assert(templateRequest1.equals(templateRequest1));
        System.assert(templateRequest3.equals(templateRequest4));
        System.assert(templateRequest4.equals(templateRequest3));
        System.assert(templateRequest3.equals(templateRequest3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerTemplateRequest templateRequest1 = IntServerTemplateRequest.getExample();
        IntServerTemplateRequest templateRequest2 = IntServerTemplateRequest.getExample();
        IntServerTemplateRequest templateRequest3 = new IntServerTemplateRequest();
        IntServerTemplateRequest templateRequest4 = new IntServerTemplateRequest();

        System.assert(templateRequest1.equals(templateRequest2));
        System.assert(templateRequest2.equals(templateRequest1));
        System.assert(templateRequest3.equals(templateRequest4));
        System.assert(templateRequest4.equals(templateRequest3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerTemplateRequest templateRequest1 = IntServerTemplateRequest.getExample();
        IntServerTemplateRequest templateRequest2 = new IntServerTemplateRequest();

        System.assertEquals(false, templateRequest1.equals('foo'));
        System.assertEquals(false, templateRequest2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerTemplateRequest templateRequest1 = IntServerTemplateRequest.getExample();
        IntServerTemplateRequest templateRequest2 = new IntServerTemplateRequest();
        IntServerTemplateRequest templateRequest3;

        System.assertEquals(false, templateRequest1.equals(templateRequest3));
        System.assertEquals(false, templateRequest2.equals(templateRequest3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerTemplateRequest templateRequest1 = IntServerTemplateRequest.getExample();
        IntServerTemplateRequest templateRequest2 = new IntServerTemplateRequest();

        System.assertEquals(templateRequest1.hashCode(), templateRequest1.hashCode());
        System.assertEquals(templateRequest2.hashCode(), templateRequest2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerTemplateRequest templateRequest1 = IntServerTemplateRequest.getExample();
        IntServerTemplateRequest templateRequest2 = IntServerTemplateRequest.getExample();
        IntServerTemplateRequest templateRequest3 = new IntServerTemplateRequest();
        IntServerTemplateRequest templateRequest4 = new IntServerTemplateRequest();

        System.assert(templateRequest1.equals(templateRequest2));
        System.assert(templateRequest3.equals(templateRequest4));
        System.assertEquals(templateRequest1.hashCode(), templateRequest2.hashCode());
        System.assertEquals(templateRequest3.hashCode(), templateRequest4.hashCode());
    }
}
