

drop database if exists provesxml;

create database IF NOT EXISTS provesxml;

use provesxml;

create table cursos(

   id int,

    curs varchar(10),

    document text,

    primary key(id)

);





insert into cursos values(1,'2021/22',

'<?xml version="1.0" encoding="UTF-8"?>

<alumnes>

<alumne dni="945656562">

<nom>Jose</nom>

<llinatge>Bestard</llinatge>

<nota>7</nota>

</alumne>

<alumne dni="4532222">

<nom>Juan</nom>

<llinatge>Lamas</llinatge>

<nota>4</nota>

</alumne>

<alumne dni="4009888">

<nom>Aina</nom>

<llinatge>López</llinatge>

<nota>6</nota>

</alumne>

</alumnes>'

);


select ExtractValue(document, 'count(//alumne)') from cursos where curs='2021/22';

select ExtractValue(document, 'avg(//nota)') from cursos where curs='2021/22';

select ExtractValue(document, '//alumne/@dni') from cursos where curs='2021/22';



insert into cursos values(2,'2020/21',

'<?xml version="1.0" encoding="UTF-8"?>

<alumnes>

<alumne dni="11111111">

<nom>Pep</nom>

<llinatge>Fort</llinatge>

<nota>3</nota>

</alumne>

<alumne dni="22222222">

<nom>Marga</nom>

<llinatge>Amengual</llinatge>

<nota>8</nota>

</alumne>

</alumnes>'

);




select ExtractValue(document, 'count(//alumne)') from cursos;

select sum(ExtractValue(document, 'count(//alumne)')) from cursos;

