connection: "looker-private-demo"

label: "JC Persistent Navbar Example"

include: "/views/*.view.lkml"                # include all views in the views/ folder in this project
include: "/dashboards/*"

#########################################################
# Method 1: Add navigation to a view. This can be done directly in the view
#   in this case I'm using a refinement which achieves the same
#   https://cloud.google.com/looker/docs/lookml-refinements
#   see Persistent Navigation Method 1, Dashboard 1 https://cloudcenorthamnewyork.cloud.looker.com/dashboards/140?Continent=&Country+Name=
#########################################################

view: +country_reference {

  dimension: basic_navigation_bar {
    group_label: "Navigation"
    type: string
    sql: '' ;;
    html:
      <center>
        <div style="border-radius: 5px; padding: 5px 10px; height: 60px; background: #FFFFFF;">
            <span style="font-size: 18px; display: table; margin:0 auto;">
              <img style="float: left; height: 40px;" src="https://www.google.com/images/branding/googlelogo/1x/googlelogo_color_272x92dp.png"/>
              <a style="color: #0059D6; padding: 5px 15px; float: left; line-height: 40px;" href="/dashboards-next/140?Continent={{ _filters['continent'] }}&Country+Name={{ _filters['country_name'] }}">Persistent Navigation Method 1, Dashboard 1</a>
              <a style="color: #0059D6; padding: 5px 15px; float: left; line-height: 40px;" href="/dashboards-next/141?Continent={{ _filters['continent'] }}&Country+Name={{ _filters['country_name'] }}">Persistent Navigation Method 1, Dashboard 2</a>
            </span>
        </div>
      </center>
    ;;
  }

  # Fancier example using liquid: https://shopify.github.io/liquid/
  # Looker liquid reference: https://cloud.google.com/looker/docs/liquid-variable-reference
  dimension: liquid_navigation_bar {
    group_label: "Navigation"
    type: string
    sql: '' ;;
    html:
      <!-- nav setup -->
      {% assign navString = "140|Persistent Navigation Method 1, Dashboard 1||141|Persistent Navigation Method 1, Dashboard 2" %}
      {% assign navItems = navString | split: "||" %}

      <!-- NOTE: There's a bug in _explore._dashboard_url liquid implementation https://buganizer.corp.google.com/issues/281606368 -->

      <center>
        <div style="border-radius: 5px; padding: 5px 10px; height: 60px; background: #FFFFFF;">
          <span style="font-size: 18px; display: table; margin:0 auto;">
            <img style="float: left; height: 40px;" src="https://www.google.com/images/branding/googlelogo/1x/googlelogo_color_272x92dp.png"/>

            <!-- Liquid Loop -->
            {% for navItem in navItems %}

              {% assign navParts = navItem | split: "|" %}
              {% assign dashName = navParts[1] %}
              {% assign dashUrl = "/dashboards/" | append: navParts[0] %}

              <!-- establish link style -->
              {% assign linkStyle = "color: #0059D6; padding: 5px 15px; float: left; line-height: 40px;" %}

              <!-- build links -->
              {% if _explore._dashboard_url == dashUrl %}
                <span style="{{ linkStyle }} font-weight:bold;">{{ dashName }}</span>
              {% else %}
                <a style="{{ linkStyle }}" href="{{ dashUrl }}?Continent={{ _filters['continent'] }}&Country+Name={{ _filters['country_name'] }}">{{ dashName }}</a>
              {% endif %}

            {% endfor %}

          </span>
        </div>
        <div>
          <span style="font-size: 10px;">{{ _explore._dashboard_url }} - clear cache & refresh (bug 281606368)</span>
        </div>
      </center>
      ;;
  }

}

explore: flags1 {
  label: "Persistent Navigation Method 1"
  view_name: country_reference
}





#########################################################
# Method 2: Join navigation view - could help with portability
# be sure to send values down to the proper view!
#########################################################

view: navigation {derived_table: {sql: select NULL AS nothing;;}

  # "variables" to send values to, because of bare join
  # hide these once dash is built
  filter: continent { hidden: no }
  filter: country_name { hidden: no }

  dimension: basic_navigation_bar {
    type: string
    sql: '' ;;
    html:
      <center>
        <div style="border-radius: 5px; padding: 5px 10px; height: 60px; background: #FFFFFF;">
            <span style="font-size: 18px; display: table; margin:0 auto;">
              <img style="float: left; height: 40px;" src="https://www.google.com/images/branding/googlelogo/1x/googlelogo_color_272x92dp.png"/>
              <a style="color: #0059D6; padding: 5px 15px; float: left; line-height: 40px;" href="/dashboards-next/142?Continent={{ _filters['continent'] }}&Country+Name={{ _filters['country_name'] }}">Persistent Navigation Method 2, Dashboard 1</a>
              <a style="color: #0059D6; padding: 5px 15px; float: left; line-height: 40px;" href="/dashboards-next/143?Continent={{ _filters['continent'] }}&Country+Name={{ _filters['country_name'] }}">Persistent Navigation Method 2, Dashboard 2</a>
            </span>
        </div>
      </center>
    ;;
  }


  # Fancier example using liquid: https://shopify.github.io/liquid/
  # Looker liquid reference: https://cloud.google.com/looker/docs/liquid-variable-reference
  dimension: liquid_navigation_bar {
    type: string
    sql: '' ;;
    html:
      <!-- nav setup -->
      {% assign navString = "142|Persistent Navigation Method 2, Dashboard 1||143|Persistent Navigation Method 2, Dashboard 1" %}
      {% assign navItems = navString | split: "||" %}

      <!-- NOTE: There's a bug in _explore._dashboard_url liquid implementation https://buganizer.corp.google.com/issues/281606368 -->

      <center>
        <div style="border-radius: 5px; padding: 5px 10px; height: 60px; background: #FFFFFF;">
            <span style="font-size: 18px; display: table; margin:0 auto;">
              <img style="float: left; height: 40px;" src="https://www.google.com/images/branding/googlelogo/1x/googlelogo_color_272x92dp.png"/>

              <!-- Liquid Loop -->
              {% for navItem in navItems %}

                {% assign navParts = navItem | split: "|" %}
                {% assign dashName = navParts[1] %}
                {% assign dashUrl = "/dashboards/" | append: navParts[0] %}

                <!-- establish link style -->
                {% assign linkStyle = "color: #0059D6; padding: 5px 15px; float: left; line-height: 40px;" %}

                <!-- build links -->
                {% if _explore._dashboard_url == dashUrl %}
                  <span style="{{ linkStyle }} font-weight:bold;">{{ dashName }}</span>
                {% else %}
                  <a style="{{ linkStyle }}" href="{{ dashUrl }}?Continent={{ _filters['continent'] }}&Country+Name={{ _filters['country_name'] }}">{{ dashName }}</a>
                {% endif %}

              {% endfor %}

            </span>
        </div>
        <div>
          <span style="font-size: 10px;">{{ _explore._dashboard_url }} - clear cache & refresh (bug 281606368)</span>
        </div>
      </center>
    ;;
  }

}



explore: flags2 {
  label: "Persistent Navigation Method 2"
  view_name: country_reference

  join: navigation {}
}
