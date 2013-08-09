windows_task "Download Critical Updates" do
  user "Administrator"
  password "aa33ff$$"
  cwd "#{ENV['HOME']}/project-windows-updates"
  command "powershell.exe downloadcriticalupdates.PS1"
  run_level :highest
  frequency :daily
end