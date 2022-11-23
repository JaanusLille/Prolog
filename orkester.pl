instrumendid(Inst):-
    length(Inst, 6),
    Inst = [
        instrument(_, smith),
        instrument(_, smith),
        instrument(_, braun),
        instrument(_, braun),
        instrument(_, vensson),
        instrument(_, vensson)
        ],
    % *Smith on kõige kõrgem.
    % *Viiulil mängiv on lühem, kui flöödil mängiv.
    % viiuldaja ei ole Smith:
    mitte_smith(member(instrument(viiul, _), Inst)),
    % *Viiuli ja flöödi mängijad ning Braun armastavad pitsat.
    % Braun ei mängi viiulit ega flööti
    mitte_braun(member(instrument(viiul, _), Inst)),
    mitte_braun(member(instrument(flööt, _), Inst)),
    % *Kui altisti ja trompetisti vahel tekkib tüli, Smith lepitab neid.
    % smith ei mängi alti ega trompetit
    mitte_smith(member(instrument(alt, _), Inst)),
    mitte_smith(member(instrument(trompet, _), Inst)),
    % *Braun ei oska mängida trompetit ega oboet.
    mitte_braun(member(instrument(trompet, _), Inst)),
    mitte_braun(member(instrument(oboe, _), Inst)),
    % Meil on kuskil ka klarnet
    member(instrument(klarnet, _), Inst).


% Kui instrumendi A mängija ei ole vensson,
    % siis on selleks kas braun või smith
mitte_vensson(member(instrument(A, _), Inst)):-
    member(instrument(A, braun), Inst);
    member(instrument(A, smith), Inst).
% Kui instrumendi A mängija ei ole smith,
    % siis on selleks kas braun või vensson
mitte_smith(member(instrument(A, _), Inst)):-
    member(instrument(A, braun), Inst);
    member(instrument(A, vensson), Inst).
% Kui instrumendi A mängija ei ole braun,
    % siis on selleks kas smith või vensson
mitte_braun(member(instrument(A, _), Inst)):-
    member(instrument(A, smith), Inst);
    member(instrument(A, vensson), Inst).