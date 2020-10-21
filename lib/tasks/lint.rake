desc 'Lint Project'

task lint: :environment do
  system('bundle exec rubocop -A')
end
