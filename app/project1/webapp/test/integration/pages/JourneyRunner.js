sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"project1/test/integration/pages/DATAList",
	"project1/test/integration/pages/DATAObjectPage",
	"project1/test/integration/pages/ChildObjectPage"
], function (JourneyRunner, DATAList, DATAObjectPage, ChildObjectPage) {
    'use strict';

    var runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('project1') + '/test/flp.html#app-preview',
        pages: {
			onTheDATAList: DATAList,
			onTheDATAObjectPage: DATAObjectPage,
			onTheChildObjectPage: ChildObjectPage
        },
        async: true
    });

    return runner;
});

