define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function() {
		this.callParent();
	};

	Model.prototype.goodsDataCustomRefresh = function(event) {
		var url = require.toUrl("./json/goodsData.json");
		$.ajaxSettings.async = false;
		$.getJSON(url, function(data) {
			event.source.loadData(data);
		});
	};
	
	//进入详细页
	Model.prototype.goodsListClick = function(event){
		var goodsID = this.comp("goodsData").getValue("id");
		justep.Shell.showPage("detail",{"goodsID" : goodsID});
	};

	Model.prototype.modelActive = function(event){
		if(window.StatusBar)
			window.StatusBar.styleLightContent();

	};

	return Model;
});