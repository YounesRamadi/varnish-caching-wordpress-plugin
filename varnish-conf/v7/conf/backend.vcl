# Here is defined the backend source ip and port
# If your site is running on http in an other server, you can change this
# to the ip and port of the server where the site is running
# In case you site is uses https you can leave this as is
# but you have to setup a reverse proxy which listen on 8080
# and redirects requests to your site

backend source {
    .host = "127.0.0.1";
    .port = "8080";
}

sub vcl_recv {
    set req.backend_hint = source;
}