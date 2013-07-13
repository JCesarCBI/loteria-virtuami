function multiplicadorPrueba(cont){
	switch(cont)
	{
		case 2:
		  $('#multiplicadorVisible').html('x2');
		  document.getElementById('multiplicadorValor').value = 2;	
		  break;
		case 5:
		  $('#multiplicadorVisible').html('x3');
		  document.getElementById('multiplicadorValor').value = 3;	
		  break;
		case 8:
		  $('#multiplicadorVisible').html('x5');
		  document.getElementById('multiplicadorValor').value = 5;
		  break;
		default:		
				  
	}
	
};
