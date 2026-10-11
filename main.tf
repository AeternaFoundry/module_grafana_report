resource "grafana_report" "reports" {
  for_each = var.reports

  name                   = each.value.name
  recipients             = each.value.recipients
  formats                = each.value.formats
  include_dashboard_link = each.value.include_dashboard_link
  include_table_csv      = each.value.include_table_csv
  layout                 = each.value.layout
  message                = each.value.message
  org_id                 = each.value.org_id
  orientation            = each.value.orientation
  reply_to               = each.value.reply_to

  dynamic "dashboards" {
    for_each = each.value.dashboards != null ? each.value.dashboards : []
    content {
      report_variables = dashboards.value.report_variables
      dynamic "time_range" {
        for_each = dashboards.value.time_range != null ? dashboards.value.time_range : []
        content {
          from = time_range.value.from
          to   = time_range.value.to
        }
      }
      uid = dashboards.value.uid
    }
  }

  dynamic "schedule" {
    for_each = each.value.schedule != null ? each.value.schedule : []
    content {
      custom_interval   = schedule.value.custom_interval
      end_time          = schedule.value.end_time
      frequency         = schedule.value.frequency
      last_day_of_month = schedule.value.last_day_of_month
      start_time        = schedule.value.start_time
      timezone          = schedule.value.timezone
      workdays_only     = schedule.value.workdays_only
    }
  }
}

