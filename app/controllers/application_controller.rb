class ApplicationController < ActionController::Base
if Rails.env.production?
  http_basic_authenticate_with \
    name: ENV.fetch("BLOG_ADMIN_USER"),
    password: ENV.fetch("BLOG_ADMIN_PASS"),
    except: [ :index, :show ]
end

  # before_action :set_post, only: %i[show edit update destroy]
  # ...
end
