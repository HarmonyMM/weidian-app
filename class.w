<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;"
  xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;left:117px;top:224px;" onActive="modelActive"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="threeClassData" idColumn="fID" limit="-1" onCustomRefresh="threeClassDataCustomRefresh"> 
      <column label="ID" name="fID" type="String" xid="column3"/>  
      <column label="二级分类ID" name="fSecondID" type="String" xid="column2"/>  
      <column label="名称" name="fClassName" type="String" xid="column4"/>  
      <column label="图片" name="fImg" type="String" xid="column1"/>
    </div>
  </div>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full x-cards x-has-iosstatusbar"
    xid="panel1"> 
    <div class="x-panel-top" xid="top1"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" style="color:#000000;background-color:#F7F7F7;"> 
        <div class="x-titlebar-left"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon"
            label="button" xid="button1" icon="icon-chevron-left" onClick="{operation:'window.close'}"> 
            <i xid="i1" class="icon-chevron-left"/>  
            <span xid="span2"/>
          </a>
        </div>  
        <div class="x-titlebar-title"> 
          <span xid="span1" bind-text="$model.params.className"></span></div>  
        <div class="x-titlebar-right reverse"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon"
            label="button" xid="button2" icon="icon-ios7-search-strong"> 
            <i xid="i2" class="icon-ios7-search-strong" style="font-size:24px;"/>  
            <span xid="span3"/>
          </a>
        </div> 
      </div> 
    </div>  
    <div class="x-panel-content" xid="content1">
      <div component="$UI/system/components/justep/list/list" class="x-list"
        xid="classList" data="secondClassData" dataItemAlias="secondRow" filter='$row.val("fRootID")==$model.params.rootID'> 
        <ul class="x-list-template" xid="listTemplateUl1"> 
          <li xid="li1" class="col-xs-12 o-nopadding">
            <h5 bind-text="secondRow.ref('fClassName')" class="text-black o-secondTitle"><![CDATA[]]></h5>
            <div component="$UI/system/components/justep/list/list" class="x-list o-threeList"
              xid="list1" data="threeClassData" bind-click="classListClick" filter="$row.val('fSecondID')==  val(&quot;fID&quot;)"> 
              <ul class="x-list-template" xid="listTemplateUl2"> 
                <li xid="li2" class="col-xs-3 text-center o-nopadding"> 
                  <img src="" alt="" xid="image2" style="height:46px;" bind-attr-src="val(&quot;fImg&quot;)"
                    class="o-img" bind-click="image2Click"/>
                  <h5 bind-text="ref('fClassName')" class="text-black"/>
                </li> 
              </ul>  
              <div class="clearfix"/>
            </div> 
          </li>
        </ul> 
      </div>
    </div> 
  </div> 
</div>
