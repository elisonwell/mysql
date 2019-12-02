-- 查看正在运行的进程
SHOW FULL PROCESSLIST;

-- 杀掉进程
kill <pid>

-- 查看当前会话隔离级别
show variables like 'transaction_isolation'; -- mysql8
show variables like 'tx_isolation'; -- mysql8以前

-- 查看最大连接数
show variables like 'max_connections';

-- 查看mysql状态
status