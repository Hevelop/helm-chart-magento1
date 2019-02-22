{{/* vim: set filetype=mustache: */}}
{{/*
Expand the name of the chart.
*/}}
{{- define "magento.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
*/}}
{{- define "magento.fullname" -}}
{{- $name := default .Chart.Name .Values.nameOverride -}}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
*/}}
{{- define "artifactFullUrl" -}}
{{- $url := .Values.artifact.url -}}
{{- $name := .Values.artifact.name -}}
{{- $commitHash := .Values.artifact.commitHash -}}
{{- $extension := .Values.artifact.extension -}}
{{- printf "%s/%s-%s.%s" $url $name $commitHash $extension -}}
{{- end -}}

{{/*
Return the proper Magento httpd image name
*/}}
{{- define "httpd.image" -}}
{{- $registryName := .Values.httpd.registry -}}
{{- $repositoryName := .Values.httpd.repository -}}
{{- $tag := .Values.httpd.tag | toString -}}
{{- printf "%s/%s:%s" $registryName $repositoryName $tag -}}
{{- end -}}

{{/*
Return the proper Magento php-fpm image name
*/}}
{{- define "phpfpm.image" -}}
{{- $registryName := .Values.phpfpm.registry -}}
{{- $repositoryName := .Values.phpfpm.repository -}}
{{- $tag := .Values.phpfpm.tag | toString -}}
{{- printf "%s/%s:%s" $registryName $repositoryName $tag -}}
{{- end -}}

{{/*
Return the proper Magento cron image name
*/}}
{{- define "cron.image" -}}
{{- $registryName := .Values.cron.registry -}}
{{- $repositoryName := .Values.cron.repository -}}
{{- $tag := .Values.cron.tag | toString -}}
{{- printf "%s/%s:%s" $registryName $repositoryName $tag -}}
{{- end -}}

{{/*
Return the proper Magento prehook image name
*/}}
{{- define "prehook.image" -}}
{{- $registryName := .Values.prehook.registry -}}
{{- $repositoryName := .Values.prehook.repository -}}
{{- $tag := .Values.prehook.tag | toString -}}
{{- printf "%s/%s:%s" $registryName $repositoryName $tag -}}
{{- end -}}