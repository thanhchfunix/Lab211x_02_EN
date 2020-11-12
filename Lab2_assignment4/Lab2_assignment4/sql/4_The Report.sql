select 
case
    when grade between 8 and 10 then name
    else NULL
end , grade ,marks from students
inner join grades
on marks between min_mark and max_mark
order by grade desc ,name, marks