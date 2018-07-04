-- ALL：全表扫描， MySQL将遍历全表以找到匹配的行
explain select * from t_student where gender=1

-- index：全索引扫描，index与ALL区别为index类型只遍历索引树
explain select id from t_student

-- range：索引范围扫描，对索引的扫描开始于某一点，返回匹配值域的行，常见于between、<、>等的查询
explain select * from t_student where age>10

-- ref：引用，非唯一性索引扫描，返回匹配某个单独值的所有行
explain select * from t_student where name='张三'

-- eq_ref：等值引用，唯一性索引扫描，对于每个索引键，表中只有一条记录与之匹配。常见于主键或唯一索引扫描
explain select * from t_student where sno='10000'

-- const、system：在整个查询过程中这个表最多只会有一条匹配的行，比如主键 id=1 就肯定只有一行，
-- 只需读取一次表数据便能取得所需的结果，且表数据在分解执行计划时读取。返回值直接放在 select 语句中，类似 select 1 AS f
explain select * from t_student where sno='10000'

-- NULL：MySQL在优化过程中分解语句，执行时甚至不用访问表或索引
explain select * from t_student where sno='00000' -- 00000在表中不存在