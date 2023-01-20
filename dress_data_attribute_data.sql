use `tsk1`
SELECT * FROM tsk1.`dress sales`;
select count(`dress_id`) from `dress sales`
select `dress_id` from `attribute_dataset`
select count(`dress_id`) from `dress sales`
select attribute_dataset.dress_id from attribute_dataset left join `dress sales` on `attribute_dataset`.dress_id=`dress sales`.dress_id
SELECT dress_id FROM `dress_head`
UNION
SELECT dress_id FROM `dress_head`
select * from attribute_dataset where recommendation =0 ##==290 rws
select dress_id,max(`sum`) as max_sold
from(SELECT
  dress_id,
  sum(`29/8/2013`+`31/8/2013`+`2/9/2013`+`4/9/2013`+`6/9/2013`+`8/9/2013`+`10/9/2013`+`12/9/2013`+
  `14/9/2013`+`16/9/2013`+`18/9/2013`+`20/9/2013`+`22/9/2013`+`24/9/2013`+`26/9/2013`
  +`28/9/2013`+`30/9/2013`+`2/10/2013`+`4/10/2013`+`6/10/2013`
  +`8/10/2010`+`10/10/2013`+`12/10/2013`) as `sum` FROM dress_head  group by dress_id ) as total
#ans=='1006032852', '155927'has the max sales 

SELECT
  dress_id,
  sum(`29/8/2013`+`31/8/2013`+`2/9/2013`+`4/9/2013`+`6/9/2013`+`8/9/2013`+`10/9/2013`+`12/9/2013`+
  `14/9/2013`+`16/9/2013`+`18/9/2013`+`20/9/2013`+`22/9/2013`+`24/9/2013`+`26/9/2013`
  +`28/9/2013`+`30/9/2013`+`2/10/2013`+`4/10/2013`+`6/10/2013`
  +`8/10/2010`+`10/10/2013`+`12/10/2013`) as `3rd_highest` FROM dress_head  group by dress_id ORDER BY `3rd_highest` DESC limit 2,1;    ##here we are skipping 2 rows and print one row after skipping 2 rows i.e 3rd row
##ans =='1006032852', '75979'


