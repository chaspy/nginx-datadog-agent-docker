resource "datadog_monitor" "tfer--monitor_26365658" {
  evaluation_delay    = "0"
  include_tags        = "true"
  locked              = "false"
  message             = "Increase worker connections @take.she12@gmail.com @slack-chaspy-datadog"
  name                = "Nginx connection is too high"
  new_host_delay      = "300"
  no_data_timeframe   = "0"
  notify_audit        = "false"
  notify_no_data      = "false"
  priority            = "0"
  query               = "avg(last_5m):avg:nginx.net.connections{*} > 5"
  renotify_interval   = "0"
  require_full_window = "false"

  thresholds = {
    critical = "5"
    warning  = "3"
  }

  timeout_h = "0"
  type      = "metric alert"
}
