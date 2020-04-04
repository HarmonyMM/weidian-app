define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	require("cordova!org.apache.cordova.statusbar")

	var Model = function() {
		this.callParent();
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

	Model.prototype.addBtnClick = function(event) {
		var row = event.bindingContext.$object;
		row.val('fNumber', row.val('fNumber') + 1);
	};

	Model.prototype.subBtnClick = function(event) {
		var row = event.bindingContext.$object;
		if (row.val('fNumber') > 1)
			row.val('fNumber', row.val('fNumber') - 1);
	};

	Model.prototype.shopCheckboxChange = function(event) {
		var row = event.bindingContext.$object;
		var shopID = row.val('id');
		var rows = this.comp("cartGoodsData1").find([ "fShopID" ], [ shopID ]);
		for (var i = 0; i < rows.length; i++) {
			this.comp("cartGoodsData1").setValue("fCheck", event.value, rows[i]);
		}
	};

	Model.prototype.goodsCheckboxChange = function(event) {
		var row = event.bindingContext.$object;
		var shopID = row.val("fShopID");
		var rowsNum = this.comp("cartGoodsData1").find([ "fShopID", "fCheck" ], [ shopID, 1 ]).length;
		if (event.checked)
			rowsNum++;
		else
			rowsNum--;

		if (rowsNum > 0) {
			this.comp("cartShopData1").setValueByID("fCheck", 1, shopID);
		} else
			this.comp("cartShopData1").setValueByID("fCheck", '', shopID);

	};

	Model.prototype.modelLoad = function(event) {
		var goodsData = cartGoodsData.toJson();
		this.comp("cartGoodsData1").clear();
		this.comp("cartGoodsData1").loadData(goodsData);

		var shopData = cartShopData.toJson();
		this.comp("cartShopData1").clear();
		this.comp("cartShopData1").loadData(shopData);
		
		//this.comp("nothingDiv").css('display',"block");
		
		this.comp("cartShopData1").each(function(evt){
			evt.row.val("fCheck", 1);
		})
		this.comp("cartGoodsData1").each(function(evt){
			evt.row.val("fCheck", 1);
		})
	};

	Model.prototype.backBtnClick = function(event) {
		var goodsData = this.comp("cartGoodsData1").toJson();
		cartGoodsData.clear();
		cartGoodsData.loadData(goodsData);

		var shopData = this.comp("cartShopData1").toJson();
		cartShopData.clear();
		cartShopData.loadData(shopData);

		this.close();
	};

	Model.prototype.deleteBtnClick = function(event) {
		var me = this;
		var goodsData = me.comp("cartGoodsData1");
		var checkRows = goodsData.find([ 'fCheck' ], [ 1 ]);
		if (checkRows.length == 0) {
			this.comp('popOverHint').show();
			window.setTimeout(function() {
				me.comp('popOverHint').hide();

			}, 2000)
		} else
			this.comp("messageDialog").show();
	};

	Model.prototype.messageDialogOK = function(event) {
		// 删除商品
		var me = this;
		var goodsData = me.comp("cartGoodsData1");
		var checkRows = goodsData.find([ 'fCheck' ], [ 1 ]);
		goodsData.deleteData(checkRows);

		// 删除商铺
		var shopData = me.comp("cartShopData1");
		var shopRows = new Array();
		shopData.each(function(obj) {
			var n = goodsData.find([ "fShopID" ], [ obj.row.val("id") ]).length;
			if (n == 0) {
				shopRows.push(obj.row);
			} else {
				if (obj.row.val('fCheck') == 1) {
					obj.row.val("fCheck", "", obj.row);
				}
			}
		});
		shopData.deleteData(shopRows);

	};

	Model.prototype.modelActive = function(event){
		if(window.StatusBar)
			window.StatusBar.styleDefault();
	};

	return Model;
});