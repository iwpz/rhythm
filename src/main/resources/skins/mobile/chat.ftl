<#--

    Rhythm - A modern community (forum/BBS/SNS/blog) platform written in Java.
    Modified version from Symphony, Thanks Symphony :)
    Copyright (C) 2012-present, b3log.org

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU Affero General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU Affero General Public License for more details.

    You should have received a copy of the GNU Affero General Public License
    along with this program.  If not, see <https://www.gnu.org/licenses/>.

-->
<#include "macro-head.ftl">
<#include "macro-pagination.ftl">
<!DOCTYPE html>
<html>
<head>
    <@head title="私信 - ${symphonyLabel}">
    </@head>
    <link rel="stylesheet" href="${staticServePath}/css/mobile-base.css?${staticResourceVersion}" />
    <link rel="stylesheet" href="${staticServePath}/css/home.css?${staticResourceVersion}"/>
</head>
<body>
<#include "header.ftl">
<div class="main">
    <div class="wrapper">
        <div class="side">
            <div class="module person-info" id="chatMessageList">
                <div class="module-panel" style="padding: 10px 15px;cursor: pointer" onclick="location.href = Label.servePath + '/chat?toUser=FileTransfer'">
                    <nav class="home-menu">
                        <div class="avatar"
                             style="display: inline-block; background-image:url('https://file.fishpi.cn/2022/06/e1541bfe4138c144285f11ea858b6bf6-ba777366.jpeg')">
                        </div>
                        <div style="display: inline-block; vertical-align: -12px;">
                            文件传输助手<br>
                            <span style="color: #868888">跨端传输文本/文件</span>
                        </div>
                    </nav>
                </div>
            </div>
        </div>
        <div class="content chat-room" style="margin-left: 15px; padding: 10px">
            <div class="ft__gray ft__center" id="chatStatus">
            </div>
            <br>
            <div id="messageContent"></div>
            <br>
            <div class="fn-clear" id="buttons" style="display: none">
                <div class="fn-right">
                    <button class="red" id="rmChatBtn">全部删除</button>
                    <span class="fn__space5"></span>
                    <button class="green" id="sendChatBtn">发送</button>
                </div>
            </div>
            <br>
            <div class="module" style="min-height: 50px; margin-top: 20px;">
                <div id="chats">
                </div>
            </div>
        </div>
    </div>
</div>
<#include "footer.ftl">
</body>
</html>
<script src="${staticServePath}/js/chat${miniPostfix}.js?${staticResourceVersion}"></script>
<script src="${staticServePath}/js/channel${miniPostfix}.js?${staticResourceVersion}"></script>
