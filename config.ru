# This file is used by Rack-based servers to start the application.

require ::File.expand_path('../config/environment',  __FILE__)
run IvanTheTerriblesBlog::Application

# use Rack::Deflater
# use Rack::Static,
#     :urls => ["/images", "/js", "/css"],
#       :root => "public"
#
# run lambda { |env|
#   [
#       200,
#       {
#             'Content-Type'  => 'text/html',
#             'Cache-Control' => 'public, max-age=86400'
#           },
#       File.open('public/index.html', File::RDONLY)
#     ]
# }
