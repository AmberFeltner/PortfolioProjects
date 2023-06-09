SELECT * FROM mcd

--Which food has the highest amount of protein?

SELECT item, protein
FROM mcd
ORDER BY protein DESC

-- Highest to lowest calories

SELECT item, calories
FROM mcd 
ORDER BY calories DESC

--What foods has less than 500 cal and more than 20g protein?

SELECT item, calories, protein
FROM mcd
WHERE calories <500 AND protein >20 
ORDER BY calories ASC

--What foods have fewer than 30g carbs and more than 20g protein?

SELECT item, carbs, protein
FROM mcd
WHERE carbs <30 AND protein >20 
ORDER BY carbs ASC

--Beverages with added sugar least to greatest

SELECT item, added_sugar
FROM mcd
WHERE menu = "beverage" 
ORDER BY added_sugar ASC


--Customer has to limit sodium intake and needs to know what foods are less than 600mg sodium

SELECT item, sodium
FROM mcd
WHERE sodium <600
ORDER BY sodium ASC
