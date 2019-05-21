<link rel="stylesheet" href="${resourcesPath}/resources/css/bill.css?v=${resourcesVersion!}">
${resourcesPath!}
${resourcesVersion!}
<div class="model-box">
    <div class="model-top ">
        <h3>电影详情</h3>
        <img src="${resourcesPath}/resources/img/cc.png" alt="" class="close" onclick="closeDiv()">
    </div>
    <div class="model-content padd-bottom">
        <div class="ys-auto">
            <div class=" wrap mb20">
                <#--${detail}-->
                <img src="${detail.videoImage!}" alt="电影主图">
                <p class="color27 font14 bold-s w-50">电影名称：${detail.videoName!} </p>
                <p class="color27 font14 bold-s w-50">类别：${detail.videoType!}</p>
                <p class="color27 font14 bold-s w-50"> 地区：${detail.zoneName!}</p>
                <p class="color27 font14 bold-s w-50"> 语言：${detail.languageName!}</p>
                <p class="color27 font14 bold-s w-50"> 导演：
                    <#list detail.videoDirectorList as director >
                        ${director}&nbsp;&nbsp;
                    </#list>
                </p>
                <p class="color27 font14 bold-s w-50"> 演员：
                    <#list detail.videoPerformerList as performer >
                        ${performer}&nbsp;&nbsp;
                    </#list>
                </p>
                <p class="color27 font14 bold-s w-50"> 评论：
                    <#list detail.videoCommentList as commentDetail >
                        平台：${commentDetail.commentSource}&nbsp;&nbsp;得分：${commentDetail.commentScore}&nbsp;&nbsp;链接：${commentDetail.commentScoreLink}
                    </#list>
                </p>
                <p class="color27 font14 bold-s w-50"> 上映时间：${detail.releaseTime!}</p>
                <p class="color27 font14 bold-s w-50"> 上映年代：${detail.yearNum!}</p>
                <p class="color27  bold-s w-50 ">
                    <span class="font14 w46 new-line mr10">剧情介绍：${detail.describe!}</span>
                </p>
            </div>

            <div class="mb20 -start">
                <span class="color27 font14 bold-s">相关剧情截图：</span>
                <ul class="-start wrap ml20 adjunct">
                    <#if detail.videoImageList??>
                        <#list detail.videoImageList as videoImage>
                            <li>
                                <img src="${videoImage}" alt="">
                            </li>
                        </#list>
                    </#if>
                </ul>
            </div>
            <!-- 下载地址 -->
            <p class="color27  bold-s -start">
            <span class="font14 ">下载地址：
                <ul class="-start wrap ml20 adjunct">
                    <#if detail.videoDownloadList??>
                        <#list detail.videoDownloadList as videoDownload>
                            <li>
                                <span>分辨率：${videoDownload.downloadType!}</span>
                                <span>大小：${videoDownload.downloadSize!}</span>
                                <span>链接：${videoDownload.videoAddress!}</span>
                            </li>
                        </#list>
                    </#if>
                </ul>
            </p>
        </div>
        <div class="mt60">
            <button class="next close" onclick="closeDiv()">关闭</button>
        </div>
    </div>
</div>
