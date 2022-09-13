logpath=/root/nginx/log/
nginxpath=/root/nginx/
logdate=`date -d "1 day ago" +"%Y%m%d"`
rmlogdate=`date -d "15 day ago" +"%Y%m%d"`
cd $logpath
sudo mv access.log access-$logdate.log
sudo rm -rf access-$rmlogdate.log
cd $nginxpath
sudo docker restart mydomain_com_nginx
