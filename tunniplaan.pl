% Parima tulemuse jaoks sisestage terminali käsk: distinct(tunnid(Tn)).
tunnid(Tn):-
    length(Tn, 8), % neljapäeviti 8 tundi:
    % Keeletunnid on nii koolipäeva algul kui lõpus:
    Tn = [
        tund(_, humanitaar, keel),
        tund(_, _, _),
        tund(_, _, _),
        tund(_, _, _),
        tund(_, _, _),
        tund(_, _, _),
        tund(_, _, _),
        tund(_, humanitaar, keel)
        ],
    member(tund(vene_keel, humanitaar, keel), Tn),
    member(tund(inglise_keel, humanitaar, keel), Tn),
    member(tund(matemaatika, reaal, ei), Tn),
    member(tund(füüsika, reaal, ei), Tn),
    member(tund(kunstiajalugu, humanitaar, ei), Tn),
    member(tund(ajalugu, humanitaar, ei), Tn),


    % 3 reaalainete tundi on kõik järjestikku:
    kolm_järjestikku(
        tund(_, reaal, ei),
        tund(_, reaal, ei),
        tund(_, reaal, ei),
    Tn),


    % Füüsikatund on kohe pärast matemaatikat:
    üks_peale_teist(
        tund(matemaatika, reaal, ei),
        tund(füüsika, reaal, ei),
    Tn),


    % Kunstiajaloole eelnevad ja järgnevad humanitaarainete tunnid:
    eelnevad_järgnevad(
        tund(_, humanitaar, _),
        tund(kunstiajalugu, humanitaar, ei),
        tund(_, humanitaar, _),
    Tn),


    % Vene keel on 2 tundi peale ajalootundi. (1 tund vahel)
    eelnevad_järgnevad(
        tund(ajalugu, humanitaar, ei),
        tund(_, _, _),
        tund(vene_keel, humanitaar, keel),
    Tn),


    % Ajalugu algab 4 tundi peale inglise keelt. (3 tundi vahel)
    viis_tundi(
        tund(inglise_keel, humanitaar, keel),
        tund(_, _, _),
        tund(_, _, _),
        tund(_, _, _),
        tund(ajalugu, humanitaar, ei),
    Tn),


    % Mõlemad topelttunnid on tunniplaanis järjestikku:
    v6i(
        tund(vene_keel, humanitaar, keel),
        tund(inglise_keel, humanitaar, keel),
        tund(matemaatika, reaal, ei),
        tund(füüsika, reaal, ei),
        tund(kunstiajalugu, humanitaar, ei),
        tund(ajalugu, humanitaar, ei),
    Tn).



kolm_järjestikku(A, B, C, Tn):-
    append(_, [A,B,C|_], Tn);
    append(_, [A,C,B|_], Tn);

    append(_, [B,A,C|_], Tn);
    append(_, [B,C,A|_], Tn);

    append(_, [C,A,B|_], Tn);
    append(_, [C,B,A|_], Tn).

üks_peale_teist(A, B, Tn):-
    append(_, [A,B|_], Tn).

eelnevad_järgnevad(A, B, C, Tn):-
    append(_, [A,B,C|_], Tn).

viis_tundi(A, B, C, D, E, Tn):-
    append(_, [A,B,C,D,E|_], Tn).

% Mõlemad topelttunnid on tunniplaanis järjestikku:
v6i(A, B, C, D, E, F, Tn):-
    append(_, [A,A,B,B|_], Tn);
    append(_, [A,A,C,C|_], Tn);
    append(_, [A,A,D,D|_], Tn);
    append(_, [A,A,E,E|_], Tn);
    append(_, [A,A,F,F|_], Tn);

    append(_, [B,B,A,A|_], Tn);
    append(_, [B,B,C,C|_], Tn);
    append(_, [B,B,D,D|_], Tn);
    append(_, [B,B,E,E|_], Tn);
    append(_, [B,B,F,F|_], Tn);

    append(_, [C,C,A,A|_], Tn);
    append(_, [C,C,B,B|_], Tn);
    append(_, [C,C,D,D|_], Tn);
    append(_, [C,C,E,E|_], Tn);
    append(_, [C,C,F,F|_], Tn);

    append(_, [D,D,A,A|_], Tn);
    append(_, [D,D,B,B|_], Tn);
    append(_, [D,D,C,C|_], Tn);
    append(_, [D,D,E,E|_], Tn);
    append(_, [D,D,F,F|_], Tn);

    append(_, [E,E,A,A|_], Tn);
    append(_, [E,E,B,B|_], Tn);
    append(_, [E,E,C,C|_], Tn);
    append(_, [E,E,D,D|_], Tn);
    append(_, [E,E,F,F|_], Tn);
    
    append(_, [F,F,A,A|_], Tn);
    append(_, [F,F,B,B|_], Tn);
    append(_, [F,F,C,C|_], Tn);
    append(_, [F,F,D,D|_], Tn);
    append(_, [F,F,E,E|_], Tn).