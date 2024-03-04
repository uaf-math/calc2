{% assign data = include.data %}
<table class="asst-table">
{% for xx in data.daily %}
<tr>
	<td>{{ xx.date }}: {{ xx.name }}</td>
	<td>
		<table class="inner">
			{% if xx.worksheet %}
		  <tr>
			    <td><a href="{{ data.home }}/{{ xx.worksheet }}">worksheet</a></td>
			</tr>
			{% endif %}
			{% if xx.extworksheet %}
		  <tr>
			    <td><a href="{{ xx.extworksheet }}">worksheet</a></td>
			</tr>
			{% endif %}
			{% if xx.solutions %}
			<tr>
			    <td><a href="{{ data.home }}/{{ xx.solutions }}">solutions</a></td>
			</tr>
			{% endif %}
			{% if xx.extsolutions %}
		  <tr>
			    <td><a href="{{ xx.extsolutions }}">solutions</a></td>
			</tr>
			{% endif %}
			{% if xx.py %}
		  <tr>
			    <td><a href="{{ data.home }}/{{ xx.py }}">Python code</a></td>
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
			{% if xx.extmfile %}
		  <tr>
			    <td><a href="{{ xx.extmfile }}">Matlab code</a></td>
			</tr>
			{% endif %}
			{% if xx.extimage %}
		  <tr>
			    <td><a href="{{ xx.extimage }}">output image</a></td>
			</tr>
			{% endif %}
		</table>
		<div style="padding-bottom: 10px"></div>
	</td>
</tr>
{% endfor %}
</table>
