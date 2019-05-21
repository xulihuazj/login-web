<!-- 资源版本 -->
<#global basePath=springMacroRequestContext.contextPath>
<#--<#global resourcesPath=Application.resourcesPath>-->
<#global resourcesPath='http://127.0.0.1:8081'>
<#global resourcesVersion=Application.resourcesVersion>

<script src="${resourcesPath}/resources/js/jquery.min.js"></script>
<script src="${resourcesPath}/resources/js/js.cookie.min.js"></script>
<#--<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>-->

<#if Session["RRRR_LOGIN_USER_SESSION_NAME"]?exists>
	<#global userInfo=Session["RRRR_LOGIN_USER_SESSION_NAME"]>
</#if>
<script>
    (function () {
        $.baseData = {
            "basePath": "${basePath}",
            "resourcesPath": "${resourcesPath}",
            "system": {
                "dateTime": new Date(${system_dateTime!}),
            }
        };
    })(jQuery);
</script>