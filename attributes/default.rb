if node['memory'] && node['memory']['total']
  # Set memory to 80% of total
  default[:memcached][:memory] = (node['memory']['total'] * 0.8).ceil
else
  default[:memcached][:memory] = 64
end

default[:memcached][:port] = 11211
default[:memcached][:user] = "nobody"
default[:memcached][:listen] = "0.0.0.0"
default[:memcached][:maxconn] = "1024"

# Setting for performance
default[:memcached][:large_pages] = true