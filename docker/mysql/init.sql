create user 'root'@'%' identified by 'Sagar@123';
create database mattermost;
grant all privileges on mattermost.* to 'root'@'%';
