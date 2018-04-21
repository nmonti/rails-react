namespace :start do
  task :development do
    exec 'foreman start -f Procfile.dev'
  end

  desc 'Start prod server'
  task :production do
    exec 'NPM_CONFIG_PRODUCTION=true npm run postinstall && foreman start'
  end
end

desc 'Start dev server'
task start: 'start:development'
