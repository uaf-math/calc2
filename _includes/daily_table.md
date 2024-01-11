{% assign data = include.data %}
<table class="asst-table">
{% for xx in data.daily %}
<tr>
	<td>{{ xx.name }} ({{ xx.date }})</td>
	<td>
		<table class="inner">
			{% if xx.worksheet %}
		  <tr>
			    <td><a href="{{ data.home }}/{{ xx.blank }}">worksheet</a></td>
			</tr>
			{% endif %}
			{% if xx.solutions %}
			<tr>
			    <td><a href="{{ data.home }}/{{ xx.solutions }}">solutions</a></td>
			</tr>
			{% endif %}
			{% if xx.mfile %}
		  <tr>
			    <td><a href="{{ data.home }}/{{ xx.mfile }}">Matlab code</a></td>
			</tr>
			{% endif %}
			{% if xx.image %}
		  <tr>
			    <td><a href="{{ data.home }}/{{ xx.image }}">output image</a></td>
			</tr>
			{% endif %}
		</table>
		<div style="padding-bottom: 10px"></div>
	</td>
</tr>
{% endfor %}
</table>
