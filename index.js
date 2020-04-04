define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var ShellImpl = require('$UI/system/lib/portal/shellImpl');
	var CommonUtils = require("$UI/system/components/justep/common/utils");

	var Model = function() {
		this.callParent();
		var shellImpl = new ShellImpl(this, {
			"contentsXid" : "pages",
			"pageMappings" : {
				"main" : {
					url : require.toUrl('./main.w')
				},
				"list" : {
					url : require.toUrl('./list.w')
				},
				"class" : {
					url : require.toUrl('./class.w')
				},
				"detail" : {
					url : require.toUrl('./detail.w')
				},
				"user" : {
					url : require.toUrl('./user.w')
				},
				"login" : {
					url : require.toUrl('./login.w')
				},
				"registerMobile" : {
					url : require.toUrl('./registerMobile.w')
				},
				"registerEmail" : {
					url : require.toUrl('./registerEmail.w')
				},
				"size" : {
					url : require.toUrl('./size.w')
				},
				"cart" : {
					url : require.toUrl('./cart.w')
				}
			}
		});
		//shellImpl.setIsSinglePage(true);
/*		shellImpl.useDefaultExitHandler = false;

		CommonUtils.attachDoubleClickExitApp(function() {
			
			var isHomePage = shellImpl.pagesComp.contents[0].innerContainer.getInnerModel().comp('contents2').getActiveIndex() == 0;
			if (shellImpl.pagesComp.getActiveIndex() === 0 && isHomePage) {
				return true;
			}
			return false;
		});*/

	};

	Model.prototype.modelLoad = function(event){
		window.cartShopData = this.comp("cartShopData");
		window.cartGoodsData = this.comp("cartGoodsData");
		justep.Shell.showPage("main");
	};

	Model.prototype.cartShopDataCustomRefresh = function(event) {
		var url = require.toUrl("./json/cartShopData.json");
		$.ajaxSettings.async = false;
		$.getJSON(url, function(data) {
			event.source.loadData(data);
		});
	};

	Model.prototype.cartGoodsDataCustomRefresh = function(event) {
		var url = require.toUrl("./json/cartGoodsData.json");
		$.ajaxSettings.async = false;
		$.getJSON(url, function(data) {
			event.source.loadData(data);
		});
	};

	return Model;
});