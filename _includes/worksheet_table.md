{% assign data = include.data %}
<table class="asst-table">
{% for ws in data.worksheets %}
<tr>
	<td>{{ ws.name }}</td>
	<td>
		<table class="inner">
		  <tr>
			    <td><a href="{{ data.home }}/{{ ws.blank }}">blank</a></td>
			</tr>
			<tr>
			    <td><a href="{{ data.home }}/{{ ws.solutions }}">solutions</a></td>
			</tr>
		</table>
		<div style="padding-bottom: 10px"></div>
	</td>
</tr>
{% endfor %}
</table>
