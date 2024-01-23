#1
SELECT
    AVG (Products.Price) AS AveragePrice
FROM Products
WHERE
	CategoryID IN (1,2,5)
    AND
    ProductName LIKE 't%'

#2
SELECT
	SUM(Products.Price) AS sum_cost

FROM OrderDetails

JOIN Orders ON OrderDetails.OrderID = Orders.OrderID
JOIN Products ON OrderDetails.ProductID = Products.ProductID

WHERE
	Orders.OrderID = 10248

#3
SELECT
	COUNT(*) AS products_count
FROM Products
WHERE
	Price BETWEEN 10 AND 250

#4
SELECT
	SUM(Products.Price) AS total_cost
FROM OrderDetails
JOIN Orders ON OrderDetails.OrderID = Orders.OrderID
JOIN Products ON OrderDetails.ProductID = Products.ProductID
JOIN Customers ON Customers.CustomerID = Orders.CustomerID
WHERE
	Customers.Country = 'Germany'

#5
// Use DBML to define your database structure
// Docs: https://dbml.dbdiagram.io/docs

Table Players {
  userID int
  userName varchar
  dateOfAccountCreation timestamp
  userEmail varchar
  password varchar
  countOfGames int
  countOfDefeats int
  countOfWins int
}

Table Games {
 gameID int
 blackPlayerID int
 whitePlayerID int
 duration_in_seconds int
 is_finished bool
}

Table Moves {
moveID int
gameID int
playerID int
startingSquare varchar(2)
finalSquare varchar(2)
}

Table Tournaments {
 tournamentID int
 numberOfParticipants int
 duration_in_seconds int

}
Table TournamentGames {
 tournamentID int
 gameID int
 status varchar
}








Ref: "Tournaments"."tournamentID" < "TournamentGames"."tournamentID"

Ref: "Moves"."gameID" < "Games"."gameID"

Ref: "Games"."gameID" < "TournamentGames"."gameID"

Ref: "Games"."blackPlayerID" < "Players"."userID"


Ref: "Games"."whitePlayerID" < "Players"."userID"

Ref: "Moves"."playerID" < "Games"."blackPlayerID"

Ref: "Moves"."playerID" < "Games"."whitePlayerID"