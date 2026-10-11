variable "reports" {
  description = <<EOT
Map of reports, attributes below
Required:
    - name
    - recipients
Optional:
    - formats
    - include_dashboard_link
    - include_table_csv
    - layout
    - message
    - org_id
    - orientation
    - reply_to
    - dashboards (block):
        - report_variables (optional)
        - time_range (optional, block):
            - from (optional)
            - to (optional)
        - uid (required)
    - schedule (block):
        - custom_interval (optional)
        - end_time (optional)
        - frequency (required)
        - last_day_of_month (optional)
        - start_time (optional)
        - timezone (optional)
        - workdays_only (optional)
EOT

  type = map(object({
    name                   = string
    recipients             = list(string)
    formats                = optional(set(string))
    include_dashboard_link = optional(bool)
    include_table_csv      = optional(bool)
    layout                 = optional(string)
    message                = optional(string)
    org_id                 = optional(string)
    orientation            = optional(string)
    reply_to               = optional(string)
    dashboards = optional(list(object({
      report_variables = optional(map(string))
      time_range = optional(list(object({
        from = optional(string)
        to   = optional(string)
      })))
      uid = string
    })))
    schedule = optional(list(object({
      custom_interval   = optional(string)
      end_time          = optional(string)
      frequency         = string
      last_day_of_month = optional(bool)
      start_time        = optional(string)
      timezone          = optional(string)
      workdays_only     = optional(bool)
    })))
  }))
}

