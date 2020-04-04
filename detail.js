define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function(){
		this.callParent();
	};
	
	//获取商品列表
	Model.prototype.goodsDataCustomRefresh = function(event){
		var me = this;
		var url = require.toUrl("./json/goodsData.json");
		var goodsData = event.source;
		$.ajaxSettings.async = false;
		$.getJSON(url, function(data) {
			goodsData.loadData(data);
			window.setTimeout(function() {
				goodsData.to(me.params.goodsID);
			}, 1);
		});
	};	
	
	//进入购物车
	Model.prototype.cartClick = function(event){
		justep.Shell.showPage("cart");
	};
	
	//尺寸选择
	Model.prototype.sizeClick = function(event){		
		justep.Shell.showPage("size",{
			"goodsID" : this.comp("goodsData").getValue('id')
		});
	};
	
	Model.prototype.modelActive = function(event){
		if(window.StatusBar)
			window.StatusBar.styleDefault();
	};
	
	return Model;
});