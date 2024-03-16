# DeleteSpecificLogs.ps1  
  
# ����Ҫ��������ʼĿ¼������ʹ�ýű����ڵ�Ŀ¼  
$startDirectory = Split-Path -Parent $MyInvocation.MyCommand.Path  

# �ݹ������ָ��Ŀ¼������Ŀ¼����ɾ��ƥ����ļ�  
Get-ChildItem -Path $startDirectory -File -Recurse |   
Where-Object { $_.Name -match '.*\.log' } |   
Remove-Item -Force -Verbose
  
# �ݹ������ָ��Ŀ¼������Ŀ¼����ɾ��ƥ����ļ�  
Get-ChildItem -Path $startDirectory -File -Recurse |   
Where-Object { $_.Name -match '.*\.log,[0-9]+$' } |   
Remove-Item -Force -Verbose

# �ݹ������ָ��Ŀ¼������Ŀ¼����ɾ��ƥ����ļ�  
Get-ChildItem -Path $startDirectory -File -Recurse |   
Where-Object { $_.Name -match '.*\.jrl' } |   
Remove-Item -Force -Verbose

# �ݹ������ָ��Ŀ¼������Ŀ¼����ɾ��ƥ����ļ�  
Get-ChildItem -Path $startDirectory -File -Recurse |   
Where-Object { $_.Name -match '.*\.jrl,[0-9]+$' } |   
Remove-Item -Force -Verbose

# �ݹ������ָ��Ŀ¼������Ŀ¼����ɾ��ƥ����ļ�  
Get-ChildItem -Path $startDirectory -File -Recurse |   
Where-Object { $_.Name -match '.*\.tag' } |   
Remove-Item -Force -Verbose

# �ݹ������ָ��Ŀ¼������Ŀ¼����ɾ��ƥ����ļ�  
Get-ChildItem -Path $startDirectory -File -Recurse |   
Where-Object { $_.Name -match '.*\.rpt' } |   
Remove-Item -Force -Verbose

# �ݹ������ָ��Ŀ¼������Ŀ¼����ɾ��ƥ����ļ�  
Get-ChildItem -Path $startDirectory -File -Recurse |   
Where-Object { $_.Name -match '.*\.rpt,[0-9]+$' } |   
Remove-Item -Force -Verbose

# ��������Ϣ  
Write-Host "ɾ���ض���ʽ����־�ļ���ɡ�"