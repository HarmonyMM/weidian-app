<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;left:122px;top:200px;" onActive="modelActive">
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="goodsData" idColumn="id" onCustomRefresh="goodsDataCustomRefresh" limit="-1">
      <column label="ID" name="id" type="String" xid="xid1"/>  
      <column label="标题" name="fTitle" type="String" xid="xid2"/>  
      <column label="图片" name="fImg" type="String" xid="xid3"/>  
      <column label="地址" name="fAddress" type="String" xid="xid4"/>
    </div>
  </div>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full "
    xid="panel1"> 
    <div class="x-panel-content" xid="content1"> 
      <div component="$UI/system/components/justep/contents/contents" class="x-contents x-full"
        active="0" xid="contents1"> 
        <div class="x-contents-content" xid="content2">
          <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full x-has-iosstatusbar"
            xid="panel2"> 
            <div class="x-panel-top" xid="top2">
              <div component="$UI/system/components/justep/titleBar/titleBar"
                class="x-titlebar" xid="titleBar2" title="母婴动态" style="background-color:blue;"> 
                <div class="x-titlebar-left" xid="left2" style="background-color:blue;"/>  
                <div class="x-titlebar-title" xid="title2">母婴动态</div>  
                <div class="x-titlebar-right reverse" xid="right2"/>
              </div>
            </div>  
            <div class="x-panel-content  x-scroll-view" xid="content6" style="bottom: 0px;">
              <div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView"
                xid="scrollView1"> 
                  
                <div class="x-scroll-content" xid="div2">
                  <div component="$UI/system/components/justep/row/row" class="x-row o-nopadding"> 
                    </div>
                  <div component="$UI/system/components/bootstrap/carousel/carousel"
                    class="x-carousel carousel" xid="carousel1" auto="true"> 
                    <ol class="carousel-indicators" xid="ol1"/>  
                    <div class="x-contents carousel-inner" role="listbox" component="$UI/system/components/justep/contents/contents"
                      active="0" slidable="true" wrap="true" swipe="true" xid="contentsImg"
                      routable="false"> 
                      <div class="x-contents-content" xid="bannerContent1"> 
                        <img src="images/banner1.png" alt="" xid="image13"
                          bind-click="openPageClick" class="o-img1" pagename="./detail.w"/>
                      </div>  
                      <div class="x-contents-content" xid="bannerContent2">
                        <img src="images/banner2.png" alt="" xid="image2"
                          bind-click="openPageClick" class="o-img1" pagename="./detail.w"/>
                      </div>
                    <div class="x-contents-content" xid="content7"><img src="images/banner3.png" alt="" xid="image3" class="o-img1"></img></div></div> 
                  </div>
                  <div component="$UI/system/components/justep/list/list" class="x-list panel-body"
                    xid="list1" data="goodsData" bind-click="goodsListClick"> 
                    <ul class="x-list-template" xid="listTemplateUl1"> 
                      <li xid="li1" class="text-center">
                        <span xid="span17" class="o-address" bind-text="ref('fAddress')"/>
                        <div xid="div4" class="o-title">
                          <h3 bind-text="ref('fTitle')"><![CDATA[]]></h3>  
                          <span xid="span16"><![CDATA[2016.01.25]]></span>
                        </div>
                        <img src="" alt="" xid="image1" bind-attr-src="val(&quot;fImg&quot;)"
                          class="o-img1"/> 
                      </li>
                    </ul> 
                  </div> 
                <div class="x-content-center x-pull-down container" xid="div1"> 
                  <i class="x-pull-down-img glyphicon x-icon-pull-down" xid="i5" />  
                  <span class="x-pull-down-label" xid="span5">下拉刷新...</span>
                </div></div>  
                <div class="x-content-center x-pull-up" xid="div3"> 
                  <span class="x-pull-up-label" xid="span6">加载更多...</span>
                </div> 
              </div>
            </div> 
          </div>
        </div>  
        <div class="x-contents-content" xid="content3">
          <div component="$UI/system/components/justep/windowContainer/windowContainer"
            class="x-window-container" xid="windowContainer3" src="./city.w"/>
        </div>  
        <div class="x-contents-content" xid="content4">
          <div component="$UI/system/components/justep/windowContainer/windowContainer"
            class="x-window-container" xid="windowContainer1" src="./rootClass.w"
            autoLoad="true"/>
        </div>  
        <div class="x-contents-content" xid="content5">
          <div component="$UI/system/components/justep/windowContainer/windowContainer"
            class="x-window-container" xid="windowContainer2" src="./user.w"/>
        </div> 
      </div> 
    </div>  
    <div class="x-panel-bottom" xid="bottom1"> 
      <div component="$UI/system/components/justep/button/buttonGroup" class="btn-group x-card btn-group-justified"
        tabbed="true" xid="buttonGroup1" selected="button1"> 
        <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-icon-top"
          label="动态" xid="button1" icon="icon-paper-airplane" target="content2"> 
          <i xid="i1" class="icon-paper-airplane"/>  
          <span xid="span1">动态</span> 
        </a>  
        <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-icon-top"
          label="今日推荐" xid="button2" icon="icon-ios7-heart" target="content3"> 
          <i xid="i2" class="icon-ios7-heart"/>  
          <span xid="span2">今日推荐</span> 
        </a>  
        <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-icon-top"
          label="分类" xid="button3" icon="icon-ios7-search-strong" target="content4"> 
          <i xid="i3" class="icon-ios7-search-strong"/>  
          <span xid="span3">分类</span> 
        </a>  
        <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-icon-top"
          label="个人中心" xid="button4" icon="icon-ios7-person" target="content5"> 
          <i xid="i4" class="icon-ios7-person"/>  
          <span xid="span4">个人中心</span> 
        </a> 
      </div> 
    </div> 
  </div> 
</div>
