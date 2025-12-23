namespace test.db;

entity Data {
    key id : Integer;
    name : String;
    salary : Integer;
    loc : String;
    Dept : String;
    enter_by : String;
    to_n : Association to many Child on to_n.parent = id;

}

entity northwind {
    key CustomerID: String;
      CompanyName: String;
      ContactName: String;
      ContactTitle: String;
      Address: String;
      City: String;
      parent: Integer;
}
entity Child {
    key ID: String;
      Name: String;
     parent: Integer;
}