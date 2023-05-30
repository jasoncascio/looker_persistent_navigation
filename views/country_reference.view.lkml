view: country_reference {
  derived_table: {
    sql:
      WITH countries AS (
        SELECT 'country_name' AS country_name, 'iso2' AS iso2, 'iso3' AS iso3, 9999 AS code, 'continent' AS continent
        UNION ALL SELECT 'Afghanistan', 'AF', 'AFG', 4, 'Asia'
        UNION ALL SELECT 'Albania', 'AL', 'ALB', 8, 'Europe'
        UNION ALL SELECT 'Algeria', 'DZ', 'DZA', 12, 'Africa'
        UNION ALL SELECT 'American Samoa', 'AS', 'ASM', 16, 'Oceania'
        UNION ALL SELECT 'Andorra', 'AD', 'AND', 20, 'Europe'
        UNION ALL SELECT 'Angola', 'AO', 'AGO', 24, 'Africa'
        UNION ALL SELECT 'Anguilla', 'AI', 'AIA', 660, 'North America'
        UNION ALL SELECT 'Antarctica', 'AQ', 'ATA', 10, 'South America'
        UNION ALL SELECT 'Antigua and Barbuda', 'AG', 'ATG', 28, 'North America'
        UNION ALL SELECT 'Argentina', 'AR', 'ARG', 32, 'South America'
        UNION ALL SELECT 'Armenia', 'AM', 'ARM', 51, 'Asia'
        UNION ALL SELECT 'Aruba', 'AW', 'ABW', 533, 'South America'
        UNION ALL SELECT 'Australia', 'AU', 'AUS', 36, 'Oceania'
        UNION ALL SELECT 'Austria', 'AT', 'AUT', 40, 'Europe'
        UNION ALL SELECT 'Azerbaijan', 'AZ', 'AZE', 31, 'Asia'
        UNION ALL SELECT 'Bahamas (the)', 'BS', 'BHS', 44, 'North America'
        UNION ALL SELECT 'Bahrain', 'BH', 'BHR', 48, 'Asia'
        UNION ALL SELECT 'Bangladesh', 'BD', 'BGD', 50, 'Asia'
        UNION ALL SELECT 'Barbados', 'BB', 'BRB', 52, 'North America'
        UNION ALL SELECT 'Belarus', 'BY', 'BLR', 112, 'Europe'
        UNION ALL SELECT 'Belgium', 'BE', 'BEL', 56, 'Europe'
        UNION ALL SELECT 'Belize', 'BZ', 'BLZ', 84, 'North America'
        UNION ALL SELECT 'Benin', 'BJ', 'BEN', 204, 'Africa'
        UNION ALL SELECT 'Bermuda', 'BM', 'BMU', 60, 'North America'
        UNION ALL SELECT 'Bhutan', 'BT', 'BTN', 64, 'Asia'
        UNION ALL SELECT 'Bolivia (Plurinational State of)', 'BO', 'BOL', 68, 'South America'
        UNION ALL SELECT 'Bonaire, Sint Eustatius and Saba', 'BQ', 'BES', 535, 'South America'
        UNION ALL SELECT 'Bosnia and Herzegovina', 'BA', 'BIH', 70, 'Europe'
        UNION ALL SELECT 'Botswana', 'BW', 'BWA', 72, 'Africa'
        UNION ALL SELECT 'Bouvet Island', 'BV', 'BVT', 74, 'Africa'
        UNION ALL SELECT 'Brazil', 'BR', 'BRA', 76, 'South America'
        UNION ALL SELECT 'British Indian Ocean Territory (the)', 'IO', 'IOT', 86, 'Asia'
        UNION ALL SELECT 'Brunei Darussalam', 'BN', 'BRN', 96, 'Asia'
        UNION ALL SELECT 'Bulgaria', 'BG', 'BGR', 100, 'Europe'
        UNION ALL SELECT 'Burkina Faso', 'BF', 'BFA', 854, 'Africa'
        UNION ALL SELECT 'Burundi', 'BI', 'BDI', 108, 'Africa'
        UNION ALL SELECT 'Cabo Verde', 'CV', 'CPV', 132, 'Africa'
        UNION ALL SELECT 'Cambodia', 'KH', 'KHM', 116, 'Asia'
        UNION ALL SELECT 'Cameroon', 'CM', 'CMR', 120, 'Africa'
        UNION ALL SELECT 'Canada', 'CA', 'CAN', 124, 'North America'
        UNION ALL SELECT 'Cayman Islands (the)', 'KY', 'CYM', 136, 'North America'
        UNION ALL SELECT 'Central African Republic (the)', 'CF', 'CAF', 140, 'Africa'
        UNION ALL SELECT 'Chad', 'TD', 'TCD', 148, 'Africa'
        UNION ALL SELECT 'Chile', 'CL', 'CHL', 152, 'South America'
        UNION ALL SELECT 'China', 'CN', 'CHN', 156, 'Asia'
        UNION ALL SELECT 'Christmas Island', 'CX', 'CXR', 162, 'Asia'
        UNION ALL SELECT 'Cocos (Keeling) Islands (the)', 'CC', 'CCK', 166, 'Asia'
        UNION ALL SELECT 'Colombia', 'CO', 'COL', 170, 'South America'
        UNION ALL SELECT 'Comoros (the)', 'KM', 'COM', 174, 'Africa'
        UNION ALL SELECT 'Congo (the Democratic Republic of the)', 'CD', 'COD', 180, 'Africa'
        UNION ALL SELECT 'Congo (the)', 'CG', 'COG', 178, 'Africa'
        UNION ALL SELECT 'Cook Islands (the)', 'CK', 'COK', 184, 'Oceania'
        UNION ALL SELECT 'Costa Rica', 'CR', 'CRI', 188, 'North America'
        UNION ALL SELECT 'Croatia', 'HR', 'HRV', 191, 'Europe'
        UNION ALL SELECT 'Cuba', 'CU', 'CUB', 192, 'North America'
        UNION ALL SELECT 'Curaçao', 'CW', 'CUW', 531, 'South America'
        UNION ALL SELECT 'Cyprus', 'CY', 'CYP', 196, 'Europe'
        UNION ALL SELECT 'Czechia', 'CZ', 'CZE', 203, 'Europe'
        UNION ALL SELECT 'Côte d\'Ivoire', 'CI', 'CIV', 384, 'Africa'
        UNION ALL SELECT 'Denmark', 'DK', 'DNK', 208, 'Europe'
        UNION ALL SELECT 'Djibouti', 'DJ', 'DJI', 262, 'Africa'
        UNION ALL SELECT 'Dominica', 'DM', 'DMA', 212, 'North America'
        UNION ALL SELECT 'Dominican Republic (the)', 'DO', 'DOM', 214, 'North America'
        UNION ALL SELECT 'Ecuador', 'EC', 'ECU', 218, 'South America'
        UNION ALL SELECT 'Egypt', 'EG', 'EGY', 818, 'Africa'
        UNION ALL SELECT 'El Salvador', 'SV', 'SLV', 222, 'North America'
        UNION ALL SELECT 'Equatorial Guinea', 'GQ', 'GNQ', 226, 'Africa'
        UNION ALL SELECT 'Eritrea', 'ER', 'ERI', 232, 'Africa'
        UNION ALL SELECT 'Estonia', 'EE', 'EST', 233, 'Europe'
        UNION ALL SELECT 'Eswatini', 'SZ', 'SWZ', 748, 'Africa'
        UNION ALL SELECT 'Ethiopia', 'ET', 'ETH', 231, 'Africa'
        UNION ALL SELECT 'Falkland Islands (the) [Malvinas]', 'FK', 'FLK', 238, 'South America'
        UNION ALL SELECT 'Faroe Islands (the)', 'FO', 'FRO', 234, 'Europe'
        UNION ALL SELECT 'Fiji', 'FJ', 'FJI', 242, 'Oceania'
        UNION ALL SELECT 'Finland', 'FI', 'FIN', 246, 'Europe'
        UNION ALL SELECT 'France', 'FR', 'FRA', 250, 'Europe'
        UNION ALL SELECT 'French Guiana', 'GF', 'GUF', 254, 'South America'
        UNION ALL SELECT 'French Polynesia', 'PF', 'PYF', 258, 'Oceania'
        UNION ALL SELECT 'French Southern Territories (the)', 'TF', 'ATF', 260, 'Antarctica'
        UNION ALL SELECT 'Gabon', 'GA', 'GAB', 266, 'Africa'
        UNION ALL SELECT 'Gambia (the)', 'GM', 'GMB', 270, 'Africa'
        UNION ALL SELECT 'Georgia', 'GE', 'GEO', 268, 'Asia'
        UNION ALL SELECT 'Germany', 'DE', 'DEU', 276, 'Europe'
        UNION ALL SELECT 'Ghana', 'GH', 'GHA', 288, 'Africa'
        UNION ALL SELECT 'Gibraltar', 'GI', 'GIB', 292, 'Europe'
        UNION ALL SELECT 'Greece', 'GR', 'GRC', 300, 'Europe'
        UNION ALL SELECT 'Greenland', 'GL', 'GRL', 304, 'North America'
        UNION ALL SELECT 'Grenada', 'GD', 'GRD', 308, 'North America'
        UNION ALL SELECT 'Guadeloupe', 'GP', 'GLP', 312, 'North America'
        UNION ALL SELECT 'Guam', 'GU', 'GUM', 316, 'Oceania'
        UNION ALL SELECT 'Guatemala', 'GT', 'GTM', 320, 'North America'
        UNION ALL SELECT 'Guernsey', 'GG', 'GGY', 831, 'Europe'
        UNION ALL SELECT 'Guinea', 'GN', 'GIN', 324, 'Africa'
        UNION ALL SELECT 'Guinea-Bissau', 'GW', 'GNB', 624, 'Africa'
        UNION ALL SELECT 'Guyana', 'GY', 'GUY', 328, 'South America'
        UNION ALL SELECT 'Haiti', 'HT', 'HTI', 332, 'North America'
        UNION ALL SELECT 'Heard Island and McDonald Islands', 'HM', 'HMD', 334, 'Oceania'
        UNION ALL SELECT 'Holy See (the)', 'VA', 'VAT', 336, 'Europe'
        UNION ALL SELECT 'Honduras', 'HN', 'HND', 340, 'North America'
        UNION ALL SELECT 'Hong Kong', 'HK', 'HKG', 344, 'Asia'
        UNION ALL SELECT 'Hungary', 'HU', 'HUN', 348, 'Europe'
        UNION ALL SELECT 'Iceland', 'IS', 'ISL', 352, 'Europe'
        UNION ALL SELECT 'India', 'IN', 'IND', 356, 'Asia'
        UNION ALL SELECT 'Indonesia', 'ID', 'IDN', 360, 'Asia'
        UNION ALL SELECT 'Iran (Islamic Republic of)', 'IR', 'IRN', 364, 'Asia'
        UNION ALL SELECT 'Iraq', 'IQ', 'IRQ', 368, 'Asia'
        UNION ALL SELECT 'Ireland', 'IE', 'IRL', 372, 'Europe'
        UNION ALL SELECT 'Isle of Man', 'IM', 'IMN', 833, 'Europe'
        UNION ALL SELECT 'Israel', 'IL', 'ISR', 376, 'Asia'
        UNION ALL SELECT 'Italy', 'IT', 'ITA', 380, 'Europe'
        UNION ALL SELECT 'Jamaica', 'JM', 'JAM', 388, 'North America'
        UNION ALL SELECT 'Japan', 'JP', 'JPN', 392, 'Asia'
        UNION ALL SELECT 'Jersey', 'JE', 'JEY', 832, 'Europe'
        UNION ALL SELECT 'Jordan', 'JO', 'JOR', 400, 'Asia'
        UNION ALL SELECT 'Kazakhstan', 'KZ', 'KAZ', 398, 'Asia'
        UNION ALL SELECT 'Kenya', 'KE', 'KEN', 404, 'Africa'
        UNION ALL SELECT 'Kiribati', 'KI', 'KIR', 296, 'Oceania'
        UNION ALL SELECT 'Korea (the Democratic People\'s Republic of)', 'KP', 'PRK', 408, 'Asia'
        UNION ALL SELECT 'Korea (the Republic of)', 'KR', 'KOR', 410, 'Asia'
        UNION ALL SELECT 'Kuwait', 'KW', 'KWT', 414, 'Asia'
        UNION ALL SELECT 'Kyrgyzstan', 'KG', 'KGZ', 417, 'Asia'
        UNION ALL SELECT 'Lao People\'s Democratic Republic (the)', 'LA', 'LAO', 418, 'Asia'
        UNION ALL SELECT 'Latvia', 'LV', 'LVA', 428, 'Europe'
        UNION ALL SELECT 'Lebanon', 'LB', 'LBN', 422, 'Asia'
        UNION ALL SELECT 'Lesotho', 'LS', 'LSO', 426, 'Africa'
        UNION ALL SELECT 'Liberia', 'LR', 'LBR', 430, 'Africa'
        UNION ALL SELECT 'Libya', 'LY', 'LBY', 434, 'Africa'
        UNION ALL SELECT 'Liechtenstein', 'LI', 'LIE', 438, 'Europe'
        UNION ALL SELECT 'Lithuania', 'LT', 'LTU', 440, 'Europe'
        UNION ALL SELECT 'Luxembourg', 'LU', 'LUX', 442, 'Europe'
        UNION ALL SELECT 'Macao', 'MO', 'MAC', 446, 'Asia'
        UNION ALL SELECT 'Madagascar', 'MG', 'MDG', 450, 'Africa'
        UNION ALL SELECT 'Malawi', 'MW', 'MWI', 454, 'Africa'
        UNION ALL SELECT 'Malaysia', 'MY', 'MYS', 458, 'Asia'
        UNION ALL SELECT 'Maldives', 'MV', 'MDV', 462, 'Asia'
        UNION ALL SELECT 'Mali', 'ML', 'MLI', 466, 'Africa'
        UNION ALL SELECT 'Malta', 'MT', 'MLT', 470, 'Europe'
        UNION ALL SELECT 'Marshall Islands (the)', 'MH', 'MHL', 584, 'Oceania'
        UNION ALL SELECT 'Martinique', 'MQ', 'MTQ', 474, 'North America'
        UNION ALL SELECT 'Mauritania', 'MR', 'MRT', 478, 'Africa'
        UNION ALL SELECT 'Mauritius', 'MU', 'MUS', 480, 'Africa'
        UNION ALL SELECT 'Mayotte', 'YT', 'MYT', 175, 'Africa'
        UNION ALL SELECT 'Mexico', 'MX', 'MEX', 484, 'North America'
        UNION ALL SELECT 'Micronesia (Federated States of)', 'FM', 'FSM', 583, 'Oceania'
        UNION ALL SELECT 'Moldova (the Republic of)', 'MD', 'MDA', 498, 'Europe'
        UNION ALL SELECT 'Monaco', 'MC', 'MCO', 492, 'Europe'
        UNION ALL SELECT 'Mongolia', 'MN', 'MNG', 496, 'Asia'
        UNION ALL SELECT 'Montenegro', 'ME', 'MNE', 499, 'Europe'
        UNION ALL SELECT 'Montserrat', 'MS', 'MSR', 500, 'Europe'
        UNION ALL SELECT 'Morocco', 'MA', 'MAR', 504, 'Africa'
        UNION ALL SELECT 'Mozambique', 'MZ', 'MOZ', 508, 'Africa'
        UNION ALL SELECT 'Myanmar', 'MM', 'MMR', 104, 'Asia'
        UNION ALL SELECT 'Namibia', 'NA', 'NAM', 516, 'Africa'
        UNION ALL SELECT 'Nauru', 'NR', 'NRU', 520, 'Oceania'
        UNION ALL SELECT 'Nepal', 'NP', 'NPL', 524, 'Asia'
        UNION ALL SELECT 'Netherlands (the)', 'NL', 'NLD', 528, 'Europe'
        UNION ALL SELECT 'New Caledonia', 'NC', 'NCL', 540, 'Oceania'
        UNION ALL SELECT 'New Zealand', 'NZ', 'NZL', 554, 'Oceania'
        UNION ALL SELECT 'Nicaragua', 'NI', 'NIC', 558, 'North America'
        UNION ALL SELECT 'Niger (the)', 'NE', 'NER', 562, 'Africa'
        UNION ALL SELECT 'Nigeria', 'NG', 'NGA', 566, 'Africa'
        UNION ALL SELECT 'Niue', 'NU', 'NIU', 570, 'Oceania'
        UNION ALL SELECT 'Norfolk Island', 'NF', 'NFK', 574, 'Oceania'
        UNION ALL SELECT 'Northern Mariana Islands (the)', 'MP', 'MNP', 580, 'Oceania'
        UNION ALL SELECT 'Norway', 'NO', 'NOR', 578, 'Europe'
        UNION ALL SELECT 'Oman', 'OM', 'OMN', 512, 'Asia'
        UNION ALL SELECT 'Pakistan', 'PK', 'PAK', 586, 'Asia'
        UNION ALL SELECT 'Palau', 'PW', 'PLW', 585, 'Oceania'
        UNION ALL SELECT 'Palestine, State of', 'PS', 'PSE', 275, 'Asia'
        UNION ALL SELECT 'Panama', 'PA', 'PAN', 591, 'North America'
        UNION ALL SELECT 'Papua New Guinea', 'PG', 'PNG', 598, 'Oceania'
        UNION ALL SELECT 'Paraguay', 'PY', 'PRY', 600, 'South America'
        UNION ALL SELECT 'Peru', 'PE', 'PER', 604, 'South America'
        UNION ALL SELECT 'Philippines (the)', 'PH', 'PHL', 608, 'Asia'
        UNION ALL SELECT 'Pitcairn', 'PN', 'PCN', 612, 'Oceania'
        UNION ALL SELECT 'Poland', 'PL', 'POL', 616, 'Europe'
        UNION ALL SELECT 'Portugal', 'PT', 'PRT', 620, 'Europe'
        UNION ALL SELECT 'Puerto Rico', 'PR', 'PRI', 630, 'North America'
        UNION ALL SELECT 'Qatar', 'QA', 'QAT', 634, 'Asia'
        UNION ALL SELECT 'Republic of North Macedonia', 'MK', 'MKD', 807, 'Europe'
        UNION ALL SELECT 'Romania', 'RO', 'ROU', 642, 'Europe'
        UNION ALL SELECT 'Russian Federation (the)', 'RU', 'RUS', 643, 'Asia'
        UNION ALL SELECT 'Rwanda', 'RW', 'RWA', 646, 'Africa'
        UNION ALL SELECT 'Réunion', 'RE', 'REU', 638, 'Africa'
        UNION ALL SELECT 'Saint Barthélemy', 'BL', 'BLM', 652, 'North America'
        UNION ALL SELECT 'Saint Helena, Ascension and Tristan da Cunha', 'SH', 'SHN', 654, 'Africa'
        UNION ALL SELECT 'Saint Kitts and Nevis', 'KN', 'KNA', 659, 'North America'
        UNION ALL SELECT 'Saint Lucia', 'LC', 'LCA', 662, 'North America'
        UNION ALL SELECT 'Saint Martin (French part)', 'MF', 'MAF', 663, 'North America'
        UNION ALL SELECT 'Saint Pierre and Miquelon', 'PM', 'SPM', 666, 'North America'
        UNION ALL SELECT 'Saint Vincent and the Grenadines', 'VC', 'VCT', 670, 'North America'
        UNION ALL SELECT 'Samoa', 'WS', 'WSM', 882, 'Oceania'
        UNION ALL SELECT 'San Marino', 'SM', 'SMR', 674, 'Europe'
        UNION ALL SELECT 'Sao Tome and Principe', 'ST', 'STP', 678, 'Africa'
        UNION ALL SELECT 'Saudi Arabia', 'SA', 'SAU', 682, 'Asia'
        UNION ALL SELECT 'Senegal', 'SN', 'SEN', 686, 'Africa'
        UNION ALL SELECT 'Serbia', 'RS', 'SRB', 688, 'Europe'
        UNION ALL SELECT 'Seychelles', 'SC', 'SYC', 690, 'Africa'
        UNION ALL SELECT 'Sierra Leone', 'SL', 'SLE', 694, 'Africa'
        UNION ALL SELECT 'Singapore', 'SG', 'SGP', 702, 'Asia'
        UNION ALL SELECT 'Sint Maarten (Dutch part)', 'SX', 'SXM', 534, 'North America'
        UNION ALL SELECT 'Slovakia', 'SK', 'SVK', 703, 'Europe'
        UNION ALL SELECT 'Slovenia', 'SI', 'SVN', 705, 'Europe'
        UNION ALL SELECT 'Solomon Islands', 'SB', 'SLB', 90, 'Oceania'
        UNION ALL SELECT 'Somalia', 'SO', 'SOM', 706, 'Africa'
        UNION ALL SELECT 'South Africa', 'ZA', 'ZAF', 710, 'Africa'
        UNION ALL SELECT 'South Georgia and the South Sandwich Islands', 'GS', 'SGS', 239, 'Antarctica'
        UNION ALL SELECT 'South Sudan', 'SS', 'SSD', 728, 'Africa'
        UNION ALL SELECT 'Spain', 'ES', 'ESP', 724, 'Europe'
        UNION ALL SELECT 'Sri Lanka', 'LK', 'LKA', 144, 'Asia'
        UNION ALL SELECT 'Sudan (the)', 'SD', 'SDN', 729, 'Africa'
        UNION ALL SELECT 'Suriname', 'SR', 'SUR', 740, 'South America'
        UNION ALL SELECT 'Svalbard and Jan Mayen', 'SJ', 'SJM', 744, 'Europe'
        UNION ALL SELECT 'Sweden', 'SE', 'SWE', 752, 'Europe'
        UNION ALL SELECT 'Switzerland', 'CH', 'CHE', 756, 'Europe'
        UNION ALL SELECT 'Syrian Arab Republic', 'SY', 'SYR', 760, 'Asia'
        UNION ALL SELECT 'Taiwan (Province of China)', 'TW', 'TWN', 158, 'Asia'
        UNION ALL SELECT 'Tajikistan', 'TJ', 'TJK', 762, 'Asia'
        UNION ALL SELECT 'Tanzania, United Republic of', 'TZ', 'TZA', 834, 'Africa'
        UNION ALL SELECT 'Thailand', 'TH', 'THA', 764, 'Asia'
        UNION ALL SELECT 'Timor-Leste', 'TL', 'TLS', 626, 'Asia'
        UNION ALL SELECT 'Togo', 'TG', 'TGO', 768, 'Africa'
        UNION ALL SELECT 'Tokelau', 'TK', 'TKL', 772, 'Oceania'
        UNION ALL SELECT 'Tonga', 'TO', 'TON', 776, 'Oceania'
        UNION ALL SELECT 'Trinidad and Tobago', 'TT', 'TTO', 780, 'South America'
        UNION ALL SELECT 'Tunisia', 'TN', 'TUN', 788, 'Africa'
        UNION ALL SELECT 'Turkey', 'TR', 'TUR', 792, 'Asia'
        UNION ALL SELECT 'Turkmenistan', 'TM', 'TKM', 795, 'Asia'
        UNION ALL SELECT 'Turks and Caicos Islands (the)', 'TC', 'TCA', 796, 'North America'
        UNION ALL SELECT 'Tuvalu', 'TV', 'TUV', 798, 'Oceania'
        UNION ALL SELECT 'Uganda', 'UG', 'UGA', 800, 'Africa'
        UNION ALL SELECT 'Ukraine', 'UA', 'UKR', 804, 'Europe'
        UNION ALL SELECT 'United Arab Emirates (the)', 'AE', 'ARE', 784, 'Asia'
        UNION ALL SELECT 'United Kingdom of Great Britain and Northern Ireland (the)', 'GB', 'GBR', 826, 'Europe'
        UNION ALL SELECT 'United States Minor Outlying Islands (the)', 'UM', 'UMI', 581, 'North America'
        UNION ALL SELECT 'United States of America (the)', 'US', 'USA', 840, 'North America'
        UNION ALL SELECT 'Uruguay', 'UY', 'URY', 858, 'South America'
        UNION ALL SELECT 'Uzbekistan', 'UZ', 'UZB', 860, 'Asia'
        UNION ALL SELECT 'Vanuatu', 'VU', 'VUT', 548, 'Oceania'
        UNION ALL SELECT 'Venezuela (Bolivarian Republic of)', 'VE', 'VEN', 862, 'South America'
        UNION ALL SELECT 'Viet Nam', 'VN', 'VNM', 704, 'Asia'
        UNION ALL SELECT 'Virgin Islands (British)', 'VG', 'VGB', 92, 'North America'
        UNION ALL SELECT 'Virgin Islands (U.S.)', 'VI', 'VIR', 850, 'North America'
        UNION ALL SELECT 'Wallis and Futuna', 'WF', 'WLF', 876, 'Oceania'
        UNION ALL SELECT 'Western Sahara', 'EH', 'ESH', 732, 'Africa'
        UNION ALL SELECT 'Yemen', 'YE', 'YEM', 887, 'Asia'
        UNION ALL SELECT 'Zambia', 'ZM', 'ZMB', 894, 'Africa'
        UNION ALL SELECT 'Zimbabwe', 'ZW', 'ZWE', 716, 'Africa'
        UNION ALL SELECT 'Åland Islands', 'AX', 'ALA', 248, 'Europe'
      )
      SELECT * FROM countries WHERE country_name <> 'country_name'
    ;;
    persist_for: "1000 hours"
  }

  dimension: country_name {
    group_label: "Identification"
    hidden: no
    type: string
    sql: ${TABLE}.country_name ;;
  }


  dimension: continent {
    group_label: "Identification"
    hidden: no
    type: string
    sql: ${TABLE}.continent ;;
  }

  dimension: iso2 {
    group_label: "Identification"
    hidden: no
    primary_key: yes
    type: string
    sql: ${TABLE}.iso2 ;;
    map_layer_name: countries
  }

  dimension: iso3 {
    group_label: "Identification"
    hidden: no
    type: string
    sql: ${TABLE}.iso3 ;;
    map_layer_name: countries
  }

  dimension: code {
    group_label: "Identification"
    hidden: no
    type: number
    sql: ${TABLE}.code ;;
  }


  ####### FLAG DIMENSIONS ######

  dimension: small_country_flag {
    group_label: "Country Flags"
    type: string
    sql: ${iso2} ;;
    html: <img @{SMALL_FLAG_STYLE} src="@{CF_MAP_URL_BASE}{{ value | downcase}}@{CF_MAP_URL_SUFFIX}"/> ;;
  }

  dimension: big_country_flag {
    group_label: "Country Flags"
    type: string
    sql: ${iso2} ;;
    html: <img @{BIG_FLAG_STYLE} src="@{CF_MAP_URL_BASE}{{ value | downcase}}@{CF_MAP_URL_SUFFIX}"/> ;;
  }

  dimension: country_code_with_flag {
    group_label: "Country Flags"
    type: string
    sql: ${iso2} ;;
    html: <span>{{ iso2 }}  </span><img @{SMALL_FLAG_STYLE} src="@{CF_MAP_URL_BASE}{{ value | downcase}}@{CF_MAP_URL_SUFFIX}"/> ;;
  }

  dimension: country_code3_with_flag {
    group_label: "Country Flags"
    type: string
    sql: ${iso3} ;;
    html: <span>{{ iso3 }}  </span><img @{SMALL_FLAG_STYLE} src="@{CF_MAP_URL_BASE}{{ iso2 | downcase}}@{CF_MAP_URL_SUFFIX}"/> ;;
  }

  dimension: country_code_bottom_with_flag {
    group_label: "Country Flags"
    type: string
    sql: ${iso2} ;;
    html: <div><img @{SMALL_FLAG_STYLE} src="@{CF_MAP_URL_BASE}{{ value | downcase}}@{CF_MAP_URL_SUFFIX}"/></div><div><span style="padding-left:2px;">{{ value }}</span></div> ;;
  }

  ####### Using Liquid Resolver ########
  # Use something like this when you have some dimension that can be used to resolve to ISO2
  dimension: small_country_flag_liquid {
    group_label: "Country Flags"
    type: string
    sql: ${iso3} ;;
    html: <img @{SMALL_FLAG_STYLE} src="@{CF_MAP_URL_BASE}@{ISO3_TO_ISO2}@{CF_MAP_URL_SUFFIX}"/><span> {{ value }}</span> ;;
  }

  measure: count {
    type: count
    drill_fields: [country_name, country_code3_with_flag, continent]
  }

  measure: distinct_continents {
    type: count_distinct
    sql: ${continent} ;;
    drill_fields: [continent, country_name, country_code3_with_flag]
  }

}
