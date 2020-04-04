<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;"
  xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;left:287px;top:242px;">
<!--     <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="cartGoodsData" onCustomRefresh="cartGoodsDataCustomRefresh" idColumn="id"> 
      <column label="ID" name="id" type="String" xid="xid3"/>  
      <column label="商铺ID" name="fShopID" type="String" xid="xid4"/>  
      <column label="商品ID" name="fGoodsID" type="String" xid="xid5"/>  
      <column label="商品名称" name="fTitle" type="String" xid="xid6"/>  
      <column label="图片" name="fImg" type="String" xid="xid11"/>  
      <column label="型号" name="fSize" type="String" xid="xid7"/>  
      <column label="现价" name="fPrice" type="Decimal" xid="xid8"/>  
      <column label="原价" name="fOldPrice" type="Decimal" xid="xid9"/>  
      <column label="数量" name="fNumber" type="Integer" xid="xid10"/>  
      <column label="金额" name="fMoney" type="Decimal" xid="xid12"/>  
      <column label="选中" name="fCheck" type="String" xid="xid15"/>  
      <rule xid="rule1"> 
        <col name="fMoney" xid="ruleCol1"> 
          <calculate xid="calculate1"> 
            <expr xid="default1">$row.val("fCheck")==1? $row.val("fPrice") * $row.val("fNumber"):'0'</expr>
          </calculate> 
        </col> 
      </rule> 
    </div> -->
  </div>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full x-cards top-trans x-has-iosstatusbar"
    xid="panel1"> 
    <div class="x-panel-top" xid="top1"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar"> 
        <div class="x-titlebar-left"> 
          </div>  
        <div class="x-titlebar-title"/>  
        <div class="x-titlebar-right reverse"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon"
            label="button" xid="button2" icon="icon-ios7-chatbubble-outline"> 
            <i xid="i2" class="icon-ios7-chatbubble-outline"/>  
            <span xid="span2"/> 
          </a> 
        </div> 
      </div> 
    </div>  
    <div class="x-panel-content" xid="content1"> 
      <div class="o-user text-center"> 
        <img src="images/user.png" alt="" xid="image1" class="o-img" align="middle"/>  
        <div xid="div3" class="h4"><a xid="a1" class="text-white" href="login.w" bind-click="switchBtnClick"><![CDATA[立即登录]]></a></div></div>  
      <div class="panel panel-default x-cart" component="$UI/system/components/bootstrap/panel/panel"
        xid="panel2"> 
        <div xid="div2" class="panel-body"> 
          <div class="o-title" xid="div7" bind-click="cartClick"> 
            <span xid="span3" class="h4 text-black">购物车</span>  
            <span xid="span4" class="text-muted">有</span>  
            <span xid="span5" class="text-warning" bind-text="cartGoodsData.count()"><![CDATA[]]></span>  
            <span xid="span6" class="text-muted">件商品</span>  
            <i xid="i3" class="icon-ios7-arrow-right pull-right"/> 
          </div>  
          <div component="$UI/system/components/justep/list/list" class="x-list"
            xid="list1" data="cartGoodsData.datas"> 
            <ul class="x-list-template" xid="listTemplateUl1"> 
              <li xid="li1" class="col-xs-3" style="padding:5px;">
                <img src="" alt="" xid="image2" bind-attr-src="val(&quot;fImg&quot;)"
                  class="img-responsive"/>
              </li>
            </ul> 
          </div>
        <div xid="div1" class="text-center" bind-visible="cartShopData.count() == 0"><span xid="span7" class="text-muted"><![CDATA[你的购物车为空]]></span></div></div> 
      </div>  
      <div class="panel panel-default x-cart" component="$UI/system/components/bootstrap/panel/panel"
        xid="panel3"> 
        <div xid="div4" class="panel-body"> 
          <div class="o-title"> 
            <i xid="i4" class="icon-ios7-arrow-right pull-right"/>  
            <span xid="span11" class="h4 text-black"><![CDATA[收藏的商品]]></span> 
          </div> 
        </div>  
        <div xid="div5" class="text-center o-title"> 
          <span xid="span12" class="text-muted"><![CDATA[您还没有收藏过商品]]></span> 
        </div> 
      </div>  
      <div class="panel panel-default x-cart" component="$UI/system/components/bootstrap/panel/panel"
        xid="panel4"> 
        <div xid="body1" class="panel-body"> 
          <div class="o-title" xid="div9"> 
            <i xid="i6" class="icon-ios7-arrow-right pull-right"/>  
            <span xid="span15" class="h4 text-black"><![CDATA[收藏的店铺]]></span> 
          </div> 
        </div>  
        <div xid="div8" class="text-center o-title"> 
          <span xid="span14" class="text-muted">您还没有收藏过商品</span> 
        </div> 
      </div> 
    </div> 
  </div> 
</div>
