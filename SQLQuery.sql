-- 1
SELECT Nome, Ano 
FROM Filmes

-- 2
SELECT Nome, Ano, Duracao 
FROM Filmes 
ORDER BY Ano

-- 3
SELECT Nome, Ano, DUracao 
FROM Filmes 
WHERE Nome = 'De Volta Para o Futuro'

-- 4
SELECT Nome, Ano, Duracao 
FROM Filmes 
WHERE Ano = 1997

-- 5
SELECT Nome, Ano, Duracao 
FROM Filmes 
WHERE ano > 2000

-- 6
SELECT Nome, Ano, Duracao 
FROM Filmes 
WHERE Duracao > 100 and Duracao < 150 
ORDER BY Duracao

-- 7 
SELECT Ano, Count(*) Quantidade 
FROM Filmes 
GROUP BY Ano 
ORDER BY Quantidade desc

-- 8 
SELECT PrimeiroNome, UltimoNome 
FROM Atores 
WHERE Genero = 'M'

-- 9 
SELECT PrimeiroNome, UltimoNome 
FROM Atores 
WHERE Genero = 'F' 
ORDER BY PrimeiroNome, UltimoNome

-- 10
SELECT Filmes.Nome, Generos.Genero 
FROM FilmesGenero 
INNER JOIN Filmes ON FilmesGenero.IdFilme = Filmes.Id 
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id

-- 11
SELECT Filmes.Nome, Generos.Genero 
FROM FilmesGenero 
INNER JOIN Filmes ON FilmesGenero.IdFilme = Filmes.Id 
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id
WHERE Generos.Genero = 'Mistério'

-- 12
SELECT Filmes.Nome, Atores.PrimeiroNome, Atores.UltimoNome, ElencoFilme.Papel 
FROM ElencoFilme
INNER JOIN Filmes ON Filmes.Id = ElencoFilme.IdFilme
INNER JOIN Atores ON Atores.Id = ElencoFilme.IdAtor