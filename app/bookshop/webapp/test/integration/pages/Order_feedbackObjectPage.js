sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'bsp.bookshop',
            componentId: 'Order_feedbackObjectPage',
            contextPath: '/Order/feedback'
        },
        CustomPageDefinitions
    );
});