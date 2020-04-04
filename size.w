<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;"
  xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;left:198px;top:123px;" onLoad="modelLoad"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="goodsData" idColumn="id" onCustomRefresh="goodsDataCustomRefresh" limit="-1"> 
      <column label="ID" name="id" type="String" xid="xid1"/>  
      <column label="标题" name="fTitle" type="String" xid="xid2"/>  
      <column label="图片" name="fImg" type="String" xid="xid3"/>  
      <column label="价格" name="fPrice" type="String" xid="xid4"/>  
      <column label="原价" name="fOldPrice" type="String" xid="xid5"/>  
      <column label="邮费" name="fPostage" type="String" xid="xid6"/>  
      <column label="销量" name="fRecord" type="String" xid="xid7"/>  
      <column label="地址" name="fAddress" type="String" xid="xid4"/>  
      <column label="折扣" name="fDiscount" type="String" xid="xid8"/> 
      <column label="商铺ID" name="fShopID" type="String" xid="xid10"/>  
      <column label="商铺名称" name="fShopName" type="String" xid="xid11"/>
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="sizeData" idColumn="id"> 
      <column label="id" name="id" type="String" xid="column2"/>  
      <column label="名称" name="fName" type="String" xid="column3"/>  
      <column label="状态" name="fState" type="Integer" xid="column1"/>  
      <data xid="default1">[{&quot;id&quot;:&quot;1&quot;,&quot;fName&quot;:&quot;默认型号&quot;,&quot;fState&quot;:1}]</data></div> 
  </div>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full x-cards"
    xid="panel1"> 
    <div class="x-panel-top" xid="top1"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar"
        title="选择商品型号" style="color:#000000;background-color:#F7F7F7;"> 
        <div class="x-titlebar-left"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon"
            label="button" xid="button1" icon="icon-chevron-left" onClick="{operation:'window.close'}"> 
            <i xid="i1" class="icon-chevron-left"/>  
            <span xid="span2"/> 
          </a>  
          <span class="o-close" onClick="{operation:'window.close'}">关闭</span> 
        </div>  
        <div class="x-titlebar-title">选择商品型号</div>  
        <div class="x-titlebar-right reverse"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon"
            label="button" xid="button3" icon="icon-ios7-reload"> 
            <i xid="i3" class="icon-ios7-reload"/>  
            <span xid="span3"/> 
          </a> 
        </div> 
      </div> 
    </div>  
    <div class="x-panel-content" xid="content1"> 
      <div class="panel-body" style="background-color:#F3F3F3;"> 
        <div class="media-left"> 
          <img src="" alt="" bind-attr-src=" $model.goodsData.val(&quot;fImg&quot;)"
            class="o-img1"/> 
        </div>  
        <div class="media-body media-middle"> 
          <span class="text-danger h4" xid="span4">￥</span>  
          <span class="text-danger h3" bind-text="$model.goodsData.ref('fPrice')" xid="span5"/>  
          <span xid="span4" class="text-muted o-delline" bind-visible="$model.goodsData.val('fOldPrice')&gt;0">￥</span>  
          <span xid="span6" class="text-muted o-delline" bind-text="$model.goodsData.ref('fOldPrice')" bind-visible="$model.goodsData.val('fOldPrice')&gt;0"><![CDATA[]]></span> 
        </div> 
      </div>  
      <div class="panel panel-default x-card" component="$UI/system/components/bootstrap/panel/panel"
        xid="panel2"> 
        <div class="panel-body x-card o-line"> 
          <h5 class="text-muted"><![CDATA[型号尺寸]]></h5>  
          <div component="$UI/system/components/justep/list/list" class="x-list"
            xid="list1" data="sizeData" bind-click="sizeListClick"> 
            <ul class="x-list-template" xid="listTemplateUl1"> 
              <li xid="li1" class="col-xs-3 text-center" bind-css="{'active':val(&quot;fState&quot;) == 1}"> 
                <span xid="span8" bind-text="ref('fName')"/> 
              </li> 
            </ul>  
            <div class="clearfix"/>
          </div>  
          <h5 class="text-muted" xid="h51"><![CDATA[购买数量]]> </h5>  
          <div> 
            <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-sm btn-only-icon pull-left"
              label="button" xid="subBtn" icon="icon-android-remove" onClick="subBtnClick"> 
              <i xid="i4" class="icon-android-remove text-danger"/>  
              <span xid="span11"/> 
            </a>  
            <input component="$UI/system/components/justep/input/input" class="form-control input-sm o-number pull-left text-center"
              xid="number"/>  
            <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-sm btn-only-icon pull-left"
              label="button" xid="addBtn" icon="icon-android-add" onClick="addBtnClick"> 
              <i xid="i5" class="icon-android-add text-danger"/>  
              <span xid="span12"/> 
            </a> 
          </div> 
        </div>
        <div xid="div4" class="panel-body o-btn"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label joinCartBtn"
            label="加入购物车" xid="joinCartBtn" icon="icon-radio-waves" onClick="addCartClick"> 
            <i xid="i13" class="icon-radio-waves icon"/>  
            <span xid="span7">加入购物车</span> 
          </a>  
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label"
            label="立即购买" xid="buyBtn" icon="icon-android-display" onClick=""> 
            <i xid="i14" class="icon-android-display icon"/>  
            <span xid="span27">立即购买</span> 
          </a> 
        </div>
      </div>  
      <div xid="div1" class="o-cart">
        <div class="text-center">
          <span bind-text="cartGoodsData.count()"><![CDATA[]]></span>
        </div>
        <img src="images/cart.png" alt="" class="o-img1" bind-click="cartClick"/> 
      </div>  
      <div class="o-move text-center"><i xid="i2" class="icon-ios7-box"></i></div>
    </div> 
  </div> 
<div component="$UI/system/components/justep/popOver/popOver" class="x-popOver" xid="popOverHint" direction="left-bottom" opacity="0.4">
   <div class="x-popOver-overlay" xid="div2"></div>
   <div class="x-popOver-content" xid="div2">
    <div xid="div3" style="background-color:white;height:50px;width:250px; line-height:50px; text-align:center;border-radius: 5px;">恭喜，已加入购物车！</div></div> </div></div>
