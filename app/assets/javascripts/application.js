//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require jquery
//= require jQuery-Mask-Plugin
//= require bootstrap
//= require_tree .

$(document).on('turbolinks:load', function(){
	$('#company_cnpj').mask('00.000.000/0000-00', {reverse: true});
});