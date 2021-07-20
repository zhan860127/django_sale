# django_sale

### 產生ssl 證書


---

所需套件
### mkcert

win 需先安裝
[Chocolatey](https://chocolatey.org/)

### Step1

#### install chocolate
```bash=
@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "[System.Net.ServicePointManager]::SecurityProtocol = 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"
```

需要在系統管理員下

### step 2
#### install mkcert

```bash=
mkcert install
mkcert [your domain]
```

就會生成 ssl