var section2Image1 = document.getElementsByClassName('section2Image1');
new simpleParallax(section2Image1, {
	orientation: 'right',
    overflow: true,
    delay: .6,
    scale: 1.2,
    transition: 'cubic-bezier(0,0,0,1)'
});

var mot3 = document.getElementsByClassName('mot3');
new simpleParallax(mot3, {
	orientation: 'up',
    overflow: true,
    delay: .6,
    scale: 2.5,
    transition: 'cubic-bezier(0,0,0,1)',
    maxTransition: 30
});

var mot1 = document.getElementsByClassName('mot1');
new simpleParallax(mot1, {
	orientation: 'up',
    overflow: true,
    delay: .6,
    scale: 5.5,
    transition: 'cubic-bezier(0,0,0,1)',
    maxTransition: 40
});

var mot2 = document.getElementsByClassName('mot2');
new simpleParallax(mot2, {
	orientation: 'up',
    overflow: true,
    delay: .6,
    scale: 8.5,
    transition: 'cubic-bezier(0,0,0,1)',
    maxTransition: 40
});

