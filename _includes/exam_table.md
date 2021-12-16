{% assign data = include.data %}
<table class="asst-table">
{% for exam in data.exams %}
<tr>
	<td>{{ exam.name }}</td>
	<td> 
		<table class="inner">
		  <tr>
			    <td><a href="{{ data.home }}/{{ exam.blank }}">blank</a></td>
			</tr>
			<tr>
			    <td><a href="{{ data.home }}/{{ exam.solutions }}">solutions</a></td>
			</tr>
		</table>
		<div style="padding-bottom: 10px"></div>
	</td>
</tr>
{% endfor %}
</table>
