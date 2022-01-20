{% assign data = include.data %}
<table class="asst-table">
{% for quiz in data.quizzes %}
<tr>
	<td>{{ quiz.name }}</td>
	<td>Th {{ quiz.date }}</td>
	<td>sections: {{ quiz.sections }}</td>
	<td> 
		<table class="inner">
		  {% if quiz.blank %}
		  <tr>
			    <td><a href="{{ data.home }}/{{ quiz.blank }}">blank</a></td>
			</tr>
		  {% endif %}
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
