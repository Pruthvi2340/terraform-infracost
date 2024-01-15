# terraform-infracost
# Installation
**mac/linux**
```
# Downloads the CLI based on your OS/arch and puts it in /usr/local/bin
curl -fsSL https://raw.githubusercontent.com/infracost/infracost/master/scripts/install.sh | sh
infracost --version # Should show 0.10.31
```
**Windows (Run in powershell with admin mode)**
```
choco install infracost

infracost --version # Should show 0.10.31
```
# Get API Key
```
infracost auth login
infracost configure get api_key
```
# Show cost estimate breakdown (run in terraform dir)
```
infracost breakdown --path .
```
# Show cost estimate diff
**Generate an Infracost JSON file as the baseline:**
```
infracost breakdown --path . --format json --out-file infracost-base.json

# try changing the instance type:
vim main.tf

# Generate a diff by comparing the latest code change with the baseline:
infracost diff --path . --compare-to infracost-base.json
```
#  Add to your CI/CD
```
infracost upload --path infracost-base.json
```
# VS-code extension
**Add to the VS-code extension**
