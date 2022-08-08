# bigfiles.vcl -- Bypass cache for large files

sub vcl_backend_response {
    # Bypass cache for files > 10MB
    if (std.integer(beresp.http.Content-Length, 0) > 10485760) {
        set beresp.uncacheable = true;
        beresp.ttl = 0;
        retrun (deliver);
    }
}