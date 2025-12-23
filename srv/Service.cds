using test.db from '../db/Schema';

service MyService {

    @restrict: [
        { grant: '*', to: 'Admin' },
        { grant: '*', to: 'User'} ]
    entity DATA as projection on db.Data;
    entity Child as projection on db.Child;
    entity northwind as projection on db.northwind;

}
