% Rules

% Chi ha fatto cosa/ Da chi è stata fatta qualcosa
query_who_what(TextWho, TextAct, TextWhat):-
	token(Tok1),
	physicalAgent(Pa1),
	annotation(Pa1,Tok1),
	hasText(Tok1, TextWho),

	token(Tok2),
	physicalObject(Po1),
	annotation(Po1,Tok2),
	hasText(Tok2, TextWhat),

	event(E1),
	what(E1, Act1),
	who(E1, Pa1),
	who(E1, Po1),
    	annotation(Act1, Act1Tok), 
    	hasText(Act1Tok,TextAct).

% Quando qualcosa è stata fatta
query_when_what(TextWhat, TextAct, TextTime):-
	token(Tok1),
	physicalObject(Po),
	annotation(Po,Tok1),
	hasText(Tok1, TextWhat),

	event(E),
	what(E, Act1),
	who(E, Po),
    	annotation(Act1, Act1Tok), 
    	hasText(Act1Tok,TextAct),

	when(E, Trel),
	during(Trel),
	hasTemporalEntity1(Trel, E),
	hasTemporalEntity2(Trel, Time),

	((event(Time), what(Time, Act2),
	annotation(Act2, ActTok),
    	hasText(ActTok, TextTime));
    
    	(annotation(Time, TimeTok), 
    	hasText(TimeTok,TextTime))).

% Quando qualcuno ha fatto cosa
query_when_who(TextWhat, TextAct, TextTime):-
	token(Tok1),
	physicalAgent(Po),
	annotation(Po,Tok1),
	hasText(Tok1, TextWhat),

	event(E),
	what(E, Act1),
	who(E, Po),
    annotation(Act1, Act1Tok),
    hasText(Act1Tok,TextAct),

	when(E, Trel),
	during(Trel),
	hasTemporalEntity1(Trel, E),
	hasTemporalEntity2(Trel, Time),

	((event(Time), what(Time, Act2), 
	annotation(Act2, ActTok), 
    	hasText(ActTok, TextTime));
    
    	(annotation(Time, TimeTok), 
    	hasText(TimeTok,TextTime))).

query_when(TextWhat, TextAct, TextTime):-
    query_when_who(TextWhat, TextAct, TextTime);
    query_when_what(TextWhat, TextAct, TextTime).


query_where(Object, TxtRel, TxtObj):-
	token(Tok1),
	physicalObject(Po),
	annotation(Po,Tok1),
	hasText(Tok1, Object),


	token(Tok2),
	hasText(Tok2, TxtRel),
	annotation(SpRel, Tok2),

	
	(
		(
		proximity(SpRel);
		over(SpRel);
		contains(SpRel);
		left(SpRel);
		right(SpRel)
		),

		hasComponent1(SpRel, Obj),
		hasComponent2(SpRel, Po)
	),
	swhat(SpF, SpRel),
	spatialFluent(SpF),
	

	token(Tok3),
	physicalObject(Obj),
	annotation(Obj,Tok3),
	hasText(Tok3, TxtObj).

