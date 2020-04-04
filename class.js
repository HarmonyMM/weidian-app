define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function(){
		this.callParent();
	};
	
	
	//获取三级分类数据
	Model.prototype.threeClassDataCustomRefresh = function(event){
		var url = require.toUrl("./json/threeClassData.json");
		$.ajaxSettings.async = false;
		$.getJSON(url, function(data) {
			event.source.loadData(data);
		});
	};
	
	
	
	Model.prototype.modelActive = function(event){
		if(window.StatusBar)
			window.StatusBar.styleDefault();
	};	
	
	Model.prototype.image2Click = function(event){
          var url=require.toUrl("./list.w");
          justep.Shell.showPage(url);
	};	
	
	return Model;
});