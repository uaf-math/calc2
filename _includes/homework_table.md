{% assign data = include.data %}
<table class="asst-table">
{% for homework in data.homework %}
<tr>
  <td><b>{{ homework.name }}</b>
    <table class="inner">
    {% for section in homework.sections %}
      <tr>
        <td><em>&#167;{{ section.section }}:</em> &nbsp; # {{ section.problems }}</td>
      </tr>
      {% if section.cont %}
        <tr>
          <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; {{ section.cont }}</td>
        </tr>
      {% endif %}
      {% if section.supp %}
        <tr>
          <td>see <a href="{{ data.home }}/{{ section.supp }}">special instructions (PDF)</a></td>
        </tr>
      {% endif %}
    {% endfor %}
    </table>
  </td>
</tr>
{% endfor %}
</table>
