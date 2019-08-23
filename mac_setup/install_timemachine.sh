# Configure Time Machine
#http://www.macworld.com/article/2033804/control-time-machine-from-the-command-line.html
#http://apple.stackexchange.com/questions/25779/on-os-x-what-files-are-excluded-by-rule-from-a-time-machine-backup

# This probably needs some work under OS Sierra...
tmutil addexclusion ~/anaconda
tmutil addexclusion ~/Applications
tmutil addexclusion ~/Library/Caches
tmutil addexclusion /Library/Caches
tmutil addexclusion ~/Dropbox
# is this excluded?
tmutil addexclusion /Users/juliusbusecke/Library/Mobile Documents
tmutil addexclusion ~/Library/Containers/com.apple.mail/Data/Library/Mail Downloads
tmutil addexclusion /private/var/vm

echo "SHOW excluded directories and files"
sudo mdfind "com_apple_backup_excludeItem = 'com.apple.backupd'"
