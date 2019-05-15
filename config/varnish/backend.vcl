backend default {
    .host = "{{ template "magento.fullname" . }}-httpd";
    .port = "80";
    .first_byte_timeout = 300s;
}