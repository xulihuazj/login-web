<#if !userInfo??>
<div class="bgff">
    <nav class="w1120 ">
        <div class="nav-left ">
            <a href="${basePath}/">
                <img src="${resourcesPath}/resources/img/logo.png" alt="">
            </a>
        </div>
        <div class="nav nav-big">
            <ul class=" text-center">
                <li><a href="${basePath}/">首页</a></li>
                <li><a href="${basePath}/html/product">乐璟产品</a></li>
                <li><a href="${basePath}/html/about">关于乐璟</a></li>
                <li class=" text-center">
                    <a href="${basePath}/login/page">登录</a>
                    <a href="${basePath}/user/register/page">注册</a>
                </li>
            </ul>
        </div>
    </nav>
</div>
</#if>

<#if userInfo??>
    <div class="bgff">
        <nav class="w1120 ">
            <div class="nav-left ">
                <a href="${basePath}/">
                    <img src="${resourcesPath}/resources/img/logo.png" alt="">
                </a>
                <div class="city">
                    <img src="${resourcesPath}/resources/img/didi.png" alt="">
                    <span class="city-name cityName">苏州</span>
                </div>
                <div class="city-list">
                    <ul>
                    <#list cityList as cityInfo>
                        <li class="city-item text-center" data-id="${cityInfo.id}">${cityInfo.name}</li>
                    </#list>
                    </ul>
                </div>
            </div>
            <div class="nav">
                <ul class=" text-center">
                    <li><a href="${basePath}/">首页</a></li>
                    <li><a href="${basePath}/html/product">乐璟产品</a></li>
                    <li><a href="${basePath}/html/about">关于乐璟</a></li>
                    <li class=" photo">
                        <div class="photo-img">
                            <img src="${resourcesPath}/resources/img/dtx.png" alt="" class="block">
                        </div>
                        <span class="triangle_border_down"></span>

                        <!-- 下拉列表 -->
                        <div id="nav-down">
                            <ul>
                                <li><a href="${basePath}/home/room/detail">我的房间</a></li>
                                <li><a href="${basePath}/user/account/page">账户设置</a></li>
                                <li><a href="${basePath}/login/out">退出登录</a></li>
                            </ul>
                        </div>
                    </li>
                </ul>
            </div>
        </nav>
    </div>
</#if>


<script>
    $(function () {
        var href = location.href;
        var acher = $(".bgff  li>a");
        $.each(acher, function (data) {
            var link = $(acher[data]).attr("href");
            if (href.endsWith(link) > 0) {
                $(acher[data]).addClass("active");
            }
        })


        $(".city-name").on("click", function () {
            $(".city-list").show();
            event.stopPropagation();
        });
        $(".city-list ul li").on("click", function (e) {
            var _this = $(this);
            var city = _this.data("id");
            $.STORAGE.Put("city", city);
            location.reload();
        })
        $("body:not(.city-list)").on("click", function () {
            $(".city-list").hide();
        })

        <#--$.COMMON.DATA.CITYDTO = JSON.parse('${cityDTO}');-->
        <#--$.COMMON.DATA.CITY = ${city};-->
        <#--$.COMMON.DATA.CITY = +$.COMMON.getCity();-->
        <#--$(".cityName").text($.COMMON.DATA.CITYDTO.find(e=>e.id===$.COMMON.DATA.CITY).name);-->
    })
</script>
