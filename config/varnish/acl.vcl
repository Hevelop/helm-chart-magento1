acl cache_acl {
    "127.0.0.1";
    "{{ template "magento.fullname" . }}-httpd";
    "{{ template "magento.fullname" . }}-phpfpm"
}