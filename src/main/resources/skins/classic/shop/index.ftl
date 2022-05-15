<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" />
    <#if hasSystemTitle>
        <title>${systemTitle}</title>
    <#else>
        <title>系统商店</title>
    </#if>
    <link rel="stylesheet" href="${staticServePath}/css/shop.css?${staticResourceVersion}" />
    <link rel="preconnect" href="${staticServePath}">
    <meta name="copyright" content="B3log" />
    <meta http-equiv="Window-target" content="_top" />
    <link rel="icon" type="image/png" href="${staticServePath}/images/favicon.png" />
    <link rel="apple-touch-icon" href="${staticServePath}/images/faviconH.png">
    <link rel="search" type="application/opensearchdescription+xml" title="Rym" href="/opensearch.xml">
    ${siteVisitStatCode}
    <script src="${staticServePath}/js/lib/compress/libs.min.js?${staticResourceVersion}"></script>
    <script src="${staticServePath}/js/shop${miniPostfix}.js?${staticResourceVersion}"></script>
</head>
<body>
<div class="main">
    <div class="logs">
    </div>
    <div class="input">
    </div>
</div>
<script>
    var Label = {
        commentEditorPlaceholderLabel: '${commentEditorPlaceholderLabel}',
        langLabel: '${langLabel}',
        luteAvailable: ${luteAvailable?c},
        reportSuccLabel: '${reportSuccLabel}',
        breezemoonLabel: '${breezemoonLabel}',
        confirmRemoveLabel: "${confirmRemoveLabel}",
        reloginLabel: "${reloginLabel}",
        invalidPasswordLabel: "${invalidPasswordLabel}",
        loginNameErrorLabel: "${loginNameErrorLabel}",
        followLabel: "${followLabel}",
        unfollowLabel: "${unfollowLabel}",
        symphonyLabel: "${symphonyLabel}",
        visionLabel: "${visionLabel}",
        cmtLabel: "${cmtLabel}",
        collectLabel: "${collectLabel}",
        uncollectLabel: "${uncollectLabel}",
        desktopNotificationTemplateLabel: "${desktopNotificationTemplateLabel}",
        servePath: "${servePath}",
        staticServePath: "${staticServePath}",
        isLoggedIn: ${isLoggedIn?c},
        funNeedLoginLabel: '${funNeedLoginLabel}',
        notificationCommentedLabel: '${notificationCommentedLabel}',
        notificationReplyLabel: '${notificationReplyLabel}',
        notificationAtLabel: '${notificationAtLabel}',
        notificationFollowingLabel: '${notificationFollowingLabel}',
        pointLabel: '${pointLabel}',
        sameCityLabel: '${sameCityLabel}',
        systemLabel: '${systemLabel}',
        newFollowerLabel: '${newFollowerLabel}',
        makeAsReadLabel: '${makeAsReadLabel}',
        imgMaxSize: ${imgMaxSize?c},
        fileMaxSize: ${fileMaxSize?c},
        <#if isLoggedIn>
        currentUserName: '${currentUser.userName}',
        </#if>
        <#if csrfToken??>
        csrfToken: '${csrfToken}'
        </#if>
    }

    Shop.init();
</script>
<script>
    // Init [Shop] channel
    ShopChannel.init("${wsScheme}://${serverHost}:${serverPort}${contextPath}/shop-channel");
</script>
</body>
</html>
