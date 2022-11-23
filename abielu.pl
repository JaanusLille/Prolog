abielupaarid(Paarid):-
    length(Paarid, 3),
    Paarid = [
        abielupaar(aili, _),
        abielupaar(piive, _),
        abielupaar(ulvi, _)
    ],
    member(abielupaar(_, ivar), Paarid),
    member(abielupaar(_, jaan), Paarid),
    member(abielupaar(_, peeter), Paarid),


    % *Piive on abielus kas Peetri või Ivariga:
    or(member(abielupaar(piive, peeter), Paarid),
        member(abielupaar(piive, ivar), Paarid)),
    % *Aili on abielus kas Ivari või Peetriga:
    or(member(abielupaar(aili, ivar), Paarid),
        member(abielupaar(aili, peeter), Paarid)),
    
    
    % *Kui Aili on abielus Jaaniga, siis Piive on abielus Peetriga:
    if(member(abielupaar(aili, jaan), Paarid),
        member(abielupaar(piive, peeter), Paarid)),
    % *Kui Piive on abielus Peetriga, siis Ulvi on abielus Ivariga:
    if(member(abielupaar(piive, peeter), Paarid),
        member(abielupaar(ulvi, ivar), Paarid)).
    
    
% *A on abielus kas B või D -ga.
or(member(abielupaar(A, B), Paarid),member(abielupaar(A, D), Paarid)):-
    member(abielupaar(A, B), Paarid) ;
    member(abielupaar(A, D), Paarid).
    
    
% *Kui A on abielus B, siis C on abielus D -ga:
if(member(abielupaar(A, B), Paarid),member(abielupaar(C, D), Paarid)):-
    member(abielupaar(A, B), Paarid),
    member(abielupaar(C, D), Paarid).