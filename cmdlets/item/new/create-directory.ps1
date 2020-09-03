$dirName = 'a-folder'

if (test-path $dirName) {
    write-host "Directory $dirName already exists, going to remove it"
    remove-item -recurse -force $dirName
}

$createdDir = new-item -type directory a-folder

write-host "Directory was created at $('{0:yyyy-MM-dd HH:mm:ss}' -f $createdDir.creationTime)"
