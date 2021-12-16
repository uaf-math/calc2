{% assign data = include.data %}
<table class="asst-table">
{% for homework in data.homework %}
<tr>
  <td><b>{{ homework.name }}</b></td>
  <td> 
    <table class="inner">
    {% for section in homework.sections %}
      <tr>
        <td><em>&#167;{{ section.section }}, pages {{ section.pages }}:</em>&nbsp; &nbsp; # {{ section.problems }}</td>
      </tr>
    {% endfor %}
    </table>
  </td>
</tr>
{% endfor %}
</table>
