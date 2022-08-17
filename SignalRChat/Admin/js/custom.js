$(document).ready(function(){
    
    $.getJSON("getProvinces.php", success = function(data){
        var options = "";
        for(var i=0; i<data.length; i++) {
            options += "<option value='" + data[i].toLowerCase() + "' >" + data[i] + "</option>";
        }
        
        $('#slctMake').append(options);
        $('#slctMake').change();
    });
    
    $('#slctMake').change(function (){
        $.getJSON("getDistricts.php?province=" + $(this).val() , success = function(data){
            var options = "";
            for(var i=0; i<data.length; i++) {
                options += "<option value='" + data[i].toLowerCase() + "' >" + data[i] + "</option>";
            }
            
            $('#slctModel').html("");
            $('#slctModel').append(options);
        });
    });
});