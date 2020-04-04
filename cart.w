<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;"
  xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;left:165px;top:253px;"
    onLoad="modelLoad" onActive="modelActive"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="true" directDelete="true"
      xid="cartShopData1" idColumn="id" onCustomRefresh="cartShopDataCustomRefresh"
      confirmDelete="false" confirmRefresh="false"> 
      <column label="ID" name="id" type="String" xid="xid1"/>  
      <column label="商铺名称" name="fShopName" type="String" xid="xid2"/>  
      <column label="合计金额" name="fSumMoney" type="Decimal" xid="xid13"/>  
      <column label="合计数量" name="fSumNumber" type="Integer" xid="xid14"/>  
      <column label="选中" name="fCheck" type="String" xid="xid16"/>  
      <rule xid="rule2">
   <col name="fSumNumber" xid="ruleCol2">
    <calculate xid="calculate2">
     <expr xid="default2">$model.cartGoodsData1.sum('fCheck',function(ev){ return ev.row.val('fShopID') == $row.val('id'); });</expr></calculate> </col> 
   <col name="fSumMoney" xid="ruleCol3">
    <calculate xid="calculate3">
     <expr xid="default3">$model.cartGoodsData1.sum('fMoney',function(ev){ return ev.row.val('fShopID') == $row.val('id'); }).toFixed(2)</expr></calculate> </col> 
   <col name="fCheck" xid="ruleCol4">
    <calculate xid="calculate4">
     <expr xid="default4"></expr></calculate> </col> </rule></div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true" directDelete="true"
      xid="cartGoodsData1" idColumn="id" confirmDelete="false" confirmRefresh="false"> 
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
    </div> 
  </div>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel1"> 
    <div class="x-panel-top" xid="top1"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" title="购物车"
        class="x-titlebar" style="color:#000000;background-color:#F7F7F7;" xid="titlebar"> 
        <div class="x-titlebar-left"> 
          <a component="$UI/system/components/justep/button/button" label=""
            class="btn btn-link btn-only-icon" icon="icon-chevron-left" onClick="backBtnClick"
            xid="backBtn"> 
            <i class="icon-chevron-left"/>  
            <span/> 
          </a> 
        </div>  
        <div class="x-titlebar-title">购物车</div>  
        <div class="x-titlebar-right reverse">
          <a component="$UI/system/components/justep/button/button" class="btn btn-link  btn-only-icon"
            label="button" xid="deleteBtn" icon="icon-ios7-trash-outline" onClick="deleteBtnClick"> 
            <i xid="i4" class="icon-ios7-trash-outline" style="font-size:24px;"/>  
            <span xid="span5"/>
          </a>
        </div> 
      </div> 
    </div>  
    <div class="x-panel-content" xid="content1"> 
      <div component="$UI/system/components/justep/list/list" class="x-list"
        xid="list1" data="cartShopData1"> 
        <ul class="x-list-template" xid="listTemplateUl1"> 
          <li xid="li1"> 
            <div xid="div6" style="height:10px;background-color:#F2F2F2;"></div><div component="$UI/system/components/justep/row/row" class="x-row"
              xid="row1" style="padding-top:12px;"> 
              <div class="x-col x-col-fixed x-col-center" xid="col1" style="width:auto;"> 
                <span component="$UI/system/components/justep/button/checkbox"
                  class="x-checkbox" xid="shopCheckbox" bind-ref="ref('fCheck')" checkedValue="1"
                  onChange="shopCheckboxChange"/> 
              </div>  
              <div class="x-col x-col-center" xid="col2"> 
                <span xid="span1" bind-text="ref('fShopName')"/> 
              </div> 
            </div>  
            <div component="$UI/system/components/justep/list/list" class="x-list x-cards"
              xid="list2" data="cartGoodsData1" filter='$row.val("fShopID") ==  val("id")'> 
              <ul class="x-list-template list-group" xid="listTemplateUl2"> 
                <li xid="li2" class="list-group-item"> 
                  <div component="$UI/system/components/justep/row/row" class="x-row"
                    xid="row3"> 
                    <div class="x-col x-col-fixed x-col-center" xid="col7"
                      style="width:auto;"> 
                      <span component="$UI/system/components/justep/button/checkbox"
                        class="x-checkbox " xid="goodsCheckbox" bind-ref="ref('fCheck')"
                        onChange="goodsCheckboxChange"/> 
                    </div>  
                    <div class="x-col x-col-fixed x-col-center" xid="col8"
                      style="width:auto;"> 
                      <img src="" alt="" xid="image1" bind-attr-src=' val("fImg")'
                        style="height:50px;width:60px;" height="60px"/> 
                    </div>  
                    <div class="x-col" xid="col9"> 
                      <div component="$UI/system/components/justep/row/row"
                        class="x-row" xid="row4"> 
                        <div class="x-col" xid="col10" style="overflow: hidden;white-space: nowrap;text-overflow: ellipsis;"> 
                          <span xid="span4" bind-text="ref('fTitle')" style="font-weight:bold;"/> 
                        </div> 
                      </div>  
                      <div component="$UI/system/components/justep/row/row"
                        class="x-row" xid="row5"> 
                        <div class="x-col " xid="col15"> 
                          <span xid="span7" bind-text="'型号：' + val('fSize')"
                            style="color:#C0C0C0;font-size:small;"/> 
                        </div> 
                      </div>  
                      <div component="$UI/system/components/justep/row/row"
                        class="x-row" xid="row6"> 
                        <div class="x-col x-col-fixed" xid="col16" style="width:auto;"> 
                          <span xid="span8" bind-text="'￥' + val('fPrice')"><![CDATA[]]></span> 
                        </div>  
                        <div class="x-col" xid="col17"> 
                          <span xid="span9" bind-text="'￥' + val('fOldPrice')"
                            style="text-decoration:line-through ;" bind-visible=' val("fPrice") !=   val("fOldPrice")'><![CDATA[]]></span> 
                        </div>  
                        <div class="x-col x-col-fixed x-col-center" xid="col19"
                          style="width:auto;"> 
                          <a component="$UI/system/components/justep/button/button"
                            class="btn btn-link btn-xs btn-only-icon" label="button"
                            xid="subBtn" style="color:#FF0000;" icon="icon-android-remove"
                            onClick="subBtnClick"> 
                            <i xid="i2" class="icon-android-remove"/>  
                            <span xid="span11"/> 
                          </a> 
                        </div>  
                        <div class="x-col x-col-fixed" xid="col18" style="width:40px;"> 
                          <input component="$UI/system/components/justep/input/input"
                            class="form-control input-sm" xid="input1" bind-ref="ref('fNumber')"/> 
                        </div>  
                        <div class="x-col x-col-fixed x-col-center" xid="col20"
                          style="width:auto;"> 
                          <a component="$UI/system/components/justep/button/button"
                            class="btn btn-link btn-xs btn-only-icon" label="button"
                            xid="addBtn" icon="icon-android-add" style="color:#FF0000;"
                            onClick="addBtnClick"> 
                            <i xid="i3" class="icon-android-add"/>  
                            <span xid="span12"/> 
                          </a> 
                        </div> 
                      </div> 
                    </div> 
                  </div> 
                </li> 
              </ul> 
            </div>  
            <div component="$UI/system/components/justep/row/row" class="x-row"
              xid="row2" style="padding-bottom:9px;"> 
              <div class="x-col x-col-center" xid="col4" style="text-align:right"> 
                <span xid="span2"><![CDATA[总计（不含运费）]]></span> 
              </div>  
              <div class="x-col x-col-fixed x-col-center" xid="col5" style="width:auto;"> 
                <span xid="span10" bind-text="'￥' + val('fSumMoney')" style="color:#FF0000;"/> 
              </div>  
              <div class="x-col x-col-fixed" xid="col6" style="width:auto;"> 
                <a component="$UI/system/components/justep/button/button"
                  class="btn x-red" label="去结算" xid="button1" style="margin-left:5px;"> 
                  <i xid="i1"/>  
                  <span xid="span3" bind-text="'去结算(' + val('fSumNumber') + ')'"><![CDATA[]]></span> 
                </a> 
              </div> 
            </div> 
          </li> 
        </ul> 
      </div> 
    <div xid="nothingDiv" bind-visible=" $model.cartShopData1.count()  == 0" style="text-align:center; display:none;"><div xid="div8" style="height:144px;"></div>
  <span xid="span6"><![CDATA[还没有选购商品]]></span></div></div> 
  </div>  
  <div component="$UI/system/components/justep/popOver/popOver" class="x-popOver"
    xid="popOverHint" direction="left-bottom" opacity="0.4"> 
    <div class="x-popOver-overlay" xid="div1"/>  
    <div class="x-popOver-content" xid="div2">
      <div xid="div3" style="background-color:white;height:50px;width:250px; line-height:50px; text-align:center;border-radius: 5px;">请选中要删除的商品</div>
    </div>
  </div>  
  <span component="$UI/system/components/justep/messageDialog/messageDialog"
    xid="messageDialog" type="OKCancel" message="确定删除选中的商品吗" onOK="messageDialogOK" style="left:64px;top:9px;"/>
</div>
