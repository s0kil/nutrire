def execute(command)
  system("bundle exec #{command}")
end

desc 'Lint Project'

task lint: :environment do
  puts '> rubocop'
  execute('rubocop -A')

  puts '> lol_dba'
  execute('rails db:find_indexes')

  # puts '> active_record_doctor'
  # execute('rails active_record_doctor:extraneous_indexes')
  # execute('rails active_record_doctor:unindexed_deleted_at')
  # execute('rails active_record_doctor:missing_foreign_keys')
  # execute('rails active_record_doctor:unindexed_foreign_keys')
  # execute('rails active_record_doctor:missing_unique_indexes')
  # execute('rails active_record_doctor:undefined_table_references')
  # execute('rails active_record_doctor:missing_non_null_constraint')
  # execute('rails active_record_doctor:missing_presence_validation')
  # execute('rails active_record_doctor:incorrect_boolean_presence_validation')
end
