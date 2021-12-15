{% assign data = include.data %}
<table class="asst-table">
{% for homework in data.homework %}
<tr>
  <td>{{ homework.name }}</td>
  <td> 
    <table class="inner">
    {% for section in homework.sections %}
      <tr>
        <td><em>pages {{ section.pages }}:</em> # {{ section.problems }}</td>
      </tr>
    {% endfor %}
    </table>
  </td>
</tr>
{% endfor %}
</table>
