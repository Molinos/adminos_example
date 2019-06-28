every 1.day, at: '4:00' do
  command 'rm -rf /home/app/demo_adminos/current/storage'
  command 'cp -r /home/app/backup/storage /home/app/demo_adminos/current/storage'
  # command 'pg_dump -U app_dbu -d app_production > /home/app/backup/default.sql'
  command 'psql -h localhost postgres postgres -f /home/app/backup/query.psql'
  command 'psql -U app_dbu -d app_production < /home/app/backup/default.sql'
end
