<!DOCTYPE html>
<html lang="en">
<head>
    <#include "../commons/public.ftl" />
    <#import "/commons/seo.ftl" as seo >
    <@seo.seo></@seo.seo>
    <link rel="stylesheet" href="${resourcesPath}/resources/css/about.css?v=${resourcesVersion!}">
</head>
<body>
<div class="box">
    <!-- 导航 -->
    <#include "/commons/header.ftl" />
    <!-- banner -->
    <div class="banner w1920">
        <img src="${resourcesPath}/resources/img/about.jpg" alt="" class="block-auto w-100">
    </div>
    <!-- content -->
    <div class="content w1120 ">
        <div class="fix-left">
            <ul>
                <li class="active nav-item">乐璟介绍</li>
                <li class="nav-item">乐璟愿景</li>
                <li class="nav-item">乐璟使命</li>
                <li class="nav-item">乐璟目标</li>
            </ul>
        </div>
        <div class="right-content">
            <div class="part spy-item">
                <h1>乐璟介绍</h1>
                <p>
                    LOGIN（乐璟）作为中富旅居旗下专注长租公寓服务的品牌，充分发挥中富旅居在公寓运营领域16年经验和资源优势。在国家政策引导下，与各级地方政府、产业园区紧密合作，布局落地各类住房租赁业务，为打造新租住时代做出应有的贡献。
                </p>
                <p>
                    乐璟品牌以“政府帮手、企业管家、青年伙伴”为使命，在园区人才安置方面整合园区资源，增加市场供给，规范租房市场，树立安居示范。还通过优秀的公寓运营管理，进一步释放、盘活物业资产，从而进一步满足园区对于各阶层人才的全方位住宿需求，彻底改变居住理念。在此基础上衍生出企业对于人才、员工的全方位服务，使得企业文化、人才服务、员工生活融为一体。
                </p>
                <p class="important">
                    <img src="${resourcesPath}/resources/img/cf_logo.png"> 中富旅居—— 中国领先的企业住宿服务商
                </p>
                <p>
                    16年运营检验       嫁接国际资源<br>
                    中富旅居作为中国领先的企业住宿服务商由中富投资创办，新加坡城市发展集团（CDL）、易居中国、新城控股、中新集团、建屋集团等共同投资入股的企业。16年来，一直致力于打造以公寓服务为核心的服务平台，帮助公寓提升服务品质，为租户带来卓越的公寓入住体验。
                </p>
                <p>
                    中富公司通过与全球三大服务公寓运营管理公司之一新加坡辉盛国际（Fraser Hospitality Pte Ltd）合作创办“MODENA（名致）精品酒店公寓”连锁品牌，在中国具备了一定的市场影响力。公司与千禧国敦酒店集团（Millennium Hotels and Resorts）的母公司——新加坡城市发展集团（CDL）联合创建“SUISSE PLACE”瑞贝庭公寓酒店和“LOGIN”乐璟长租公寓品牌。其优秀的运作能力以及嫁接国际资源，使得中富公司成为了中国服务公寓的领先者。
                </p>
                <p class="important">
                    中富控股，16年地产公寓投资与运营
                </p>
                <p>
                    ——与新加坡辉盛国际(Frasers Hospitality Pte Ltd) 合作创立的“ MODENA ( 名致)精品酒店公寓”连锁品牌<br>
                    ——与新加坡最大地产及酒店管理集团新加坡城市发展（CDL），创建瑞贝庭公寓酒店连锁品牌<br>
                    ——在上海、天津、苏州、大连、无锡等全国多地，开发投资多个品牌酒店公寓<br>
                    ——和高和资本组建了公寓地产基金。<br>
                </p>
            </div>
            <div class="part spy-item">
                <a id="part2"></a>
                <h1>乐璟愿景</h1>
                <p>
                    提升青年生活品质 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;助力中国经济发展
                </p>
            </div>
            <div class="part spy-item">
                <h1>乐璟使命</h1>
                <p>
                    <img src="${resourcesPath}/resources/img/bangs.png"> 政府帮手&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <img src="${resourcesPath}/resources/img/guanj.png"> 企业管家&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <img src="${resourcesPath}/resources/img/huob.png"> 青年伙伴
                </p>
            </div>
            <div class="part spy-item">
                <a id="part4"></a>
                <h1>乐璟目标</h1>
                <p>
                    成为中国领先的社区服务运营商
                </p>
            </div>
        </div>
    </div>

<#-- footer -->
    <#include "../commons/footer.ftl">
</div>

<script src="${resourcesPath}/resources/js/jq.nav-scroll-spy.js"></script>
<script>
    $(function () {
        $(document).jqNavScrollSpy();
        // // nav 吸顶
        // var navFix = $(".fix-left"),
        //     navHeight = navFix.offset().top;
        //
        // $(window).scroll(function () {
        //     if ($(this).scrollTop() > navHeight) {
        //         navFix.addClass("navFix");
        //     } else {
        //         navFix.removeClass("navFix");
        //     }
        // })
    })
</script>
</body>
</html>