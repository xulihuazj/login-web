<!DOCTYPE html>
<html lang="en">
<head>
    <#include "./commons/public.ftl" />
    <#import "./commons/seo.ftl" as seo >
    <@seo.seo></@seo.seo>
    <link rel="stylesheet" href="${resourcesPath}/resources/css/sz_index.css?v=${resourcesVersion!}">
</head>
<body>
<div class="box">
    <!-- 导航 -->
    <#include "./commons/header.ftl">
    <!-- banner -->
    <div class="banner w1920">
        <img src="${resourcesPath}/resources/img/sz/sz_banner.png" alt="" class="block-auto w-100">
    </div>

    <!-- content -->
    <div class="content ">
        <div class="bgimg">
            <div class="part1 w1120">
                <div class="part-top relative">
                    <h2 class="color27 text-center font32">精品房型</h2>
                    <p class="color99 text-center font14">年轻、时尚、活力的室内空间</p>
                    <span class="order-btn font18 order-box" id="appoint_room">
                        <img src="${resourcesPath}/resources/img/fangzi.png" alt="">
                        返回首页
                    </span>
                </div>
            </div>
        </div>
        <div class="w1120">
            <div class="part2">
                <div class="part-top ">
                    <h2 class="color27 text-center font32">润家乐璟 <i></i> 连接你我</h2>
                    <#--<p class="color99 text-center font14">我们的定位，不是旅馆，不是酒店，是家</p>-->
                </div>
                <div class="tablist">
                    <ul class="tab_menu  text-center">
                        <li class="current">我的社友</li>
                        <li>居住空间</li>
                        <li>社区空间</li>
                    </ul>
                    <div class="tab_box relative">
                        <div class="absolute">
                            <div class="relative">
                                <img src="${resourcesPath}/resources/img/sz/sz_wodeshey.png" alt="" class="w-100">
                            </div>
                        </div>
                        <div class="absolute hide">
                            <div class=" relative">
                                <img src="${resourcesPath}/resources/img/sz/sz_jizhukongj.png" alt="" class="w-100">
                            </div>
                        </div>
                        <div class="absolute hide">
                            <div class=" relative">
                                <img src="${resourcesPath}/resources/img/sz/sz_shequkongj.png" alt="" class="w-100">
                            </div>
                        </div>
                        <div class="absolute hide">
                            <div class=" relative">
                                <img src="${resourcesPath}/resources/img/page4.jpg" alt="" class="w-100">
                                <ul class="con-text3 text-center">
                                    <li>打造一个优雅<br>、整洁<br>、活力的社区</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="part3 relative">
                <div class="part-top ">
                    <h2 class="color27 font32">乐璟天地 LOGIN MIX</h2>
                    <p class="color99 font14">百米之间，商圈环绕，需求便利，多彩生活</p>
                </div>
                <div class="tabbox  ">
                    <div class="shop-list">
                        <ul class="tab ">
                            <li>
                                <img src="${resourcesPath}/resources/img/chaoshi.png" alt="">
                                <b>超市</b>
                            </li>
                            <li>
                                <img src="${resourcesPath}/resources/img/cangt.png" alt="">
                                <b>餐厅</b>
                            </li>
                            <li>
                                <img src="${resourcesPath}/resources/img/jianshen.png" alt="">
                                <b>健身房</b>
                            </li>
                            <li>
                                <img src="${resourcesPath}/resources/img/wangka.png" alt="">
                                <b>网咖</b>
                            </li>
                            <li>
                                <img src="${resourcesPath}/resources/img/yiyuan.png" alt="">
                                <b>医院</b>
                            </li>
                            <li>
                                <img src="${resourcesPath}/resources/img/yandian.png" alt="">
                                <b>药房</b>
                            </li>
                        </ul>
                    </div>

                </div>
                <div class="tab-cont">
                    <ul>
                        <li>
                            <img src="${resourcesPath}/resources/img/cst.png" alt="1">
                        </li>
                        <li>
                            <img src="${resourcesPath}/resources/img/cangt2.png" alt="2">
                        </li>
                        <li>
                            <img src="${resourcesPath}/resources/img/jians.png" alt="">
                        </li>
                        <li>
                            <img src="${resourcesPath}/resources/img/wangk.png" alt="">
                        </li>
                        <li>
                            <img src="${resourcesPath}/resources/img/yiyuan2.png" alt="">
                        </li>
                        <li>
                            <img src="${resourcesPath}/resources/img/yanf.png" alt="">
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="part4 w1920">
            <div class="w1120">
                <div class="part-top ">
                    <h2 class="color27 text-center font32">配套服务</h2>
                    <p class="color99 text-center font14">入住乐璟 ，乐享生活 </p>
                </div>
                <div class="facility-list">
                    <ul class="text-center ">
                        <li>
                            <img src="${resourcesPath}/resources/img/menj.png" alt="">
                            <h5 class="color27 font18">大堂门禁</h5>
                            <p class="color99 font14">外人来访需登记</p>
                        </li>
                        <li>
                            <img src="${resourcesPath}/resources/img/wifi.png" alt="">
                            <h5 class="color27 font18">24H WIFI</h5>
                            <p class="color99 font14">智能wifi，移动互联，精彩生活</p>
                        </li>
                        <li>
                            <img src="${resourcesPath}/resources/img/mensuo.png" alt="">
                            <h5 class="color27 font18">智能门锁</h5>
                            <p class="color99 font14">密码开门，解决忘带钥匙的烦恼</p>
                        </li>
                        <li>
                            <img src="${resourcesPath}/resources/img/baoxiu.png" alt="">
                            <h5 class="color27 font18">专业维修</h5>
                            <p class="color99 font14">为你提供人性化服务</p>
                        </li>
                        <li>
                            <img src="${resourcesPath}/resources/img/baojie.png" alt="">
                            <h5 class="color27 font18">保洁服务</h5>
                            <p class="color99 font14">为你提供温馨舒适的居住空间</p>
                        </li>
                        <li>
                            <img src="${resourcesPath}/resources/img/anbao.png" alt="">
                            <h5 class="color27 font18">24H安保</h5>
                            <p class="color99 font14">24小时确保房客的居家安全</p>
                        </li>
                        <li>
                            <img src="${resourcesPath}/resources/img/baoj.png" alt="">
                            <h5 class="color27 font18">消防报警</h5>
                            <p class="color99 font14">消防设施一应俱全</p>
                        </li>
                        <li>
                            <img src="${resourcesPath}/resources/img/sz/sz_shquhuod.png" alt="">
                            <h5 class="color27 font18">社区活动</h5>
                            <p class="color99 font14">生日会观影会活动精彩不停歇</p>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>

    <#-- footer -->
    <#include "./commons/footer.ftl">
    <script src="${resourcesPath}/resources/js/jquery.tabs.js"></script>
</div>

<script>

    $(function () {

        $('.tablist').Tabs({
            auto: 3800,
        });

        $('.tab-cont li').hide();
        $('.tab-cont li:eq(0)').show();
        $(".tabbox .tab li").mouseover(function () {
            $(this).addClass('on').siblings().removeClass('on');
            var index = $(this).index();
            number = index;
            $('.tab-cont li').hide();
            $('.tab-cont li:eq(' + index + ')').show();
        });

        var auto = 1; //等于1则自动切换，其他任意数字则不自动切换
        if (auto == 1) {
            var number = 0;
            var maxNumber = $('.tabbox .tab li').length;

            function autotab() {
                number++;
                number == maxNumber ? number = 0 : number;
                $('.tabbox .tab li:eq(' + number + ')').addClass('on').siblings().removeClass('on');
                $('.tab-cont ul li:eq(' + number + ')').show().siblings().hide();
            }

            var tabChange = setInterval(autotab, 3000);
            //鼠标悬停暂停切换
            $('.tabbox').mouseover(function () {
                clearInterval(tabChange);
            });
            $('.tabbox').mouseout(function () {
                tabChange = setInterval(autotab, 3000);
            });
        }

        $.HTTP.GetHTML($.HTTP.URL.HOUSELIST, {
            city: 2221
        }, function (data) {
            $("#house").html(data);
        })


        $("#appoint_room").click(function () {
            openModel();
            $("#appoint_room_model").show();
        });
    })
</script>
</body>
</html>