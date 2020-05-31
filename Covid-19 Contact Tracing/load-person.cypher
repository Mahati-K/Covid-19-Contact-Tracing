// Load Person
load csv with headers from
"https://docs.google.com/spreadsheets/u/0/d/1R-XVuynPsOWcXSderLpq3DacZdk10PZ8v6FiYGTncIE/export?format=csv&id=1R-XVuynPsOWcXSderLpq3DacZdk10PZ8v6FiYGTncIE&gid=0" as csv
create (p:Person {id: csv.PersonId, name:csv.PersonName, healthstatus:csv.Healthstatus, confirmedtime:datetime(csv.ConfirmedTime)});