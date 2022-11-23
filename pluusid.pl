pluusid(Pl):-
    length(Pl, 4),
    Pl = [
        neiu(aiki, _),
        neiu(triinu, _),
        neiu(maris, _),
        neiu(ene, _)
        ],
    member(neiu(_, valge), Pl),
    member(neiu(_, sinine), Pl),
    member(neiu(_, punane), Pl),
    member(neiu(_, roheline), Pl),
    or(member(neiu(aiki, sinine), Pl),
        member(neiu(triinu, valge), Pl)),
    or(member(neiu(aiki, punane), Pl),
        member(neiu(maris, sinine), Pl)),
    or(member(neiu(ene, sinine), Pl),
        member(neiu(triinu, roheline), Pl)).


    or(member(neiu(A, B), Pl),
        member(neiu(C, D), Pl)):-
            member(neiu(A, B), Pl) ;
            member(neiu(C, D), Pl).