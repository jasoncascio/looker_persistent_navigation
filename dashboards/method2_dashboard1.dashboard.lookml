- dashboard: persistent_navigation_method_2_dashboard_1
  title: Persistent Navigation Method 2, Dashboard 1
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: sxwJiAlpq6F1OtQIJpgEy6
  elements:
  - title: Basic Navigation Bar
    name: Basic Navigation Bar
    model: jc_persistent_navbar
    explore: flags2
    type: single_value
    fields: [navigation.basic_navigation_bar]
    sorts: [navigation.basic_navigation_bar]
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    defaults_version: 1
    series_types: {}
    listen:
      Continent: navigation.continent
      Country Name: navigation.country_name
    row: 0
    col: 4
    width: 17
    height: 2
  - title: Continents
    name: Continents
    model: jc_persistent_navbar
    explore: flags2
    type: single_value
    fields: [country_reference.distinct_continents]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    series_types: {}
    listen:
      Continent: country_reference.continent
      Country Name: country_reference.country_name
    row: 2
    col: 4
    width: 3
    height: 4
  - title: Countries
    name: Countries
    model: jc_persistent_navbar
    explore: flags2
    type: single_value
    fields: [country_reference.count]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    series_types: {}
    hidden_pivots: {}
    listen:
      Continent: country_reference.continent
      Country Name: country_reference.country_name
    row: 6
    col: 4
    width: 3
    height: 4
  - title: Country List
    name: Country List
    model: jc_persistent_navbar
    explore: flags2
    type: looker_grid
    fields: [country_reference.country_name, country_reference.continent, country_reference.small_country_flag,
      country_reference.iso2, country_reference.iso3, country_reference.small_country_flag_liquid]
    sorts: [country_reference.country_name]
    limit: 500
    column_limit: 50
    show_view_names: true
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_pivots: {}
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    defaults_version: 1
    series_types: {}
    listen:
      Continent: country_reference.continent
      Country Name: country_reference.country_name
    row: 2
    col: 7
    width: 14
    height: 8
  - title: Map
    name: Map
    model: jc_persistent_navbar
    explore: flags2
    type: looker_google_map
    fields: [country_reference.iso2, country_reference.small_country_flag_liquid]
    limit: 500
    column_limit: 50
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: true
    hidden_pivots: {}
    defaults_version: 0
    series_types: {}
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    title_hidden: true
    listen:
      Continent: country_reference.continent
      Country Name: country_reference.country_name
    row: 10
    col: 4
    width: 17
    height: 6
  - title: Liquid Navigation Bar
    name: Liquid Navigation Bar
    model: jc_persistent_navbar
    explore: flags2
    type: single_value
    fields: [navigation.liquid_navigation_bar]
    sorts: [navigation.liquid_navigation_bar]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    defaults_version: 1
    listen:
      Continent: navigation.continent
      Country Name: navigation.country_name
    row: 16
    col: 4
    width: 17
    height: 3
  filters:
  - name: Continent
    title: Continent
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: popover
    model: jc_persistent_navbar
    explore: flags2
    listens_to_filters: [Country Name]
    field: country_reference.continent
  - name: Country Name
    title: Country Name
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: jc_persistent_navbar
    explore: flags2
    listens_to_filters: [Continent]
    field: country_reference.country_name
