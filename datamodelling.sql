use  socialbuzz;
show tables;

-- Data Modelling

select c.User_ID,
		r.Datetime,
		r.Content_ID,
        c.Content_Type,
        c.Category,
        r.Reaction_Type,
        rt.Sentiment,
        rt.score
        from reactions as r
inner join content as c on r.Content_ID = c.Content_ID
inner join reactiontypes as rt on r.Reaction_Type = rt.Reaction_Type