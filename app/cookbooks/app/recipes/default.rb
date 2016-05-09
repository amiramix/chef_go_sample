freebsd_package 'go'

execute 'start_sample_app' do
  command '~/app/sample.sh'
end
