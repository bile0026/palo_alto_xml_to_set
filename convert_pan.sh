date=$(date +%Y-%m-%d)
#base_dir=/awx_backups/palo_alto/${date}
base_dir=./test_files/${date}/*

for file in ${base_dir}; do panconf.py --config $file --set > ${file}.set.txt; done
