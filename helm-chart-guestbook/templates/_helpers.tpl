{{/*make a function for chart name, override in .Values*/}}
{{- define "guestbook-app.name" }}
{{- default .Chart.Name .Values.nameOverride }}
{{- end }}

{{/*Create chart name and version as used by the chart label.*/}}
{{- define "guestbook-app.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*generic labels for guestbook app*/}}
{{- define "guestbook-app.labels" }}
helm.sh/chart: {{ include "guestbook-app.chart" . }}
{{ include "guestbook-app.selectorLabels" . }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*generic selector labels for the guestbook app*/}}
{{- define "guestbook-app.selectorLabels" -}}
app.kubernetes.io/name: {{ include "guestbook-app.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}


