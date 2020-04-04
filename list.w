<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;"
  xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;left:117px;top:224px;"
    onParamsReceive="modelParamsReceive"> 
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
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="conditionData" idColumn="id"> 
      <column label="id" name="id" type="String" xid="column2"/>  
      <column label="名称" name="fName" type="String" xid="column3"/>  
      <column label="状态" name="fState" type="Integer" xid="column1"/>  
      <data xid="default1">[{&quot;id&quot;:&quot;1&quot;,&quot;fName&quot;:&quot;排序&quot;,&quot;fState&quot;:1},{&quot;id&quot;:&quot;2&quot;,&quot;fName&quot;:&quot;价格最低&quot;,&quot;fState&quot;:0},{&quot;id&quot;:&quot;3&quot;,&quot;fName&quot;:&quot;价格最高&quot;,&quot;fState&quot;:0},{&quot;id&quot;:&quot;4&quot;,&quot;fName&quot;:&quot;销量最高&quot;,&quot;fState&quot;:0}]</data></div>
  </div>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel1"> 
    <div class="x-panel-top" xid="top1"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" style="color:#000000;background-color:#F7F7F7;"> 
        <div class="x-titlebar-title flex5"><div component="$UI/system/components/bootstrap/row/row" class="row" xid="row1">
   <div class="col col-xs-2" xid="col1"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="button" xid="button1" icon="icon-chevron-left" onClick="{operation:'window.close'}" style="padding:0px 0px 0px 2px;"> 
            <i xid="i1" class="icon-chevron-left" />  
            <span xid="span2" />
          </a></div>
   <div class="col col-xs-10" xid="col2"><div xid="div1" style="height:28px;background-color:#F2F2F2;text-align:left;margin-right:10px;border:1px solid #E2E2E2;"><span xid="span3" bind-text="$model.params.className" style="font-weight:normal;color:#666666;font-size:14px;padding-left: 10px;"></span></div></div>
   </div></div>  
        </div> 
    </div>  
    <div class="x-panel-content" xid="content1">
      <div component="$UI/system/components/justep/button/buttonGroup" class="btn-group btn-group-justified"
        tabbed="true" xid="buttonGroup" style="height:40px;"> 
        <a component="$UI/system/components/justep/button/button" class="btn btn-link"
          label="全部地区" xid="button3" icon="icon-arrow-down-b"> 
          <i xid="i3" class="icon-arrow-down-b"/>  
          <span xid="span1">全部地区</span>
        </a>  
        <a component="$UI/system/components/justep/button/button" class="btn btn-link"
          label="分类" icon="icon-arrow-down-b" xid="screeningBtn"> 
          <i xid="i8" class="icon-arrow-down-b"/>  
          <span xid="span7">分类</span>
        </a>  
        <a component="$UI/system/components/justep/button/button" class="btn btn-link"
          xid="sortingBtn" icon="icon-arrow-down-b" onClick="" label="排序"> 
          <i xid="i13" class="icon-arrow-down-b"/>  
          <span xid="span4" bind-text="conditionData.ref('fName')">排序</span>
        </a>
      </div>
      <div component="$UI/system/components/justep/list/list" class="x-list panel-body o-nopadding"
        xid="list1" data="goodsData" bind-click="goodsListClick"> 
        <ul class="x-list-template" xid="listTemplateUl1"> 
          <li xid="li1" class="col-xs-6"> 
            <img src="" alt="" xid="image1" bind-attr-src="val(&quot;fImg&quot;)" class="o-img1"/>
            <h4 bind-text="ref('fTitle')" class="text-black"/>
            <span bind-text="ref('fDiscount')" class="pull-right  o-discount" bind-visible='val("fDiscount") &lt; 10'><![CDATA[]]></span>
            <span bind-text="'￥' + val('fPrice')" class="h4 text-danger"/>  
            <span bind-text="'￥' + val('fOldPrice')" class="o-delline text-muted" bind-visible='val("fDiscount") &lt; 10'/>
          </li> 
        </ul> 
      </div> 
    </div> 
  </div> 
</div>
