define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function(){
		this.callParent();
	};
	
	//接收参数
	Model.prototype.modelParamsReceive = function(event){
	};
	
	//获取商品列表
	Model.prototype.goodsDataCustomRefresh = function(event){
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
	
/*	//排序选择
	Model.prototype.sortingListClick = function(event){
		var data=this.comp("conditionData");
		data.setValue("fState","0",data.find(["fState"],["1"],true,true,true)[0]);		
		var row = data.getCurrentRow();
		data.setValue("fState","1",row);
		this.comp("sortingBtn").set("label",data.getValue("fName",row));
		
	};	*/		
	
	return Model;
});