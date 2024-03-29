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
Return the proper Magento httpd image name
*/}}
{{- define "httpd.image" -}}
{{- $registryName := .Values.httpd.registry -}}
{{- $repositoryName := .Values.httpd.repository -}}
{{- $tag := .Values.httpd.tag | toString -}}
{{- printf "%s/%s:%s" $registryName $repositoryName $tag -}}
{{- end -}}

{{/*
Return the proper Cms httpd image name
*/}}
{{- define "httpdcms.image" -}}
{{- $registryName := .Values.cms.httpd.registry -}}
{{- $repositoryName := .Values.cms.httpd.repository -}}
{{- $tag := .Values.cms.httpd.tag | toString -}}
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
Return the proper Cms php-fpm image name
*/}}
{{- define "phpfpmcms.image" -}}
{{- $registryName := .Values.cms.phpfpm.registry -}}
{{- $repositoryName := .Values.cms.phpfpm.repository -}}
{{- $tag := .Values.cms.phpfpm.tag | toString -}}
{{- printf "%s/%s:%s" $registryName $repositoryName $tag -}}
{{- end -}}

{{/*
Return the proper Magento varnish image name
*/}}
{{- define "varnish.image" -}}
{{- $registryName := .Values.varnish.registry -}}
{{- $repositoryName := .Values.varnish.repository -}}
{{- $tag := .Values.varnish.tag | toString -}}
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
{{/*
Return the proper Magento volume-permission image name
*/}}
{{- define "volumepermissions.image" -}}
{{- $enabled := .Values.customVolumePermissionsImage.enabled -}}
{{- $registryName := .Values.customVolumePermissionsImage.registry -}}
{{- $repositoryName := .Values.customVolumePermissionsImage.repository -}}
{{- $tag := .Values.customVolumePermissionsImage.tag | toString -}}
{{- if $enabled -}}
{{- printf "%s/%s:%s" $registryName $repositoryName $tag -}}
{{- else -}}
alpine
{{- end -}}
{{- end -}}