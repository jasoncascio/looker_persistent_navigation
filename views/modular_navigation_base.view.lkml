view: modular_navigation_base {
  extension: required

  ########################################
  ###### Fields *requiring override* in extension
  ########################################

  dimension: dashBindings {
    hidden: yes
    type: string
    sql: '131|Dashboard 1||132|Dashboard 2' ;;
  }

  dimension: filterBindings {
    hidden: yes
    type: string
    sql: 'filter1|Filter 1 Name||filter2|Filter 2 Name' ;;
  }


  ########################################
  ###### Fields *optionally overriden* in extension
  ########################################

  dimension: itemDelimiter {
    hidden: yes
    type: string
    sql: '||' ;;
  }

  dimension: valueDelimiter {
    hidden: yes
    type: string
    sql: '|' ;;
  }


  # ** override hidden and label in extension as required **
  # ** Add more as required, currently supports 10 filters **
  filter: filter1 { hidden: yes label: "filter1" }
  filter: filter2 { hidden: yes label: "filter2" }
  filter: filter3 { hidden: yes label: "filter3" }
  filter: filter4 { hidden: yes label: "filter4" }
  filter: filter5 { hidden: yes label: "filter5" }
  filter: filter6 { hidden: yes label: "filter6" }
  filter: filter7 { hidden: yes label: "filter7" }
  filter: filter8 { hidden: yes label: "filter8" }
  filter: filter9 { hidden: yes label: "filter9" }
  filter: filter10 { hidden: yes label: "filter10" }


  ########################################
  ###### Navbar definition
  ########################################

  dimension: liquid_navigation_bar {
    type: string
    sql: '' ;;
    html:
      <!-- initial splits -->
      {% assign navItems = dashBindings._value | split: itemDelimiter._value %}
      {% assign filterItems = filterBindings._value | split: itemDelimiter._value %}

      <!-- initialize queryString -->
      {% assign queryString = "" %}

      <!-- loop through filterItems -->
      {% for filterItem in filterItems %}
      <!-- split filter into parts -->
        {% assign filterParts = filterItem | split: valueDelimiter._value %}
        {% assign filterField = filterParts[0] %} <!-- for readability -->
        {% assign filterName = filterParts[1] %} <!-- for readability -->

        <!-- case on filter, because we can't mix value interpolation into logic evaluation -->
        <!-- for example, this will not work: {% assign filterValue = _filters['{{ filter }}'] %} -->
        <!-- can't use capture as its not supported in liquid in Looker https://shopify.github.io/liquid/tags/variable/#capture -->
        <!-- ** Add more cases for more filters ** -->
        {% case filterField %}
          {% when "filter1" %}
            {% assign filterValue = _filters['filter1'] %}
          {% when "filter2" %}
            {% assign filterValue = _filters['filter2'] %}
          {% when "filter3" %}
            {% assign filterValue = _filters['filter3'] %}
          {% when "filter4" %}
            {% assign filterValue = _filters['filter4'] %}
          {% when "filter5" %}
            {% assign filterValue = _filters['filter5'] %}
          {% when "filter6" %}
            {% assign filterValue = _filters['filter6'] %}
          {% when "filter7" %}
            {% assign filterValue = _filters['filter7'] %}
          {% when "filter8" %}
            {% assign filterValue = _filters['filter8'] %}
          {% when "filter9" %}
            {% assign filterValue = _filters['filter9'] %}
          {% when "filter10" %}
            {% assign filterValue = _filters['filter10'] %}
          {% else %}
            {% assign filterValue = "out of range filter" %}
        <!-- if you see this value, you've added more filters than supported in filterBindings -->
        {% endcase %}

        <!-- create individual filterString -->
        {% assign filterString = filterName | append: "=" | append: filterValue %}

        <!-- tack individual filterString onto end of queryString -->
        {% assign queryString = queryString | append: filterString | append: '&' %}
      {% endfor %}

      <!-- begin HTML - probably want to edit styles as needed -->
      <!-- note: it may be worth making styles part of the dimensional configuration -->
      <center>
        <div style="border-radius: 5px; padding: 5px 10px; height: 60px; background: #F5F5F5;">
          <span style="font-size: 18px; display: table; margin:0 auto;">
            <img style="float: left; height: 40px;" src="https://www.google.com/images/branding/googlelogo/1x/googlelogo_color_272x92dp.png"/>

            <!-- Liquid Loop -->
            {% for navItem in navItems %}

              {% assign navParts = navItem | split: valueDelimiter._value %}
              {% assign dashName = navParts[1] %}
              {% assign dashUrl = "/dashboards/" | append: navParts[0] %}

              <!-- establish link style -->
              {% assign linkStyle = "color: #0059D6; padding: 5px 15px; float: left; line-height: 40px;" %}
              {% assign currentPageLinkStyle = linkStyle | append: "font-weight:bold;" %}

              <!-- build links -->
              {% if _explore._dashboard_url == dashUrl %}
                <span style="{{ currentPageLinkStyle }}">{{ dashName }}</span>
              {% else %}
                <a style="{{ linkStyle }}" href="{{ dashUrl }}?{{ queryString }}">{{ dashName }}</a>
              {% endif %}

            {% endfor %}

          </span>
        </div>


        <!-- NOTE: There's a bug in _explore._dashboard_url liquid implementation https://buganizer.corp.google.com/issues/281606368 -->
        <div>
          <span style="font-size: 10px;">{{ _explore._dashboard_url }} - clear cache & refresh (bug 281606368)</span>
        </div>

      </center>
      ;;
  }

}
