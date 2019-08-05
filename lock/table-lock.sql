-- session给t_student加上读锁
-- 在本session可以读本表，不可以写本表，不可以读写其他未加锁的表
-- 在其他session可以读本表，写本表阻塞，可以读/写其他表
LOCK TABLES t_student READ ;

-- session给t_student加上写锁
-- 在本session可以读本表，可以写本表，不可以读写其他未加锁的表
-- 在其他session读本表阻塞，写本表阻塞，可以读/写其他表
LOCK TABLES t_student WRITE ;

-- 总结：读锁会阻塞写锁，不会阻塞读锁；写锁会阻塞读写

-- 解锁表
UNLOCK TABLES;

-- 查看哪些表被锁了
show open tables;table-lock.sql
