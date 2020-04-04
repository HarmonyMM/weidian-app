<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;left:105px;top:202px;"
    onLoad="modelLoad"><div component="$UI/system/components/justep/data/data" autoLoad="true" xid="cartShopData" idColumn="id" onCustomRefresh="cartShopDataCustomRefresh">
   <column label="ID" name="id" type="String" xid="xid1"></column>
   <column label="商铺名称" name="fShopName" type="String" xid="xid2"></column>
   <column label="合计金额" name="fSumMoney" type="Decimal" xid="xid13"></column>
   <column label="合计数量" name="fSumNumber" type="Integer" xid="xid14"></column>
   <column label="选中" name="fCheck" type="String" xid="xid16"></column>
   <rule xid="rule2">
    <col name="fSumNumber" xid="ruleCol2">
     <calculate xid="calculate2">
      <expr xid="default2">$model.cartGoodsData.sum('fCheck',function(ev){ var v = ev.source.getValue('fShopID',ev.row); return v==$row.val('id'); });</expr></calculate> </col> 
    <col name="fSumMoney" xid="ruleCol3">
     <calculate xid="calculate3">
      <expr xid="default3">$model.cartGoodsData.sum('fMoney',function(ev){ var v = ev.source.getValue('fShopID',ev.row); return v==$row.val('id'); });</expr></calculate> </col> 
    <col name="fCheck" xid="ruleCol4">
     <calculate xid="calculate4">
      <expr xid="default4"></expr></calculate> </col> </rule> </div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="cartGoodsData" onCustomRefresh="cartGoodsDataCustomRefresh" idColumn="id">
   <column label="ID" name="id" type="String" xid="xid3"></column>
   <column label="商铺ID" name="fShopID" type="String" xid="xid4"></column>
   <column label="商品ID" name="fGoodsID" type="String" xid="xid5"></column>
   <column label="商品名称" name="fTitle" type="String" xid="xid6"></column>
   <column label="图片" name="fImg" type="String" xid="xid11"></column>
   <column label="型号" name="fSize" type="String" xid="xid7"></column>
   <column label="现价" name="fPrice" type="Decimal" xid="xid8"></column>
   <column label="原价" name="fOldPrice" type="Decimal" xid="xid9"></column>
   <column label="数量" name="fNumber" type="Integer" xid="xid10"></column>
   <column label="金额" name="fMoney" type="Decimal" xid="xid12"></column>
   <column label="选中" name="fCheck" type="String" xid="xid15"></column>
   <rule xid="rule1">
    <col name="fMoney" xid="ruleCol1">
     <calculate xid="calculate1">
      <expr xid="default1">$row.val(&quot;fCheck&quot;)==1? $row.val(&quot;fPrice&quot;) * $row.val(&quot;fNumber&quot;):'0'</expr></calculate> </col> </rule> </div></div>  
  <div component="$UI/system/components/justep/contents/contents" class="x-contents x-full"
    active="0" xid="pages" swipe="false"> 
<!--     <div class="x-contents-content" xid="main">
      <div component="$UI/system/components/justep/windowContainer/windowContainer"
        class="x-window-container" xid="windowContainer1" src="$UI/wd/main.w"/>
    </div> -->
  <div class="x-contents-content" xid="main"><div component="$UI/system/components/justep/windowContainer/windowContainer" class="x-window-container" xid="mainContainer" src="./main.w"></div></div></div> 
</div>
