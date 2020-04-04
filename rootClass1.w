<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;"
  xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;left:287px;top:242px;"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="classData" idColumn="id" onCustomRefresh="classDataCustomRefresh" limit="-1">
      <column label="ID" name="id" type="String" xid="xid1"/>  
      <column label="名称" name="fClassName" type="String" xid="xid2"/>  
      <column label="图片" name="fImg" type="String" xid="xid3"/>  
      <column label="描述" name="fDescription" type="String" xid="xid4"/>
    </div>
  </div>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full x-cards x-has-iosstatusbar"
    xid="panel1"> 
    <div class="x-panel-content" xid="content1">
      <div component="$UI/system/components/justep/list/list" class="x-list"
        xid="classList" data="classData" bind-click="classListClick"> 
        <ul class="x-list-template" xid="listTemplateUl1"> 
          <li xid="li1" class="col-xs-6">
            <div xid="div1" class="media x-card">
              <div xid="div2" class="media-left media-middle">
                <img src="" alt="" xid="image1" style="height:46px;" bind-attr-src="val(&quot;fImg&quot;)"
                  class="o-img"/>
              </div>  
              <div xid="div3" class="media-body">
                <h5 bind-text="ref('fClassName')" class="text-black"><![CDATA[]]></h5>
                <span bind-text="ref('fDescription')" class="text-muted"/> 
              </div>
            </div>
          </li>
        </ul> 
      </div>
    </div> 
  </div> 
</div>
