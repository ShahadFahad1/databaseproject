
create user User3
IDENTIFIED by 1234
default tablespace users
temporary tablespace temp
QUOTA 500K on users;

grant connect to User1;
grant SELECT ON vBookStatus to User1
