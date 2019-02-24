# config valid for current version and patch releases of Capistrano
lock "~> 3.11.0"

set :application, "Scribe"
set :repo_url, "https://github.com/UMD-DCIC/scribe-deploy.git"

# Default branch is :master
# ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp

# Default deploy_to directory is /var/www/my_app_name
set :deploy_to, '/home/deploy/Scribe'

set :default_env, { 
  'DEVISE_SECRET_TOKEN' => '269cc9c2a972fe0bd8485ae7f477d988adc08baa28957678e26125ef5122fbcf60d964dd691ebcf66c484a416aa9b6c61240b8363330835e456b84c77ca69151',
  'SECRET_KEY_BASE_TOKEN' => '269cc9c2a972fe0bd8485ae7f477d988adc08baa28957678e26125ef5122fbcf60d964dd691ebcf66c484a416aa9b6c61240b8363330835e456b84c77ca69151',
  'SCRIBE_BOT_TOKEN' => '5acd09095472610fd1000000:Eh1JksCK8zs1_6RNU6CD',
  'FACEBOOK_ID' => '1689853631267050',
  'FACEBOOK_SECRET' => 'b9133c1bf4cbe47e153954b1d0d13a5f'
}

append :linked_files, "config/mongoid.yml", "config/secrets.yml"
append :linked_dirs, "log", "tmp/pids", "tmp/cache", "tmp/sockets", "vendor/bundle", "public/system", "public/uploads"


# Default value for :format is :airbrussh.
# set :format, :airbrussh

# You can configure the Airbrussh format using :format_options.
# These are the defaults.
# set :format_options, command_output: true, log_file: "log/capistrano.log", color: :auto, truncate: :auto

# Default value for :pty is false
# set :pty, true

# Default value for :linked_files is []
# append :linked_files, "config/database.yml"

# Default value for linked_dirs is []
# append :linked_dirs, "log", "tmp/pids", "tmp/cache", "tmp/sockets", "public/system"

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for local_user is ENV['USER']
# set :local_user, -> { `git config user.name`.chomp }

# Default value for keep_releases is 5
# set :keep_releases, 5

# Uncomment the following to require manually verifying the host key before first deploy.
# set :ssh_options, verify_host_key: :secure
