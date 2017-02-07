<%--
  ~ Licensed to the Apache Software Foundation (ASF) under one
  ~ or more contributor license agreements.  See the NOTICE file
  ~ distributed with this work for additional information
  ~ regarding copyright ownership.  The ASF licenses this file
  ~ to you under the Apache License, Version 2.0 (the
  ~ "License"); you may not use this file except in compliance
  ~ with the License.  You may obtain a copy of the License at
  ~
  ~     http://www.apache.org/licenses/LICENSE-2.0
  ~
  ~ Unless required by applicable law or agreed to in writing,
  ~ software distributed under the License is distributed on an
  ~ "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
  ~ KIND, either express or implied.  See the License for the
  ~ specific language governing permissions and limitations
  ~ under the License.
  --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>

<html>
<head>
    <title>ProActive IAM Sample Application</title>
    <link rel="stylesheet" type="text/css" href="<c:url value="/styles/sample.css"/>"/>
</head>
<body>

<div id="bigbox">
    <div class="title clearfix"><div style="float: left">ProActive IAM Sample App - Admin</div><div class="info" >Logged in (<a href="<c:url value="/logout"/>">Logout</a>)</div></div>

    <div class="content">
        <p>
            You are in the admin page!
        </p>
        <p>
            <shiro:hasRole name="file">
                Logged via FILE
            </shiro:hasRole>

            <shiro:hasRole name="ldap">
                Logged via LDAP
            </shiro:hasRole>

            <shiro:hasRole name="pam">
                Logged via PAM
            </shiro:hasRole>
        </p>
    </div>
</div>

</body>
</html>
