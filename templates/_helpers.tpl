{{/*
Expand the name of the chart.
*/}}

{{- define "ngo-chart.name" -}}
{{- .Chart.Name -}}
{{- end }}

{{/*
Create fullname
*/}}

{{- define "ngo-chart.fullname" -}}
{{- .Release.Name -}}
{{- end }}

{{/*
Common Labels
*/}}

{{- define "ngo-chart.labels" -}}
app.kubernetes.io/name: {{ include "ngo-chart.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
helm.sh/chart: {{ .Chart.Name }}-{{ .Chart.Version }}
{{- end }}
