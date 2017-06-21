document.addEventListener("DOMContentLoaded", function(){
  var app = new Vue({
    el: "#app1",
    data: {
            vehicles: [],
           newVehicleVin: "",
           newVehicleManufacture: "",
           updateVin: "",
           updateManufacture: "",
           errors: []
    },
    mounted: function() {
      $.get('/api/v1/vehicles.json', function(vehiclesResponse){
        this.vehicles = vehiclesResponse;
      }.bind(this));
    },
    methods: {
      addVehicle: function() {
        this.errors = [];
        var params = {
                      vin: this.newVehicleVin,
                      manufacture: this.newVehicleManufacture      
                      };
        $.post('/api/v1/vehicles.json', params, function(newVehicle) {
          this.vehicles.push(newVehicle);
          this.newVehicleVin = "";
          this.newVehicleManufacture = "";
        }.bind(this)).fail(function(response) {
          this.errors = (response.responseJSON,errors);
        }.bind(this));             
      },
      updateVehicle: function(vehicle) {
        var index = this.vehicles.indexOf(vehicle);
        
        params = {
                vin: this.updateVin,
                manufacture: this.updateManufacture
                };
      $.attr('/api/v1/vehicles.json', params, function(updateData){
        this.vehicles[index].push(updateData);
      }.bind(this));

      }
    }
  });
});