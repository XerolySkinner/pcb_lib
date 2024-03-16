# DeleteSpecificLogs.ps1  
  
# 定义要搜索的起始目录，这里使用脚本所在的目录  
$startDirectory = Split-Path -Parent $MyInvocation.MyCommand.Path  

# 递归地搜索指定目录及其子目录，并删除匹配的文件  
Get-ChildItem -Path $startDirectory -File -Recurse |   
Where-Object { $_.Name -match '.*\.log' } |   
Remove-Item -Force -Verbose
  
# 递归地搜索指定目录及其子目录，并删除匹配的文件  
Get-ChildItem -Path $startDirectory -File -Recurse |   
Where-Object { $_.Name -match '.*\.log,[0-9]+$' } |   
Remove-Item -Force -Verbose

# 递归地搜索指定目录及其子目录，并删除匹配的文件  
Get-ChildItem -Path $startDirectory -File -Recurse |   
Where-Object { $_.Name -match '.*\.jrl' } |   
Remove-Item -Force -Verbose

# 递归地搜索指定目录及其子目录，并删除匹配的文件  
Get-ChildItem -Path $startDirectory -File -Recurse |   
Where-Object { $_.Name -match '.*\.jrl,[0-9]+$' } |   
Remove-Item -Force -Verbose

# 递归地搜索指定目录及其子目录，并删除匹配的文件  
Get-ChildItem -Path $startDirectory -File -Recurse |   
Where-Object { $_.Name -match '.*\.tag' } |   
Remove-Item -Force -Verbose

# 递归地搜索指定目录及其子目录，并删除匹配的文件  
Get-ChildItem -Path $startDirectory -File -Recurse |   
Where-Object { $_.Name -match '.*\.rpt' } |   
Remove-Item -Force -Verbose

# 递归地搜索指定目录及其子目录，并删除匹配的文件  
Get-ChildItem -Path $startDirectory -File -Recurse |   
Where-Object { $_.Name -match '.*\.rpt,[0-9]+$' } |   
Remove-Item -Force -Verbose

# 输出完成信息  
Write-Host "删除特定格式的日志文件完成。"