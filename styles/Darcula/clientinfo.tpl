<!--
TeamSpeak 3 Client Infoframe Template
Copyright 2009-2015 (c) TeamSpeak Systems GmbH

The replaceable variables are embedded in "%%" like %%CLIENT_NAME%%. At this time you can
also use %%?CLIENT_NAME%% (note the questionmark), which is a tiny "if"- query. Use it, to
remove the whole line, if a variable is empty or just "0".

Templates can be placed in "styles/" for default theme or in a sub folder named like an available
theme (e.g. "styles/bluesky/"). Be aware that this template will not automaticly be translated when
displayed.

Predefined values have to be inside the html comment-tag to make sure that they will be parsed
before the replacing begins! Remove the "#" to enable.

#%%AVATAR_MAX_WIDTH%%128
#%%AVATAR_MAX_HEIGHT%%128
#%%CLIENT_SERVER_SHOW_MAX_GROUPS%%3

Replacable variables for clients:
CLIENT_NAME
CLIENT_NAME_PERCENT_ENCODED
CLIENT_CUSTOM_NICK_NAME
CLIENT_COUNTRY_TOOLTIP
CLIENT_COUNTRY_IMAGE
CLIENT_ID
CLIENT_UNIQUE_ID
CLIENT_AWAY_MESSAGE
CLIENT_PLATFORM
CLIENT_VERSION
CLIENT_VERSION_SHORT
CLIENT_VERSION_STATE   [Alpha|Beta|Stable]
CLIENT_DESCRIPTION
CLIENT_ICON
CLIENT_TOTALCONNECTIONS
CLIENT_CREATED
CLIENT_LASTCONNECTED
CLIENT_CONNECTED_SINCE
CLIENT_FLAG_AVATAR
CLIENT_IGNORE_AVATAR
AVATAR_MAX_WIDTH
AVATAR_MAX_HEIGHT
CLIENT_TALK_REQUEST_TIME
CLIENT_TALK_REQUEST_MSG
CLIENT_VOLUME_MODIFIER
CLIENT_CHANNEL_GROUP_NAME
CLIENT_CHANNEL_GROUP_ICON
CLIENT_SERVER_GROUP_NAME
CLIENT_SERVER_GROUP_ICON
CLIENT_DATABASE_ID
CLIENT_SERVER_SHOW_MAX_GROUPS
PLUGIN_INFO_DATA
-->

<style type="text/css">
	table#info {
		border-collapse: collapse;
		border-spacing: 0px;
	}
	table#list {
		border-collapse: collapse;
		border-spacing: 0px;
		margin-bottom: 10px;
	}
	td {
		padding: 0px 4px 0px 1px;
	}
	td.label {
		font-weight: bold;
		white-space: nowrap;
	}
	td.space {
		padding-top: 6px;
	}
	td.list {
		padding: 0px 1px 0px 8px;
	}
</style>

<table id="info">
	<tr>
		<td class="label">Nickname:</td>
		<td><a href="client://%%CLIENT_ID%%/%%CLIENT_UNIQUE_ID%%~%%CLIENT_NAME_PERCENT_ENCODED%%" class="TextMessage_UserLink">%%CLIENT_NAME%%</a></td>
	</tr>
	<tr>
		<td class="label">Description:</td>
		<td>%%CLIENT_DESCRIPTION%%</td>
	</tr>
	<tr>
		<td class="label">Country:</td>
		<td>%%?CLIENT_COUNTRY_TOOLTIP%% <a href="https://www.google.com/maps/place/%%?CLIENT_COUNTRY_TOOLTIP%%"><img src="%%?CLIENT_COUNTRY_IMAGE%%" alt=""/></a></td>
	</tr>
	<tr>
		<td class="label">Version:</td>
		<td>%%?CLIENT_VERSION%% %%CLIENT_VERSION_STATE%% on %%CLIENT_PLATFORM%%</td>
	</tr>
	<tr>
		<td><hr></td>
		<td><hr></td>
	</tr>
	<tr>
		<td class="label">ID:</td>
		<td>%%?CLIENT_ID%%</td>
	</tr>
	<tr>
		<td class="label">Unique ID:</td>
		<td>%%?CLIENT_UNIQUE_ID%%</td>
	</tr>
	<tr>
		<td class="label">Database ID:</td>
		<td>%%?CLIENT_DATABASE_ID%%</td>
	</tr>
	<tr>
		<td><hr></td>
		<td><hr></td>
	</tr>
	<tr>
		<td class="label">Total Connections:</td>
		<td>%%CLIENT_TOTALCONNECTIONS%%</td>
	</tr>
	<tr>
		<td class="label">Client Created:</td>
		<td>%%?CLIENT_CREATED%%</td>
	</tr>
	<tr>
		<td class="label">Last Connection:</td>
		<td>%%?CLIENT_LASTCONNECTED%%</td>
	</tr>
	<tr>
		<td class="label">Connected Since:</td>
		<td>%%?CLIENT_CONNECTED_SINCE%%</td>
	</tr>
	<tr>
		<td><hr></td>
		<td><hr></td>
	</tr>
</table>

<table id="list">
	<tr>
		<td class="space label"><img src="iconpath:PERMISSIONS_SERVER_GROUPS?size=16x16" height="12" width="12" alt=""> Server Groups:</td>
	</tr>
	<tr>
		<td class="list">
			<div>%%CLIENT_SERVER_GROUP_ICON%% %%CLIENT_SERVER_GROUP_NAME%%</div>
		</td>
	</tr>
	<tr>
		<td class="space label"><img src="iconpath:PERMISSIONS_CHANNEL_GROUPS?size=16x16" height="12" width="12" alt=""> Channel Group:</td>
	</tr>
	<tr>
		<td class="list">
			<div>%%CLIENT_CHANNEL_GROUP_ICON%% %%CLIENT_CHANNEL_GROUP_NAME%%</div>
		</td>
	</tr>
	<tr>
		<td class="red"><br />*** Client requested Talk Power at <b>%%?CLIENT_TALK_REQUEST_TIME%%</b>.</td>
	</tr>
	<tr>
		<td class="red">&nbsp;&nbsp;&nbsp;&nbsp;(%%?CLIENT_TALK_REQUEST_MSG%%)</td>
	</tr>
</table>
