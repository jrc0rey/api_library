console.log('working')

$('.about').css('cursor', 'pointer');

$('.link1').css('cursor', 'pointer');

$('.link1').click(function(){
	window.location.href = '/library/utilities'
	return false
})

$('.link2').css('cursor', 'pointer');

$('.link2').click(function(){
	window.location.href = '/library/media'
	return false
})

$('.link3').css('cursor', 'pointer');

$('.link3').click(function(){
	window.location.href = '/library/design'
	return false
})

$('.link4').css('cursor', 'pointer');

$('.link4').click(function(){
	window.location.href = '/library/fun'
	return false
})

// $('.home').css('cursor', 'pointer');

$('.homeBtn').click(function(){
	window.location.href = '/home'
	return false
})