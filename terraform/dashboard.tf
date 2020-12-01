resource "datadog_dashboard" "tfer--dashboard_kh8-002D-uqy-002D-un5" {
  is_read_only = "false"
  layout_type  = "ordered"
  title        = "nginx.software-design"
  url          = "/dashboard/kh8-uqy-un5/nginxsoftware-design"

  widget {
    group_definition {
      layout_type = "ordered"
      title       = "Nginx"

      widget {
        timeseries_definition {
          legend_size = "0"

          request {
            display_type   = "line"
            on_right_yaxis = "false"
            q              = "sum:nginx.net.request_per_s{*}"
          }

          show_legend = "false"
          title       = "nginx.net.request_per_s"
        }
      }

      widget {
        timeseries_definition {
          legend_size = "0"

          request {
            display_type   = "line"
            on_right_yaxis = "false"
            q              = "sum:nginx.net.reading{*}"

            style {
              line_type  = "solid"
              line_width = "normal"
              palette    = "dog_classic"
            }
          }

          show_legend = "false"
          title       = "nginx.net.reading"

          yaxis {
            include_zero = "true"
            max          = "auto"
            min          = "auto"
            scale        = "linear"
          }
        }
      }

      widget {
        timeseries_definition {
          legend_size = "0"

          request {
            display_type   = "line"
            on_right_yaxis = "false"
            q              = "sum:nginx.net.waiting{*}"

            style {
              line_type  = "solid"
              line_width = "normal"
              palette    = "dog_classic"
            }
          }

          show_legend = "false"
          title       = "nginx.net.waiting"

          yaxis {
            include_zero = "true"
            max          = "auto"
            min          = "auto"
            scale        = "linear"
          }
        }
      }

      widget {
        timeseries_definition {
          legend_size = "0"

          request {
            display_type   = "line"
            on_right_yaxis = "false"
            q              = "sum:nginx.net.writing{*}"

            style {
              line_type  = "solid"
              line_width = "normal"
              palette    = "dog_classic"
            }
          }

          show_legend = "false"
          title       = "nginx.net.writing"

          yaxis {
            include_zero = "true"
            max          = "auto"
            min          = "auto"
            scale        = "linear"
          }
        }
      }

      widget {
        timeseries_definition {
          legend_size = "0"

          request {
            display_type   = "line"
            on_right_yaxis = "false"
            q              = "sum:nginx.net.connections{*}"

            style {
              line_type  = "solid"
              line_width = "normal"
              palette    = "dog_classic"
            }
          }

          show_legend = "false"
          title       = "nginx.net.connections"

          yaxis {
            include_zero = "true"
            max          = "auto"
            min          = "auto"
            scale        = "linear"
          }
        }
      }

      widget {
        timeseries_definition {
          legend_size = "0"

          request {
            display_type   = "line"
            on_right_yaxis = "false"
            q              = "sum:nginx.net.conn_opened_per_s{*}"

            style {
              line_type  = "solid"
              line_width = "normal"
              palette    = "dog_classic"
            }
          }

          show_legend = "false"
          title       = "nginx.net.conn_opened_per_s"

          yaxis {
            include_zero = "true"
            max          = "auto"
            min          = "auto"
            scale        = "linear"
          }
        }
      }

      widget {
        timeseries_definition {
          legend_size = "0"

          request {
            display_type   = "line"
            on_right_yaxis = "false"
            q              = "sum:nginx.net.conn_dropped_per_s{*}"

            style {
              line_type  = "solid"
              line_width = "normal"
              palette    = "dog_classic"
            }
          }

          show_legend = "false"
          title       = "nginx.net.conn_dropped_per_s"

          yaxis {
            include_zero = "true"
            max          = "auto"
            min          = "auto"
            scale        = "linear"
          }
        }
      }
    }
  }
}
