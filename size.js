define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var util = require("$UI/system/lib/base/util");

	var Model = function() {
		this.callParent();
	};

	// 获取商品列表
	Model.prototype.goodsDataCustomRefresh = function(event) {
		this.comp("number").val(1);

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

	// 减少数量
	Model.prototype.subBtnClick = function(event) {
		var number = this.comp("number").val();
		number = number - 1;
		if (number <= 0) {
			this.comp("number").val(1);
		} else {
			this.comp("number").val(number);
		}
	};
	// 增加数量
	Model.prototype.addBtnClick = function(event) {
		var number = this.comp("number").val();
		this.comp("number").val(number + 1);
	};

	// 尺寸
	Model.prototype.sizeListClick = function(event) {
		var sizeData = this.comp("sizeData");
		sizeData.setValue("fState", "0", sizeData.find([ "fState" ], [ "1" ])[0]);
		sizeData.setValue("fState", "1", sizeData.getCurrentRow());
	};

	// 加入购物车
	Model.prototype.addCartClick = function(event) {
		var size = this.comp("sizeData").find([ "fState" ], [ "1" ]);
		if (size.length <= 0) {
			util.hint("请选择型号尺寸！", {
				"position" : "middle"
			});
			return false;
		}
		// 加入购物车
		var goodsData = this.comp("goodsData");
		var haveGoods = cartGoodsData.find([ "fGoodsID" ], [ goodsData.val('id') ]);
		if (haveGoods.length > 0) {
			haveGoods[0].val("fNumber", haveGoods[0].val("fNumber") + this.comp("number").val());
		} else {
			cartGoodsData.newData({
				"defaultValues" : [ {
					"id" : justep.UUID.createUUID(),
					"fShopID" : goodsData.val('fShopID'),
					"fGoodsID" : goodsData.val('id'),
					"fTitle" : goodsData.val('fTitle'),
					"fImg" : goodsData.val('fImg'),
					"fSize" : size[0].val('fName'),
					"fPrice" : goodsData.val('fPrice'),
					"fOldPrice" : goodsData.val('fOldPrice'),
					"fNumber" : this.comp('number').val()
				} ]
			})
			var haveShop = cartShopData.find([ "id" ], [ goodsData.val('fShopID') ]);
			if (haveShop.length == 0) {
				cartShopData.newData({
					"defaultValues" : [ {
						"id" : goodsData.val('fShopID'),
						"fShopName" : goodsData.val('fShopName')
					} ]
				})

			}
		}
		var me = this;
		var left2 = $(".o-cart").position().left + 10;
		var top2 = $(".o-cart").position().top - 30;

		$(".o-move").show().stop().animate({
			"left" : left2,
			"top" : top2
		}, "slow", function() {
			setTimeout(function() {
				me.modelLoad();
				me.comp('popOverHint').hide();
			}, 300);
			$(".o-cart div").show();
		});

		var me = this;
		this.comp('popOverHint').show();
	};

	// 进入购物车
	Model.prototype.cartClick = function(event) {
		var sizeData = this.comp("sizeData");
		if (sizeData.find([ "fState" ], [ "1" ]).length > 0) {
			justep.Shell.showPage("cart");
		} else {
			util.hint("请选择型号尺寸！", {
				"position" : "middle"
			});
		}
	};

	Model.prototype.modelLoad = function(event) {
		var w = $(".joinCartBtn").width();
		var left = $(".joinCartBtn").position().left + w;
		var top = $(".joinCartBtn").position().top + 15;
		$(".o-move").hide().css({
			"left" : left,
			"top" : top
		});
	};

	return Model;
});