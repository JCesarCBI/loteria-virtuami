function longitudRespuesta (id) {
	
	var url = base + 'index.php/cpruebasLuisa/longitudRespuesta/' + id;

	$.ajax({

		url : url,
		async : false,

		success : function(data) {
			
			$('#longitudAyuda').html("Long: "+data);
			document.getElementById("vallong").value=data;
			//alert(document.getElementById("vallongitudAyuda").value);

		},

		error : function() {

			alert("Error al cargar la carta");
		}
	});
  
}

