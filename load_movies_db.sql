CREATE TABLE movie
(
id SERIAL PRIMARY KEY,
title text,
release integer,
tagline text
)

CREATE TABLE person
(
id SERIAL PRIMARY KEY,
name text,
born integer
)


CREATE TABLE movieperson
(
id SERIAL PRIMARY KEY,
person_id integer REFERENCES person(id),
movie_id integer REFERENCES movie(id),
relation_type text,
roles text[],
summary text,
rating integer
)

CREATE TABLE personperson
(
id SERIAL PRIMARY KEY,
follower_person_id integer REFERENCES person(id),
followed_person_id integer REFERENCES person(id)
)

-- populate movie
insert into movie(title,release,tagline) SELECT 'The Matrix', 1999, 'Welcome to the Real World';
insert into movie(title,release,tagline) SELECT 'The Matrix Reloaded', 2003, 'Free your mind';
insert into movie(title,release,tagline) SELECT 'The Matrix Revolutions', 2003, 'Everything that has a beginning has an end';
insert into movie(title,release,tagline) SELECT 'The Devil''s Advocate', 1997, 'Evil has its winning ways';
insert into movie(title,release,tagline) SELECT 'A Few Good Men', 1992, 'In the heart of the nation''s capital, in a courthouse of the U.S. government, one man will stop at nothing to keep his honor, and one will stop at nothing to find the truth.';
insert into movie(title,release,tagline) SELECT 'Top Gun', 1986, 'I feel the need, the need for speed.';
insert into movie(title,release,tagline) SELECT 'Jerry Maguire', 2000, 'The rest of his life begins now.';
insert into movie(title,release,tagline) SELECT 'Stand By Me', 1986, 'For some, it''s the last real taste of innocence, and the first real taste of life. But for everyone, it''s the time that memories are made of.';
insert into movie(title,release,tagline) SELECT 'As Good as It Gets', 1997, 'A comedy from the heart that goes for the throat.';
insert into movie(title,release,tagline) SELECT 'What Dreams May Come', 1998, 'After life there is more. The end is just the beginning.';
insert into movie(title,release,tagline) SELECT 'Snow Falling on Cedars', 1999, 'First loves last. Forever.';
insert into movie(title,release,tagline) SELECT 'You''ve Got Mail', 1998, 'At odds in life... in love on-line.';
insert into movie(title,release,tagline) SELECT 'Sleepless in Seattle', 1993, 'What if someone you never met, someone you never saw, someone you never knew was the only someone for you?';
insert into movie(title,release,tagline) SELECT 'Joe Versus the Volcano', 1990, 'A story of love, lava and burning desire.';
insert into movie(title,release,tagline) SELECT 'When Harry Met Sally', 1998, 'At odds in life... in love on-line.';
insert into movie(title,release,tagline) SELECT 'That Thing You Do', 1996, 'In every life there comes a time when that thing you dream becomes that thing you do';
insert into movie(title,release,tagline) SELECT 'The Replacements', 2000, 'Pain heals, Chicks dig scars... Glory lasts forever';
insert into movie(title,release,tagline) SELECT 'RescueDawn', 2006, 'Based on the extraordinary true story of one man''s fight for freedom';
insert into movie(title,release,tagline) SELECT 'The Birdcage', 1996, 'Come as you are';
insert into movie(title,release,tagline) SELECT 'Unforgiven', 1992, 'It''s a hell of a thing, killing a man';
insert into movie(title,release,tagline) SELECT 'Johnny Mnemonic', 1995, 'The hottest data on earth. In the coolest head in town';
insert into movie(title,release,tagline) SELECT 'Cloud Atlas', 2012, 'Everything is connected';
insert into movie(title,release,tagline) SELECT 'The Da Vinci Code', 2006, 'Break The Codes';
insert into movie(title,release,tagline) SELECT 'V for Vendetta', 2006, 'Freedom! Forever!';
insert into movie(title,release,tagline) SELECT 'Speed Racer', 2008, 'Speed has no limits';
insert into movie(title,release,tagline) SELECT 'Ninja Assassin', 2009, 'Prepare to enter a secret world of assassins';
insert into movie(title,release,tagline) SELECT 'The Green Mile', 1999, 'Walk a mile you''ll never forget.';
insert into movie(title,release,tagline) SELECT 'Frost/Nixon', 2008, '400 million people were waiting for the truth.';
insert into movie(title,release,tagline) SELECT 'Hoffa', 1992, 'He didn''t want law. He wanted justice.';
insert into movie(title,release,tagline) SELECT 'Apollo 13', 1995, 'Houston, we have a problem.';
insert into movie(title,release,tagline) SELECT 'Twister', 1996, 'Don''t Breathe. Don''t Look Back.';
insert into movie(title,release,tagline) SELECT 'Cast Away', 2000, 'At the edge of the world, his journey begins.';
insert into movie(title,release,tagline) SELECT 'One Flew Over the Cuckoo''s Nest', 1975, 'If he''s crazy, what does that make you?';
insert into movie(title,release,tagline) SELECT 'Something''s Gotta Give', 2003, 'null';
insert into movie(title,release,tagline) SELECT 'Bicentennial Man', 1999, 'One robot''s 200 year journey to become an ordinary man.';
insert into movie(title,release,tagline) SELECT 'Charlie Wilson''s War', 2007, 'A stiff drink. A little mascara. A lot of nerve. Who said they couldn''t bring down the Soviet empire.';
insert into movie(title,release,tagline) SELECT 'The Polar Express', 2004, 'This Holiday Season… Believe';
insert into movie(title,release,tagline) SELECT 'A League of Their Own', 1992, 'Once in a lifetime you get a chance to do something different.';


--populate person

INSERT INTO person(name, born) SELECT 'Keanu Reeves', 1964;
INSERT INTO person(name, born) SELECT 'Carrie-Anne Moss', 1967;
INSERT INTO person(name, born) SELECT 'Laurence Fishburne', 1961;
INSERT INTO person(name, born) SELECT 'Hugo Weaving', 1960;
INSERT INTO person(name, born) SELECT 'Lilly Wachowski', 1967;
INSERT INTO person(name, born) SELECT 'Lana Wachowski', 1965;
INSERT INTO person(name, born) SELECT 'Joel Silver', 1952;
INSERT INTO person(name, born) SELECT 'Emil Eifrem', 1978;
INSERT INTO person(name, born) SELECT 'Charlize Theron', 1975;
INSERT INTO person(name, born) SELECT 'Al Pacino', 1940;
INSERT INTO person(name, born) SELECT 'Taylor Hackford', 1944;
INSERT INTO person(name, born) SELECT 'Tom Cruise', 1962;
INSERT INTO person(name, born) SELECT 'Jack Nicholson', 1937;
INSERT INTO person(name, born) SELECT 'Demi Moore', 1962;
INSERT INTO person(name, born) SELECT 'Kevin Bacon', 1958;
INSERT INTO person(name, born) SELECT 'Kiefer Sutherland', 1966;
INSERT INTO person(name, born) SELECT 'Noah Wyle', 1971;
INSERT INTO person(name, born) SELECT 'Cuba Gooding Jr.', 1968;
INSERT INTO person(name, born) SELECT 'Kevin Pollak', 1957;
INSERT INTO person(name, born) SELECT 'J.T. Walsh', 1943;
INSERT INTO person(name, born) SELECT 'James Marshall', 1967;
INSERT INTO person(name, born) SELECT 'Christopher Guest', 1948;
INSERT INTO person(name, born) SELECT 'Rob Reiner', 1947;
INSERT INTO person(name, born) SELECT 'Aaron Sorkin', 1961;
INSERT INTO person(name, born) SELECT 'Kelly McGillis', 1957;
INSERT INTO person(name, born) SELECT 'Val Kilmer', 1959;
INSERT INTO person(name, born) SELECT 'Anthony Edwards', 1962;
INSERT INTO person(name, born) SELECT 'Tom Skerritt', 1933;
INSERT INTO person(name, born) SELECT 'Meg Ryan', 1961;
INSERT INTO person(name, born) SELECT 'Tony Scott', 1944;
INSERT INTO person(name, born) SELECT 'Jim Cash', 1941;
INSERT INTO person(name, born) SELECT 'Renee Zellweger', 1969;
INSERT INTO person(name, born) SELECT 'Kelly Preston', 1962;
INSERT INTO person(name, born) SELECT 'Jerry O''Connell', 1974;
INSERT INTO person(name, born) SELECT 'Jay Mohr', 1970;
INSERT INTO person(name, born) SELECT 'Bonnie Hunt', 1961;
INSERT INTO person(name, born) SELECT 'Regina King', 1971;
INSERT INTO person(name, born) SELECT 'Jonathan Lipnicki', 1996;
INSERT INTO person(name, born) SELECT 'Cameron Crowe', 1957;
INSERT INTO person(name, born) SELECT 'River Phoenix', 1970;
INSERT INTO person(name, born) SELECT 'Corey Feldman', 1971;
INSERT INTO person(name, born) SELECT 'Wil Wheaton', 1972;
INSERT INTO person(name, born) SELECT 'John Cusack', 1966;
INSERT INTO person(name, born) SELECT 'Marshall Bell', 1942;
INSERT INTO person(name, born) SELECT 'Helen Hunt', 1963;
INSERT INTO person(name, born) SELECT 'Greg Kinnear', 1963;
INSERT INTO person(name, born) SELECT 'James L. Brooks', 1940;
INSERT INTO person(name, born) SELECT 'Annabella Sciorra', 1960;
INSERT INTO person(name, born) SELECT 'Max von Sydow', 1929;
INSERT INTO person(name, born) SELECT 'Werner Herzog', 1942;
INSERT INTO person(name, born) SELECT 'Robin Williams', 1951;
INSERT INTO person(name, born) SELECT 'Vincent Ward', 1956;
INSERT INTO person(name, born) SELECT 'Ethan Hawke', 1970;
INSERT INTO person(name, born) SELECT 'Rick Yune', 1971;
INSERT INTO person(name, born) SELECT 'James Cromwell', 1940;
INSERT INTO person(name, born) SELECT 'Scott Hicks', 1953;
INSERT INTO person(name, born) SELECT 'Parker Posey', 1968;
INSERT INTO person(name, born) SELECT 'Dave Chappelle', 1973;
INSERT INTO person(name, born) SELECT 'Steve Zahn', 1967;
INSERT INTO person(name, born) SELECT 'Tom Hanks', 1956;
INSERT INTO person(name, born) SELECT 'Nora Ephron', 1941;
INSERT INTO person(name, born) SELECT 'Rita Wilson', 1956;
INSERT INTO person(name, born) SELECT 'Bill Pullman', 1953;
INSERT INTO person(name, born) SELECT 'Victor Garber', 1949;
INSERT INTO person(name, born) SELECT 'Rosie O''Donnell', 1962;
INSERT INTO person(name, born) SELECT 'John Patrick Stanley', 1950;
INSERT INTO person(name, born) SELECT 'Nathan Lane', 1956;
INSERT INTO person(name, born) SELECT 'Billy Crystal', 1948;
INSERT INTO person(name, born) SELECT 'Carrie Fisher', 1956;
INSERT INTO person(name, born) SELECT 'Bruno Kirby', 1949;
INSERT INTO person(name, born) SELECT 'Liv Tyler', 1977;
INSERT INTO person(name, born) SELECT 'Brooke Langton', 1970;
INSERT INTO person(name, born) SELECT 'Gene Hackman', 1930;
INSERT INTO person(name, born) SELECT 'Orlando Jones', 1968;
INSERT INTO person(name, born) SELECT 'Howard Deutch', 1950;
INSERT INTO person(name, born) SELECT 'Christian Bale', 1974;
INSERT INTO person(name, born) SELECT 'Zach Grenier', 1954;
INSERT INTO person(name, born) SELECT 'Mike Nichols', 1931;
INSERT INTO person(name, born) SELECT 'Richard Harris', 1930;
INSERT INTO person(name, born) SELECT 'Clint Eastwood', 1930;
INSERT INTO person(name, born) SELECT 'Takeshi Kitano', 1947;
INSERT INTO person(name, born) SELECT 'Dina Meyer', 1968;
INSERT INTO person(name, born) SELECT 'Ice-T', 1958;
INSERT INTO person(name, born) SELECT 'Robert Longo', 1953;
INSERT INTO person(name, born) SELECT 'Halle Berry', 1966;
INSERT INTO person(name, born) SELECT 'Jim Broadbent', 1949;
INSERT INTO person(name, born) SELECT 'Tom Tykwer', 1965;
INSERT INTO person(name, born) SELECT 'David Mitchell', 1969;
INSERT INTO person(name, born) SELECT 'Stefan Arndt', 1961;
INSERT INTO person(name, born) SELECT 'Ian McKellen', 1939;
INSERT INTO person(name, born) SELECT 'Audrey Tautou', 1976;
INSERT INTO person(name, born) SELECT 'Paul Bettany', 1971;
INSERT INTO person(name, born) SELECT 'Ron Howard', 1954;
INSERT INTO person(name, born) SELECT 'Natalie Portman', 1981;
INSERT INTO person(name, born) SELECT 'Stephen Rea', 1946;
INSERT INTO person(name, born) SELECT 'John Hurt', 1940;
INSERT INTO person(name, born) SELECT 'Ben Miles', 1967;
INSERT INTO person(name, born) SELECT 'Emile Hirsch', 1985;
INSERT INTO person(name, born) SELECT 'John Goodman', 1960;
INSERT INTO person(name, born) SELECT 'Susan Sarandon', 1946;
INSERT INTO person(name, born) SELECT 'Matthew Fox', 1966;
INSERT INTO person(name, born) SELECT 'Christina Ricci', 1980;
INSERT INTO person(name, born) SELECT 'Rain', 1982;
INSERT INTO person(name, born) SELECT 'Naomie Harris', null;
INSERT INTO person(name, born) SELECT 'Michael Clarke Duncan', 1957;
INSERT INTO person(name, born) SELECT 'David Morse', 1953;
INSERT INTO person(name, born) SELECT 'Sam Rockwell', 1968;
INSERT INTO person(name, born) SELECT 'Gary Sinise', 1955;
INSERT INTO person(name, born) SELECT 'Patricia Clarkson', 1959;
INSERT INTO person(name, born) SELECT 'Frank Darabont', 1959;
INSERT INTO person(name, born) SELECT 'Frank Langella', 1938;
INSERT INTO person(name, born) SELECT 'Michael Sheen', 1969;
INSERT INTO person(name, born) SELECT 'Oliver Platt', 1960;
INSERT INTO person(name, born) SELECT 'Danny DeVito', 1944;
INSERT INTO person(name, born) SELECT 'John C. Reilly', 1965;
INSERT INTO person(name, born) SELECT 'Ed Harris', 1950;
INSERT INTO person(name, born) SELECT 'Bill Paxton', 1955;
INSERT INTO person(name, born) SELECT 'Philip Seymour Hoffman', 1967;
INSERT INTO person(name, born) SELECT 'Jan de Bont', 1943;
INSERT INTO person(name, born) SELECT 'Robert Zemeckis', 1951;
INSERT INTO person(name, born) SELECT 'Milos Forman', 1932;
INSERT INTO person(name, born) SELECT 'Diane Keaton', 1946;
INSERT INTO person(name, born) SELECT 'Nancy Meyers', 1949;
INSERT INTO person(name, born) SELECT 'Chris Columbus', 1958;
INSERT INTO person(name, born) SELECT 'Julia Roberts', 1967;
INSERT INTO person(name, born) SELECT 'Madonna', 1954;
INSERT INTO person(name, born) SELECT 'Geena Davis', 1956;
INSERT INTO person(name, born) SELECT 'Lori Petty', 1963;
INSERT INTO person(name, born) SELECT 'Penny Marshall', 1943;
INSERT INTO person(name, born) SELECT 'Paul Blythe', null;
INSERT INTO person(name, born) SELECT 'Angela Scope', null;
INSERT INTO person(name, born) SELECT 'Jessica Thompson', null;
INSERT INTO person(name, born) SELECT 'James Thompson', null;

-- directed

INSERT INTO movieperson(person_id, movie_id, relation_type) SELECT (SELECT id from person where name = 'Lana Wachowski'), (SELECT id from movie where title='The Matrix'), 'directed';
INSERT INTO movieperson(person_id, movie_id, relation_type) SELECT (SELECT id from person where name = 'Lilly Wachowski'), (SELECT id from movie where title='The Matrix'), 'directed';
INSERT INTO movieperson(person_id, movie_id, relation_type) SELECT (SELECT id from person where name = 'Lana Wachowski'), (SELECT id from movie where title='The Matrix Reloaded'), 'directed';
INSERT INTO movieperson(person_id, movie_id, relation_type) SELECT (SELECT id from person where name = 'Lilly Wachowski'), (SELECT id from movie where title='The Matrix Reloaded'), 'directed';
INSERT INTO movieperson(person_id, movie_id, relation_type) SELECT (SELECT id from person where name = 'Lana Wachowski'), (SELECT id from movie where title='The Matrix Revolutions'), 'directed';
INSERT INTO movieperson(person_id, movie_id, relation_type) SELECT (SELECT id from person where name = 'Lilly Wachowski'), (SELECT id from movie where title='The Matrix Revolutions'), 'directed';
INSERT INTO movieperson(person_id, movie_id, relation_type) SELECT (SELECT id from person where name = 'Taylor Hackford'), (SELECT id from movie where title='The Devil''s Advocate'), 'directed';
INSERT INTO movieperson(person_id, movie_id, relation_type) SELECT (SELECT id from person where name = 'Rob Reiner'), (SELECT id from movie where title='A Few Good Men'), 'directed';
INSERT INTO movieperson(person_id, movie_id, relation_type) SELECT (SELECT id from person where name = 'Tony Scott'), (SELECT id from movie where title='Top Gun'), 'directed';
INSERT INTO movieperson(person_id, movie_id, relation_type) SELECT (SELECT id from person where name = 'Cameron Crowe'), (SELECT id from movie where title='Jerry Maguire'), 'directed';
INSERT INTO movieperson(person_id, movie_id, relation_type) SELECT (SELECT id from person where name = 'Rob Reiner'), (SELECT id from movie where title='Stand By Me'), 'directed';
INSERT INTO movieperson(person_id, movie_id, relation_type) SELECT (SELECT id from person where name = 'James L. Brooks'), (SELECT id from movie where title='As Good as It Gets'), 'directed';
INSERT INTO movieperson(person_id, movie_id, relation_type) SELECT (SELECT id from person where name = 'Vincent Ward'), (SELECT id from movie where title='What Dreams May Come'), 'directed';
INSERT INTO movieperson(person_id, movie_id, relation_type) SELECT (SELECT id from person where name = 'Scott Hicks'), (SELECT id from movie where title='Snow Falling on Cedars'), 'directed';
INSERT INTO movieperson(person_id, movie_id, relation_type) SELECT (SELECT id from person where name = 'Nora Ephron'), (SELECT id from movie where title='You''ve Got Mail'), 'directed';
INSERT INTO movieperson(person_id, movie_id, relation_type) SELECT (SELECT id from person where name = 'Nora Ephron'), (SELECT id from movie where title='Sleepless in Seattle'), 'directed';
INSERT INTO movieperson(person_id, movie_id, relation_type) SELECT (SELECT id from person where name = 'John Patrick Stanley'), (SELECT id from movie where title='Joe Versus the Volcano'), 'directed';
INSERT INTO movieperson(person_id, movie_id, relation_type) SELECT (SELECT id from person where name = 'Rob Reiner'), (SELECT id from movie where title='When Harry Met Sally'), 'directed';
INSERT INTO movieperson(person_id, movie_id, relation_type) SELECT (SELECT id from person where name = 'Tom Hanks'), (SELECT id from movie where title='That Thing You Do'), 'directed';
INSERT INTO movieperson(person_id, movie_id, relation_type) SELECT (SELECT id from person where name = 'Howard Deutch'), (SELECT id from movie where title='The Replacements'), 'directed';
INSERT INTO movieperson(person_id, movie_id, relation_type) SELECT (SELECT id from person where name = 'Werner Herzog'), (SELECT id from movie where title='RescueDawn'), 'directed';
INSERT INTO movieperson(person_id, movie_id, relation_type) SELECT (SELECT id from person where name = 'Mike Nichols'), (SELECT id from movie where title='The Birdcage'), 'directed';
INSERT INTO movieperson(person_id, movie_id, relation_type) SELECT (SELECT id from person where name = 'Clint Eastwood'), (SELECT id from movie where title='Unforgiven'), 'directed';
INSERT INTO movieperson(person_id, movie_id, relation_type) SELECT (SELECT id from person where name = 'Robert Longo'), (SELECT id from movie where title='Johnny Mnemonic'), 'directed';
INSERT INTO movieperson(person_id, movie_id, relation_type) SELECT (SELECT id from person where name = 'Lilly Wachowski'), (SELECT id from movie where title='Cloud Atlas'), 'directed';
INSERT INTO movieperson(person_id, movie_id, relation_type) SELECT (SELECT id from person where name = 'Lana Wachowski'), (SELECT id from movie where title='Cloud Atlas'), 'directed';
INSERT INTO movieperson(person_id, movie_id, relation_type) SELECT (SELECT id from person where name = 'Tom Tykwer'), (SELECT id from movie where title='Cloud Atlas'), 'directed';
INSERT INTO movieperson(person_id, movie_id, relation_type) SELECT (SELECT id from person where name = 'Ron Howard'), (SELECT id from movie where title='The Da Vinci Code'), 'directed';
INSERT INTO movieperson(person_id, movie_id, relation_type) SELECT (SELECT id from person where name = 'James Marshall'), (SELECT id from movie where title='V for Vendetta'), 'directed';
INSERT INTO movieperson(person_id, movie_id, relation_type) SELECT (SELECT id from person where name = 'Lilly Wachowski'), (SELECT id from movie where title='Speed Racer'), 'directed';
INSERT INTO movieperson(person_id, movie_id, relation_type) SELECT (SELECT id from person where name = 'Lana Wachowski'), (SELECT id from movie where title='Speed Racer'), 'directed';
INSERT INTO movieperson(person_id, movie_id, relation_type) SELECT (SELECT id from person where name = 'James Marshall'), (SELECT id from movie where title='Ninja Assassin'), 'directed';
INSERT INTO movieperson(person_id, movie_id, relation_type) SELECT (SELECT id from person where name = 'Frank Darabont'), (SELECT id from movie where title='The Green Mile'), 'directed';
INSERT INTO movieperson(person_id, movie_id, relation_type) SELECT (SELECT id from person where name = 'Ron Howard'), (SELECT id from movie where title='Frost/Nixon'), 'directed';
INSERT INTO movieperson(person_id, movie_id, relation_type) SELECT (SELECT id from person where name = 'Danny DeVito'), (SELECT id from movie where title='Hoffa'), 'directed';
INSERT INTO movieperson(person_id, movie_id, relation_type) SELECT (SELECT id from person where name = 'Ron Howard'), (SELECT id from movie where title='Apollo 13'), 'directed';
INSERT INTO movieperson(person_id, movie_id, relation_type) SELECT (SELECT id from person where name = 'Jan de Bont'), (SELECT id from movie where title='Twister'), 'directed';
INSERT INTO movieperson(person_id, movie_id, relation_type) SELECT (SELECT id from person where name = 'Robert Zemeckis'), (SELECT id from movie where title='Cast Away'), 'directed';
INSERT INTO movieperson(person_id, movie_id, relation_type) SELECT (SELECT id from person where name = 'Milos Forman'), (SELECT id from movie where title='One Flew Over the Cuckoo''s Nest'), 'directed';
INSERT INTO movieperson(person_id, movie_id, relation_type) SELECT (SELECT id from person where name = 'Nancy Meyers'), (SELECT id from movie where title='Something''s Gotta Give'), 'directed';
INSERT INTO movieperson(person_id, movie_id, relation_type) SELECT (SELECT id from person where name = 'Chris Columbus'), (SELECT id from movie where title='Bicentennial Man'), 'directed';
INSERT INTO movieperson(person_id, movie_id, relation_type) SELECT (SELECT id from person where name = 'Mike Nichols'), (SELECT id from movie where title='Charlie Wilson''s War'), 'directed';
INSERT INTO movieperson(person_id, movie_id, relation_type) SELECT (SELECT id from person where name = 'Robert Zemeckis'), (SELECT id from movie where title='The Polar Express'), 'directed';
INSERT INTO movieperson(person_id, movie_id, relation_type) SELECT (SELECT id from person where name = 'Penny Marshall'), (SELECT id from movie where title='A League of Their Own'), 'directed';


--wrote

INSERT INTO movieperson(person_id, movie_id, relation_type) SELECT (SELECT id from person where name = 'Aaron Sorkin'), (SELECT id from movie where title='A Few Good Men'), 'wrote';
INSERT INTO movieperson(person_id, movie_id, relation_type) SELECT (SELECT id from person where name = 'Jim Cash'), (SELECT id from movie where title='Top Gun'), 'wrote';
INSERT INTO movieperson(person_id, movie_id, relation_type) SELECT (SELECT id from person where name = 'Cameron Crowe'), (SELECT id from movie where title='Jerry Maguire'), 'wrote';
INSERT INTO movieperson(person_id, movie_id, relation_type) SELECT (SELECT id from person where name = 'Nora Ephron'), (SELECT id from movie where title='When Harry Met Sally'), 'wrote';
INSERT INTO movieperson(person_id, movie_id, relation_type) SELECT (SELECT id from person where name = 'David Mitchell'), (SELECT id from movie where title='Cloud Atlas'), 'wrote';
INSERT INTO movieperson(person_id, movie_id, relation_type) SELECT (SELECT id from person where name = 'Lilly Wachowski'), (SELECT id from movie where title='V for Vendetta'), 'wrote';
INSERT INTO movieperson(person_id, movie_id, relation_type) SELECT (SELECT id from person where name = 'Lana Wachowski'), (SELECT id from movie where title='V for Vendetta'), 'wrote';
INSERT INTO movieperson(person_id, movie_id, relation_type) SELECT (SELECT id from person where name = 'Lana Wachowski'), (SELECT id from movie where title='Speed Racer'), 'wrote';
INSERT INTO movieperson(person_id, movie_id, relation_type) SELECT (SELECT id from person where name = 'Lilly Wachowski'), (SELECT id from movie where title='Speed Racer'), 'wrote';
INSERT INTO movieperson(person_id, movie_id, relation_type) SELECT (SELECT id from person where name = 'Nancy Meyers'), (SELECT id from movie where title='Something''s Gotta Give'), 'wrote';


--produced

INSERT INTO movieperson(person_id, movie_id, relation_type) SELECT (SELECT id from person where name = 'Joel Silver'), (SELECT id from movie where title='The Matrix'), 'produced';
INSERT INTO movieperson(person_id, movie_id, relation_type) SELECT (SELECT id from person where name = 'Joel Silver'), (SELECT id from movie where title='The Matrix Reloaded'), 'produced';
INSERT INTO movieperson(person_id, movie_id, relation_type) SELECT (SELECT id from person where name = 'Joel Silver'), (SELECT id from movie where title='The Matrix Revolutions'), 'produced';
INSERT INTO movieperson(person_id, movie_id, relation_type) SELECT (SELECT id from person where name = 'Cameron Crowe'), (SELECT id from movie where title='Jerry Maguire'), 'produced';
INSERT INTO movieperson(person_id, movie_id, relation_type) SELECT (SELECT id from person where name = 'Rob Reiner'), (SELECT id from movie where title='When Harry Met Sally'), 'produced';
INSERT INTO movieperson(person_id, movie_id, relation_type) SELECT (SELECT id from person where name = 'Nora Ephron'), (SELECT id from movie where title='When Harry Met Sally'), 'produced';
INSERT INTO movieperson(person_id, movie_id, relation_type) SELECT (SELECT id from person where name = 'Stefan Arndt'), (SELECT id from movie where title='Cloud Atlas'), 'produced';
INSERT INTO movieperson(person_id, movie_id, relation_type) SELECT (SELECT id from person where name = 'Joel Silver'), (SELECT id from movie where title='V for Vendetta'), 'produced';
INSERT INTO movieperson(person_id, movie_id, relation_type) SELECT (SELECT id from person where name = 'Lana Wachowski'), (SELECT id from movie where title='V for Vendetta'), 'produced';
INSERT INTO movieperson(person_id, movie_id, relation_type) SELECT (SELECT id from person where name = 'Lilly Wachowski'), (SELECT id from movie where title='V for Vendetta'), 'produced';
INSERT INTO movieperson(person_id, movie_id, relation_type) SELECT (SELECT id from person where name = 'Joel Silver'), (SELECT id from movie where title='Speed Racer'), 'produced';
INSERT INTO movieperson(person_id, movie_id, relation_type) SELECT (SELECT id from person where name = 'Joel Silver'), (SELECT id from movie where title='Ninja Assassin'), 'produced';
INSERT INTO movieperson(person_id, movie_id, relation_type) SELECT (SELECT id from person where name = 'Lana Wachowski'), (SELECT id from movie where title='Ninja Assassin'), 'produced';
INSERT INTO movieperson(person_id, movie_id, relation_type) SELECT (SELECT id from person where name = 'Lilly Wachowski'), (SELECT id from movie where title='Ninja Assassin'), 'produced';
INSERT INTO movieperson(person_id, movie_id, relation_type) SELECT (SELECT id from person where name = 'Nancy Meyers'), (SELECT id from movie where title='Something’’s Gotta Give'), 'produced';


-- acted_ind

INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Emil Eifrem'), (SELECT id from movie where title='The Matrix'), 'acted_in', ARRAY['Emil'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Hugo Weaving'), (SELECT id from movie where title='The Matrix'), 'acted_in', ARRAY['Agent Smith'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Laurence Fishburne'), (SELECT id from movie where title='The Matrix'), 'acted_in', ARRAY['Morpheus'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Carrie-Anne Moss'), (SELECT id from movie where title='The Matrix'), 'acted_in', ARRAY['Trinity'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Keanu Reeves'), (SELECT id from movie where title='The Matrix'), 'acted_in', ARRAY['Neo'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Hugo Weaving'), (SELECT id from movie where title='The Matrix Reloaded'), 'acted_in', ARRAY['Agent Smith'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Laurence Fishburne'), (SELECT id from movie where title='The Matrix Reloaded'), 'acted_in', ARRAY['Morpheus'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Carrie-Anne Moss'), (SELECT id from movie where title='The Matrix Reloaded'), 'acted_in', ARRAY['Trinity'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Keanu Reeves'), (SELECT id from movie where title='The Matrix Reloaded'), 'acted_in', ARRAY['Neo'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Hugo Weaving'), (SELECT id from movie where title='The Matrix Revolutions'), 'acted_in', ARRAY['Agent Smith'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Carrie-Anne Moss'), (SELECT id from movie where title='The Matrix Revolutions'), 'acted_in', ARRAY['Trinity'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Laurence Fishburne'), (SELECT id from movie where title='The Matrix Revolutions'), 'acted_in', ARRAY['Morpheus'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Keanu Reeves'), (SELECT id from movie where title='The Matrix Revolutions'), 'acted_in', ARRAY['Neo'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Al Pacino'), (SELECT id from movie where title='The Devil''s Advocate'), 'acted_in', ARRAY['John Milton'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Keanu Reeves'), (SELECT id from movie where title='The Devil''s Advocate'), 'acted_in', ARRAY['Kevin Lomax'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Charlize Theron'), (SELECT id from movie where title='The Devil''s Advocate'), 'acted_in', ARRAY['Mary Ann Lomax'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Aaron Sorkin'), (SELECT id from movie where title='A Few Good Men'), 'acted_in', ARRAY['Man in Bar'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Christopher Guest'), (SELECT id from movie where title='A Few Good Men'), 'acted_in', ARRAY['Dr. Stone'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Kevin Pollak'), (SELECT id from movie where title='A Few Good Men'), 'acted_in', ARRAY['Lt. Sam Weinberg'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Cuba Gooding Jr.'), (SELECT id from movie where title='A Few Good Men'), 'acted_in', ARRAY['Cpl. Carl Hammaker'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'James Marshall'), (SELECT id from movie where title='A Few Good Men'), 'acted_in', ARRAY['Pfc. Louden Downey'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'J.T. Walsh'), (SELECT id from movie where title='A Few Good Men'), 'acted_in', ARRAY['Lt. Col. Matthew Andrew Markinson'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Kiefer Sutherland'), (SELECT id from movie where title='A Few Good Men'), 'acted_in', ARRAY['Lt. Jonathan Kendrick'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Noah Wyle'), (SELECT id from movie where title='A Few Good Men'), 'acted_in', ARRAY['Cpl. Jeffrey Barnes'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Demi Moore'), (SELECT id from movie where title='A Few Good Men'), 'acted_in', ARRAY['Lt. Cdr. JoAnne Galloway'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Kevin Bacon'), (SELECT id from movie where title='A Few Good Men'), 'acted_in', ARRAY['Capt. Jack Ross'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Tom Cruise'), (SELECT id from movie where title='A Few Good Men'), 'acted_in', ARRAY['Lt. Daniel Kaffee'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Jack Nicholson'), (SELECT id from movie where title='A Few Good Men'), 'acted_in', ARRAY['Col. Nathan R. Jessup'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Meg Ryan'), (SELECT id from movie where title='Top Gun'), 'acted_in', ARRAY['Carole'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Tom Skerritt'), (SELECT id from movie where title='Top Gun'), 'acted_in', ARRAY['Viper'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Kelly McGillis'), (SELECT id from movie where title='Top Gun'), 'acted_in', ARRAY['Charlie'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Tom Cruise'), (SELECT id from movie where title='Top Gun'), 'acted_in', ARRAY['Maverick'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Anthony Edwards'), (SELECT id from movie where title='Top Gun'), 'acted_in', ARRAY['Goose'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Val Kilmer'), (SELECT id from movie where title='Top Gun'), 'acted_in', ARRAY['Iceman'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Jonathan Lipnicki'), (SELECT id from movie where title='Jerry Maguire'), 'acted_in', ARRAY['Ray Boyd'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Jerry O''Connell'), (SELECT id from movie where title='Jerry Maguire'), 'acted_in', ARRAY['Frank Cushman'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Jay Mohr'), (SELECT id from movie where title='Jerry Maguire'), 'acted_in', ARRAY['Bob Sugar'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Bonnie Hunt'), (SELECT id from movie where title='Jerry Maguire'), 'acted_in', ARRAY['Laurel Boyd'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Regina King'), (SELECT id from movie where title='Jerry Maguire'), 'acted_in', ARRAY['Marcee Tidwell'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Tom Cruise'), (SELECT id from movie where title='Jerry Maguire'), 'acted_in', ARRAY['Jerry Maguire'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Cuba Gooding Jr.'), (SELECT id from movie where title='Jerry Maguire'), 'acted_in', ARRAY['Rod Tidwell'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Renee Zellweger'), (SELECT id from movie where title='Jerry Maguire'), 'acted_in', ARRAY['Dorothy Boyd'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Kelly Preston'), (SELECT id from movie where title='Jerry Maguire'), 'acted_in', ARRAY['Avery Bishop'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Marshall Bell'), (SELECT id from movie where title='Stand By Me'), 'acted_in', ARRAY['Mr. Lachance'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Kiefer Sutherland'), (SELECT id from movie where title='Stand By Me'), 'acted_in', ARRAY['Ace Merrill'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'John Cusack'), (SELECT id from movie where title='Stand By Me'), 'acted_in', ARRAY['Denny Lachance'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Wil Wheaton'), (SELECT id from movie where title='Stand By Me'), 'acted_in', ARRAY['Gordie Lachance'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'River Phoenix'), (SELECT id from movie where title='Stand By Me'), 'acted_in', ARRAY['Chris Chambers'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Jerry O''Connell'), (SELECT id from movie where title='Stand By Me'), 'acted_in', ARRAY['Vern Tessio'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Corey Feldman'), (SELECT id from movie where title='Stand By Me'), 'acted_in', ARRAY['Teddy Duchamp'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Cuba Gooding Jr.'), (SELECT id from movie where title='As Good as It Gets'), 'acted_in', ARRAY['Frank Sachs'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Greg Kinnear'), (SELECT id from movie where title='As Good as It Gets'), 'acted_in', ARRAY['Simon Bishop'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Helen Hunt'), (SELECT id from movie where title='As Good as It Gets'), 'acted_in', ARRAY['Carol Connelly'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Jack Nicholson'), (SELECT id from movie where title='As Good as It Gets'), 'acted_in', ARRAY['Melvin Udall'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Annabella Sciorra'), (SELECT id from movie where title='What Dreams May Come'), 'acted_in', ARRAY['Annie Collins-Nielsen'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Cuba Gooding Jr.'), (SELECT id from movie where title='What Dreams May Come'), 'acted_in', ARRAY['Albert Lewis'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Robin Williams'), (SELECT id from movie where title='What Dreams May Come'), 'acted_in', ARRAY['Chris Nielsen'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Werner Herzog'), (SELECT id from movie where title='What Dreams May Come'), 'acted_in', ARRAY['The Face'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Max von Sydow'), (SELECT id from movie where title='What Dreams May Come'), 'acted_in', ARRAY['The Tracker'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'James Cromwell'), (SELECT id from movie where title='Snow Falling on Cedars'), 'acted_in', ARRAY['Judge Fielding'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Rick Yune'), (SELECT id from movie where title='Snow Falling on Cedars'), 'acted_in', ARRAY['Kazuo Miyamoto'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Max von Sydow'), (SELECT id from movie where title='Snow Falling on Cedars'), 'acted_in', ARRAY['Nels Gudmundsson'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Ethan Hawke'), (SELECT id from movie where title='Snow Falling on Cedars'), 'acted_in', ARRAY['Ishmael Chambers'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Dave Chappelle'), (SELECT id from movie where title='You''ve Got Mail'), 'acted_in', ARRAY['Kevin Jackson'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Steve Zahn'), (SELECT id from movie where title='You''ve Got Mail'), 'acted_in', ARRAY['George Pappas'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Greg Kinnear'), (SELECT id from movie where title='You''ve Got Mail'), 'acted_in', ARRAY['Frank Navasky'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Parker Posey'), (SELECT id from movie where title='You''ve Got Mail'), 'acted_in', ARRAY['Patricia Eden'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Tom Hanks'), (SELECT id from movie where title='You''ve Got Mail'), 'acted_in', ARRAY['Joe Fox'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Meg Ryan'), (SELECT id from movie where title='You''ve Got Mail'), 'acted_in', ARRAY['Kathleen Kelly'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Rosie O''Donnell'), (SELECT id from movie where title='Sleepless in Seattle'), 'acted_in', ARRAY['Becky'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Tom Hanks'), (SELECT id from movie where title='Sleepless in Seattle'), 'acted_in', ARRAY['Sam Baldwin'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Bill Pullman'), (SELECT id from movie where title='Sleepless in Seattle'), 'acted_in', ARRAY['Walter'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Victor Garber'), (SELECT id from movie where title='Sleepless in Seattle'), 'acted_in', ARRAY['Greg'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Meg Ryan'), (SELECT id from movie where title='Sleepless in Seattle'), 'acted_in', ARRAY['Annie Reed'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Rita Wilson'), (SELECT id from movie where title='Sleepless in Seattle'), 'acted_in', ARRAY['Suzy'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Meg Ryan'), (SELECT id from movie where title='Joe Versus the Volcano'), 'acted_in', ARRAY['DeDe','Angelica Graynamore','Patricia Graynamore'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Tom Hanks'), (SELECT id from movie where title='Joe Versus the Volcano'), 'acted_in', ARRAY['Joe Banks'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Nathan Lane'), (SELECT id from movie where title='Joe Versus the Volcano'), 'acted_in', ARRAY['Baw'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Bruno Kirby'), (SELECT id from movie where title='When Harry Met Sally'), 'acted_in', ARRAY['Jess'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Carrie Fisher'), (SELECT id from movie where title='When Harry Met Sally'), 'acted_in', ARRAY['Marie'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Meg Ryan'), (SELECT id from movie where title='When Harry Met Sally'), 'acted_in', ARRAY['Sally Albright'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Billy Crystal'), (SELECT id from movie where title='When Harry Met Sally'), 'acted_in', ARRAY['Harry Burns'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Charlize Theron'), (SELECT id from movie where title='That Thing You Do'), 'acted_in', ARRAY['Tina'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Liv Tyler'), (SELECT id from movie where title='That Thing You Do'), 'acted_in', ARRAY['Faye Dolan'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Tom Hanks'), (SELECT id from movie where title='That Thing You Do'), 'acted_in', ARRAY['Mr. White'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Keanu Reeves'), (SELECT id from movie where title='The Replacements'), 'acted_in', ARRAY['Shane Falco'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Brooke Langton'), (SELECT id from movie where title='The Replacements'), 'acted_in', ARRAY['Annabelle Farrell'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Gene Hackman'), (SELECT id from movie where title='The Replacements'), 'acted_in', ARRAY['Jimmy McGinty'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Orlando Jones'), (SELECT id from movie where title='The Replacements'), 'acted_in', ARRAY['Clifford Franklin'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Christian Bale'), (SELECT id from movie where title='RescueDawn'), 'acted_in', ARRAY['Dieter Dengler'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Zach Grenier'), (SELECT id from movie where title='RescueDawn'), 'acted_in', ARRAY['Squad Leader'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Steve Zahn'), (SELECT id from movie where title='RescueDawn'), 'acted_in', ARRAY['Duane'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Marshall Bell'), (SELECT id from movie where title='RescueDawn'), 'acted_in', ARRAY['Admiral'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Robin Williams'), (SELECT id from movie where title='The Birdcage'), 'acted_in', ARRAY['Armand Goldman'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Nathan Lane'), (SELECT id from movie where title='The Birdcage'), 'acted_in', ARRAY['Albert Goldman'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Gene Hackman'), (SELECT id from movie where title='The Birdcage'), 'acted_in', ARRAY['Sen. Kevin Keeley'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Gene Hackman'), (SELECT id from movie where title='Unforgiven'), 'acted_in', ARRAY['Little Bill Daggett'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Richard Harris'), (SELECT id from movie where title='Unforgiven'), 'acted_in', ARRAY['English Bob'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Clint Eastwood'), (SELECT id from movie where title='Unforgiven'), 'acted_in', ARRAY['Bill Munny'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Dina Meyer'), (SELECT id from movie where title='Johnny Mnemonic'), 'acted_in', ARRAY['Jane'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Ice-T'), (SELECT id from movie where title='Johnny Mnemonic'), 'acted_in', ARRAY['J-Bone'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Keanu Reeves'), (SELECT id from movie where title='Johnny Mnemonic'), 'acted_in', ARRAY['Johnny Mnemonic'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Takeshi Kitano'), (SELECT id from movie where title='Johnny Mnemonic'), 'acted_in', ARRAY['Takahashi'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Hugo Weaving'), (SELECT id from movie where title='Cloud Atlas'), 'acted_in', ARRAY['Bill Smoke','Haskell Moore','Tadeusz Kesselring','Nurse Noakes','Boardman Mephi','Old Georgie'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Halle Berry'), (SELECT id from movie where title='Cloud Atlas'), 'acted_in', ARRAY['Luisa Rey','Jocasta Ayrs','Ovid','Meronym'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Tom Hanks'), (SELECT id from movie where title='Cloud Atlas'), 'acted_in', ARRAY['Zachry','Dr. Henry Goose','Isaac Sachs','Dermot Hoggins'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Paul Bettany'), (SELECT id from movie where title='The Da Vinci Code'), 'acted_in', ARRAY['Silas'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Audrey Tautou'), (SELECT id from movie where title='The Da Vinci Code'), 'acted_in', ARRAY['Sophie Neveu'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Ian McKellen'), (SELECT id from movie where title='The Da Vinci Code'), 'acted_in', ARRAY['Sir Leight Teabing'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Tom Hanks'), (SELECT id from movie where title='The Da Vinci Code'), 'acted_in', ARRAY['Dr. Robert Langdon'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Hugo Weaving'), (SELECT id from movie where title='V for Vendetta'), 'acted_in', ARRAY['V'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Ben Miles'), (SELECT id from movie where title='V for Vendetta'), 'acted_in', ARRAY['Dascomb'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'John Hurt'), (SELECT id from movie where title='V for Vendetta'), 'acted_in', ARRAY['High Chancellor Adam Sutler'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Stephen Rea'), (SELECT id from movie where title='V for Vendetta'), 'acted_in', ARRAY['Eric Finch'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Natalie Portman'), (SELECT id from movie where title='V for Vendetta'), 'acted_in', ARRAY['Evey Hammond'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Susan Sarandon'), (SELECT id from movie where title='Speed Racer'), 'acted_in', ARRAY['Mom'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Matthew Fox'), (SELECT id from movie where title='Speed Racer'), 'acted_in', ARRAY['Racer X'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Christina Ricci'), (SELECT id from movie where title='Speed Racer'), 'acted_in', ARRAY['Trixie'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Rain'), (SELECT id from movie where title='Speed Racer'), 'acted_in', ARRAY['Taejo Togokahn'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Emile Hirsch'), (SELECT id from movie where title='Speed Racer'), 'acted_in', ARRAY['Speed Racer'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'John Goodman'), (SELECT id from movie where title='Speed Racer'), 'acted_in', ARRAY['Pops'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Ben Miles'), (SELECT id from movie where title='Speed Racer'), 'acted_in', ARRAY['Cass Jones'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Ben Miles'), (SELECT id from movie where title='Ninja Assassin'), 'acted_in', ARRAY['Ryan Maslow'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Rick Yune'), (SELECT id from movie where title='Ninja Assassin'), 'acted_in', ARRAY['Takeshi'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Rain'), (SELECT id from movie where title='Ninja Assassin'), 'acted_in', ARRAY['Raizo'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Naomie Harris'), (SELECT id from movie where title='Ninja Assassin'), 'acted_in', ARRAY['Mika Coretti'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Michael Clarke Duncan'), (SELECT id from movie where title='The Green Mile'), 'acted_in', ARRAY['John Coffey'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Tom Hanks'), (SELECT id from movie where title='The Green Mile'), 'acted_in', ARRAY['Paul Edgecomb'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Patricia Clarkson'), (SELECT id from movie where title='The Green Mile'), 'acted_in', ARRAY['Melinda Moores'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Gary Sinise'), (SELECT id from movie where title='The Green Mile'), 'acted_in', ARRAY['Burt Hammersmith'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Bonnie Hunt'), (SELECT id from movie where title='The Green Mile'), 'acted_in', ARRAY['Jan Edgecomb'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'David Morse'), (SELECT id from movie where title='The Green Mile'), 'acted_in', ARRAY['Brutus ''Brutal'' Howell'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Sam Rockwell'), (SELECT id from movie where title='The Green Mile'), 'acted_in', ARRAY['''Wild Bill'' Wharton'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'James Cromwell'), (SELECT id from movie where title='The Green Mile'), 'acted_in', ARRAY['Warden Hal Moores'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Oliver Platt'), (SELECT id from movie where title='Frost/Nixon'), 'acted_in', ARRAY['Bob Zelnick'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Sam Rockwell'), (SELECT id from movie where title='Frost/Nixon'), 'acted_in', ARRAY['James Reston, Jr.'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Michael Sheen'), (SELECT id from movie where title='Frost/Nixon'), 'acted_in', ARRAY['David Frost'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Kevin Bacon'), (SELECT id from movie where title='Frost/Nixon'), 'acted_in', ARRAY['Jack Brennan'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Frank Langella'), (SELECT id from movie where title='Frost/Nixon'), 'acted_in', ARRAY['Richard Nixon'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Danny DeVito'), (SELECT id from movie where title='Hoffa'), 'acted_in', ARRAY['Robert ''Bobby'' Ciaro'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'J.T. Walsh'), (SELECT id from movie where title='Hoffa'), 'acted_in', ARRAY['Frank Fitzsimmons'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Jack Nicholson'), (SELECT id from movie where title='Hoffa'), 'acted_in', ARRAY['Hoffa'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'John C. Reilly'), (SELECT id from movie where title='Hoffa'), 'acted_in', ARRAY['Peter ''Pete'' Connelly'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Tom Hanks'), (SELECT id from movie where title='Apollo 13'), 'acted_in', ARRAY['Jim Lovell'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Kevin Bacon'), (SELECT id from movie where title='Apollo 13'), 'acted_in', ARRAY['Jack Swigert'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Gary Sinise'), (SELECT id from movie where title='Apollo 13'), 'acted_in', ARRAY['Ken Mattingly'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Ed Harris'), (SELECT id from movie where title='Apollo 13'), 'acted_in', ARRAY['Gene Kranz'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Bill Paxton'), (SELECT id from movie where title='Apollo 13'), 'acted_in', ARRAY['Fred Haise'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Philip Seymour Hoffman'), (SELECT id from movie where title='Twister'), 'acted_in', ARRAY['Dustin ''Dusty'' Davis'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Zach Grenier'), (SELECT id from movie where title='Twister'), 'acted_in', ARRAY['Eddie'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Helen Hunt'), (SELECT id from movie where title='Twister'), 'acted_in', ARRAY['Dr. Jo Harding'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Bill Paxton'), (SELECT id from movie where title='Twister'), 'acted_in', ARRAY['Bill Harding'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Helen Hunt'), (SELECT id from movie where title='Cast Away'), 'acted_in', ARRAY['Kelly Frears'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Tom Hanks'), (SELECT id from movie where title='Cast Away'), 'acted_in', ARRAY['Chuck Noland'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Danny DeVito'), (SELECT id from movie where title='One Flew Over the Cuckoo''s Nest'), 'acted_in', ARRAY['Martini'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Jack Nicholson'), (SELECT id from movie where title='One Flew Over the Cuckoo''s Nest'), 'acted_in', ARRAY['Randle McMurphy'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Jack Nicholson'), (SELECT id from movie where title='Something''s Gotta Give'), 'acted_in', ARRAY['Harry Sanborn'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Keanu Reeves'), (SELECT id from movie where title='Something''s Gotta Give'), 'acted_in', ARRAY['Julian Mercer'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Diane Keaton'), (SELECT id from movie where title='Something''s Gotta Give'), 'acted_in', ARRAY['Erica Barry'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Robin Williams'), (SELECT id from movie where title='Bicentennial Man'), 'acted_in', ARRAY['Andrew Marin'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Oliver Platt'), (SELECT id from movie where title='Bicentennial Man'), 'acted_in', ARRAY['Rupert Burns'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Tom Hanks'), (SELECT id from movie where title='Charlie Wilson''s War'), 'acted_in', ARRAY['Rep. Charlie Wilson'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Julia Roberts'), (SELECT id from movie where title='Charlie Wilson''s War'), 'acted_in', ARRAY['Joanne Herring'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Philip Seymour Hoffman'), (SELECT id from movie where title='Charlie Wilson''s War'), 'acted_in', ARRAY['Gust Avrakotos'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Tom Hanks'), (SELECT id from movie where title='The Polar Express'), 'acted_in', ARRAY['Hero Boy','Father','Conductor','Hobo','Scrooge','Santa Claus'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Tom Hanks'), (SELECT id from movie where title='A League of Their Own'), 'acted_in', ARRAY['Jimmy Dugan'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Geena Davis'), (SELECT id from movie where title='A League of Their Own'), 'acted_in', ARRAY['Dottie Hinson'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Lori Petty'), (SELECT id from movie where title='A League of Their Own'), 'acted_in', ARRAY['Kit Keller'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Rosie O''Donnell'), (SELECT id from movie where title='A League of Their Own'), 'acted_in', ARRAY['Doris Murphy'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Madonna'), (SELECT id from movie where title='A League of Their Own'), 'acted_in', ARRAY['''All the Way'' Mae Mordabito'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Bill Paxton'), (SELECT id from movie where title='A League of Their Own'), 'acted_in', ARRAY['Bob Hinson'];
INSERT INTO movieperson(person_id, movie_id, relation_type, roles) SELECT (SELECT id from person where name = 'Jim Broadbent'), (SELECT id from movie where title='Cloud Atlas'), 'acted_in', ARRAY['Vyvyan Ayrs','Captain Molyneux','Timothy Cavendish'];
