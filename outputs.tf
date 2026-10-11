output "reports_id" {
  description = "Map of id values across all reports, keyed the same as var.reports except keys with no id are omitted"
  value       = { for k, v in grafana_report.reports : k => v.id if v.id != null && length(v.id) > 0 }
}
output "reports_dashboards" {
  description = "Map of dashboards values across all reports, keyed the same as var.reports except keys with no dashboards are omitted"
  value       = { for k, v in grafana_report.reports : k => v.dashboards if v.dashboards != null && length(v.dashboards) > 0 }
}
output "reports_formats" {
  description = "Map of formats values across all reports, keyed the same as var.reports except keys with no formats are omitted"
  value       = { for k, v in grafana_report.reports : k => v.formats if v.formats != null && length(v.formats) > 0 }
}
output "reports_include_dashboard_link" {
  description = "Map of include_dashboard_link values across all reports, keyed the same as var.reports except keys with no include_dashboard_link are omitted"
  value       = { for k, v in grafana_report.reports : k => v.include_dashboard_link if v.include_dashboard_link != null }
}
output "reports_include_table_csv" {
  description = "Map of include_table_csv values across all reports, keyed the same as var.reports except keys with no include_table_csv are omitted"
  value       = { for k, v in grafana_report.reports : k => v.include_table_csv if v.include_table_csv != null }
}
output "reports_layout" {
  description = "Map of layout values across all reports, keyed the same as var.reports except keys with no layout are omitted"
  value       = { for k, v in grafana_report.reports : k => v.layout if v.layout != null && length(v.layout) > 0 }
}
output "reports_message" {
  description = "Map of message values across all reports, keyed the same as var.reports except keys with no message are omitted"
  value       = { for k, v in grafana_report.reports : k => v.message if v.message != null && length(v.message) > 0 }
}
output "reports_name" {
  description = "Map of name values across all reports, keyed the same as var.reports except keys with no name are omitted"
  value       = { for k, v in grafana_report.reports : k => v.name if v.name != null && length(v.name) > 0 }
}
output "reports_org_id" {
  description = "Map of org_id values across all reports, keyed the same as var.reports except keys with no org_id are omitted"
  value       = { for k, v in grafana_report.reports : k => v.org_id if v.org_id != null && length(v.org_id) > 0 }
}
output "reports_orientation" {
  description = "Map of orientation values across all reports, keyed the same as var.reports except keys with no orientation are omitted"
  value       = { for k, v in grafana_report.reports : k => v.orientation if v.orientation != null && length(v.orientation) > 0 }
}
output "reports_recipients" {
  description = "Map of recipients values across all reports, keyed the same as var.reports except keys with no recipients are omitted"
  value       = { for k, v in grafana_report.reports : k => v.recipients if v.recipients != null && length(v.recipients) > 0 }
}
output "reports_reply_to" {
  description = "Map of reply_to values across all reports, keyed the same as var.reports except keys with no reply_to are omitted"
  value       = { for k, v in grafana_report.reports : k => v.reply_to if v.reply_to != null && length(v.reply_to) > 0 }
}
output "reports_schedule" {
  description = "Map of schedule values across all reports, keyed the same as var.reports except keys with no schedule are omitted"
  value       = { for k, v in grafana_report.reports : k => v.schedule if v.schedule != null && length(v.schedule) > 0 }
}

