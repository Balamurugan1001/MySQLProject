use betkarma2;
SELECT
Event.label AS Event,
startDate AS "Start Time",
Outcome.source AS "Book",
Outcome.label AS Outcome,
OutcomeTime.americanOdds AS Odds,
Offer.label as Gameline,
League as League
FROM
Event
JOIN Offer ON Event.id = Offer.eventID
JOIN Outcome ON Offer.id = Outcome.offerID
JOIN OutcomeTime ON Outcome.id = OutcomeTime.outcomeID ANd Outcome.lastPregameTime = OutcomeTime.createdAt
ORDER BY
startDate ASC
Limit 1000;
