{% assign data = include.data %}
<table class="asst-table">
{% for quiz in data.quizzes %}
<tr>
  <td>
		<table class="inner">
		  <tr>
			    <td>{{ quiz.name }} {% if quiz.date %} &nbsp; &nbsp; Th {{ quiz.date }} {% endif %}</td>
			</tr>
			<tr>
			    <td>sections: {{ quiz.sections }}</td>
			</tr>
		</table>
	</td>
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
	</td>
</tr>
{% endfor %}
</table>
