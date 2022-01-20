{% assign data = include.data %}
<table class="asst-table">
{% for quiz in data.quizzes %}
<tr>
	<td>{{ quiz.name }}</td>
	<td> 
		<table class="inner">
		  <tr>
			    <td><a href="{{ quiz.url }}">blank</a></td>
			</tr>
			{% if quiz.solutions %}
			<tr>
			    <td><a href="{{ data.home }}/{{ quiz.solutions }}">solutions</a></td>
			</tr>
			{% endif %}
		</table>
		<div style="padding-bottom: 10px"></div>
	</td>
</tr>
{% endfor %}
</table>
