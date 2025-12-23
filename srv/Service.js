const cds = require('@sap/cds');
// const { executeHttpRequest } = require('@sap-cloud-sdk/http-client');
const axios = require("axios");


module.exports = cds.service.impl(async function () {

  const{ northwind } = this.entities;
  this.on("READ", "northwind", async () => {

    const url = "https://services.odata.org/northwind/northwind.svc/Customers?$format=json&$top=3";

    const response = await axios.get(url);
    const results = response.data.value;
    console.log(results);
    
    return results.map(c => ({
      CustomerID: c.CustomerID,
      CompanyName:c.CompanyName,
      ContactName:c.ContactName,
      ContactTitle:c.ContactTitle, 
      Address:c.Address, 
      City: c.City,
    }));
  });
});
