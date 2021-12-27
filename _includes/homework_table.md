{% assign data = include.data %}
<table class="asst-table">
{% for homework in data.homework %}
<tr>
  <td><b>{{ homework.name }}</b></td>
  <td>
    <table class="inner">
    {% for section in homework.sections %}
      <tr>
        <td><em>&#167;{{ section.section }}, pp {{ section.pages }}:</em> &nbsp; # {{ section.problems }}</td>
      </tr>
      {% if section.cont %}
        <tr>
          <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; {{ section.cont }}</td>
        </tr>
      {% endif %}
    {% endfor %}
    </table>
  </td>
</tr>
{% endfor %}
</table>
