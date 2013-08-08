windows_task "chefclient" do
  user "Administrator"
  password "*********"
  cwd "C:/opscode/chef/bin"
  command "chef-client -L C:/tmp/"
  run_level :highest
  frequency :minute
  frequency_modifier 15
end

windows_task "critupdate" do
  user "Administrator"
  password "*********"
  cwd "C:/windows/system32/windowspowershell/v1.0/"
  command "powershell.exe -L C:/critwindowsupdate.ps1"
  run_level :highest
  frequency :minute
  frequency_modifier 15
end

windows_task "installcritreboot" do
  user "Administrator"
  password "*********"
  cwd "C:/windows/system32/windowspowershell/v1.0/"
  command "powershell.exe -L C:/installcritreboot.ps1"
  run_level :highest
  frequency :minute
  frequency_modifier 15
end
