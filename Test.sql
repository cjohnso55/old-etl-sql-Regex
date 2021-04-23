

SELECT dbo.RegexTest('hell234 world' ,'\W\W')

SELECT dbo.RegexTest('hell234 world' ,'\W\w')

select dbo.regexReplace('hell234 world', '[a-z]([a-z][a-z])', '$1')


select * from dbo.RegexMatchToTable('hell234 world', '[a-z]([a-z][a-z])')

select dbo.RegexMatch('hell234 world', '[a-z]([a-z][a-z])', 2), dbo.RegexMatchIndex('hell234 world', '[a-z]([a-z][a-z])', 2)
select dbo.RegexMatch('hell234 world', '[a-z]([a-z][a-z])', 1), dbo.RegexMatchIndex('hell234 world', '[a-z]([a-z][a-z])', 1)

