<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;"
  xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;left:55px;top:122px;" onActive="modelActive"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="goodsData" idColumn="id" onCustomRefresh="goodsDataCustomRefresh" limit="-1"> 
      <column label="ID" name="id" type="String" xid="xid1"/>  
      <column label="标题" name="fTitle" type="String" xid="xid2"/>  
      <column label="图片" name="fImg" type="String" xid="xid3"/>  
      <column name="fPrice" type="String" xid="xid4"/>  
      <column label="原价" name="fOldPrice" type="String" xid="xid5"/>  
      <column label="邮费" name="fPostage" type="String" xid="xid6"/>  
      <column label="销量" name="fRecord" type="String" xid="xid7"/>  
      <column label="地址" name="fAddress" type="String" xid="xid4"/>  
      <column label="详细" name="fDetail" type="String" xid="xid8"/>  
      <column label="折扣" name="fDiscount" type="String" xid="xid9"/>  
      <column label="商铺ID" name="fShopID" type="String" xid="xid10"/>  
      <column label="商铺名称" name="fShopName" type="String" xid="xid11"/>
    </div> 
  </div>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full x-cards top-trans"
    xid="panel1"> 
    <div class="x-panel-top" xid="top1"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar"> 
        <div class="x-titlebar-left"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon"
            label="button" xid="button1" icon="icon-chevron-left" onClick="{operation:'window.close'}"> 
            <i xid="i1" class="icon-chevron-left"/>  
            <span xid="span1"/> 
          </a> 
        </div>  
        <div class="x-titlebar-title"/>  
        <div class="x-titlebar-right flex3 reverse"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon"
            label="button" xid="button2" icon="icon-android-more"> 
            <i xid="i2" class="icon-android-more"/>  
            <span xid="span2"/> 
          </a>  
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon"
            label="button" xid="button3" icon="icon-android-share"> 
            <i xid="i5" class="icon-android-share"/>  
            <span xid="span9"/> 
          </a>  
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon"
            label="button" xid="button4" icon="icon-ios7-cart" onClick="cartClick"> 
            <i xid="i7" class="icon-ios7-cart"/>  
            <span xid="span10"/> 
          </a> 
        </div> 
      </div> 
    </div>  
    <div class="x-panel-content" xid="content1"> 
      <div class="o-pic"> 
        <img src="" alt="" xid="image1" bind-attr-src="$model.goodsData.val(&quot;fImg&quot;)"
          class="o-img1"/>  
        <div> 
          <span><![CDATA[销量]]></span>  
          <span xid="span8" bind-text="$model.goodsData.ref('fRecord')"/> 
        </div> 
      </div>  
      <div class="panel panel-default x-cart panel-body" component="$UI/system/components/bootstrap/panel/panel"
        xid="panel2"> 
        <div xid="div2" class="h4 text-center"> 
          <span xid="span5" class="text-danger"><![CDATA[[]]></span>  
          <span xid="span13" class="text-danger" bind-text="$model.goodsData.ref('fPostage')"><![CDATA[]]></span>  
          <span xid="span16" class="text-danger"><![CDATA[]]]></span>  
          <span xid="span3" class="text-black" bind-text="$model.goodsData.ref('fTitle')"><![CDATA[]]></span> 
        </div>  
        <div class="text-center panel-body"> 
          <span class="text-danger h4">￥</span>  
          <span class="text-danger h3" bind-text="$model.goodsData.ref('fPrice')"><![CDATA[]]></span>  
          <span xid="span4" class="text-muted o-delline" bind-visible="$model.goodsData.val('fOldPrice')&gt;0"><![CDATA[￥]]></span>  
          <span xid="span6" class="text-muted o-delline" bind-text="$model.goodsData.ref('fOldPrice')"
            bind-visible="$model.goodsData.val('fOldPrice')&gt;0"><![CDATA[]]></span> 
        </div>  
        <div class="text-center"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-danger btn-only-label"
            label="限时特惠" xid="button5"> 
            <i xid="i8"/>  
            <span xid="span19">限时特惠</span> 
          </a>  
          <a component="$UI/system/components/justep/button/button" class="btn btn-danger btn-only-label"
            label="距结束30天以上" xid="button6"> 
            <i xid="i9"/>  
            <span xid="span20">距结束30天以上</span> 
          </a> 
        </div>  
        <div class="text-center panel-body" xid="div6"> 
          <img src="images/icon1.png" alt="" xid="image2" class="o-icon"/>  
          <span xid="span23"><![CDATA[担保交易 ]]></span>  
          <img src="images/icon2.png" alt="" class="o-icon"/>  
          <span xid="span24"><![CDATA[7天退货]]></span> 
        </div>  
        <div> 
          <i xid="i12" class="icon-android-information text-muted"/>  
          <span xid="span26" class="text-muted"><![CDATA[包邮，边远地区以及港澳台海外地区除外]]></span> 
        </div> 
      </div>  
      <div class="panel-default o-shop" component="$UI/system/components/bootstrap/panel/panel"
        xid="panel3"> 
        <div class="media-left" xid="div9"> 
          <img src="images/shop.png" alt="" class="o-logo" xid="image5"/> 
        </div>  
        <div class="media-body" xid="div10"> 
          <h4 class="text-black" xid="h43" bind-text="$model.goodsData.ref('fShopName')"><![CDATA[]]></h4>  
          <span xid="span14" class="text-muted">2星</span> 
        </div>  
        <div class="media-right media-middle" xid="div11"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-right text-black"
            label="进店逛" xid="button14" icon="icon-ios7-arrow-right"> 
            <i xid="i17" class="icon-ios7-arrow-right"/>  
            <span xid="span31">进店逛</span> 
          </a> 
        </div> 
      </div>  
      <div class="panel panel-default x-cart panel-body" component="$UI/system/components/bootstrap/panel/panel"
        xid="panel4"> 
        <h5 class="text-black"><![CDATA[商品介绍]]></h5>
        <div class="text-muted" bind-html="$model.goodsData.val(&quot;fDetail&quot;)"> 
          <span xid="span12"><![CDATA[]]></span>
        </div> 
      </div>
    </div>  
    <div class="x-panel-bottom" xid="bottom1"> 
      <div component="$UI/system/components/justep/row/row" class="x-row o-nopadding"
        xid="row2"> 
        <div class="x-col x-col-33 o-nopadding" xid="col1"> 
          <div component="$UI/system/components/justep/button/buttonGroup"
            class="btn-group btn-group-justified" tabbed="true" xid="buttonGroup1"> 
            <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-top text-white"
              label="进店逛" xid="button13" icon="icon-bag"> 
              <i xid="i16" class="icon icon-bag"/>  
              <span xid="span30">进店逛</span> 
            </a>  
            <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-top text-white"
              xid="button11" icon="icon-ios7-heart-outline"> 
              <i xid="i15" class="icon icon-ios7-heart-outline"/>  
              <span xid="span28" bind-text="$model.goodsData.ref('fRecord')"/> 
            </a> 
          </div> 
        </div>  
        <div class="x-col x-col-67 o-nopadding o-shopping text-center" xid="col2"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label"
            label="加入购物车" xid="joinCartBtn" icon="icon-radio-waves" onClick="sizeClick"> 
            <i xid="i13" class="icon-radio-waves icon"/>  
            <span xid="span7">加入购物车</span> 
          </a>  
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label"
            label="立即购买" xid="buyBtn" icon="icon-android-display" onClick="sizeClick"> 
            <i xid="i14" class="icon-android-display icon"/>  
            <span xid="span27">立即购买</span> 
          </a> 
        </div> 
      </div> 
    </div> 
  </div> 
</div>
