<%--
/**
 * Copyright (c) 2008-2010 Liferay, Inc. All rights reserved.
 *
 * This file is part of Liferay Social Office. Liferay Social Office is free
 * software: you can redistribute it and/or modify it under the terms of the GNU
 * Affero General Public License as published by the Free Software Foundation,
 * either version 3 of the License, or (at your option) any later version.
 *
 * Liferay Social Office is distributed in the hope that it will be useful, but
 * WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
 * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU Affero General Public License
 * for more details.
 *
 * You should have received a copy of the GNU General Public License along with
 * Liferay Social Office. If not, see http://www.gnu.org/licenses/agpl-3.0.html.
 */
--%>

<%
inputId = renderResponse.getNamespace() + fieldParam + "Month" + projectsEntriesIndex;
%>

<select id="<%= inputId %>" name="<%= inputId %>">

	<%
	for (int j = 0; j < months.length; j++) {
	%>

		<option <%= (selMonthValue == monthIds[j]) ? "selected" : "" %> value="<%= monthIds[j] %>"><%= months[j] %></option>

	<%
	}
	%>

</select>

<%
inputId = renderResponse.getNamespace() + fieldParam + "Year" + projectsEntriesIndex;
%>

<select id="<%= inputId %>" name="<%= inputId %>">
	<c:if test="<%= (selYearValue > 0) && (selYearValue > yearRangeEnd) %>">
		<option selected value="<%= selYearValue %>"><%= selYearValue %></option>
	</c:if>

	<%
	for (int j = yearRangeEnd; j >= yearRangeStart; j--) {
	%>

		<option <%= (selYearValue == j) ? "selected" : "" %> value="<%= j %>"><%= j %></option>

	<%
	}
	%>

	<c:if test="<%= (selYearValue > 0) && (selYearValue < yearRangeStart) %>">
		<option selected value="<%= selYearValue %>"><%= selYearValue %></option>
	</c:if>
</select>