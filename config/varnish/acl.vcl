acl cache_acl {
    "127.0.0.1";
    "10.0.0.0"/8;
    "{{ template "magento.fullname" . }}-httpd";
    "{{ template "magento.fullname" . }}-phpfpm";
}