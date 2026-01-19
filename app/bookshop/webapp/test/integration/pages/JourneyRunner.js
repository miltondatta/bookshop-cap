sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"bsp/bookshop/test/integration/pages/OrderList",
	"bsp/bookshop/test/integration/pages/OrderObjectPage",
	"bsp/bookshop/test/integration/pages/Order_feedbackObjectPage"
], function (JourneyRunner, OrderList, OrderObjectPage, Order_feedbackObjectPage) {
    'use strict';

    var runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('bsp/bookshop') + '/test/flp.html#app-preview',
        pages: {
			onTheOrderList: OrderList,
			onTheOrderObjectPage: OrderObjectPage,
			onTheOrder_feedbackObjectPage: Order_feedbackObjectPage
        },
        async: true
    });

    return runner;
});

